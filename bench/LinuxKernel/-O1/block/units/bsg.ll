; ModuleID = 'block/bsg.c'
source_filename = "block/bsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_bsg_unregister_queue: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad bsg_unregister_queue ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_bsg_register_queue: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad bsg_register_queue ; .previous"
module asm ".section\09\22.initcall6.init..kmod_bsg__349_277_bsg_init\22, \22a\22\09\09"
module asm "__initcall__kmod_bsg__349_277_bsg_init6:\09\09\09"
module asm ".long\09__initstub__kmod_bsg__349_277_bsg_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.pcpu_hot = type { %union.anon.20 }
%union.anon.20 = type { %struct.anon.21, [16 x i8] }
%struct.anon.21 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.bsg_device = type { ptr, %struct.device, %struct.cdev, i32, i32, i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.list_head = type { ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, %struct.mutex, ptr, ptr, i32, %struct.xarray, i32, ptr, i64, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.refcount_struct, ptr, ptr, i32, i64, i32, i32, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i64], ptr, %struct.list_head, %struct.mutex, %struct.queue_limits, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, ptr, ptr, ptr, %struct.mutex, i8 }
%struct.percpu_ref = type { i64, ptr }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, %struct.bio_set, i32, i64, %struct.mutex, i32, ptr, %struct.kobject, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64, i32, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.lockdep_map = type {}
%struct.file = type { %union.anon.13, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
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
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.16, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.17, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.18, ptr, %struct.address_space, %struct.list_head, %union.anon.19, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.16 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.17 = type { %struct.callback_head }
%union.anon.18 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.19 = type { ptr }
%struct.sg_io_v4 = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"bsg\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_bsg_unregister_queue343 = internal global ptr @bsg_unregister_queue, section ".discard.addressable", align 8, !dbg !7
@bsg_minor_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 67108869, ptr null } }, align 8, !dbg !5152
@.str.1 = private unnamed_addr constant [27 x i8] c"bsg: too many bsg devices\0A\00", align 1, !dbg !5115
@bsg_major = internal global i32 0, align 4, !dbg !5145
@bsg_class = internal constant %struct.class { ptr @.str, ptr null, ptr null, ptr null, ptr @bsg_devnode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5244
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !5120
@bsg_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bsg_ioctl, ptr @compat_ptr_ioctl, ptr null, i64 0, ptr @bsg_open, ptr null, ptr @bsg_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5158
@__UNIQUE_ID___addressable_bsg_register_queue344 = internal global ptr @bsg_register_queue, section ".discard.addressable", align 8, !dbg !5123
@__UNIQUE_ID_author345 = internal constant [22 x i8] c"bsg.author=Jens Axboe\00", section ".modinfo", align 1, !dbg !5125
@__UNIQUE_ID_description346 = internal constant [54 x i8] c"bsg.description=Block layer SCSI generic (bsg) driver\00", section ".modinfo", align 1, !dbg !5130
@__UNIQUE_ID_file347 = internal constant [19 x i8] c"bsg.file=block/bsg\00", section ".modinfo", align 1, !dbg !5135
@__UNIQUE_ID_license348 = internal constant [16 x i8] c"bsg.license=GPL\00", section ".modinfo", align 1, !dbg !5140
@__UNIQUE_ID___addressable___initstub__kmod_bsg__349_277_bsg_init6350 = internal global ptr @__initstub__kmod_bsg__349_277_bsg_init6, section ".discard.addressable", align 8, !dbg !5143
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5147
@bsg_ioctl._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !5160
@__func__.bsg_ioctl = private unnamed_addr constant [10 x i8] c"bsg_ioctl\00", align 1, !dbg !5228
@.str.4 = private unnamed_addr constant [51 x i8] c"\014%s: calling unsupported SCSI_IOCTL_SEND_COMMAND\0A\00", align 1, !dbg !5233
@.str.5 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !5238
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.6 = private unnamed_addr constant [7 x i8] c"bsg/%s\00", align 1, !dbg !5246
@.str.7 = private unnamed_addr constant [71 x i8] c"\016Block layer SCSI generic (bsg) driver version 0.4 loaded (major %d)\0A\00", align 1, !dbg !5249
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_bsg_unregister_queue343, ptr @__UNIQUE_ID___addressable_bsg_register_queue344, ptr @__UNIQUE_ID_author345, ptr @__UNIQUE_ID_description346, ptr @__UNIQUE_ID_file347, ptr @__UNIQUE_ID_license348, ptr @__UNIQUE_ID___addressable___initstub__kmod_bsg__349_277_bsg_init6350], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @bsg_unregister_queue(ptr noundef %bd) #0 align 16 !dbg !5264 {
entry:
  %bd.addr = alloca ptr, align 8
  %disk = alloca ptr, align 8
  store ptr %bd, ptr %bd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bd.addr, metadata !5268, metadata !DIExpression()), !dbg !5270
  call void @llvm.lifetime.start.p0(i64 8, ptr %disk) #19, !dbg !5271
  call void @llvm.dbg.declare(metadata ptr %disk, metadata !5269, metadata !DIExpression()), !dbg !5272
  %0 = load ptr, ptr %bd.addr, align 8, !dbg !5273
  %queue = getelementptr inbounds %struct.bsg_device, ptr %0, i32 0, i32 0, !dbg !5274
  %1 = load ptr, ptr %queue, align 8, !dbg !5274
  %disk1 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 16, !dbg !5275
  %2 = load ptr, ptr %disk1, align 8, !dbg !5275
  store ptr %2, ptr %disk, align 8, !dbg !5272
  %3 = load ptr, ptr %disk, align 8, !dbg !5276
  %tobool = icmp ne ptr %3, null, !dbg !5276
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5278

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %disk, align 8, !dbg !5279
  %queue_kobj = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 17, !dbg !5280
  %sd = getelementptr inbounds %struct.kobject, ptr %queue_kobj, i32 0, i32 5, !dbg !5281
  %5 = load ptr, ptr %sd, align 8, !dbg !5281
  %tobool2 = icmp ne ptr %5, null, !dbg !5279
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5282

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %disk, align 8, !dbg !5283
  %queue_kobj3 = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 17, !dbg !5284
  call void @sysfs_remove_link(ptr noundef %queue_kobj3, ptr noundef @.str) #20, !dbg !5285
  br label %if.end, !dbg !5285

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load ptr, ptr %bd.addr, align 8, !dbg !5286
  %cdev = getelementptr inbounds %struct.bsg_device, ptr %7, i32 0, i32 2, !dbg !5287
  %8 = load ptr, ptr %bd.addr, align 8, !dbg !5288
  %device = getelementptr inbounds %struct.bsg_device, ptr %8, i32 0, i32 1, !dbg !5289
  call void @cdev_device_del(ptr noundef %cdev, ptr noundef %device) #20, !dbg !5290
  %9 = load ptr, ptr %bd.addr, align 8, !dbg !5291
  %device4 = getelementptr inbounds %struct.bsg_device, ptr %9, i32 0, i32 1, !dbg !5292
  call void @put_device(ptr noundef %device4) #20, !dbg !5293
  call void @llvm.lifetime.end.p0(i64 8, ptr %disk) #19, !dbg !5294
  ret void, !dbg !5294
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5295 dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5298 dso_local void @cdev_device_del(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5301 dso_local void @put_device(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @bsg_register_queue(ptr noundef %q, ptr noundef %parent, ptr noundef %name, ptr noundef %sg_io_fn) #0 align 16 !dbg !5302 {
entry:
  %retval = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %sg_io_fn.addr = alloca ptr, align 8
  %bd = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !5306, metadata !DIExpression()), !dbg !5314
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5307, metadata !DIExpression()), !dbg !5315
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5308, metadata !DIExpression()), !dbg !5316
  store ptr %sg_io_fn, ptr %sg_io_fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg_io_fn.addr, metadata !5309, metadata !DIExpression()), !dbg !5317
  call void @llvm.lifetime.start.p0(i64 8, ptr %bd) #19, !dbg !5318
  call void @llvm.dbg.declare(metadata ptr %bd, metadata !5310, metadata !DIExpression()), !dbg !5319
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !5320
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5311, metadata !DIExpression()), !dbg !5321
  %call = call noalias ptr @kzalloc(i64 noundef 864, i32 noundef 3264) #21, !dbg !5322
  store ptr %call, ptr %bd, align 8, !dbg !5323
  %0 = load ptr, ptr %bd, align 8, !dbg !5324
  %tobool = icmp ne ptr %0, null, !dbg !5324
  br i1 %tobool, label %if.end, label %if.then, !dbg !5326

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #20, !dbg !5327
  store ptr %call1, ptr %retval, align 8, !dbg !5328
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5328

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bd, align 8, !dbg !5329
  %max_queue = getelementptr inbounds %struct.bsg_device, ptr %1, i32 0, i32 3, !dbg !5330
  store i32 64, ptr %max_queue, align 8, !dbg !5331
  %2 = load ptr, ptr %bd, align 8, !dbg !5332
  %reserved_size = getelementptr inbounds %struct.bsg_device, ptr %2, i32 0, i32 5, !dbg !5333
  store i32 2147483647, ptr %reserved_size, align 8, !dbg !5334
  %3 = load ptr, ptr %q.addr, align 8, !dbg !5335
  %4 = load ptr, ptr %bd, align 8, !dbg !5336
  %queue = getelementptr inbounds %struct.bsg_device, ptr %4, i32 0, i32 0, !dbg !5337
  store ptr %3, ptr %queue, align 8, !dbg !5338
  %5 = load ptr, ptr %sg_io_fn.addr, align 8, !dbg !5339
  %6 = load ptr, ptr %bd, align 8, !dbg !5340
  %sg_io_fn2 = getelementptr inbounds %struct.bsg_device, ptr %6, i32 0, i32 6, !dbg !5341
  store ptr %5, ptr %sg_io_fn2, align 8, !dbg !5342
  %call3 = call i32 @ida_alloc_max(ptr noundef @bsg_minor_ida, i32 noundef 1048575, i32 noundef 3264) #20, !dbg !5343
  store i32 %call3, ptr %ret, align 4, !dbg !5344
  %7 = load i32, ptr %ret, align 4, !dbg !5345
  %cmp = icmp slt i32 %7, 0, !dbg !5347
  br i1 %cmp, label %if.then4, label %if.end9, !dbg !5348

if.then4:                                         ; preds = %if.end
  %8 = load i32, ptr %ret, align 4, !dbg !5349
  %cmp5 = icmp eq i32 %8, -28, !dbg !5352
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !5353

if.then6:                                         ; preds = %if.then4
  br label %do.body, !dbg !5354

do.body:                                          ; preds = %if.then6
  br label %do.cond, !dbg !5356

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5356

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %parent.addr, align 8, !dbg !5354
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef @.str.1) #22, !dbg !5354
  br label %if.end7, !dbg !5358

if.end7:                                          ; preds = %do.end, %if.then4
  %10 = load ptr, ptr %bd, align 8, !dbg !5359
  call void @kfree(ptr noundef %10) #20, !dbg !5360
  %11 = load i32, ptr %ret, align 4, !dbg !5361
  %conv = sext i32 %11 to i64, !dbg !5361
  %call8 = call ptr @ERR_PTR(i64 noundef %conv) #20, !dbg !5362
  store ptr %call8, ptr %retval, align 8, !dbg !5363
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5363

if.end9:                                          ; preds = %if.end
  %12 = load i32, ptr @bsg_major, align 4, !dbg !5364
  %shl = shl i32 %12, 20, !dbg !5364
  %13 = load i32, ptr %ret, align 4, !dbg !5364
  %or = or i32 %shl, %13, !dbg !5364
  %14 = load ptr, ptr %bd, align 8, !dbg !5365
  %device = getelementptr inbounds %struct.bsg_device, ptr %14, i32 0, i32 1, !dbg !5366
  %devt = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 26, !dbg !5367
  store i32 %or, ptr %devt, align 4, !dbg !5368
  %15 = load ptr, ptr %bd, align 8, !dbg !5369
  %device10 = getelementptr inbounds %struct.bsg_device, ptr %15, i32 0, i32 1, !dbg !5370
  %class = getelementptr inbounds %struct.device, ptr %device10, i32 0, i32 30, !dbg !5371
  store ptr @bsg_class, ptr %class, align 8, !dbg !5372
  %16 = load ptr, ptr %parent.addr, align 8, !dbg !5373
  %17 = load ptr, ptr %bd, align 8, !dbg !5374
  %device11 = getelementptr inbounds %struct.bsg_device, ptr %17, i32 0, i32 1, !dbg !5375
  %parent12 = getelementptr inbounds %struct.device, ptr %device11, i32 0, i32 1, !dbg !5376
  store ptr %16, ptr %parent12, align 8, !dbg !5377
  %18 = load ptr, ptr %bd, align 8, !dbg !5378
  %device13 = getelementptr inbounds %struct.bsg_device, ptr %18, i32 0, i32 1, !dbg !5379
  %release = getelementptr inbounds %struct.device, ptr %device13, i32 0, i32 32, !dbg !5380
  store ptr @bsg_device_release, ptr %release, align 8, !dbg !5381
  %19 = load ptr, ptr %bd, align 8, !dbg !5382
  %device14 = getelementptr inbounds %struct.bsg_device, ptr %19, i32 0, i32 1, !dbg !5383
  %20 = load ptr, ptr %name.addr, align 8, !dbg !5384
  %call15 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %device14, ptr noundef @.str.2, ptr noundef %20) #20, !dbg !5385
  %21 = load ptr, ptr %bd, align 8, !dbg !5386
  %device16 = getelementptr inbounds %struct.bsg_device, ptr %21, i32 0, i32 1, !dbg !5387
  call void @device_initialize(ptr noundef %device16) #20, !dbg !5388
  %22 = load ptr, ptr %bd, align 8, !dbg !5389
  %cdev = getelementptr inbounds %struct.bsg_device, ptr %22, i32 0, i32 2, !dbg !5390
  call void @cdev_init(ptr noundef %cdev, ptr noundef @bsg_fops) #20, !dbg !5391
  %23 = load ptr, ptr %bd, align 8, !dbg !5392
  %cdev17 = getelementptr inbounds %struct.bsg_device, ptr %23, i32 0, i32 2, !dbg !5393
  %owner = getelementptr inbounds %struct.cdev, ptr %cdev17, i32 0, i32 1, !dbg !5394
  store ptr null, ptr %owner, align 8, !dbg !5395
  %24 = load ptr, ptr %bd, align 8, !dbg !5396
  %cdev18 = getelementptr inbounds %struct.bsg_device, ptr %24, i32 0, i32 2, !dbg !5397
  %25 = load ptr, ptr %bd, align 8, !dbg !5398
  %device19 = getelementptr inbounds %struct.bsg_device, ptr %25, i32 0, i32 1, !dbg !5399
  %call20 = call i32 @cdev_device_add(ptr noundef %cdev18, ptr noundef %device19) #20, !dbg !5400
  store i32 %call20, ptr %ret, align 4, !dbg !5401
  %26 = load i32, ptr %ret, align 4, !dbg !5402
  %tobool21 = icmp ne i32 %26, 0, !dbg !5402
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !5404

if.then22:                                        ; preds = %if.end9
  br label %out_put_device, !dbg !5405

if.end23:                                         ; preds = %if.end9
  %27 = load ptr, ptr %q.addr, align 8, !dbg !5406
  %disk = getelementptr inbounds %struct.request_queue, ptr %27, i32 0, i32 16, !dbg !5408
  %28 = load ptr, ptr %disk, align 8, !dbg !5408
  %tobool24 = icmp ne ptr %28, null, !dbg !5406
  br i1 %tobool24, label %land.lhs.true, label %if.end35, !dbg !5409

land.lhs.true:                                    ; preds = %if.end23
  %29 = load ptr, ptr %q.addr, align 8, !dbg !5410
  %disk25 = getelementptr inbounds %struct.request_queue, ptr %29, i32 0, i32 16, !dbg !5411
  %30 = load ptr, ptr %disk25, align 8, !dbg !5411
  %queue_kobj = getelementptr inbounds %struct.gendisk, ptr %30, i32 0, i32 17, !dbg !5412
  %sd = getelementptr inbounds %struct.kobject, ptr %queue_kobj, i32 0, i32 5, !dbg !5413
  %31 = load ptr, ptr %sd, align 8, !dbg !5413
  %tobool26 = icmp ne ptr %31, null, !dbg !5410
  br i1 %tobool26, label %if.then27, label %if.end35, !dbg !5414

if.then27:                                        ; preds = %land.lhs.true
  %32 = load ptr, ptr %q.addr, align 8, !dbg !5415
  %disk28 = getelementptr inbounds %struct.request_queue, ptr %32, i32 0, i32 16, !dbg !5417
  %33 = load ptr, ptr %disk28, align 8, !dbg !5417
  %queue_kobj29 = getelementptr inbounds %struct.gendisk, ptr %33, i32 0, i32 17, !dbg !5418
  %34 = load ptr, ptr %bd, align 8, !dbg !5419
  %device30 = getelementptr inbounds %struct.bsg_device, ptr %34, i32 0, i32 1, !dbg !5420
  %kobj = getelementptr inbounds %struct.device, ptr %device30, i32 0, i32 0, !dbg !5421
  %call31 = call i32 @sysfs_create_link(ptr noundef %queue_kobj29, ptr noundef %kobj, ptr noundef @.str) #20, !dbg !5422
  store i32 %call31, ptr %ret, align 4, !dbg !5423
  %35 = load i32, ptr %ret, align 4, !dbg !5424
  %tobool32 = icmp ne i32 %35, 0, !dbg !5424
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !5426

if.then33:                                        ; preds = %if.then27
  br label %out_device_del, !dbg !5427

if.end34:                                         ; preds = %if.then27
  br label %if.end35, !dbg !5428

if.end35:                                         ; preds = %if.end34, %land.lhs.true, %if.end23
  %36 = load ptr, ptr %bd, align 8, !dbg !5429
  store ptr %36, ptr %retval, align 8, !dbg !5430
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5430

out_device_del:                                   ; preds = %if.then33
  call void @llvm.dbg.label(metadata !5312), !dbg !5431
  %37 = load ptr, ptr %bd, align 8, !dbg !5432
  %cdev36 = getelementptr inbounds %struct.bsg_device, ptr %37, i32 0, i32 2, !dbg !5433
  %38 = load ptr, ptr %bd, align 8, !dbg !5434
  %device37 = getelementptr inbounds %struct.bsg_device, ptr %38, i32 0, i32 1, !dbg !5435
  call void @cdev_device_del(ptr noundef %cdev36, ptr noundef %device37) #20, !dbg !5436
  br label %out_put_device, !dbg !5436

out_put_device:                                   ; preds = %out_device_del, %if.then22
  call void @llvm.dbg.label(metadata !5313), !dbg !5437
  %39 = load ptr, ptr %bd, align 8, !dbg !5438
  %device38 = getelementptr inbounds %struct.bsg_device, ptr %39, i32 0, i32 1, !dbg !5439
  call void @put_device(ptr noundef %device38) #20, !dbg !5440
  %40 = load i32, ptr %ret, align 4, !dbg !5441
  %conv39 = sext i32 %40 to i64, !dbg !5441
  %call40 = call ptr @ERR_PTR(i64 noundef %conv39) #20, !dbg !5442
  store ptr %call40, ptr %retval, align 8, !dbg !5443
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5443

cleanup:                                          ; preds = %out_put_device, %if.end35, %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !5444
  call void @llvm.lifetime.end.p0(i64 8, ptr %bd) #19, !dbg !5444
  %41 = load ptr, ptr %retval, align 8, !dbg !5444
  ret ptr %41, !dbg !5444
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !5445 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5449, metadata !DIExpression()), !dbg !5451
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5450, metadata !DIExpression()), !dbg !5452
  %0 = load i64, ptr %size.addr, align 8, !dbg !5453
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5454
  %or = or i32 %1, 256, !dbg !5455
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #21, !dbg !5456
  ret ptr %call, !dbg !5457
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !5458 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5463, metadata !DIExpression()), !dbg !5464
  %0 = load i64, ptr %error.addr, align 8, !dbg !5465
  %1 = inttoptr i64 %0 to ptr, !dbg !5466
  ret ptr %1, !dbg !5467
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ida_alloc_max(ptr noundef %ida, i32 noundef %max, i32 noundef %gfp) #5 align 16 !dbg !5468 {
entry:
  %ida.addr = alloca ptr, align 8
  %max.addr = alloca i32, align 4
  %gfp.addr = alloca i32, align 4
  store ptr %ida, ptr %ida.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ida.addr, metadata !5473, metadata !DIExpression()), !dbg !5476
  store i32 %max, ptr %max.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !5474, metadata !DIExpression()), !dbg !5477
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5475, metadata !DIExpression()), !dbg !5478
  %0 = load ptr, ptr %ida.addr, align 8, !dbg !5479
  %1 = load i32, ptr %max.addr, align 4, !dbg !5480
  %2 = load i32, ptr %gfp.addr, align 4, !dbg !5481
  %call = call i32 @ida_alloc_range(ptr noundef %0, i32 noundef 0, i32 noundef %1, i32 noundef %2) #20, !dbg !5482
  ret i32 %call, !dbg !5483
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5484 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5488 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bsg_device_release(ptr noundef %dev) #0 align 16 !dbg !5491 {
entry:
  %dev.addr = alloca ptr, align 8
  %bd = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5493, metadata !DIExpression()), !dbg !5497
  call void @llvm.lifetime.start.p0(i64 8, ptr %bd) #19, !dbg !5498
  call void @llvm.dbg.declare(metadata ptr %bd, metadata !5494, metadata !DIExpression()), !dbg !5499
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !5500
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5495, metadata !DIExpression()), !dbg !5500
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5500
  store ptr %0, ptr %__mptr, align 8, !dbg !5500
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5500
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !5500
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5500
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !5501
  %2 = load ptr, ptr %tmp, align 8, !dbg !5500
  store ptr %2, ptr %bd, align 8, !dbg !5499
  %3 = load ptr, ptr %bd, align 8, !dbg !5502
  %device = getelementptr inbounds %struct.bsg_device, ptr %3, i32 0, i32 1, !dbg !5502
  %devt = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 26, !dbg !5502
  %4 = load i32, ptr %devt, align 4, !dbg !5502
  %and = and i32 %4, 1048575, !dbg !5502
  call void @ida_free(ptr noundef @bsg_minor_ida, i32 noundef %and) #20, !dbg !5503
  %5 = load ptr, ptr %bd, align 8, !dbg !5504
  call void @kfree(ptr noundef %5) #20, !dbg !5505
  call void @llvm.lifetime.end.p0(i64 8, ptr %bd) #19, !dbg !5506
  ret void, !dbg !5506
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5507 dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5510 dso_local void @device_initialize(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5511 dso_local void @cdev_init(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5514 dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5517 dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_bsg__349_277_bsg_init6() #7 section ".init.text" align 16 !dbg !5520 {
entry:
  %call = call i32 @bsg_init() #22, !dbg !5521
  ret i32 %call, !dbg !5521
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @bsg_init() #7 section ".init.text" align 16 !dbg !5522 {
entry:
  %retval = alloca i32, align 4
  %devid = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %devid) #19, !dbg !5527
  call void @llvm.dbg.declare(metadata ptr %devid, metadata !5524, metadata !DIExpression()), !dbg !5528
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !5529
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5525, metadata !DIExpression()), !dbg !5530
  %call = call i32 @class_register(ptr noundef @bsg_class) #20, !dbg !5531
  store i32 %call, ptr %ret, align 4, !dbg !5532
  %0 = load i32, ptr %ret, align 4, !dbg !5533
  %tobool = icmp ne i32 %0, 0, !dbg !5533
  br i1 %tobool, label %if.then, label %if.end, !dbg !5535

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %ret, align 4, !dbg !5536
  store i32 %1, ptr %retval, align 4, !dbg !5537
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5537

if.end:                                           ; preds = %entry
  %call1 = call i32 @alloc_chrdev_region(ptr noundef %devid, i32 noundef 0, i32 noundef 1048576, ptr noundef @.str) #20, !dbg !5538
  store i32 %call1, ptr %ret, align 4, !dbg !5539
  %2 = load i32, ptr %ret, align 4, !dbg !5540
  %tobool2 = icmp ne i32 %2, 0, !dbg !5540
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5542

if.then3:                                         ; preds = %if.end
  br label %destroy_bsg_class, !dbg !5543

if.end4:                                          ; preds = %if.end
  %3 = load i32, ptr %devid, align 4, !dbg !5544
  %shr = lshr i32 %3, 20, !dbg !5544
  store i32 %shr, ptr @bsg_major, align 4, !dbg !5545
  br label %do.body, !dbg !5546

do.body:                                          ; preds = %if.end4
  br label %do.cond, !dbg !5548

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5548

do.end:                                           ; preds = %do.cond
  %4 = load i32, ptr @bsg_major, align 4, !dbg !5546
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, i32 noundef %4) #22, !dbg !5546
  store i32 %call5, ptr %tmp, align 4, !dbg !5548
  %5 = load i32, ptr %tmp, align 4, !dbg !5546
  store i32 0, ptr %retval, align 4, !dbg !5550
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5550

destroy_bsg_class:                                ; preds = %if.then3
  call void @llvm.dbg.label(metadata !5526), !dbg !5551
  call void @class_unregister(ptr noundef @bsg_class) #20, !dbg !5552
  %6 = load i32, ptr %ret, align 4, !dbg !5553
  store i32 %6, ptr %retval, align 4, !dbg !5554
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5554

cleanup:                                          ; preds = %destroy_bsg_class, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !5555
  call void @llvm.lifetime.end.p0(i64 4, ptr %devid) #19, !dbg !5555
  %7 = load i32, ptr %retval, align 4, !dbg !5555
  ret i32 %7, !dbg !5555
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5556 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5558, metadata !DIExpression()), !dbg !5563
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5559, metadata !DIExpression()), !dbg !5564
  %0 = load i64, ptr %size.addr, align 8, !dbg !5565
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5566
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5567

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5568
  %tobool = icmp ne i64 %2, 0, !dbg !5568
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5569

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #19, !dbg !5570
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5560, metadata !DIExpression()), !dbg !5571
  %3 = load i64, ptr %size.addr, align 8, !dbg !5572
  %cmp = icmp ugt i64 %3, 8192, !dbg !5574
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5575

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5576
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5577
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #21, !dbg !5578
  store ptr %call, ptr %retval, align 8, !dbg !5579
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5579

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5580
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #20, !dbg !5580
  store i32 %call2, ptr %index, align 4, !dbg !5581
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5582
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5583
  %9 = ptrtoint ptr %8 to i64, !dbg !5583
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #20, !dbg !5584
  %idxprom = zext i32 %call3 to i64, !dbg !5585
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5585
  %10 = load i32, ptr %index, align 4, !dbg !5586
  %idxprom4 = zext i32 %10 to i64, !dbg !5585
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5585
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5585
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5587
  %13 = load i64, ptr %size.addr, align 8, !dbg !5588
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #23, !dbg !5589
  store ptr %call6, ptr %retval, align 8, !dbg !5590
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5590

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #19, !dbg !5591
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5592
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5593
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #21, !dbg !5594
  store ptr %call8, ptr %retval, align 8, !dbg !5595
  br label %return, !dbg !5595

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5596
  ret ptr %16, !dbg !5596
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5597 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !5598 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5602, metadata !DIExpression()), !dbg !5604
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5603, metadata !DIExpression()), !dbg !5605
  %0 = load i64, ptr %size.addr, align 8, !dbg !5606
  %tobool = icmp ne i64 %0, 0, !dbg !5606
  br i1 %tobool, label %if.end, label %if.then, !dbg !5608

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5609
  br label %return, !dbg !5609

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5610
  %cmp = icmp ule i64 %1, 8, !dbg !5612
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5613

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5614
  br label %return, !dbg !5614

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5615
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5617
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5618

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5619
  %cmp4 = icmp ule i64 %3, 96, !dbg !5620
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5621

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5622
  br label %return, !dbg !5622

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5623
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5625
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5626

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5627
  %cmp9 = icmp ule i64 %5, 192, !dbg !5628
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5629

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5630
  br label %return, !dbg !5630

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5631
  %cmp12 = icmp ule i64 %6, 8, !dbg !5633
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5634

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5635
  br label %return, !dbg !5635

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5636
  %cmp15 = icmp ule i64 %7, 16, !dbg !5638
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5639

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5640
  br label %return, !dbg !5640

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5641
  %cmp18 = icmp ule i64 %8, 32, !dbg !5643
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5644

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5645
  br label %return, !dbg !5645

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5646
  %cmp21 = icmp ule i64 %9, 64, !dbg !5648
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5649

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5650
  br label %return, !dbg !5650

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5651
  %cmp24 = icmp ule i64 %10, 128, !dbg !5653
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5654

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5655
  br label %return, !dbg !5655

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5656
  %cmp27 = icmp ule i64 %11, 256, !dbg !5658
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5659

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5660
  br label %return, !dbg !5660

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5661
  %cmp30 = icmp ule i64 %12, 512, !dbg !5663
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5664

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5665
  br label %return, !dbg !5665

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5666
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5668
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5669

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5670
  br label %return, !dbg !5670

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5671
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5673
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5674

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5675
  br label %return, !dbg !5675

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5676
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5678
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5679

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5680
  br label %return, !dbg !5680

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5681
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5683
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5684

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5685
  br label %return, !dbg !5685

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5686
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5688
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5689

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5690
  br label %return, !dbg !5690

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5691
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5693
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5694

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5695
  br label %return, !dbg !5695

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5696
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5698
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5699

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5700
  br label %return, !dbg !5700

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5701
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5703
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5704

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5705
  br label %return, !dbg !5705

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5706
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5708
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5709

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5710
  br label %return, !dbg !5710

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5711
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5713
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5714

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5715
  br label %return, !dbg !5715

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5716
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5718
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5719

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5720
  br label %return, !dbg !5720

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5721
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5723
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5724

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5725
  br label %return, !dbg !5725

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5726, !range !5728, !noundef !568
  %tobool69 = trunc i8 %25 to i1, !dbg !5726
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5729

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5730

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_255() #24, !dbg !5731, !srcloc !5734
  unreachable, !dbg !5731

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5735

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5736

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5737

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5739

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5737

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #19, !dbg !5741, !srcloc !5743
  br label %do.end75, !dbg !5741

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5737

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5744
  br label %return, !dbg !5744

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5745
  ret i32 %26, !dbg !5745
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5746 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !5749 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5753, metadata !DIExpression()), !dbg !5755
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5754, metadata !DIExpression()), !dbg !5756
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5757
  %and = and i32 %0, 17, !dbg !5757
  %cmp = icmp eq i32 %and, 0, !dbg !5757
  %lnot = xor i1 %cmp, true, !dbg !5757
  %lnot1 = xor i1 %lnot, true, !dbg !5757
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5757
  %conv = sext i32 %lnot.ext to i64, !dbg !5757
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5757
  %tobool = icmp ne i64 %expval, 0, !dbg !5757
  br i1 %tobool, label %if.then, label %if.end, !dbg !5759

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5760
  br label %return, !dbg !5760

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5761
  %and2 = and i32 %1, 1, !dbg !5763
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5763
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5764

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5765
  br label %return, !dbg !5765

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5766
  br label %return, !dbg !5766

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5768
  ret i32 %2, !dbg !5768
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5769 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5770 dso_local void @__compiletime_assert_255() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5771 dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5774 dso_local void @ida_free(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bsg_ioctl(ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5162 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %bd = alloca ptr, align 8
  %q = alloca ptr, align 8
  %uarg = alloca ptr, align 8
  %intp = alloca ptr, align 8
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp8 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %__ret_pu12 = alloca i32, align 4
  %__ptr_pu13 = alloca ptr, align 8
  %__val_pu14 = alloca i32, align 4
  %__x15 = alloca i32, align 4
  %__ptr16 = alloca ptr, align 8
  %tmp19 = alloca i64, align 8
  %tmp23 = alloca i64, align 8
  %__ret_pu24 = alloca i32, align 4
  %__ptr_pu25 = alloca ptr, align 8
  %__val_pu26 = alloca i32, align 4
  %__x27 = alloca i32, align 4
  %__ptr28 = alloca ptr, align 8
  %tmp31 = alloca i64, align 8
  %tmp35 = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp40 = alloca i32, align 4
  %tmp42 = alloca i64, align 8
  %tmp53 = alloca i64, align 8
  %__ret_pu54 = alloca i32, align 4
  %__ptr_pu55 = alloca ptr, align 8
  %__val_pu56 = alloca i32, align 4
  %__x57 = alloca i32, align 4
  %__UNIQUE_ID___x339 = alloca i32, align 4
  %__UNIQUE_ID___y340 = alloca i32, align 4
  %tmp59 = alloca i32, align 4
  %__ptr61 = alloca ptr, align 8
  %tmp64 = alloca i64, align 8
  %tmp68 = alloca i64, align 8
  %__ret_gu69 = alloca i32, align 4
  %__val_gu70 = alloca i32, align 4
  %__tmp74 = alloca i64, align 8
  %tmp76 = alloca i32, align 4
  %tmp78 = alloca i64, align 8
  %__UNIQUE_ID___x341 = alloca i32, align 4
  %__UNIQUE_ID___y342 = alloca i32, align 4
  %tmp89 = alloca i32, align 4
  %tmp98 = alloca i64, align 8
  %__ret_pu99 = alloca i32, align 4
  %__ptr_pu100 = alloca ptr, align 8
  %__val_pu101 = alloca i32, align 4
  %__x102 = alloca i32, align 4
  %__ptr103 = alloca ptr, align 8
  %tmp106 = alloca i64, align 8
  %tmp117 = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5164, metadata !DIExpression()), !dbg !5777
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5165, metadata !DIExpression()), !dbg !5778
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5166, metadata !DIExpression()), !dbg !5779
  call void @llvm.lifetime.start.p0(i64 8, ptr %bd) #19, !dbg !5780
  call void @llvm.dbg.declare(metadata ptr %bd, metadata !5167, metadata !DIExpression()), !dbg !5781
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5782
  %call = call ptr @file_inode(ptr noundef %0) #20, !dbg !5783
  %call1 = call ptr @to_bsg_device(ptr noundef %call) #20, !dbg !5784
  store ptr %call1, ptr %bd, align 8, !dbg !5781
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #19, !dbg !5785
  call void @llvm.dbg.declare(metadata ptr %q, metadata !5168, metadata !DIExpression()), !dbg !5786
  %1 = load ptr, ptr %bd, align 8, !dbg !5787
  %queue = getelementptr inbounds %struct.bsg_device, ptr %1, i32 0, i32 0, !dbg !5788
  %2 = load ptr, ptr %queue, align 8, !dbg !5788
  store ptr %2, ptr %q, align 8, !dbg !5786
  call void @llvm.lifetime.start.p0(i64 8, ptr %uarg) #19, !dbg !5789
  call void @llvm.dbg.declare(metadata ptr %uarg, metadata !5169, metadata !DIExpression()), !dbg !5790
  %3 = load i64, ptr %arg.addr, align 8, !dbg !5791
  %4 = inttoptr i64 %3 to ptr, !dbg !5792
  store ptr %4, ptr %uarg, align 8, !dbg !5790
  call void @llvm.lifetime.start.p0(i64 8, ptr %intp) #19, !dbg !5793
  call void @llvm.dbg.declare(metadata ptr %intp, metadata !5170, metadata !DIExpression()), !dbg !5794
  %5 = load ptr, ptr %uarg, align 8, !dbg !5795
  store ptr %5, ptr %intp, align 8, !dbg !5794
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #19, !dbg !5796
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5171, metadata !DIExpression()), !dbg !5797
  %6 = load i32, ptr %cmd.addr, align 4, !dbg !5798
  switch i32 %6, label %sw.default [
    i32 8816, label %sw.bb
    i32 8817, label %sw.bb3
    i32 8834, label %sw.bb6
    i32 21378, label %sw.bb10
    i32 21382, label %sw.bb22
    i32 8705, label %sw.bb34
    i32 8706, label %sw.bb48
    i32 8818, label %sw.bb52
    i32 8821, label %sw.bb67
    i32 8707, label %sw.bb97
    i32 8837, label %sw.bb109
    i32 1, label %sw.bb113
  ], !dbg !5799

sw.bb:                                            ; preds = %entry
  %7 = load ptr, ptr %bd, align 8, !dbg !5800
  %8 = load ptr, ptr %uarg, align 8, !dbg !5801
  %call2 = call i32 @bsg_get_command_q(ptr noundef %7, ptr noundef %8) #20, !dbg !5802
  %conv = sext i32 %call2 to i64, !dbg !5802
  store i64 %conv, ptr %retval, align 8, !dbg !5803
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5803

sw.bb3:                                           ; preds = %entry
  %9 = load ptr, ptr %bd, align 8, !dbg !5804
  %10 = load ptr, ptr %uarg, align 8, !dbg !5805
  %call4 = call i32 @bsg_set_command_q(ptr noundef %9, ptr noundef %10) #20, !dbg !5806
  %conv5 = sext i32 %call4 to i64, !dbg !5806
  store i64 %conv5, ptr %retval, align 8, !dbg !5807
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5807

sw.bb6:                                           ; preds = %entry
  call void @might_fault() #20, !dbg !5808
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #19, !dbg !5809
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !5172, metadata !DIExpression()), !dbg !5809
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #19, !dbg !5809
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !5176, metadata !DIExpression()), !dbg !5809
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #19, !dbg !5809
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !5177, metadata !DIExpression()), !dbg !5809
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #19, !dbg !5809
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !5178, metadata !DIExpression()), !dbg !5809
  store i32 30527, ptr %__x, align 4, !dbg !5809
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #19, !dbg !5809
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5179, metadata !DIExpression()), !dbg !5809
  %11 = load ptr, ptr %intp, align 8, !dbg !5809
  store ptr %11, ptr %__ptr, align 8, !dbg !5809
  %12 = load ptr, ptr %__ptr, align 8, !dbg !5809
  store ptr %12, ptr %__ptr_pu, align 8, !dbg !5809
  %13 = load i32, ptr %__x, align 4, !dbg !5809
  store i32 %13, ptr %__val_pu, align 4, !dbg !5809
  %14 = call i64 @llvm.read_register.i64(metadata !5254), !dbg !5809
  %15 = load ptr, ptr %__ptr_pu, align 8, !dbg !5809
  %16 = load i32, ptr %__val_pu, align 4, !dbg !5809
  %17 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %15, i32 %16, i64 4, i64 %14) #19, !dbg !5809, !srcloc !5810
  %asmresult = extractvalue { ptr, i64 } %17, 0, !dbg !5809
  %asmresult7 = extractvalue { ptr, i64 } %17, 1, !dbg !5809
  %18 = ptrtoint ptr %asmresult to i64, !dbg !5809
  %19 = trunc i64 %18 to i32, !dbg !5809
  store i32 %19, ptr %__ret_pu, align 4, !dbg !5809
  call void @llvm.write_register.i64(metadata !5254, i64 %asmresult7), !dbg !5809
  %20 = load ptr, ptr %__ptr, align 8, !dbg !5811
  call void @kmsan_copy_to_user(ptr noundef %20, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #20, !dbg !5811
  %21 = load i32, ptr %__ret_pu, align 4, !dbg !5809
  %conv9 = sext i32 %21 to i64, !dbg !5809
  %expval = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !5809
  store i64 %expval, ptr %tmp8, align 8, !dbg !5809
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #19, !dbg !5808
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #19, !dbg !5808
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #19, !dbg !5808
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #19, !dbg !5808
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #19, !dbg !5808
  %22 = load i64, ptr %tmp8, align 8, !dbg !5809
  store i64 %22, ptr %tmp, align 8, !dbg !5808
  %23 = load i64, ptr %tmp, align 8, !dbg !5808
  store i64 %23, ptr %retval, align 8, !dbg !5813
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5813

sw.bb10:                                          ; preds = %entry
  call void @might_fault() #20, !dbg !5814
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu12) #19, !dbg !5815
  call void @llvm.dbg.declare(metadata ptr %__ret_pu12, metadata !5180, metadata !DIExpression()), !dbg !5815
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu13) #19, !dbg !5815
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu13, metadata !5183, metadata !DIExpression()), !dbg !5815
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu14) #19, !dbg !5815
  call void @llvm.dbg.declare(metadata ptr %__val_pu14, metadata !5184, metadata !DIExpression()), !dbg !5815
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x15) #19, !dbg !5815
  call void @llvm.dbg.declare(metadata ptr %__x15, metadata !5185, metadata !DIExpression()), !dbg !5815
  store i32 0, ptr %__x15, align 4, !dbg !5815
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr16) #19, !dbg !5815
  call void @llvm.dbg.declare(metadata ptr %__ptr16, metadata !5186, metadata !DIExpression()), !dbg !5815
  %24 = load ptr, ptr %intp, align 8, !dbg !5815
  store ptr %24, ptr %__ptr16, align 8, !dbg !5815
  %25 = load ptr, ptr %__ptr16, align 8, !dbg !5815
  store ptr %25, ptr %__ptr_pu13, align 8, !dbg !5815
  %26 = load i32, ptr %__x15, align 4, !dbg !5815
  store i32 %26, ptr %__val_pu14, align 4, !dbg !5815
  %27 = call i64 @llvm.read_register.i64(metadata !5254), !dbg !5815
  %28 = load ptr, ptr %__ptr_pu13, align 8, !dbg !5815
  %29 = load i32, ptr %__val_pu14, align 4, !dbg !5815
  %30 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %28, i32 %29, i64 4, i64 %27) #19, !dbg !5815, !srcloc !5816
  %asmresult17 = extractvalue { ptr, i64 } %30, 0, !dbg !5815
  %asmresult18 = extractvalue { ptr, i64 } %30, 1, !dbg !5815
  %31 = ptrtoint ptr %asmresult17 to i64, !dbg !5815
  %32 = trunc i64 %31 to i32, !dbg !5815
  store i32 %32, ptr %__ret_pu12, align 4, !dbg !5815
  call void @llvm.write_register.i64(metadata !5254, i64 %asmresult18), !dbg !5815
  %33 = load ptr, ptr %__ptr16, align 8, !dbg !5817
  call void @kmsan_copy_to_user(ptr noundef %33, ptr noundef %__x15, i64 noundef 4, i64 noundef 0) #20, !dbg !5817
  %34 = load i32, ptr %__ret_pu12, align 4, !dbg !5815
  %conv20 = sext i32 %34 to i64, !dbg !5815
  %expval21 = call i64 @llvm.expect.i64(i64 %conv20, i64 0), !dbg !5815
  store i64 %expval21, ptr %tmp19, align 8, !dbg !5815
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr16) #19, !dbg !5814
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x15) #19, !dbg !5814
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu14) #19, !dbg !5814
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu13) #19, !dbg !5814
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu12) #19, !dbg !5814
  %35 = load i64, ptr %tmp19, align 8, !dbg !5815
  store i64 %35, ptr %tmp11, align 8, !dbg !5814
  %36 = load i64, ptr %tmp11, align 8, !dbg !5814
  store i64 %36, ptr %retval, align 8, !dbg !5819
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5819

sw.bb22:                                          ; preds = %entry
  call void @might_fault() #20, !dbg !5820
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu24) #19, !dbg !5821
  call void @llvm.dbg.declare(metadata ptr %__ret_pu24, metadata !5187, metadata !DIExpression()), !dbg !5821
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu25) #19, !dbg !5821
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu25, metadata !5190, metadata !DIExpression()), !dbg !5821
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu26) #19, !dbg !5821
  call void @llvm.dbg.declare(metadata ptr %__val_pu26, metadata !5191, metadata !DIExpression()), !dbg !5821
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x27) #19, !dbg !5821
  call void @llvm.dbg.declare(metadata ptr %__x27, metadata !5192, metadata !DIExpression()), !dbg !5821
  store i32 0, ptr %__x27, align 4, !dbg !5821
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr28) #19, !dbg !5821
  call void @llvm.dbg.declare(metadata ptr %__ptr28, metadata !5193, metadata !DIExpression()), !dbg !5821
  %37 = load ptr, ptr %intp, align 8, !dbg !5821
  store ptr %37, ptr %__ptr28, align 8, !dbg !5821
  %38 = load ptr, ptr %__ptr28, align 8, !dbg !5821
  store ptr %38, ptr %__ptr_pu25, align 8, !dbg !5821
  %39 = load i32, ptr %__x27, align 4, !dbg !5821
  store i32 %39, ptr %__val_pu26, align 4, !dbg !5821
  %40 = call i64 @llvm.read_register.i64(metadata !5254), !dbg !5821
  %41 = load ptr, ptr %__ptr_pu25, align 8, !dbg !5821
  %42 = load i32, ptr %__val_pu26, align 4, !dbg !5821
  %43 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %41, i32 %42, i64 4, i64 %40) #19, !dbg !5821, !srcloc !5822
  %asmresult29 = extractvalue { ptr, i64 } %43, 0, !dbg !5821
  %asmresult30 = extractvalue { ptr, i64 } %43, 1, !dbg !5821
  %44 = ptrtoint ptr %asmresult29 to i64, !dbg !5821
  %45 = trunc i64 %44 to i32, !dbg !5821
  store i32 %45, ptr %__ret_pu24, align 4, !dbg !5821
  call void @llvm.write_register.i64(metadata !5254, i64 %asmresult30), !dbg !5821
  %46 = load ptr, ptr %__ptr28, align 8, !dbg !5823
  call void @kmsan_copy_to_user(ptr noundef %46, ptr noundef %__x27, i64 noundef 4, i64 noundef 0) #20, !dbg !5823
  %47 = load i32, ptr %__ret_pu24, align 4, !dbg !5821
  %conv32 = sext i32 %47 to i64, !dbg !5821
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !5821
  store i64 %expval33, ptr %tmp31, align 8, !dbg !5821
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr28) #19, !dbg !5820
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x27) #19, !dbg !5820
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu26) #19, !dbg !5820
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu25) #19, !dbg !5820
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu24) #19, !dbg !5820
  %48 = load i64, ptr %tmp31, align 8, !dbg !5821
  store i64 %48, ptr %tmp23, align 8, !dbg !5820
  %49 = load i64, ptr %tmp23, align 8, !dbg !5820
  store i64 %49, ptr %retval, align 8, !dbg !5825
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5825

sw.bb34:                                          ; preds = %entry
  call void @might_fault() #20, !dbg !5826
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #19, !dbg !5827
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !5194, metadata !DIExpression()), !dbg !5827
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #19, !dbg !5827
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !5198, metadata !DIExpression()), !dbg !5827
  %50 = call i64 @llvm.read_register.i64(metadata !5254), !dbg !5827
  %51 = load ptr, ptr %intp, align 8, !dbg !5827
  %52 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %51, i64 4, i64 %50) #19, !dbg !5827, !srcloc !5828
  %asmresult36 = extractvalue { ptr, i32, i64 } %52, 0, !dbg !5827
  %asmresult37 = extractvalue { ptr, i32, i64 } %52, 1, !dbg !5827
  %asmresult38 = extractvalue { ptr, i32, i64 } %52, 2, !dbg !5827
  %53 = ptrtoint ptr %asmresult36 to i64, !dbg !5827
  %54 = trunc i64 %53 to i32, !dbg !5827
  store i32 %54, ptr %__ret_gu, align 4, !dbg !5827
  store i32 %asmresult37, ptr %__val_gu, align 4, !dbg !5827
  call void @llvm.write_register.i64(metadata !5254, i64 %asmresult38), !dbg !5827
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #19, !dbg !5829
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !5199, metadata !DIExpression()), !dbg !5829
  %55 = load i32, ptr %__val_gu, align 4, !dbg !5829
  %conv39 = zext i32 %55 to i64, !dbg !5829
  store i64 %conv39, ptr %__tmp, align 8, !dbg !5829
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #20, !dbg !5829
  %56 = load i64, ptr %__tmp, align 8, !dbg !5829
  %conv41 = trunc i64 %56 to i32, !dbg !5829
  store i32 %conv41, ptr %__val_gu, align 4, !dbg !5829
  store i32 %conv41, ptr %tmp40, align 4, !dbg !5829
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #19, !dbg !5827
  %57 = load i32, ptr %tmp40, align 4, !dbg !5829
  %58 = load i32, ptr %__val_gu, align 4, !dbg !5827
  store i32 %58, ptr %val, align 4, !dbg !5827
  %59 = load i32, ptr %__ret_gu, align 4, !dbg !5827
  %conv43 = sext i32 %59 to i64, !dbg !5827
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !5827
  store i64 %expval44, ptr %tmp42, align 8, !dbg !5827
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #19, !dbg !5826
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #19, !dbg !5826
  %60 = load i64, ptr %tmp42, align 8, !dbg !5827
  store i64 %60, ptr %tmp35, align 8, !dbg !5826
  %61 = load i64, ptr %tmp35, align 8, !dbg !5826
  %tobool = icmp ne i64 %61, 0, !dbg !5830
  br i1 %tobool, label %if.then, label %if.end, !dbg !5831

if.then:                                          ; preds = %sw.bb34
  store i64 -14, ptr %retval, align 8, !dbg !5832
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5832

if.end:                                           ; preds = %sw.bb34
  %62 = load i32, ptr %val, align 4, !dbg !5833
  %conv45 = sext i32 %62 to i64, !dbg !5833
  %call46 = call i64 @clock_t_to_jiffies(i64 noundef %conv45) #20, !dbg !5834
  %conv47 = trunc i64 %call46 to i32, !dbg !5834
  %63 = load ptr, ptr %bd, align 8, !dbg !5835
  %timeout = getelementptr inbounds %struct.bsg_device, ptr %63, i32 0, i32 4, !dbg !5836
  store i32 %conv47, ptr %timeout, align 4, !dbg !5837
  store i64 0, ptr %retval, align 8, !dbg !5838
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5838

sw.bb48:                                          ; preds = %entry
  %64 = load ptr, ptr %bd, align 8, !dbg !5839
  %timeout49 = getelementptr inbounds %struct.bsg_device, ptr %64, i32 0, i32 4, !dbg !5840
  %65 = load i32, ptr %timeout49, align 4, !dbg !5840
  %conv50 = zext i32 %65 to i64, !dbg !5839
  %call51 = call i64 @jiffies_to_clock_t(i64 noundef %conv50) #20, !dbg !5841
  store i64 %call51, ptr %retval, align 8, !dbg !5842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5842

sw.bb52:                                          ; preds = %entry
  call void @might_fault() #20, !dbg !5843
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu54) #19, !dbg !5844
  call void @llvm.dbg.declare(metadata ptr %__ret_pu54, metadata !5201, metadata !DIExpression()), !dbg !5844
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu55) #19, !dbg !5844
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu55, metadata !5204, metadata !DIExpression()), !dbg !5844
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu56) #19, !dbg !5844
  call void @llvm.dbg.declare(metadata ptr %__val_pu56, metadata !5205, metadata !DIExpression()), !dbg !5844
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x57) #19, !dbg !5844
  call void @llvm.dbg.declare(metadata ptr %__x57, metadata !5206, metadata !DIExpression()), !dbg !5844
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x339) #19, !dbg !5845
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x339, metadata !5207, metadata !DIExpression()), !dbg !5845
  %66 = load ptr, ptr %bd, align 8, !dbg !5845
  %reserved_size = getelementptr inbounds %struct.bsg_device, ptr %66, i32 0, i32 5, !dbg !5845
  %67 = load i32, ptr %reserved_size, align 8, !dbg !5845
  store i32 %67, ptr %__UNIQUE_ID___x339, align 4, !dbg !5845
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y340) #19, !dbg !5845
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y340, metadata !5209, metadata !DIExpression()), !dbg !5845
  %68 = load ptr, ptr %q, align 8, !dbg !5845
  %call58 = call i32 @queue_max_bytes(ptr noundef %68) #20, !dbg !5845
  store i32 %call58, ptr %__UNIQUE_ID___y340, align 4, !dbg !5845
  %69 = load i32, ptr %__UNIQUE_ID___x339, align 4, !dbg !5845
  %70 = load i32, ptr %__UNIQUE_ID___y340, align 4, !dbg !5845
  %cmp = icmp ult i32 %69, %70, !dbg !5845
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5845

cond.true:                                        ; preds = %sw.bb52
  %71 = load i32, ptr %__UNIQUE_ID___x339, align 4, !dbg !5845
  br label %cond.end, !dbg !5845

cond.false:                                       ; preds = %sw.bb52
  %72 = load i32, ptr %__UNIQUE_ID___y340, align 4, !dbg !5845
  br label %cond.end, !dbg !5845

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %71, %cond.true ], [ %72, %cond.false ], !dbg !5845
  store i32 %cond, ptr %tmp59, align 4, !dbg !5845
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y340) #19, !dbg !5844
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x339) #19, !dbg !5844
  %73 = load i32, ptr %tmp59, align 4, !dbg !5845
  store i32 %73, ptr %__x57, align 4, !dbg !5844
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr61) #19, !dbg !5844
  call void @llvm.dbg.declare(metadata ptr %__ptr61, metadata !5210, metadata !DIExpression()), !dbg !5844
  %74 = load ptr, ptr %intp, align 8, !dbg !5844
  store ptr %74, ptr %__ptr61, align 8, !dbg !5844
  %75 = load ptr, ptr %__ptr61, align 8, !dbg !5844
  store ptr %75, ptr %__ptr_pu55, align 8, !dbg !5844
  %76 = load i32, ptr %__x57, align 4, !dbg !5844
  store i32 %76, ptr %__val_pu56, align 4, !dbg !5844
  %77 = call i64 @llvm.read_register.i64(metadata !5254), !dbg !5844
  %78 = load ptr, ptr %__ptr_pu55, align 8, !dbg !5844
  %79 = load i32, ptr %__val_pu56, align 4, !dbg !5844
  %80 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %78, i32 %79, i64 4, i64 %77) #19, !dbg !5844, !srcloc !5846
  %asmresult62 = extractvalue { ptr, i64 } %80, 0, !dbg !5844
  %asmresult63 = extractvalue { ptr, i64 } %80, 1, !dbg !5844
  %81 = ptrtoint ptr %asmresult62 to i64, !dbg !5844
  %82 = trunc i64 %81 to i32, !dbg !5844
  store i32 %82, ptr %__ret_pu54, align 4, !dbg !5844
  call void @llvm.write_register.i64(metadata !5254, i64 %asmresult63), !dbg !5844
  %83 = load ptr, ptr %__ptr61, align 8, !dbg !5847
  call void @kmsan_copy_to_user(ptr noundef %83, ptr noundef %__x57, i64 noundef 4, i64 noundef 0) #20, !dbg !5847
  %84 = load i32, ptr %__ret_pu54, align 4, !dbg !5844
  %conv65 = sext i32 %84 to i64, !dbg !5844
  %expval66 = call i64 @llvm.expect.i64(i64 %conv65, i64 0), !dbg !5844
  store i64 %expval66, ptr %tmp64, align 8, !dbg !5844
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr61) #19, !dbg !5843
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x57) #19, !dbg !5843
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu56) #19, !dbg !5843
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu55) #19, !dbg !5843
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu54) #19, !dbg !5843
  %85 = load i64, ptr %tmp64, align 8, !dbg !5844
  store i64 %85, ptr %tmp53, align 8, !dbg !5843
  %86 = load i64, ptr %tmp53, align 8, !dbg !5843
  store i64 %86, ptr %retval, align 8, !dbg !5849
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5849

sw.bb67:                                          ; preds = %entry
  call void @might_fault() #20, !dbg !5850
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu69) #19, !dbg !5851
  call void @llvm.dbg.declare(metadata ptr %__ret_gu69, metadata !5211, metadata !DIExpression()), !dbg !5851
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu70) #19, !dbg !5851
  call void @llvm.dbg.declare(metadata ptr %__val_gu70, metadata !5215, metadata !DIExpression()), !dbg !5851
  %87 = call i64 @llvm.read_register.i64(metadata !5254), !dbg !5851
  %88 = load ptr, ptr %intp, align 8, !dbg !5851
  %89 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %88, i64 4, i64 %87) #19, !dbg !5851, !srcloc !5852
  %asmresult71 = extractvalue { ptr, i32, i64 } %89, 0, !dbg !5851
  %asmresult72 = extractvalue { ptr, i32, i64 } %89, 1, !dbg !5851
  %asmresult73 = extractvalue { ptr, i32, i64 } %89, 2, !dbg !5851
  %90 = ptrtoint ptr %asmresult71 to i64, !dbg !5851
  %91 = trunc i64 %90 to i32, !dbg !5851
  store i32 %91, ptr %__ret_gu69, align 4, !dbg !5851
  store i32 %asmresult72, ptr %__val_gu70, align 4, !dbg !5851
  call void @llvm.write_register.i64(metadata !5254, i64 %asmresult73), !dbg !5851
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp74) #19, !dbg !5853
  call void @llvm.dbg.declare(metadata ptr %__tmp74, metadata !5216, metadata !DIExpression()), !dbg !5853
  %92 = load i32, ptr %__val_gu70, align 4, !dbg !5853
  %conv75 = zext i32 %92 to i64, !dbg !5853
  store i64 %conv75, ptr %__tmp74, align 8, !dbg !5853
  call void @kmsan_unpoison_memory(ptr noundef %__tmp74, i64 noundef 8) #20, !dbg !5853
  %93 = load i64, ptr %__tmp74, align 8, !dbg !5853
  %conv77 = trunc i64 %93 to i32, !dbg !5853
  store i32 %conv77, ptr %__val_gu70, align 4, !dbg !5853
  store i32 %conv77, ptr %tmp76, align 4, !dbg !5853
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp74) #19, !dbg !5851
  %94 = load i32, ptr %tmp76, align 4, !dbg !5853
  %95 = load i32, ptr %__val_gu70, align 4, !dbg !5851
  store i32 %95, ptr %val, align 4, !dbg !5851
  %96 = load i32, ptr %__ret_gu69, align 4, !dbg !5851
  %conv79 = sext i32 %96 to i64, !dbg !5851
  %expval80 = call i64 @llvm.expect.i64(i64 %conv79, i64 0), !dbg !5851
  store i64 %expval80, ptr %tmp78, align 8, !dbg !5851
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu70) #19, !dbg !5850
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu69) #19, !dbg !5850
  %97 = load i64, ptr %tmp78, align 8, !dbg !5851
  store i64 %97, ptr %tmp68, align 8, !dbg !5850
  %98 = load i64, ptr %tmp68, align 8, !dbg !5850
  %tobool81 = icmp ne i64 %98, 0, !dbg !5854
  br i1 %tobool81, label %if.then82, label %if.end83, !dbg !5855

if.then82:                                        ; preds = %sw.bb67
  store i64 -14, ptr %retval, align 8, !dbg !5856
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5856

if.end83:                                         ; preds = %sw.bb67
  %99 = load i32, ptr %val, align 4, !dbg !5857
  %cmp84 = icmp slt i32 %99, 0, !dbg !5859
  br i1 %cmp84, label %if.then86, label %if.end87, !dbg !5860

if.then86:                                        ; preds = %if.end83
  store i64 -22, ptr %retval, align 8, !dbg !5861
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5861

if.end87:                                         ; preds = %if.end83
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x341) #19, !dbg !5862
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x341, metadata !5218, metadata !DIExpression()), !dbg !5862
  %100 = load i32, ptr %val, align 4, !dbg !5862
  store i32 %100, ptr %__UNIQUE_ID___x341, align 4, !dbg !5862
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y342) #19, !dbg !5862
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y342, metadata !5220, metadata !DIExpression()), !dbg !5862
  %101 = load ptr, ptr %q, align 8, !dbg !5862
  %call88 = call i32 @queue_max_bytes(ptr noundef %101) #20, !dbg !5862
  store i32 %call88, ptr %__UNIQUE_ID___y342, align 4, !dbg !5862
  %102 = load i32, ptr %__UNIQUE_ID___x341, align 4, !dbg !5862
  %103 = load i32, ptr %__UNIQUE_ID___y342, align 4, !dbg !5862
  %cmp90 = icmp ult i32 %102, %103, !dbg !5862
  br i1 %cmp90, label %cond.true92, label %cond.false93, !dbg !5862

cond.true92:                                      ; preds = %if.end87
  %104 = load i32, ptr %__UNIQUE_ID___x341, align 4, !dbg !5862
  br label %cond.end94, !dbg !5862

cond.false93:                                     ; preds = %if.end87
  %105 = load i32, ptr %__UNIQUE_ID___y342, align 4, !dbg !5862
  br label %cond.end94, !dbg !5862

cond.end94:                                       ; preds = %cond.false93, %cond.true92
  %cond95 = phi i32 [ %104, %cond.true92 ], [ %105, %cond.false93 ], !dbg !5862
  store i32 %cond95, ptr %tmp89, align 4, !dbg !5862
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y342) #19, !dbg !5863
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x341) #19, !dbg !5863
  %106 = load i32, ptr %tmp89, align 4, !dbg !5862
  %107 = load ptr, ptr %bd, align 8, !dbg !5864
  %reserved_size96 = getelementptr inbounds %struct.bsg_device, ptr %107, i32 0, i32 5, !dbg !5865
  store i32 %106, ptr %reserved_size96, align 8, !dbg !5866
  store i64 0, ptr %retval, align 8, !dbg !5867
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5867

sw.bb97:                                          ; preds = %entry
  call void @might_fault() #20, !dbg !5868
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu99) #19, !dbg !5869
  call void @llvm.dbg.declare(metadata ptr %__ret_pu99, metadata !5221, metadata !DIExpression()), !dbg !5869
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu100) #19, !dbg !5869
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu100, metadata !5224, metadata !DIExpression()), !dbg !5869
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu101) #19, !dbg !5869
  call void @llvm.dbg.declare(metadata ptr %__val_pu101, metadata !5225, metadata !DIExpression()), !dbg !5869
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x102) #19, !dbg !5869
  call void @llvm.dbg.declare(metadata ptr %__x102, metadata !5226, metadata !DIExpression()), !dbg !5869
  store i32 1, ptr %__x102, align 4, !dbg !5869
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr103) #19, !dbg !5869
  call void @llvm.dbg.declare(metadata ptr %__ptr103, metadata !5227, metadata !DIExpression()), !dbg !5869
  %108 = load ptr, ptr %intp, align 8, !dbg !5869
  store ptr %108, ptr %__ptr103, align 8, !dbg !5869
  %109 = load ptr, ptr %__ptr103, align 8, !dbg !5869
  store ptr %109, ptr %__ptr_pu100, align 8, !dbg !5869
  %110 = load i32, ptr %__x102, align 4, !dbg !5869
  store i32 %110, ptr %__val_pu101, align 4, !dbg !5869
  %111 = call i64 @llvm.read_register.i64(metadata !5254), !dbg !5869
  %112 = load ptr, ptr %__ptr_pu100, align 8, !dbg !5869
  %113 = load i32, ptr %__val_pu101, align 4, !dbg !5869
  %114 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %112, i32 %113, i64 4, i64 %111) #19, !dbg !5869, !srcloc !5870
  %asmresult104 = extractvalue { ptr, i64 } %114, 0, !dbg !5869
  %asmresult105 = extractvalue { ptr, i64 } %114, 1, !dbg !5869
  %115 = ptrtoint ptr %asmresult104 to i64, !dbg !5869
  %116 = trunc i64 %115 to i32, !dbg !5869
  store i32 %116, ptr %__ret_pu99, align 4, !dbg !5869
  call void @llvm.write_register.i64(metadata !5254, i64 %asmresult105), !dbg !5869
  %117 = load ptr, ptr %__ptr103, align 8, !dbg !5871
  call void @kmsan_copy_to_user(ptr noundef %117, ptr noundef %__x102, i64 noundef 4, i64 noundef 0) #20, !dbg !5871
  %118 = load i32, ptr %__ret_pu99, align 4, !dbg !5869
  %conv107 = sext i32 %118 to i64, !dbg !5869
  %expval108 = call i64 @llvm.expect.i64(i64 %conv107, i64 0), !dbg !5869
  store i64 %expval108, ptr %tmp106, align 8, !dbg !5869
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr103) #19, !dbg !5868
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x102) #19, !dbg !5868
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu101) #19, !dbg !5868
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu100) #19, !dbg !5868
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu99) #19, !dbg !5868
  %119 = load i64, ptr %tmp106, align 8, !dbg !5869
  store i64 %119, ptr %tmp98, align 8, !dbg !5868
  %120 = load i64, ptr %tmp98, align 8, !dbg !5868
  store i64 %120, ptr %retval, align 8, !dbg !5873
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5873

sw.bb109:                                         ; preds = %entry
  %121 = load ptr, ptr %bd, align 8, !dbg !5874
  %122 = load ptr, ptr %file.addr, align 8, !dbg !5875
  %f_mode = getelementptr inbounds %struct.file, ptr %122, i32 0, i32 2, !dbg !5876
  %123 = load i32, ptr %f_mode, align 4, !dbg !5876
  %and = and i32 %123, 2, !dbg !5877
  %tobool110 = icmp ne i32 %and, 0, !dbg !5875
  %124 = load ptr, ptr %uarg, align 8, !dbg !5878
  %call111 = call i32 @bsg_sg_io(ptr noundef %121, i1 noundef zeroext %tobool110, ptr noundef %124) #20, !dbg !5879
  %conv112 = sext i32 %call111 to i64, !dbg !5879
  store i64 %conv112, ptr %retval, align 8, !dbg !5880
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5880

sw.bb113:                                         ; preds = %entry
  %call114 = call i32 @___ratelimit(ptr noundef @bsg_ioctl._rs, ptr noundef @__func__.bsg_ioctl) #20, !dbg !5881
  %tobool115 = icmp ne i32 %call114, 0, !dbg !5881
  br i1 %tobool115, label %if.then116, label %if.end120, !dbg !5884

if.then116:                                       ; preds = %sw.bb113
  br label %do.body, !dbg !5885

do.body:                                          ; preds = %if.then116
  br label %do.cond, !dbg !5887

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5887

do.end:                                           ; preds = %do.cond
  %call118 = call ptr @get_current() #20, !dbg !5885
  %comm = getelementptr inbounds %struct.task_struct, ptr %call118, i32 0, i32 96, !dbg !5885
  %arraydecay = getelementptr inbounds [16 x i8], ptr %comm, i64 0, i64 0, !dbg !5885
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef %arraydecay) #22, !dbg !5885
  store i32 %call119, ptr %tmp117, align 4, !dbg !5887
  %125 = load i32, ptr %tmp117, align 4, !dbg !5885
  br label %if.end120, !dbg !5881

if.end120:                                        ; preds = %do.end, %sw.bb113
  store i64 -22, ptr %retval, align 8, !dbg !5889
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5889

sw.default:                                       ; preds = %entry
  store i64 -25, ptr %retval, align 8, !dbg !5890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5890

cleanup:                                          ; preds = %sw.default, %if.end120, %sw.bb109, %sw.bb97, %cond.end94, %if.then86, %if.then82, %cond.end, %sw.bb48, %if.end, %if.then, %sw.bb22, %sw.bb10, %sw.bb6, %sw.bb3, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #19, !dbg !5891
  call void @llvm.lifetime.end.p0(i64 8, ptr %intp) #19, !dbg !5891
  call void @llvm.lifetime.end.p0(i64 8, ptr %uarg) #19, !dbg !5891
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #19, !dbg !5891
  call void @llvm.lifetime.end.p0(i64 8, ptr %bd) #19, !dbg !5891
  %126 = load i64, ptr %retval, align 8, !dbg !5891
  ret i64 %126, !dbg !5891
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @compat_ptr_ioctl(ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bsg_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !5892 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5894, metadata !DIExpression()), !dbg !5896
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5895, metadata !DIExpression()), !dbg !5897
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5898
  %call = call ptr @to_bsg_device(ptr noundef %0) #20, !dbg !5900
  %queue = getelementptr inbounds %struct.bsg_device, ptr %call, i32 0, i32 0, !dbg !5901
  %1 = load ptr, ptr %queue, align 8, !dbg !5901
  %call1 = call zeroext i1 @blk_get_queue(ptr noundef %1) #20, !dbg !5902
  br i1 %call1, label %if.end, label %if.then, !dbg !5903

if.then:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4, !dbg !5904
  br label %return, !dbg !5904

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5905
  br label %return, !dbg !5905

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5906
  ret i32 %2, !dbg !5906
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bsg_release(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !5907 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5909, metadata !DIExpression()), !dbg !5911
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5910, metadata !DIExpression()), !dbg !5912
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5913
  %call = call ptr @to_bsg_device(ptr noundef %0) #20, !dbg !5914
  %queue = getelementptr inbounds %struct.bsg_device, ptr %call, i32 0, i32 0, !dbg !5915
  %1 = load ptr, ptr %queue, align 8, !dbg !5915
  call void @blk_put_queue(ptr noundef %1) #20, !dbg !5916
  ret i32 0, !dbg !5917
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_bsg_device(ptr noundef %inode) #5 align 16 !dbg !5918 {
entry:
  %inode.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5922, metadata !DIExpression()), !dbg !5925
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !5926
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5923, metadata !DIExpression()), !dbg !5926
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5926
  %1 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43, !dbg !5926
  %2 = load ptr, ptr %1, align 8, !dbg !5926
  store ptr %2, ptr %__mptr, align 8, !dbg !5926
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5926
  %add.ptr = getelementptr i8, ptr %3, i64 -736, !dbg !5926
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5926
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !5927
  %4 = load ptr, ptr %tmp, align 8, !dbg !5926
  ret ptr %4, !dbg !5928
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #5 align 16 !dbg !5929 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !5935, metadata !DIExpression()), !dbg !5936
  %0 = load ptr, ptr %f.addr, align 8, !dbg !5937
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !5938
  %1 = load ptr, ptr %f_inode, align 8, !dbg !5938
  ret ptr %1, !dbg !5939
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bsg_get_command_q(ptr noundef %bd, ptr noundef %uarg) #0 align 16 !dbg !5940 {
entry:
  %bd.addr = alloca ptr, align 8
  %uarg.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp3 = alloca i64, align 8
  store ptr %bd, ptr %bd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bd.addr, metadata !5944, metadata !DIExpression()), !dbg !5953
  store ptr %uarg, ptr %uarg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uarg.addr, metadata !5945, metadata !DIExpression()), !dbg !5954
  call void @might_fault() #20, !dbg !5955
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #19, !dbg !5956
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !5946, metadata !DIExpression()), !dbg !5956
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #19, !dbg !5956
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !5949, metadata !DIExpression()), !dbg !5956
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #19, !dbg !5956
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !5950, metadata !DIExpression()), !dbg !5956
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #19, !dbg !5956
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !5951, metadata !DIExpression()), !dbg !5956
  br label %do.body, !dbg !5957

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5959

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5959

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %bd.addr, align 8, !dbg !5957
  %max_queue = getelementptr inbounds %struct.bsg_device, ptr %0, i32 0, i32 3, !dbg !5957
  %1 = load volatile i32, ptr %max_queue, align 8, !dbg !5957
  store i32 %1, ptr %tmp1, align 4, !dbg !5959
  %2 = load i32, ptr %tmp1, align 4, !dbg !5957
  store i32 %2, ptr %__x, align 4, !dbg !5956
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #19, !dbg !5956
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5952, metadata !DIExpression()), !dbg !5956
  %3 = load ptr, ptr %uarg.addr, align 8, !dbg !5956
  store ptr %3, ptr %__ptr, align 8, !dbg !5956
  %4 = load ptr, ptr %__ptr, align 8, !dbg !5956
  store ptr %4, ptr %__ptr_pu, align 8, !dbg !5956
  %5 = load i32, ptr %__x, align 4, !dbg !5956
  store i32 %5, ptr %__val_pu, align 4, !dbg !5956
  %6 = call i64 @llvm.read_register.i64(metadata !5254), !dbg !5956
  %7 = load ptr, ptr %__ptr_pu, align 8, !dbg !5956
  %8 = load i32, ptr %__val_pu, align 4, !dbg !5956
  %9 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %7, i32 %8, i64 4, i64 %6) #19, !dbg !5956, !srcloc !5961
  %asmresult = extractvalue { ptr, i64 } %9, 0, !dbg !5956
  %asmresult2 = extractvalue { ptr, i64 } %9, 1, !dbg !5956
  %10 = ptrtoint ptr %asmresult to i64, !dbg !5956
  %11 = trunc i64 %10 to i32, !dbg !5956
  store i32 %11, ptr %__ret_pu, align 4, !dbg !5956
  call void @llvm.write_register.i64(metadata !5254, i64 %asmresult2), !dbg !5956
  %12 = load ptr, ptr %__ptr, align 8, !dbg !5962
  call void @kmsan_copy_to_user(ptr noundef %12, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #20, !dbg !5962
  %13 = load i32, ptr %__ret_pu, align 4, !dbg !5956
  %conv = sext i32 %13 to i64, !dbg !5956
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5956
  store i64 %expval, ptr %tmp3, align 8, !dbg !5956
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #19, !dbg !5955
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #19, !dbg !5955
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #19, !dbg !5955
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #19, !dbg !5955
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #19, !dbg !5955
  %14 = load i64, ptr %tmp3, align 8, !dbg !5956
  store i64 %14, ptr %tmp, align 8, !dbg !5955
  %15 = load i64, ptr %tmp, align 8, !dbg !5955
  %conv4 = trunc i64 %15 to i32, !dbg !5964
  ret i32 %conv4, !dbg !5965
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bsg_set_command_q(ptr noundef %bd, ptr noundef %uarg) #0 align 16 !dbg !5966 {
entry:
  %retval = alloca i32, align 4
  %bd.addr = alloca ptr, align 8
  %uarg.addr = alloca ptr, align 8
  %max_queue = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %tmp5 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bd, ptr %bd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bd.addr, metadata !5968, metadata !DIExpression()), !dbg !5978
  store ptr %uarg, ptr %uarg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uarg.addr, metadata !5969, metadata !DIExpression()), !dbg !5979
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_queue) #19, !dbg !5980
  call void @llvm.dbg.declare(metadata ptr %max_queue, metadata !5970, metadata !DIExpression()), !dbg !5981
  call void @might_fault() #20, !dbg !5982
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #19, !dbg !5983
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !5971, metadata !DIExpression()), !dbg !5983
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #19, !dbg !5983
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !5975, metadata !DIExpression()), !dbg !5983
  %0 = call i64 @llvm.read_register.i64(metadata !5254), !dbg !5983
  %1 = load ptr, ptr %uarg.addr, align 8, !dbg !5983
  %2 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %1, i64 4, i64 %0) #19, !dbg !5983, !srcloc !5984
  %asmresult = extractvalue { ptr, i32, i64 } %2, 0, !dbg !5983
  %asmresult1 = extractvalue { ptr, i32, i64 } %2, 1, !dbg !5983
  %asmresult2 = extractvalue { ptr, i32, i64 } %2, 2, !dbg !5983
  %3 = ptrtoint ptr %asmresult to i64, !dbg !5983
  %4 = trunc i64 %3 to i32, !dbg !5983
  store i32 %4, ptr %__ret_gu, align 4, !dbg !5983
  store i32 %asmresult1, ptr %__val_gu, align 4, !dbg !5983
  call void @llvm.write_register.i64(metadata !5254, i64 %asmresult2), !dbg !5983
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #19, !dbg !5985
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !5976, metadata !DIExpression()), !dbg !5985
  %5 = load i32, ptr %__val_gu, align 4, !dbg !5985
  %conv = zext i32 %5 to i64, !dbg !5985
  store i64 %conv, ptr %__tmp, align 8, !dbg !5985
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #20, !dbg !5985
  %6 = load i64, ptr %__tmp, align 8, !dbg !5985
  %conv4 = trunc i64 %6 to i32, !dbg !5985
  store i32 %conv4, ptr %__val_gu, align 4, !dbg !5985
  store i32 %conv4, ptr %tmp3, align 4, !dbg !5985
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #19, !dbg !5983
  %7 = load i32, ptr %tmp3, align 4, !dbg !5985
  %8 = load i32, ptr %__val_gu, align 4, !dbg !5983
  store i32 %8, ptr %max_queue, align 4, !dbg !5983
  %9 = load i32, ptr %__ret_gu, align 4, !dbg !5983
  %conv6 = sext i32 %9 to i64, !dbg !5983
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !5983
  store i64 %expval, ptr %tmp5, align 8, !dbg !5983
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #19, !dbg !5982
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #19, !dbg !5982
  %10 = load i64, ptr %tmp5, align 8, !dbg !5983
  store i64 %10, ptr %tmp, align 8, !dbg !5982
  %11 = load i64, ptr %tmp, align 8, !dbg !5982
  %tobool = icmp ne i64 %11, 0, !dbg !5986
  br i1 %tobool, label %if.then, label %if.end, !dbg !5987

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !5988
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5988

if.end:                                           ; preds = %entry
  %12 = load i32, ptr %max_queue, align 4, !dbg !5989
  %cmp = icmp slt i32 %12, 1, !dbg !5991
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !5992

if.then8:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5993
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5993

if.end9:                                          ; preds = %if.end
  br label %do.body, !dbg !5994

do.body:                                          ; preds = %if.end9
  br label %do.body10, !dbg !5995

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !5997

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !5997

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !5995

do.body11:                                        ; preds = %do.end
  %13 = load i32, ptr %max_queue, align 4, !dbg !5999
  %14 = load ptr, ptr %bd.addr, align 8, !dbg !5999
  %max_queue12 = getelementptr inbounds %struct.bsg_device, ptr %14, i32 0, i32 3, !dbg !5999
  store volatile i32 %13, ptr %max_queue12, align 8, !dbg !5999
  br label %do.cond13, !dbg !5999

do.cond13:                                        ; preds = %do.body11
  br label %do.end14, !dbg !5999

do.end14:                                         ; preds = %do.cond13
  br label %do.cond15, !dbg !5995

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5995

do.end16:                                         ; preds = %do.cond15
  store i32 0, ptr %retval, align 4, !dbg !6001
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6001

cleanup:                                          ; preds = %do.end16, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_queue) #19, !dbg !6002
  %15 = load i32, ptr %retval, align 4, !dbg !6002
  ret i32 %15, !dbg !6002
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #5 align 16 !dbg !6003 {
entry:
  ret void, !dbg !6005
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #15

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #5 align 16 !dbg !6006 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6011, metadata !DIExpression()), !dbg !6015
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6012, metadata !DIExpression()), !dbg !6016
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !6013, metadata !DIExpression()), !dbg !6017
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !6014, metadata !DIExpression()), !dbg !6018
  ret void, !dbg !6019
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #5 align 16 !dbg !6020 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6024, metadata !DIExpression()), !dbg !6026
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6025, metadata !DIExpression()), !dbg !6027
  ret void, !dbg !6028
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6029 dso_local i64 @clock_t_to_jiffies(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6033 dso_local i64 @jiffies_to_clock_t(i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queue_max_bytes(ptr noundef %q) #5 align 16 !dbg !6037 {
entry:
  %q.addr = alloca ptr, align 8
  %__UNIQUE_ID___x330 = alloca i32, align 4
  %__UNIQUE_ID___y331 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !6041, metadata !DIExpression()), !dbg !6045
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x330) #19, !dbg !6046
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x330, metadata !6042, metadata !DIExpression()), !dbg !6046
  %0 = load ptr, ptr %q.addr, align 8, !dbg !6046
  %call = call i32 @queue_max_sectors(ptr noundef %0) #20, !dbg !6046
  store i32 %call, ptr %__UNIQUE_ID___x330, align 4, !dbg !6046
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y331) #19, !dbg !6046
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y331, metadata !6044, metadata !DIExpression()), !dbg !6046
  store i32 4194303, ptr %__UNIQUE_ID___y331, align 4, !dbg !6046
  %1 = load i32, ptr %__UNIQUE_ID___x330, align 4, !dbg !6046
  %2 = load i32, ptr %__UNIQUE_ID___y331, align 4, !dbg !6046
  %cmp = icmp ult i32 %1, %2, !dbg !6046
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6046

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %__UNIQUE_ID___x330, align 4, !dbg !6046
  br label %cond.end, !dbg !6046

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %__UNIQUE_ID___y331, align 4, !dbg !6046
  br label %cond.end, !dbg !6046

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !6046
  store i32 %cond, ptr %tmp, align 4, !dbg !6046
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y331) #19, !dbg !6047
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x330) #19, !dbg !6047
  %5 = load i32, ptr %tmp, align 4, !dbg !6046
  %shl = shl i32 %5, 9, !dbg !6048
  ret i32 %shl, !dbg !6049
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bsg_sg_io(ptr noundef %bd, i1 noundef zeroext %open_for_write, ptr noundef %uarg) #0 align 16 !dbg !6050 {
entry:
  %retval = alloca i32, align 4
  %bd.addr = alloca ptr, align 8
  %open_for_write.addr = alloca i8, align 1
  %uarg.addr = alloca ptr, align 8
  %hdr = alloca %struct.sg_io_v4, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bd, ptr %bd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bd.addr, metadata !6054, metadata !DIExpression()), !dbg !6059
  %frombool = zext i1 %open_for_write to i8
  store i8 %frombool, ptr %open_for_write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %open_for_write.addr, metadata !6055, metadata !DIExpression()), !dbg !6060
  store ptr %uarg, ptr %uarg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uarg.addr, metadata !6056, metadata !DIExpression()), !dbg !6061
  call void @llvm.lifetime.start.p0(i64 160, ptr %hdr) #19, !dbg !6062
  call void @llvm.dbg.declare(metadata ptr %hdr, metadata !6057, metadata !DIExpression()), !dbg !6063
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !6064
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6058, metadata !DIExpression()), !dbg !6065
  %0 = load ptr, ptr %uarg.addr, align 8, !dbg !6066
  %call = call i64 @copy_from_user(ptr noundef %hdr, ptr noundef %0, i64 noundef 160) #20, !dbg !6068
  %tobool = icmp ne i64 %call, 0, !dbg !6068
  br i1 %tobool, label %if.then, label %if.end, !dbg !6069

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !6070
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6070

if.end:                                           ; preds = %entry
  %guard = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 0, !dbg !6071
  %1 = load i32, ptr %guard, align 8, !dbg !6071
  %cmp = icmp ne i32 %1, 81, !dbg !6073
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6074

if.then1:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6075
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6075

if.end2:                                          ; preds = %if.end
  %2 = load ptr, ptr %bd.addr, align 8, !dbg !6076
  %sg_io_fn = getelementptr inbounds %struct.bsg_device, ptr %2, i32 0, i32 6, !dbg !6077
  %3 = load ptr, ptr %sg_io_fn, align 8, !dbg !6077
  %4 = load ptr, ptr %bd.addr, align 8, !dbg !6078
  %queue = getelementptr inbounds %struct.bsg_device, ptr %4, i32 0, i32 0, !dbg !6079
  %5 = load ptr, ptr %queue, align 8, !dbg !6079
  %6 = load i8, ptr %open_for_write.addr, align 1, !dbg !6080, !range !5728, !noundef !568
  %tobool3 = trunc i8 %6 to i1, !dbg !6080
  %7 = load ptr, ptr %bd.addr, align 8, !dbg !6081
  %call4 = call i32 @bsg_timeout(ptr noundef %7, ptr noundef %hdr) #20, !dbg !6082
  %call5 = call i32 %3(ptr noundef %5, ptr noundef %hdr, i1 noundef zeroext %tobool3, i32 noundef %call4) #20, !dbg !6076
  store i32 %call5, ptr %ret, align 4, !dbg !6083
  %8 = load i32, ptr %ret, align 4, !dbg !6084
  %tobool6 = icmp ne i32 %8, 0, !dbg !6084
  br i1 %tobool6, label %if.end10, label %land.lhs.true, !dbg !6086

land.lhs.true:                                    ; preds = %if.end2
  %9 = load ptr, ptr %uarg.addr, align 8, !dbg !6087
  %call7 = call i64 @copy_to_user(ptr noundef %9, ptr noundef %hdr, i64 noundef 160) #20, !dbg !6088
  %tobool8 = icmp ne i64 %call7, 0, !dbg !6088
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !6089

if.then9:                                         ; preds = %land.lhs.true
  store i32 -14, ptr %retval, align 4, !dbg !6090
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6090

if.end10:                                         ; preds = %land.lhs.true, %if.end2
  %10 = load i32, ptr %ret, align 4, !dbg !6091
  store i32 %10, ptr %retval, align 4, !dbg !6092
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6092

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !6093
  call void @llvm.lifetime.end.p0(i64 160, ptr %hdr) #19, !dbg !6093
  %11 = load i32, ptr %retval, align 4, !dbg !6093
  ret i32 %11, !dbg !6093
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6094 dso_local i32 @___ratelimit(ptr noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6098 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #11 align 16 !dbg !6102 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #19, !dbg !6113
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6107, metadata !DIExpression()), !dbg !6113
  br label %do.body, !dbg !6113

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #19, !dbg !6114
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6109, metadata !DIExpression()), !dbg !6114
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6114
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6114
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #19, !dbg !6113
  br label %do.cond, !dbg !6114

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6114

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #19, !dbg !6115
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6111, metadata !DIExpression()), !dbg !6115
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #25, !dbg !6115, !srcloc !6116
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6115
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6115
  %3 = inttoptr i64 %2 to ptr, !dbg !6115
  store ptr %3, ptr %tmp, align 8, !dbg !6115
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #19, !dbg !6113
  %4 = load ptr, ptr %tmp, align 8, !dbg !6115
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6113
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6113
  store ptr %5, ptr %tmp1, align 8, !dbg !6113
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #19, !dbg !6117
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6113
  ret ptr %6, !dbg !6118
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queue_max_sectors(ptr noundef %q) #5 align 16 !dbg !6119 {
entry:
  %q.addr = alloca ptr, align 8
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !6125, metadata !DIExpression()), !dbg !6126
  %0 = load ptr, ptr %q.addr, align 8, !dbg !6127
  %limits = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 33, !dbg !6128
  %max_sectors = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 6, !dbg !6129
  %1 = load i32, ptr %max_sectors, align 4, !dbg !6129
  ret i32 %1, !dbg !6130
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #11 align 16 !dbg !6131 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6136, metadata !DIExpression()), !dbg !6139
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6137, metadata !DIExpression()), !dbg !6140
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6138, metadata !DIExpression()), !dbg !6141
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6142
  %1 = load i64, ptr %n.addr, align 8, !dbg !6144
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #20, !dbg !6145
  br i1 %call, label %if.then, label %if.end, !dbg !6146

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6147
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6148
  %4 = load i64, ptr %n.addr, align 8, !dbg !6149
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #20, !dbg !6150
  store i64 %call1, ptr %n.addr, align 8, !dbg !6151
  br label %if.end, !dbg !6152

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6153
  ret i64 %5, !dbg !6154
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bsg_timeout(ptr noundef %bd, ptr noundef %hdr) #0 align 16 !dbg !6155 {
entry:
  %bd.addr = alloca ptr, align 8
  %hdr.addr = alloca ptr, align 8
  %timeout = alloca i32, align 4
  %__UNIQUE_ID___x335 = alloca i32, align 4
  %__UNIQUE_ID___y336 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %bd, ptr %bd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bd.addr, metadata !6159, metadata !DIExpression()), !dbg !6165
  store ptr %hdr, ptr %hdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !6160, metadata !DIExpression()), !dbg !6166
  call void @llvm.lifetime.start.p0(i64 4, ptr %timeout) #19, !dbg !6167
  call void @llvm.dbg.declare(metadata ptr %timeout, metadata !6161, metadata !DIExpression()), !dbg !6168
  store i32 60000, ptr %timeout, align 4, !dbg !6168
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !6169
  %timeout1 = getelementptr inbounds %struct.sg_io_v4, ptr %0, i32 0, i32 17, !dbg !6171
  %1 = load i32, ptr %timeout1, align 8, !dbg !6171
  %tobool = icmp ne i32 %1, 0, !dbg !6169
  br i1 %tobool, label %if.then, label %if.else, !dbg !6172

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %hdr.addr, align 8, !dbg !6173
  %timeout2 = getelementptr inbounds %struct.sg_io_v4, ptr %2, i32 0, i32 17, !dbg !6174
  %3 = load i32, ptr %timeout2, align 8, !dbg !6174
  %call = call i64 @msecs_to_jiffies(i32 noundef %3) #20, !dbg !6175
  %conv = trunc i64 %call to i32, !dbg !6175
  store i32 %conv, ptr %timeout, align 4, !dbg !6176
  br label %if.end7, !dbg !6177

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %bd.addr, align 8, !dbg !6178
  %timeout3 = getelementptr inbounds %struct.bsg_device, ptr %4, i32 0, i32 4, !dbg !6180
  %5 = load i32, ptr %timeout3, align 4, !dbg !6180
  %tobool4 = icmp ne i32 %5, 0, !dbg !6178
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !6181

if.then5:                                         ; preds = %if.else
  %6 = load ptr, ptr %bd.addr, align 8, !dbg !6182
  %timeout6 = getelementptr inbounds %struct.bsg_device, ptr %6, i32 0, i32 4, !dbg !6183
  %7 = load i32, ptr %timeout6, align 4, !dbg !6183
  store i32 %7, ptr %timeout, align 4, !dbg !6184
  br label %if.end, !dbg !6185

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x335) #19, !dbg !6186
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x335, metadata !6162, metadata !DIExpression()), !dbg !6186
  %8 = load i32, ptr %timeout, align 4, !dbg !6186
  store i32 %8, ptr %__UNIQUE_ID___x335, align 4, !dbg !6186
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y336) #19, !dbg !6186
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y336, metadata !6164, metadata !DIExpression()), !dbg !6186
  store i32 7000, ptr %__UNIQUE_ID___y336, align 4, !dbg !6186
  %9 = load i32, ptr %__UNIQUE_ID___x335, align 4, !dbg !6186
  %10 = load i32, ptr %__UNIQUE_ID___y336, align 4, !dbg !6186
  %cmp = icmp ugt i32 %9, %10, !dbg !6186
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6186

cond.true:                                        ; preds = %if.end7
  %11 = load i32, ptr %__UNIQUE_ID___x335, align 4, !dbg !6186
  br label %cond.end, !dbg !6186

cond.false:                                       ; preds = %if.end7
  %12 = load i32, ptr %__UNIQUE_ID___y336, align 4, !dbg !6186
  br label %cond.end, !dbg !6186

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %12, %cond.false ], !dbg !6186
  store i32 %cond, ptr %tmp, align 4, !dbg !6186
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y336) #19, !dbg !6187
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x335) #19, !dbg !6187
  %13 = load i32, ptr %tmp, align 4, !dbg !6186
  call void @llvm.lifetime.end.p0(i64 4, ptr %timeout) #19, !dbg !6188
  ret i32 %13, !dbg !6189
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #11 align 16 !dbg !6190 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6192, metadata !DIExpression()), !dbg !6195
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6193, metadata !DIExpression()), !dbg !6196
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6194, metadata !DIExpression()), !dbg !6197
  %0 = load ptr, ptr %from.addr, align 8, !dbg !6198
  %1 = load i64, ptr %n.addr, align 8, !dbg !6200
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #20, !dbg !6201
  br i1 %call, label %if.then, label %if.end, !dbg !6202

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6203
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6204
  %4 = load i64, ptr %n.addr, align 8, !dbg !6205
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #20, !dbg !6206
  store i64 %call1, ptr %n.addr, align 8, !dbg !6207
  br label %if.end, !dbg !6208

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6209
  ret i64 %5, !dbg !6210
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #11 align 16 !dbg !6211 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6215, metadata !DIExpression()), !dbg !6225
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6216, metadata !DIExpression()), !dbg !6226
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6217, metadata !DIExpression()), !dbg !6227
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #19, !dbg !6228
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6218, metadata !DIExpression()), !dbg !6229
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6230
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6231
  %conv = trunc i64 %1 to i32, !dbg !6231
  store i32 %conv, ptr %sz, align 4, !dbg !6229
  %2 = load i32, ptr %sz, align 4, !dbg !6232
  %cmp = icmp sge i32 %2, 0, !dbg !6232
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6232

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6232
  %conv2 = sext i32 %3 to i64, !dbg !6232
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6232
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6232
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6234
  %lnot = xor i1 %5, true, !dbg !6232
  %lnot5 = xor i1 %lnot, true, !dbg !6232
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6232
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6232
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6232
  %tobool = icmp ne i64 %expval, 0, !dbg !6232
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6235

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6236
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6239
  br i1 %7, label %if.else, label %if.then7, !dbg !6240

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6241
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6242
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #20, !dbg !6243
  br label %if.end11, !dbg !6243

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6244, !range !5728, !noundef !568
  %tobool8 = trunc i8 %10 to i1, !dbg !6244
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6246

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #20, !dbg !6247, !srcloc !6248
  br label %if.end, !dbg !6247

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #20, !dbg !6249, !srcloc !6250
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6251

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !6252
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6219, metadata !DIExpression()), !dbg !6252
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6252
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6252
  %lnot15 = xor i1 %cmp13, true, !dbg !6252
  %lnot17 = xor i1 %lnot15, true, !dbg !6252
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6252
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6252
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6253
  %tobool19 = icmp ne i32 %12, 0, !dbg !6253
  %lnot20 = xor i1 %tobool19, true, !dbg !6253
  %lnot22 = xor i1 %lnot20, true, !dbg !6253
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6253
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6253
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6253
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6253
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6252

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6253

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !6254
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6222, metadata !DIExpression()), !dbg !6254
  store i32 2307, ptr %__flags, align 4, !dbg !6254
  br label %do.body28, !dbg !6254

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6255

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6255

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6254

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6257
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 249, i32 %13, i64 12) #19, !dbg !6257, !srcloc !6259
  br label %do.cond30, !dbg !6257

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6257

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6254

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6260

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6260

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !6253
  br label %do.cond35, !dbg !6254

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6254

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6254

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6252
  %tobool38 = icmp ne i32 %14, 0, !dbg !6252
  %lnot39 = xor i1 %tobool38, true, !dbg !6252
  %lnot41 = xor i1 %lnot39, true, !dbg !6252
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6252
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6252
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6252
  store i64 %expval44, ptr %tmp, align 8, !dbg !6253
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !6262
  %15 = load i64, ptr %tmp, align 8, !dbg !6252
  %tobool45 = icmp ne i64 %15, 0, !dbg !6262
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6263

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6264
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6264

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6265
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6266
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6267, !range !5728, !noundef !568
  %tobool48 = trunc i8 %18 to i1, !dbg !6267
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #20, !dbg !6268
  store i1 true, ptr %retval, align 1, !dbg !6269
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6269

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #19, !dbg !6270
  %19 = load i1, ptr %retval, align 1, !dbg !6270
  ret i1 %19, !dbg !6270
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6271 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #5 align 16 !dbg !6272 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6276, metadata !DIExpression()), !dbg !6278
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6277, metadata !DIExpression()), !dbg !6279
  %0 = load i32, ptr %size.addr, align 4, !dbg !6280
  %1 = load i64, ptr %count.addr, align 8, !dbg !6282
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #20, !dbg !6283
  ret void, !dbg !6284
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6285 dso_local void @__bad_copy_from() #17

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6286 dso_local void @__bad_copy_to() #18

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #5 align 16 !dbg !6287 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6291, metadata !DIExpression()), !dbg !6294
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6292, metadata !DIExpression()), !dbg !6295
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6293, metadata !DIExpression()), !dbg !6296
  ret void, !dbg !6297
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6298 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msecs_to_jiffies(i32 noundef %m) #11 align 16 !dbg !6299 {
entry:
  %retval = alloca i64, align 8
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6303, metadata !DIExpression()), !dbg !6304
  %0 = load i32, ptr %m.addr, align 4, !dbg !6305
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6307
  br i1 %1, label %if.then, label %if.else, !dbg !6308

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %m.addr, align 4, !dbg !6309
  %cmp = icmp slt i32 %2, 0, !dbg !6312
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6313

if.then1:                                         ; preds = %if.then
  store i64 4611686018427387902, ptr %retval, align 8, !dbg !6314
  br label %return, !dbg !6314

if.end:                                           ; preds = %if.then
  %3 = load i32, ptr %m.addr, align 4, !dbg !6315
  %call = call i64 @_msecs_to_jiffies(i32 noundef %3) #20, !dbg !6316
  store i64 %call, ptr %retval, align 8, !dbg !6317
  br label %return, !dbg !6317

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %m.addr, align 4, !dbg !6318
  %call2 = call i64 @__msecs_to_jiffies(i32 noundef %4) #20, !dbg !6320
  store i64 %call2, ptr %retval, align 8, !dbg !6321
  br label %return, !dbg !6321

return:                                           ; preds = %if.else, %if.end, %if.then1
  %5 = load i64, ptr %retval, align 8, !dbg !6322
  ret i64 %5, !dbg !6322
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_msecs_to_jiffies(i32 noundef %m) #5 align 16 !dbg !6323 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6325, metadata !DIExpression()), !dbg !6326
  %0 = load i32, ptr %m.addr, align 4, !dbg !6327
  %conv = zext i32 %0 to i64, !dbg !6327
  %add = add i64 %conv, 1, !dbg !6328
  %sub = sub i64 %add, 1, !dbg !6329
  %div = sdiv i64 %sub, 1, !dbg !6330
  ret i64 %div, !dbg !6331
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6332 dso_local i64 @__msecs_to_jiffies(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6333 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6334 dso_local zeroext i1 @blk_get_queue(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6337 dso_local void @blk_put_queue(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @bsg_devnode(ptr noundef %dev, ptr noundef %mode) #0 align 16 !dbg !6340 {
entry:
  %dev.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6342, metadata !DIExpression()), !dbg !6344
  store ptr %mode, ptr %mode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !6343, metadata !DIExpression()), !dbg !6345
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6346
  %call = call ptr @dev_name(ptr noundef %0) #20, !dbg !6347
  %call1 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef @.str.6, ptr noundef %call) #20, !dbg !6348
  ret ptr %call1, !dbg !6349
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6350 dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #5 align 16 !dbg !6354 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6358, metadata !DIExpression()), !dbg !6359
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6360
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !6362
  %1 = load ptr, ptr %init_name, align 8, !dbg !6362
  %tobool = icmp ne ptr %1, null, !dbg !6360
  br i1 %tobool, label %if.then, label %if.end, !dbg !6363

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6364
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !6365
  %3 = load ptr, ptr %init_name1, align 8, !dbg !6365
  store ptr %3, ptr %retval, align 8, !dbg !6366
  br label %return, !dbg !6366

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6367
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !6368
  %call = call ptr @kobject_name(ptr noundef %kobj) #20, !dbg !6369
  store ptr %call, ptr %retval, align 8, !dbg !6370
  br label %return, !dbg !6370

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !6371
  ret ptr %5, !dbg !6371
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #5 align 16 !dbg !6372 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6374, metadata !DIExpression()), !dbg !6375
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6376
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !6377
  %1 = load ptr, ptr %name, align 8, !dbg !6377
  ret ptr %1, !dbg !6378
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6379 dso_local i32 @class_register(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6382 dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6386 dso_local void @class_unregister(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #16 = { nocallback nounwind }
attributes #17 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #19 = { nounwind }
attributes #20 = { noredzone }
attributes #21 = { noredzone allocsize(0) }
attributes #22 = { cold noredzone }
attributes #23 = { noredzone allocsize(2) }
attributes #24 = { noredzone noreturn }
attributes #25 = { nounwind memory(none) }

!llvm.dbg.cu = !{!9}
!llvm.named.register.rsp = !{!5254}
!llvm.module.flags = !{!5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262}
!llvm.ident = !{!5263}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "block/bsg.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "08c9d8bcf37ec9c3b339af39029d5713")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 4)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_bsg_unregister_queue343", scope: !9, file: !2, line: 187, type: !178, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF block/.bsg.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22block/bsg\22 -D KBUILD_BASENAME=\22bsg\22 -D KBUILD_MODNAME=\22bsg\22 -D __KBUILD_MODNAME=kmod_bsg -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o block/bsg.ll block/bsg.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !177, globals: !5114, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !27, !35, !51, !58, !64, !69, !75, !80, !86, !93, !99, !106, !114, !122, !131, !136, !141, !147, !153, !157, !162, !167}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !20, line: 68, baseType: !13, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!21 = !{!22, !23, !24, !25, !26}
!22 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!23 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!24 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!25 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!26 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !28, line: 9, baseType: !13, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!29 = !{!30, !31, !32, !33, !34}
!30 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!31 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!32 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!33 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!34 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !36, line: 1325, baseType: !13, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!38 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!39 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!40 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!41 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!42 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!43 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!44 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!45 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!46 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!47 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!48 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!49 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!50 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !52, line: 15, baseType: !13, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!53 = !{!54, !55, !56, !57}
!54 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!55 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!56 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!57 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !59, line: 26, baseType: !13, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!60 = !{!61, !62, !63}
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!63 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !65, line: 2052, baseType: !13, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!66 = !{!67, !68}
!67 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!68 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !70, line: 54, baseType: !13, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!71 = !{!72, !73, !74}
!72 = !DIEnumerator(name: "USRQUOTA", value: 0)
!73 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!74 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !76, line: 65, baseType: !13, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!77 = !{!78, !79}
!78 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!79 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !81, line: 16, baseType: !13, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!82 = !{!83, !84, !85}
!83 = !DIEnumerator(name: "TT_NONE", value: 0)
!84 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!85 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !87, line: 51, baseType: !13, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!90 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!91 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!92 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !94, line: 45, baseType: !13, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!97 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!98 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !100, line: 487, baseType: !13, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!101 = !{!102, !103, !104, !105}
!102 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!103 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!104 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!105 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !107, line: 620, baseType: !13, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!108 = !{!109, !110, !111, !112, !113}
!109 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!110 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!111 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!112 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!113 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !107, line: 597, baseType: !115, size: 32, elements: !116)
!115 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!118 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!119 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!120 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!121 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !100, line: 547, baseType: !13, size: 32, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129, !130}
!124 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!125 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!126 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!127 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!128 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!129 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!130 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !100, line: 564, baseType: !13, size: 32, elements: !132)
!132 = !{!133, !134, !135}
!133 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!134 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!135 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !100, line: 577, baseType: !13, size: 32, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!139 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!140 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !100, line: 503, baseType: !13, size: 32, elements: !142)
!142 = !{!143, !144, !145, !146}
!143 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!144 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!145 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!146 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !148, line: 1381, baseType: !13, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!149 = !{!150, !151, !152}
!150 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!151 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!152 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !148, line: 295, baseType: !13, size: 32, elements: !154)
!154 = !{!155, !156}
!155 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!156 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !148, line: 285, baseType: !13, size: 32, elements: !158)
!158 = !{!159, !160, !161}
!159 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!160 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!161 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !163, line: 10, baseType: !13, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!164 = !{!165, !166}
!165 = !DIEnumerator(name: "false", value: 0)
!166 = !DIEnumerator(name: "true", value: 1)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !168, line: 364, baseType: !13, size: 32, elements: !169)
!168 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!169 = !{!170, !171, !172, !173, !174, !175, !176}
!170 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!171 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!172 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!173 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!174 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!175 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!176 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!177 = !{!178, !179, !115, !181, !334, !5057, !13, !437, !1163, !5109, !5112, !320, !5113, !2962}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !180, line: 154, baseType: !13)
!180 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !183)
!183 = !{!184, !185, !191, !195, !4741, !4767, !4768, !4769, !4770, !4774, !4777, !4778, !4779, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4846, !4850, !4868, !4885, !4886, !4887, !4888, !4897, !4920, !4921, !4924, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4938, !4939, !5018, !5026, !5027, !5028, !5029, !5033, !5034, !5038, !5039, !5040, !5041, !5043, !5044, !5045, !5052, !5053, !5054, !5056}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !182, file: !12, line: 403, baseType: !11, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !182, file: !12, line: 406, baseType: !186, size: 128, offset: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !180, line: 190, size: 128, elements: !187)
!187 = !{!188, !190}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !186, file: !180, line: 191, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !186, file: !180, line: 191, baseType: !189, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !12, line: 409, baseType: !192, size: 448, offset: 192)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 56)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !182, file: !12, line: 417, baseType: !196, size: 768, offset: 640)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !197)
!197 = !{!198, !4735, !4736, !4737, !4740}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !196, file: !12, line: 46, baseType: !199, size: 512)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !200, line: 64, size: 512, elements: !201)
!200 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!201 = !{!202, !205, !206, !208, !297, !4622, !4725, !4730, !4731, !4732, !4733, !4734}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !199, file: !200, line: 65, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !199, file: !200, line: 66, baseType: !186, size: 128, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !199, file: !200, line: 67, baseType: !207, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !199, file: !200, line: 68, baseType: !209, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !200, line: 168, size: 768, elements: !211)
!211 = !{!212, !213, !256, !257}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !210, file: !200, line: 169, baseType: !186, size: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !210, file: !200, line: 170, baseType: !214, size: 32, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !215, line: 29, baseType: !216)
!215 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !215, line: 17, size: 32, elements: !217)
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, scope: !216, file: !215, line: 18, baseType: !219, size: 32)
!219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !216, file: !215, line: 18, size: 32, elements: !220)
!220 = !{!221}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !219, file: !215, line: 19, baseType: !222, size: 32)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !223, line: 14, size: 32, elements: !224)
!223 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!224 = !{!225}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !222, file: !223, line: 15, baseType: !226, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !227, line: 44, baseType: !228)
!227 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !227, line: 14, size: 32, elements: !229)
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, scope: !228, file: !227, line: 15, baseType: !231, size: 32)
!231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !228, file: !227, line: 15, size: 32, elements: !232)
!232 = !{!233, !238, !248}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !231, file: !227, line: 16, baseType: !234, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !180, line: 174, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 172, size: 32, elements: !236)
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !235, file: !180, line: 173, baseType: !115, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, scope: !231, file: !227, line: 24, baseType: !239, size: 16)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !231, file: !227, line: 24, size: 16, elements: !240)
!240 = !{!241, !247}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !239, file: !227, line: 25, baseType: !242, size: 8)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !243, line: 17, baseType: !244)
!243 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !245, line: 21, baseType: !246)
!245 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!246 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !239, file: !227, line: 26, baseType: !242, size: 8, offset: 8)
!248 = !DIDerivedType(tag: DW_TAG_member, scope: !231, file: !227, line: 28, baseType: !249, size: 32)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !231, file: !227, line: 28, size: 32, elements: !250)
!250 = !{!251, !255}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !249, file: !227, line: 29, baseType: !252, size: 16)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !243, line: 19, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !245, line: 24, baseType: !254)
!254 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !249, file: !227, line: 30, baseType: !252, size: 16, offset: 16)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !210, file: !200, line: 171, baseType: !199, size: 512, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !210, file: !200, line: 172, baseType: !258, size: 64, offset: 704)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !200, line: 133, size: 192, elements: !261)
!261 = !{!262, !269, !274}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !260, file: !200, line: 134, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!115, !267}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !200, line: 135, baseType: !270, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!203, !267}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !260, file: !200, line: 136, baseType: !275, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!115, !267, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !200, line: 125, size: 20736, elements: !281)
!281 = !{!282, !287, !291, !292, !296}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !280, file: !200, line: 126, baseType: !283, size: 192)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 192, elements: !285)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!285 = !{!286}
!286 = !DISubrange(count: 3)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !280, file: !200, line: 127, baseType: !288, size: 4096, offset: 192)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 4096, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !280, file: !200, line: 128, baseType: !115, size: 32, offset: 4288)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !280, file: !200, line: 129, baseType: !293, size: 16384, offset: 4320)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 2048)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !280, file: !200, line: 130, baseType: !115, size: 32, offset: 20704)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !199, file: !200, line: 69, baseType: !298, size: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !200, line: 116, size: 384, elements: !301)
!301 = !{!302, !306, !335, !4610, !4614, !4618}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !300, file: !200, line: 117, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !207}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !300, file: !200, line: 118, baseType: !307, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !310, line: 254, size: 128, elements: !311)
!310 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!311 = !{!312, !327}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !309, file: !310, line: 255, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!316, !207, !321, !284}
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !180, line: 66, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !318, line: 73, baseType: !319)
!318 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !318, line: 15, baseType: !320)
!320 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !310, line: 30, size: 128, elements: !323)
!323 = !{!324, !325}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !322, file: !310, line: 31, baseType: !203, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !322, file: !310, line: 32, baseType: !326, size: 16, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !180, line: 24, baseType: !254)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !309, file: !310, line: 256, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!316, !207, !321, !203, !331}
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !180, line: 61, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !318, line: 72, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !318, line: 16, baseType: !334)
!334 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !300, file: !200, line: 119, baseType: !336, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !310, line: 84, size: 320, elements: !340)
!340 = !{!341, !342, !346, !4606, !4608}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !339, file: !310, line: 85, baseType: !203, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !339, file: !310, line: 86, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!326, !207, !321, !115}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !339, file: !310, line: 88, baseType: !347, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!326, !207, !350, !115}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !310, line: 175, size: 512, elements: !352)
!352 = !{!353, !354, !355, !356, !4597, !4601, !4602}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !351, file: !310, line: 176, baseType: !322, size: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !351, file: !310, line: 177, baseType: !331, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !351, file: !310, line: 178, baseType: !178, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !351, file: !310, line: 179, baseType: !357, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !65, line: 472, size: 1536, align: 64, elements: !362)
!362 = !{!363, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4591, !4592, !4593, !4594, !4595, !4596}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !361, file: !65, line: 473, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !65, line: 641, size: 4800, elements: !366)
!366 = !{!367, !368, !369, !377, !378, !385, !386, !389, !390, !4364, !4365, !4366, !4367, !4368, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4408, !4411, !4412, !4413, !4430, !4431, !4432, !4433}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !365, file: !65, line: 642, baseType: !326, size: 16)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !365, file: !65, line: 643, baseType: !254, size: 16, offset: 16)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !365, file: !65, line: 644, baseType: !370, size: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !371, line: 23, baseType: !372)
!371 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !371, line: 21, size: 32, elements: !373)
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !372, file: !371, line: 22, baseType: !375, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !180, line: 37, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !318, line: 49, baseType: !13)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !365, file: !65, line: 645, baseType: !186, size: 128, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !365, file: !65, line: 646, baseType: !379, size: 32, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !371, line: 28, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !371, line: 26, size: 32, elements: !381)
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !380, file: !371, line: 27, baseType: !383, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !180, line: 38, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !318, line: 50, baseType: !13)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !365, file: !65, line: 647, baseType: !13, size: 32, offset: 224)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !365, file: !65, line: 650, baseType: !387, size: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !65, line: 607, flags: DIFlagFwdDecl)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !365, file: !65, line: 651, baseType: !387, size: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !365, file: !65, line: 654, baseType: !391, size: 64, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !65, line: 1966, size: 2048, align: 512, elements: !394)
!394 = !{!395, !4198, !4208, !4212, !4216, !4220, !4224, !4228, !4232, !4236, !4240, !4241, !4245, !4249, !4286, !4315, !4319, !4325, !4329, !4333, !4337, !4341, !4345, !4351, !4355}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !393, file: !65, line: 1967, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!399, !364, !399, !13}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !401, line: 82, size: 1536, elements: !402)
!401 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!402 = !{!403, !404, !414, !422, !423, !443, !444, !448, !461, !4181, !4182, !4183, !4184, !4190, !4191, !4192}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !400, file: !401, line: 84, baseType: !13, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !400, file: !401, line: 85, baseType: !405, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !406, line: 275, baseType: !407)
!406 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !406, line: 275, size: 32, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !407, file: !406, line: 275, baseType: !410, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !406, line: 69, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !406, line: 64, size: 32, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !411, file: !406, line: 65, baseType: !13, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !400, file: !401, line: 86, baseType: !415, size: 128, offset: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !416, line: 38, size: 128, elements: !417)
!416 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!417 = !{!418, !420}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !415, file: !416, line: 39, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !415, file: !416, line: 39, baseType: !421, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !400, file: !401, line: 87, baseType: !399, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !400, file: !401, line: 88, baseType: !424, size: 128, offset: 256)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !401, line: 49, size: 128, elements: !425)
!425 = !{!426, !440}
!426 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !401, line: 50, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !401, line: 50, size: 64, elements: !428)
!428 = !{!429, !436}
!429 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !401, line: 51, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !427, file: !401, line: 51, size: 64, elements: !431)
!431 = !{!432, !435}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !430, file: !401, line: 52, baseType: !433, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !243, line: 21, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !245, line: 27, baseType: !13)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !430, file: !401, line: 52, baseType: !433, size: 32, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !427, file: !401, line: 54, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !243, line: 23, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !245, line: 31, baseType: !439)
!439 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !424, file: !401, line: 56, baseType: !441, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !400, file: !401, line: 89, baseType: !364, size: 64, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !400, file: !401, line: 91, baseType: !445, size: 256, offset: 448)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 256, elements: !446)
!446 = !{!447}
!447 = !DISubrange(count: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !400, file: !401, line: 94, baseType: !449, size: 64, offset: 704)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !450, line: 25, size: 64, elements: !451)
!450 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!451 = !{!452}
!452 = !DIDerivedType(tag: DW_TAG_member, scope: !449, file: !450, line: 26, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !449, file: !450, line: 26, size: 64, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !453, file: !450, line: 28, baseType: !438, size: 64, align: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !450, line: 30, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !453, file: !450, line: 30, size: 64, elements: !458)
!458 = !{!459, !460}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !457, file: !450, line: 31, baseType: !214, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !457, file: !450, line: 32, baseType: !115, size: 32, offset: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !400, file: !401, line: 95, baseType: !462, size: 64, offset: 768)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !401, line: 128, size: 1024, align: 512, elements: !465)
!465 = !{!466, !470, !471, !478, !484, !488, !492, !496, !497, !501, !505, !4171, !4175}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !464, file: !401, line: 129, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!115, !399, !13}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !464, file: !401, line: 130, baseType: !467, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !464, file: !401, line: 131, baseType: !472, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!115, !475, !477}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !464, file: !401, line: 132, baseType: !479, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!115, !475, !13, !203, !482}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !464, file: !401, line: 134, baseType: !485, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!115, !475}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !464, file: !401, line: 135, baseType: !489, size: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!115, !399}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !464, file: !401, line: 136, baseType: !493, size: 64, offset: 384)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !399}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !464, file: !401, line: 137, baseType: !493, size: 64, offset: 448)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !464, file: !401, line: 138, baseType: !498, size: 64, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !399, !364}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !464, file: !401, line: 139, baseType: !502, size: 64, offset: 576)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!284, !399, !284, !115}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !464, file: !401, line: 140, baseType: !506, size: 64, offset: 640)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!509, !4170}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !511, line: 70, size: 256, elements: !512)
!511 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!512 = !{!513, !514, !4166, !4167}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !510, file: !511, line: 71, baseType: !399, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !510, file: !511, line: 72, baseType: !515, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !65, line: 1190, size: 10752, elements: !517)
!517 = !{!518, !519, !522, !523, !524, !528, !577, !737, !777, !867, !871, !872, !873, !874, !875, !884, !885, !886, !887, !892, !896, !897, !2884, !2890, !2891, !2894, !2895, !2896, !2937, !4100, !4101, !4102, !4103, !4104, !4105, !4108, !4109, !4116, !4117, !4118, !4119, !4120, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !516, file: !65, line: 1191, baseType: !186, size: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !516, file: !65, line: 1192, baseType: !520, size: 32, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !180, line: 21, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !180, line: 18, baseType: !433)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !516, file: !65, line: 1193, baseType: !246, size: 8, offset: 160)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !516, file: !65, line: 1194, baseType: !334, size: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !516, file: !65, line: 1195, baseType: !525, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !180, line: 52, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !318, line: 88, baseType: !527)
!527 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !516, file: !65, line: 1196, baseType: !529, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !65, line: 2366, size: 576, elements: !531)
!531 = !{!532, !533, !534, !541, !545, !549, !553, !554, !555, !565, !569, !570, !571, !573, !574, !575, !576}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !530, file: !65, line: 2367, baseType: !203, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !530, file: !65, line: 2368, baseType: !115, size: 32, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !530, file: !65, line: 2376, baseType: !535, size: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!115, !538}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !540, line: 32, flags: DIFlagFwdDecl)
!540 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!541 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !530, file: !65, line: 2377, baseType: !542, size: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !65, line: 75, flags: DIFlagFwdDecl)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !530, file: !65, line: 2378, baseType: !546, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!399, !529, !115, !203, !178}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !530, file: !65, line: 2380, baseType: !550, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !515}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !530, file: !65, line: 2381, baseType: !181, size: 64, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !530, file: !65, line: 2382, baseType: !529, size: 64, offset: 448)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !530, file: !65, line: 2383, baseType: !556, size: 64, offset: 512)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !180, line: 194, size: 64, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !556, file: !180, line: 195, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !180, line: 198, size: 128, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !560, file: !180, line: 199, baseType: !559, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !560, file: !180, line: 199, baseType: !564, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !530, file: !65, line: 2385, baseType: !566, offset: 576)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !567, line: 206, elements: !568)
!567 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!568 = !{}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !530, file: !65, line: 2386, baseType: !566, offset: 576)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !530, file: !65, line: 2387, baseType: !566, offset: 576)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !530, file: !65, line: 2388, baseType: !572, offset: 576)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, elements: !285)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !530, file: !65, line: 2390, baseType: !566, offset: 576)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !530, file: !65, line: 2391, baseType: !566, offset: 576)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !530, file: !65, line: 2392, baseType: !566, offset: 576)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !530, file: !65, line: 2393, baseType: !566, offset: 576)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !516, file: !65, line: 1197, baseType: !578, size: 64, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !65, line: 2057, size: 1664, elements: !581)
!581 = !{!582, !586, !590, !591, !595, !601, !605, !606, !607, !611, !615, !619, !620, !621, !627, !632, !633, !640, !641, !642, !643, !647, !651, !720, !735, !736}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !580, file: !65, line: 2058, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!364, !515}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !580, file: !65, line: 2059, baseType: !587, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !364}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !580, file: !65, line: 2060, baseType: !587, size: 64, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !580, file: !65, line: 2062, baseType: !592, size: 64, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !364, !115}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !580, file: !65, line: 2063, baseType: !596, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!115, !364, !599}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !65, line: 309, flags: DIFlagFwdDecl)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !580, file: !65, line: 2064, baseType: !602, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!115, !364}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !580, file: !65, line: 2065, baseType: !587, size: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !580, file: !65, line: 2066, baseType: !550, size: 64, offset: 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !580, file: !65, line: 2067, baseType: !608, size: 64, offset: 512)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!115, !515, !115}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !580, file: !65, line: 2068, baseType: !612, size: 64, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!115, !515, !64}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !580, file: !65, line: 2069, baseType: !616, size: 64, offset: 640)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!115, !515}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !580, file: !65, line: 2070, baseType: !612, size: 64, offset: 704)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !580, file: !65, line: 2071, baseType: !616, size: 64, offset: 768)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !580, file: !65, line: 2072, baseType: !622, size: 64, offset: 832)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!115, !399, !625}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !65, line: 62, flags: DIFlagFwdDecl)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !580, file: !65, line: 2073, baseType: !628, size: 64, offset: 896)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!115, !515, !631, !284}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !580, file: !65, line: 2074, baseType: !550, size: 64, offset: 960)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !580, file: !65, line: 2076, baseType: !634, size: 64, offset: 1024)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!115, !637, !399}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !639, line: 66, flags: DIFlagFwdDecl)
!639 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!640 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !580, file: !65, line: 2077, baseType: !634, size: 64, offset: 1088)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !580, file: !65, line: 2078, baseType: !634, size: 64, offset: 1152)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !580, file: !65, line: 2079, baseType: !634, size: 64, offset: 1216)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !580, file: !65, line: 2081, baseType: !644, size: 64, offset: 1280)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!316, !515, !115, !284, !331, !525}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !580, file: !65, line: 2082, baseType: !648, size: 64, offset: 1344)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!316, !515, !115, !203, !331, !525}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !580, file: !65, line: 2083, baseType: !652, size: 64, offset: 1408)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!655, !364}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !70, line: 296, size: 1664, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !684, !685, !686, !687, !703, !704, !705}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !657, file: !70, line: 297, baseType: !560, size: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !657, file: !70, line: 298, baseType: !186, size: 128, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !657, file: !70, line: 299, baseType: !186, size: 128, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !657, file: !70, line: 300, baseType: !186, size: 128, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !657, file: !70, line: 301, baseType: !664, size: 256, offset: 512)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !665, line: 66, size: 256, elements: !666)
!665 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!666 = !{!667, !676, !678, !683}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !664, file: !665, line: 67, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !669, line: 13, baseType: !670)
!669 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !180, line: 181, baseType: !671)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 179, size: 64, elements: !672)
!672 = !{!673}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !671, file: !180, line: 180, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !243, line: 22, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !245, line: 30, baseType: !527)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !664, file: !665, line: 68, baseType: !677, size: 32, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !223, line: 23, baseType: !222)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !664, file: !665, line: 70, baseType: !679, size: 32, offset: 96)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !680, line: 15, size: 32, elements: !681)
!680 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!681 = !{!682}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !679, file: !680, line: 20, baseType: !234, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !664, file: !665, line: 72, baseType: !186, size: 128, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !657, file: !70, line: 302, baseType: !214, size: 32, offset: 768)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !657, file: !70, line: 303, baseType: !234, size: 32, offset: 800)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !657, file: !70, line: 304, baseType: !515, size: 64, offset: 832)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !657, file: !70, line: 305, baseType: !688, size: 64, offset: 896)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !70, line: 68, size: 64, elements: !689)
!689 = !{!690, !702}
!690 = !DIDerivedType(tag: DW_TAG_member, scope: !688, file: !70, line: 69, baseType: !691, size: 32)
!691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !688, file: !70, line: 69, size: 32, elements: !692)
!692 = !{!693, !694, !695}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !691, file: !70, line: 70, baseType: !370, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !691, file: !70, line: 71, baseType: !379, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !691, file: !70, line: 72, baseType: !696, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !697, line: 24, baseType: !698)
!697 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !697, line: 22, size: 32, elements: !699)
!699 = !{!700}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !698, file: !697, line: 23, baseType: !701, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !697, line: 20, baseType: !376)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !688, file: !70, line: 74, baseType: !69, size: 32, offset: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !657, file: !70, line: 306, baseType: !525, size: 64, offset: 960)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !657, file: !70, line: 307, baseType: !334, size: 64, offset: 1024)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !657, file: !70, line: 308, baseType: !706, size: 576, offset: 1088)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !70, line: 205, size: 576, elements: !707)
!707 = !{!708, !710, !711, !712, !713, !714, !715, !716, !719}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !706, file: !70, line: 206, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !70, line: 66, baseType: !527)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !706, file: !70, line: 207, baseType: !709, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !706, file: !70, line: 208, baseType: !709, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !706, file: !70, line: 209, baseType: !709, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !706, file: !70, line: 210, baseType: !709, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !706, file: !70, line: 211, baseType: !709, size: 64, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !706, file: !70, line: 212, baseType: !709, size: 64, offset: 384)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !706, file: !70, line: 213, baseType: !717, size: 64, offset: 448)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !718, line: 8, baseType: !675)
!718 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!719 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !706, file: !70, line: 214, baseType: !717, size: 64, offset: 512)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !580, file: !65, line: 2085, baseType: !721, size: 64, offset: 1472)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!320, !515, !724}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !726, line: 15, size: 256, elements: !727)
!726 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!727 = !{!728, !729, !730, !731, !732}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !725, file: !726, line: 16, baseType: !179, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !725, file: !726, line: 19, baseType: !115, size: 32, offset: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !725, file: !726, line: 26, baseType: !334, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !725, file: !726, line: 33, baseType: !334, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !725, file: !726, line: 36, baseType: !733, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !36, line: 33, flags: DIFlagFwdDecl)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !580, file: !65, line: 2087, baseType: !721, size: 64, offset: 1536)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !580, file: !65, line: 2089, baseType: !550, size: 64, offset: 1600)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !516, file: !65, line: 1198, baseType: !738, size: 64, offset: 448)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !740)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !70, line: 324, size: 704, elements: !741)
!741 = !{!742, !746, !750, !754, !755, !756, !757, !758, !763, !768, !772}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !740, file: !70, line: 325, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!115, !656}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !740, file: !70, line: 326, baseType: !747, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!656, !515, !115}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !740, file: !70, line: 327, baseType: !751, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !656}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !740, file: !70, line: 328, baseType: !743, size: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !740, file: !70, line: 329, baseType: !743, size: 64, offset: 256)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !740, file: !70, line: 330, baseType: !743, size: 64, offset: 320)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !740, file: !70, line: 331, baseType: !608, size: 64, offset: 384)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !740, file: !70, line: 334, baseType: !759, size: 64, offset: 448)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!762, !364}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !740, file: !70, line: 335, baseType: !764, size: 64, offset: 512)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!115, !364, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !740, file: !70, line: 337, baseType: !769, size: 64, offset: 576)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!115, !364, !762}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !740, file: !70, line: 339, baseType: !773, size: 64, offset: 640)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!115, !515, !776}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !516, file: !65, line: 1199, baseType: !778, size: 64, offset: 512)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !70, line: 430, size: 704, elements: !781)
!781 = !{!782, !793, !794, !798, !799, !800, !815, !838, !842, !843, !866}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !780, file: !70, line: 431, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!115, !515, !115, !115, !786}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !789, line: 8, size: 128, elements: !790)
!789 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!790 = !{!791, !792}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !788, file: !789, line: 9, baseType: !509, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !788, file: !789, line: 10, baseType: !399, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !780, file: !70, line: 432, baseType: !608, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !780, file: !70, line: 433, baseType: !795, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!115, !515, !13}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !780, file: !70, line: 434, baseType: !795, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !780, file: !70, line: 435, baseType: !608, size: 64, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !780, file: !70, line: 436, baseType: !801, size: 64, offset: 320)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!115, !515, !115, !804}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !70, line: 417, size: 256, elements: !806)
!806 = !{!807, !808, !809, !810, !811, !812, !813, !814}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !805, file: !70, line: 418, baseType: !115, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !805, file: !70, line: 419, baseType: !13, size: 32, offset: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !805, file: !70, line: 420, baseType: !13, size: 32, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !805, file: !70, line: 422, baseType: !13, size: 32, offset: 96)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !805, file: !70, line: 423, baseType: !13, size: 32, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !805, file: !70, line: 424, baseType: !13, size: 32, offset: 160)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !805, file: !70, line: 425, baseType: !13, size: 32, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !805, file: !70, line: 426, baseType: !13, size: 32, offset: 224)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !780, file: !70, line: 437, baseType: !816, size: 64, offset: 384)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!115, !515, !688, !819}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !70, line: 345, size: 960, elements: !821)
!821 = !{!822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !820, file: !70, line: 346, baseType: !115, size: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !820, file: !70, line: 347, baseType: !437, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !820, file: !70, line: 348, baseType: !437, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !820, file: !70, line: 349, baseType: !437, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !820, file: !70, line: 350, baseType: !437, size: 64, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !820, file: !70, line: 351, baseType: !437, size: 64, offset: 320)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !820, file: !70, line: 352, baseType: !437, size: 64, offset: 384)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !820, file: !70, line: 353, baseType: !674, size: 64, offset: 448)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !820, file: !70, line: 355, baseType: !674, size: 64, offset: 512)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !820, file: !70, line: 356, baseType: !115, size: 32, offset: 576)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !820, file: !70, line: 357, baseType: !115, size: 32, offset: 608)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !820, file: !70, line: 358, baseType: !437, size: 64, offset: 640)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !820, file: !70, line: 359, baseType: !437, size: 64, offset: 704)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !820, file: !70, line: 360, baseType: !437, size: 64, offset: 768)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !820, file: !70, line: 361, baseType: !674, size: 64, offset: 832)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !820, file: !70, line: 362, baseType: !115, size: 32, offset: 896)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !780, file: !70, line: 438, baseType: !839, size: 64, offset: 448)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!115, !515, !776, !819}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !780, file: !70, line: 440, baseType: !816, size: 64, offset: 512)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !780, file: !70, line: 441, baseType: !844, size: 64, offset: 576)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!115, !515, !847}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !70, line: 411, size: 1408, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !848, file: !70, line: 412, baseType: !13, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !848, file: !70, line: 413, baseType: !852, size: 1344, offset: 64)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !853, size: 1344, elements: !285)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !70, line: 397, size: 448, elements: !854)
!854 = !{!855, !856, !857, !858, !859, !860, !861, !862, !863, !865}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !853, file: !70, line: 398, baseType: !13, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !853, file: !70, line: 399, baseType: !13, size: 32, offset: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !853, file: !70, line: 401, baseType: !13, size: 32, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !853, file: !70, line: 402, baseType: !13, size: 32, offset: 96)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !853, file: !70, line: 403, baseType: !13, size: 32, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !853, file: !70, line: 404, baseType: !13, size: 32, offset: 160)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !853, file: !70, line: 405, baseType: !13, size: 32, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !853, file: !70, line: 406, baseType: !439, size: 64, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !853, file: !70, line: 407, baseType: !864, size: 64, offset: 320)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !180, line: 132, baseType: !437)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !853, file: !70, line: 408, baseType: !864, size: 64, offset: 384)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !780, file: !70, line: 442, baseType: !795, size: 64, offset: 640)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !516, file: !65, line: 1200, baseType: !868, size: 64, offset: 576)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !870)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !65, line: 54, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !516, file: !65, line: 1201, baseType: !334, size: 64, offset: 640)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !516, file: !65, line: 1202, baseType: !334, size: 64, offset: 704)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !516, file: !65, line: 1203, baseType: !334, size: 64, offset: 768)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !516, file: !65, line: 1204, baseType: !399, size: 64, offset: 832)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !516, file: !65, line: 1205, baseType: !876, size: 320, offset: 896)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !877, line: 48, size: 320, elements: !878)
!877 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!878 = !{!879, !880, !881, !882, !883}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !876, file: !877, line: 49, baseType: !668, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !876, file: !877, line: 55, baseType: !668, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !876, file: !877, line: 57, baseType: !679, size: 32, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !876, file: !877, line: 59, baseType: !677, size: 32, offset: 160)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !876, file: !877, line: 60, baseType: !186, size: 128, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !516, file: !65, line: 1206, baseType: !115, size: 32, offset: 1216)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !516, file: !65, line: 1207, baseType: !234, size: 32, offset: 1248)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !516, file: !65, line: 1209, baseType: !178, size: 64, offset: 1280)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !516, file: !65, line: 1211, baseType: !888, size: 64, offset: 1344)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !891)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !65, line: 1211, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !516, file: !65, line: 1223, baseType: !893, size: 64, offset: 1408)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !416, line: 34, size: 64, elements: !894)
!894 = !{!895}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !893, file: !416, line: 35, baseType: !419, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !516, file: !65, line: 1224, baseType: !186, size: 128, offset: 1472)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !516, file: !65, line: 1225, baseType: !898, size: 64, offset: 1600)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !900, line: 40, size: 7424, elements: !901)
!900 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!901 = !{!902, !904, !905, !2838, !2839, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2882, !2883}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !899, file: !900, line: 41, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !180, line: 131, baseType: !437)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !899, file: !900, line: 42, baseType: !903, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !899, file: !900, line: 43, baseType: !906, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !148, line: 128, size: 4544, elements: !908)
!908 = !{!909, !910, !911, !912, !914, !915, !916, !923, !924, !2107, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2803, !2804, !2805, !2806, !2809, !2810, !2813, !2816, !2817, !2820, !2822, !2823, !2824}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !907, file: !148, line: 133, baseType: !115, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !907, file: !148, line: 134, baseType: !115, size: 32, offset: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !907, file: !148, line: 135, baseType: !115, size: 32, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !907, file: !148, line: 137, baseType: !913, size: 256, offset: 96)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !446)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !907, file: !148, line: 139, baseType: !254, size: 16, offset: 352)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !907, file: !148, line: 140, baseType: !254, size: 16, offset: 368)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !907, file: !148, line: 142, baseType: !917, size: 128, offset: 384)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !918, line: 296, size: 128, elements: !919)
!918 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!919 = !{!920, !921, !922}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !917, file: !918, line: 297, baseType: !214, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !917, file: !918, line: 299, baseType: !179, size: 32, offset: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !917, file: !918, line: 300, baseType: !178, size: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !907, file: !148, line: 143, baseType: !898, size: 64, offset: 512)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !907, file: !148, line: 145, baseType: !925, size: 64, offset: 576)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !927)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !148, line: 1388, size: 1152, elements: !928)
!928 = !{!929, !2023, !2027, !2032, !2036, !2040, !2041, !2045, !2046, !2052, !2056, !2057, !2061, !2087, !2092, !2097, !2098, !2102}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !927, file: !148, line: 1389, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{null, !933}
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !900, line: 265, size: 960, elements: !935)
!935 = !{!936, !937, !938, !940, !941, !942, !944, !945, !953, !955, !958, !959, !962, !966, !967, !969, !970, !971, !972, !1974, !2021}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !934, file: !900, line: 266, baseType: !933, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !934, file: !900, line: 267, baseType: !898, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !934, file: !900, line: 268, baseType: !939, size: 32, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !900, line: 256, baseType: !434)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !934, file: !900, line: 271, baseType: !254, size: 16, offset: 160)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !934, file: !900, line: 272, baseType: !254, size: 16, offset: 176)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !934, file: !900, line: 273, baseType: !943, size: 8, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !900, line: 97, baseType: !242)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !934, file: !900, line: 274, baseType: !234, size: 32, offset: 224)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !934, file: !900, line: 276, baseType: !946, size: 160, align: 32, offset: 256)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !947, line: 77, size: 160, align: 32, elements: !948)
!947 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!948 = !{!949, !950, !951, !952}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !946, file: !947, line: 78, baseType: !903, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !946, file: !947, line: 80, baseType: !13, size: 32, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !946, file: !947, line: 82, baseType: !13, size: 32, offset: 96)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !946, file: !947, line: 84, baseType: !13, size: 32, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !934, file: !900, line: 278, baseType: !954, size: 32, offset: 416)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !900, line: 258, baseType: !13)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !934, file: !900, line: 279, baseType: !956, size: 64, offset: 448)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !900, line: 20, baseType: !931)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !934, file: !900, line: 280, baseType: !178, size: 64, offset: 512)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !934, file: !900, line: 288, baseType: !960, size: 64, offset: 576)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !900, line: 288, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !934, file: !900, line: 289, baseType: !963, size: 64, offset: 640)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !900, line: 228, size: 64, elements: !964)
!964 = !{!965}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !963, file: !900, line: 229, baseType: !437, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !934, file: !900, line: 291, baseType: !437, size: 64, offset: 704)
!967 = !DIDerivedType(tag: DW_TAG_member, scope: !934, file: !900, line: 299, baseType: !968, offset: 768)
!968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !934, file: !900, line: 299, elements: !568)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !934, file: !900, line: 305, baseType: !254, size: 16, offset: 768)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !934, file: !900, line: 311, baseType: !254, size: 16, offset: 784)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !934, file: !900, line: 313, baseType: !234, size: 32, offset: 800)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !934, file: !900, line: 315, baseType: !973, size: 64, offset: 832)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !947, line: 31, size: 128, elements: !975)
!975 = !{!976, !1972, !1973}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !974, file: !947, line: 32, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !36, line: 74, size: 512, align: 128, elements: !979)
!979 = !{!980, !981, !1966, !1971}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !978, file: !36, line: 75, baseType: !334, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !36, line: 83, baseType: !982, size: 320, offset: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !978, file: !36, line: 83, size: 320, elements: !983)
!983 = !{!984, !1005, !1019, !1023, !1965}
!984 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !36, line: 84, baseType: !985, size: 320)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !982, file: !36, line: 84, size: 320, elements: !986)
!986 = !{!987, !998, !999, !1004}
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !36, line: 90, baseType: !988, size: 128)
!988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !985, file: !36, line: 90, size: 128, elements: !989)
!989 = !{!990, !991, !996, !997}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !988, file: !36, line: 91, baseType: !186, size: 128)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !988, file: !36, line: 94, baseType: !992, size: 128)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !988, file: !36, line: 94, size: 128, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !992, file: !36, line: 96, baseType: !178, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !992, file: !36, line: 98, baseType: !13, size: 32, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !988, file: !36, line: 102, baseType: !186, size: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !988, file: !36, line: 103, baseType: !186, size: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !985, file: !36, line: 106, baseType: !360, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !36, line: 107, baseType: !1000, size: 64, offset: 192)
!1000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !985, file: !36, line: 107, size: 64, elements: !1001)
!1001 = !{!1002, !1003}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1000, file: !36, line: 108, baseType: !334, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1000, file: !36, line: 109, baseType: !334, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !985, file: !36, line: 117, baseType: !334, size: 64, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !36, line: 119, baseType: !1006, size: 320)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !982, file: !36, line: 119, size: 320, elements: !1007)
!1007 = !{!1008, !1009, !1012, !1013, !1014}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1006, file: !36, line: 124, baseType: !334, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1006, file: !36, line: 125, baseType: !1010, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !36, line: 125, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1006, file: !36, line: 126, baseType: !334, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1006, file: !36, line: 127, baseType: !334, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !36, line: 128, baseType: !1015, size: 64, offset: 256)
!1015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1006, file: !36, line: 128, size: 64, elements: !1016)
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1015, file: !36, line: 133, baseType: !334, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1015, file: !36, line: 138, baseType: !668, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !36, line: 141, baseType: !1020, size: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !982, file: !36, line: 141, size: 64, elements: !1021)
!1021 = !{!1022}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1020, file: !36, line: 142, baseType: !334, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !36, line: 144, baseType: !1024, size: 128)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !982, file: !36, line: 144, size: 128, elements: !1025)
!1025 = !{!1026, !1964}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1024, file: !36, line: 146, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !20, line: 126, size: 1216, elements: !1029)
!1029 = !{!1030, !1040, !1071, !1082, !1083, !1084, !1085, !1946, !1947, !1948}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1028, file: !20, line: 127, baseType: !1031, size: 384)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !20, line: 21, size: 384, elements: !1032)
!1032 = !{!1033, !1034, !1036, !1037, !1038, !1039}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1031, file: !20, line: 22, baseType: !334, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1031, file: !20, line: 23, baseType: !1035, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1031, file: !20, line: 24, baseType: !1035, size: 64, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1031, file: !20, line: 25, baseType: !334, size: 64, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1031, file: !20, line: 26, baseType: !334, size: 64, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1031, file: !20, line: 27, baseType: !334, size: 64, offset: 320)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1028, file: !20, line: 128, baseType: !1041, size: 128, offset: 384)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1042, line: 105, size: 128, elements: !1043)
!1042 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1041, file: !1042, line: 110, baseType: !334, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1041, file: !1042, line: 118, baseType: !1046, size: 64, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1042, line: 95, size: 448, elements: !1048)
!1048 = !{!1049, !1050, !1056, !1057, !1060, !1061, !1070}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1047, file: !1042, line: 96, baseType: !668, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1047, file: !1042, line: 97, baseType: !1051, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1042, line: 60, baseType: !1053)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !1055}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1047, file: !1042, line: 98, baseType: !1051, size: 64, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1047, file: !1042, line: 99, baseType: !1058, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !180, line: 35, baseType: !1059)
!1059 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1047, file: !1042, line: 100, baseType: !1058, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1047, file: !1042, line: 101, baseType: !1062, size: 128, align: 64, offset: 256)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !180, line: 232, size: 128, align: 64, elements: !1063)
!1063 = !{!1064, !1066}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1062, file: !180, line: 233, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1062, file: !180, line: 234, baseType: !1067, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !1065}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1047, file: !1042, line: 102, baseType: !1055, size: 64, offset: 384)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1028, file: !20, line: 129, baseType: !1072, size: 256, offset: 512)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1073, line: 26, size: 256, elements: !1074)
!1073 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1072, file: !1073, line: 27, baseType: !13, size: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1072, file: !1073, line: 28, baseType: !1077, size: 192, offset: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1078, line: 43, size: 192, elements: !1079)
!1078 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1077, file: !1078, line: 44, baseType: !677, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1077, file: !1078, line: 45, baseType: !186, size: 128, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1028, file: !20, line: 130, baseType: !19, size: 32, offset: 768)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1028, file: !20, line: 131, baseType: !13, size: 32, offset: 800)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1028, file: !20, line: 132, baseType: !334, size: 64, offset: 832)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1028, file: !20, line: 133, baseType: !1086, size: 64, offset: 896)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1088)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !20, line: 77, size: 192, elements: !1089)
!1089 = !{!1090, !1094, !1942}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1088, file: !20, line: 83, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{null, !977}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1088, file: !20, line: 89, baseType: !1095, size: 64, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!1098, !1099}
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !36, line: 1184, baseType: !13)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1101, line: 512, size: 896, elements: !1102)
!1101 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1102 = !{!1103, !1909, !1910, !1917, !1924, !1934, !1935, !1936, !1938, !1940}
!1103 = !DIDerivedType(tag: DW_TAG_member, scope: !1100, file: !1101, line: 513, baseType: !1104, size: 320)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1100, file: !1101, line: 513, size: 320, elements: !1105)
!1105 = !{!1106, !1905, !1906, !1907, !1908}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1104, file: !1101, line: 514, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !36, line: 625, size: 1344, elements: !1109)
!1109 = !{!1110, !1119, !1810, !1816, !1823, !1824, !1829, !1830, !1835, !1836, !1839, !1898, !1899, !1900, !1901, !1902, !1903}
!1110 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !36, line: 628, baseType: !1111, size: 128)
!1111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1108, file: !36, line: 628, size: 128, elements: !1112)
!1112 = !{!1113, !1118}
!1113 = !DIDerivedType(tag: DW_TAG_member, scope: !1111, file: !36, line: 629, baseType: !1114, size: 128)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1111, file: !36, line: 629, size: 128, elements: !1115)
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1114, file: !36, line: 631, baseType: !334, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1114, file: !36, line: 632, baseType: !334, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1111, file: !36, line: 635, baseType: !1062, size: 128, align: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1108, file: !36, line: 639, baseType: !1120, size: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !36, line: 733, size: 10240, elements: !1122)
!1122 = !{!1123, !1808}
!1123 = !DIDerivedType(tag: DW_TAG_member, scope: !1121, file: !36, line: 734, baseType: !1124, size: 10240)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1121, file: !36, line: 734, size: 10240, elements: !1125)
!1125 = !{!1126, !1130, !1143, !1670, !1671, !1672, !1673, !1674, !1675, !1684, !1685, !1686, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1725, !1727, !1730, !1777, !1778, !1779, !1782, !1783, !1784, !1787, !1788, !1789, !1795, !1796}
!1126 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !36, line: 739, baseType: !1127, size: 512, align: 512)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1124, file: !36, line: 739, size: 512, align: 512, elements: !1128)
!1128 = !{!1129}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1127, file: !36, line: 747, baseType: !234, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1124, file: !36, line: 750, baseType: !1131, size: 128, offset: 512)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1132, line: 218, size: 128, elements: !1133)
!1132 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1133 = !{!1134, !1141, !1142}
!1134 = !DIDerivedType(tag: DW_TAG_member, scope: !1131, file: !1132, line: 219, baseType: !1135, size: 32)
!1135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1131, file: !1132, line: 219, size: 32, elements: !1136)
!1136 = !{!1137, !1138}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1135, file: !1132, line: 220, baseType: !214, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1135, file: !1132, line: 221, baseType: !1139)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1132, line: 197, baseType: !1140)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1132, line: 197, elements: !568)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1131, file: !1132, line: 223, baseType: !13, size: 32, offset: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1131, file: !1132, line: 224, baseType: !178, size: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1124, file: !36, line: 752, baseType: !1144, size: 64, offset: 640)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!334, !1147, !334, !334, !334, !334}
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !65, line: 994, size: 1856, align: 64, elements: !1149)
!1149 = !{!1150, !1161, !1162, !1164, !1165, !1166, !1167, !1168, !1229, !1429, !1438, !1439, !1440, !1660, !1661, !1662, !1663, !1665, !1666, !1669}
!1150 = !DIDerivedType(tag: DW_TAG_member, scope: !1148, file: !65, line: 995, baseType: !1151, size: 128)
!1151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1148, file: !65, line: 995, size: 128, elements: !1152)
!1152 = !{!1153, !1159, !1160}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1151, file: !65, line: 996, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1155, line: 60, size: 64, elements: !1156)
!1155 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1156 = !{!1157}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1154, file: !1155, line: 61, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1151, file: !65, line: 997, baseType: !1062, size: 128, align: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1151, file: !65, line: 998, baseType: !13, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1148, file: !65, line: 1005, baseType: !214, size: 32, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1148, file: !65, line: 1006, baseType: !1163, size: 32, offset: 160)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !180, line: 156, baseType: !13)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1148, file: !65, line: 1007, baseType: !668, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1148, file: !65, line: 1008, baseType: !664, size: 256, offset: 256)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1148, file: !65, line: 1009, baseType: !525, size: 64, offset: 512)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1148, file: !65, line: 1010, baseType: !13, size: 32, offset: 576)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1148, file: !65, line: 1011, baseType: !1169, size: 256, offset: 640)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !65, line: 948, size: 256, elements: !1170)
!1170 = !{!1171, !1192, !1225, !1226, !1227, !1228}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1169, file: !65, line: 949, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1173, line: 34, baseType: !1174)
!1173 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1173, line: 25, size: 64, elements: !1175)
!1175 = !{!1176}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1174, file: !1173, line: 26, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1178, line: 27, baseType: !1179)
!1178 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1178, line: 13, size: 64, elements: !1180)
!1180 = !{!1181, !1191}
!1181 = !DIDerivedType(tag: DW_TAG_member, scope: !1179, file: !1178, line: 14, baseType: !1182, size: 32)
!1182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1179, file: !1178, line: 14, size: 32, elements: !1183)
!1183 = !{!1184, !1185}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1182, file: !1178, line: 15, baseType: !234, size: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, scope: !1182, file: !1178, line: 16, baseType: !1186, size: 32)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1182, file: !1178, line: 16, size: 32, elements: !1187)
!1187 = !{!1188, !1189}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1186, file: !1178, line: 18, baseType: !242, size: 8)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1186, file: !1178, line: 19, baseType: !1190, size: 24, offset: 8)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 24, elements: !285)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1179, file: !1178, line: 26, baseType: !226, size: 32, offset: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1169, file: !65, line: 950, baseType: !1193, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !28, line: 59, size: 768, elements: !1195)
!1195 = !{!1196, !1202, !1203, !1204, !1206, !1207, !1214, !1215}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1194, file: !28, line: 61, baseType: !1197, size: 32)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1198, line: 113, baseType: !1199)
!1198 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1198, line: 111, size: 32, elements: !1200)
!1200 = !{!1201}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1199, file: !1198, line: 112, baseType: !234, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1194, file: !28, line: 62, baseType: !13, size: 32, offset: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1194, file: !28, line: 63, baseType: !214, size: 32, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1194, file: !28, line: 65, baseType: !1205, size: 256, offset: 128)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 256, elements: !5)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1194, file: !28, line: 66, baseType: !556, size: 64, offset: 384)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1194, file: !28, line: 68, baseType: !1208, size: 192, offset: 448)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1209, line: 41, baseType: !1210)
!1209 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1209, line: 37, size: 192, elements: !1211)
!1211 = !{!1212, !1213}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1210, file: !1209, line: 38, baseType: !214, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1210, file: !1209, line: 39, baseType: !186, size: 128, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1194, file: !28, line: 69, baseType: !1062, size: 128, align: 64, offset: 640)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1194, file: !28, line: 70, baseType: !1216, offset: 768)
!1216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1217, elements: !1223)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !28, line: 54, size: 128, elements: !1218)
!1218 = !{!1219, !1220}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1217, file: !28, line: 55, baseType: !115, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1217, file: !28, line: 56, baseType: !1221, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !28, line: 56, flags: DIFlagFwdDecl)
!1223 = !{!1224}
!1224 = !DISubrange(count: -1)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1169, file: !65, line: 951, baseType: !27, size: 32, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1169, file: !65, line: 952, baseType: !370, size: 32, offset: 160)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1169, file: !65, line: 952, baseType: !370, size: 32, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1169, file: !65, line: 953, baseType: !115, size: 32, offset: 224)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1148, file: !65, line: 1012, baseType: !1230, size: 64, offset: 896)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1232)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1233, line: 110, size: 1472, elements: !1234)
!1233 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1251, !1252, !1253, !1254, !1255, !1256, !1374, !1375, !1376, !1377, !1378, !1409, !1412, !1416, !1424}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1232, file: !1233, line: 111, baseType: !668, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1232, file: !1233, line: 112, baseType: !370, size: 32, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1232, file: !1233, line: 113, baseType: !379, size: 32, offset: 96)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1232, file: !1233, line: 114, baseType: !370, size: 32, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1232, file: !1233, line: 115, baseType: !379, size: 32, offset: 160)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1232, file: !1233, line: 116, baseType: !370, size: 32, offset: 192)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1232, file: !1233, line: 117, baseType: !379, size: 32, offset: 224)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1232, file: !1233, line: 118, baseType: !370, size: 32, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1232, file: !1233, line: 119, baseType: !379, size: 32, offset: 288)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1232, file: !1233, line: 120, baseType: !13, size: 32, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1232, file: !1233, line: 121, baseType: !1246, size: 64, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1247, line: 24, baseType: !1248)
!1247 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1247, line: 24, size: 64, elements: !1249)
!1249 = !{!1250}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1248, file: !1247, line: 24, baseType: !437, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1232, file: !1233, line: 122, baseType: !1246, size: 64, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1232, file: !1233, line: 123, baseType: !1246, size: 64, offset: 512)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1232, file: !1233, line: 124, baseType: !1246, size: 64, offset: 576)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1232, file: !1233, line: 125, baseType: !1246, size: 64, offset: 640)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1232, file: !1233, line: 127, baseType: !246, size: 8, offset: 704)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1232, file: !1233, line: 129, baseType: !1257, size: 64, offset: 768)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1259, line: 195, size: 1728, elements: !1260)
!1259 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1260 = !{!1261, !1262, !1267, !1279, !1280, !1283, !1284, !1289, !1290, !1291, !1292, !1295, !1296, !1297, !1299, !1300, !1338, !1359}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1258, file: !1259, line: 196, baseType: !1197, size: 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1258, file: !1259, line: 197, baseType: !1263, size: 32, offset: 32)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1259, line: 28, baseType: !1264)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !180, line: 104, baseType: !1265)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !243, line: 20, baseType: !1266)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !245, line: 26, baseType: !115)
!1267 = !DIDerivedType(tag: DW_TAG_member, scope: !1258, file: !1259, line: 198, baseType: !1268, size: 192, offset: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1258, file: !1259, line: 198, size: 192, elements: !1269)
!1269 = !{!1270, !1271}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1268, file: !1259, line: 199, baseType: !186, size: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1268, file: !1259, line: 200, baseType: !1272, size: 192, align: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1273, line: 5, size: 192, align: 64, elements: !1274)
!1273 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1274 = !{!1275, !1276, !1278}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1272, file: !1273, line: 6, baseType: !334, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1272, file: !1273, line: 7, baseType: !1277, size: 64, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1272, file: !1273, line: 8, baseType: !1277, size: 64, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1258, file: !1259, line: 205, baseType: !876, size: 320, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1258, file: !1259, line: 206, baseType: !1281, size: 64, offset: 576)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1259, line: 206, flags: DIFlagFwdDecl)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1258, file: !1259, line: 207, baseType: !178, size: 64, offset: 640)
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1258, file: !1259, line: 208, baseType: !1285, size: 64, offset: 704)
!1285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1258, file: !1259, line: 208, size: 64, elements: !1286)
!1286 = !{!1287, !1288}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1285, file: !1259, line: 209, baseType: !717, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1285, file: !1259, line: 210, baseType: !717, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1258, file: !1259, line: 212, baseType: !717, size: 64, offset: 768)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1258, file: !1259, line: 213, baseType: !370, size: 32, offset: 832)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1258, file: !1259, line: 214, baseType: !379, size: 32, offset: 864)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1258, file: !1259, line: 215, baseType: !1293, size: 32, offset: 896)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1259, line: 31, baseType: !1294)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !180, line: 110, baseType: !433)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1258, file: !1259, line: 216, baseType: !254, size: 16, offset: 928)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1258, file: !1259, line: 217, baseType: !254, size: 16, offset: 944)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1258, file: !1259, line: 221, baseType: !1298, size: 16, offset: 960)
!1298 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1258, file: !1259, line: 228, baseType: !334, size: 64, offset: 1024)
!1300 = !DIDerivedType(tag: DW_TAG_member, scope: !1258, file: !1259, line: 245, baseType: !1301, size: 320, offset: 1088)
!1301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1258, file: !1259, line: 245, size: 320, elements: !1302)
!1302 = !{!1303, !1330}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1301, file: !1259, line: 246, baseType: !1304, size: 320)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1259, line: 114, size: 320, elements: !1305)
!1305 = !{!1306, !1307, !1319, !1322, !1329}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1304, file: !1259, line: 116, baseType: !334, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !1259, line: 117, baseType: !1308, size: 64, offset: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1304, file: !1259, line: 117, size: 64, elements: !1309)
!1309 = !{!1310, !1318}
!1310 = !DIDerivedType(tag: DW_TAG_member, scope: !1308, file: !1259, line: 118, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1308, file: !1259, line: 118, size: 64, elements: !1312)
!1312 = !{!1313, !1314}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1311, file: !1259, line: 120, baseType: !252, size: 16)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1311, file: !1259, line: 121, baseType: !1315, size: 48, offset: 16)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1316)
!1316 = !{!1317}
!1317 = !DISubrange(count: 6)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1308, file: !1259, line: 127, baseType: !334, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1304, file: !1259, line: 129, baseType: !1320, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1259, line: 102, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1304, file: !1259, line: 130, baseType: !1323, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1259, line: 108, size: 192, elements: !1325)
!1325 = !{!1326, !1327, !1328}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1324, file: !1259, line: 109, baseType: !1062, size: 128, align: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1324, file: !1259, line: 110, baseType: !1197, size: 32, offset: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1324, file: !1259, line: 111, baseType: !1058, size: 8, offset: 160)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1304, file: !1259, line: 131, baseType: !203, size: 64, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !1259, line: 247, baseType: !1331, size: 320)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1301, file: !1259, line: 247, size: 320, elements: !1332)
!1332 = !{!1333, !1334, !1335, !1336, !1337}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1331, file: !1259, line: 248, baseType: !334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1331, file: !1259, line: 249, baseType: !334, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1331, file: !1259, line: 250, baseType: !1320, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1331, file: !1259, line: 251, baseType: !1323, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1331, file: !1259, line: 252, baseType: !284, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, scope: !1258, file: !1259, line: 260, baseType: !1339, size: 256, offset: 1408)
!1339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1258, file: !1259, line: 260, size: 256, elements: !1340)
!1340 = !{!1341, !1347}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1339, file: !1259, line: 261, baseType: !1342, size: 256)
!1342 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1259, line: 134, size: 256, elements: !1343)
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1342, file: !1259, line: 135, baseType: !178, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1342, file: !1259, line: 136, baseType: !1346, size: 256)
!1346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 256, elements: !5)
!1347 = !DIDerivedType(tag: DW_TAG_member, scope: !1339, file: !1259, line: 262, baseType: !1348, size: 256)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1339, file: !1259, line: 262, size: 256, elements: !1349)
!1349 = !{!1350, !1351}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1348, file: !1259, line: 264, baseType: !186, size: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1348, file: !1259, line: 265, baseType: !1352, size: 128, offset: 128)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1353, line: 22, size: 128, elements: !1354)
!1353 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1354 = !{!1355, !1358}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1352, file: !1353, line: 23, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1353, line: 23, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1352, file: !1353, line: 24, baseType: !334, size: 64, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1258, file: !1259, line: 280, baseType: !1360, size: 64, offset: 1664)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1259, line: 176, size: 192, elements: !1362)
!1362 = !{!1363, !1372, !1373}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1361, file: !1259, line: 177, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1259, line: 171, baseType: !1365)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!115, !1257, !1368, !1370, !1257}
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1321)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1342)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1361, file: !1259, line: 178, baseType: !1257, size: 64, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1361, file: !1259, line: 179, baseType: !1320, size: 64, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1232, file: !1233, line: 130, baseType: !1257, size: 64, offset: 832)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1232, file: !1233, line: 131, baseType: !1257, size: 64, offset: 896)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1232, file: !1233, line: 132, baseType: !1257, size: 64, offset: 960)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1232, file: !1233, line: 135, baseType: !178, size: 64, offset: 1024)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1232, file: !1233, line: 137, baseType: !1379, size: 64, offset: 1088)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1381, line: 14, size: 1088, elements: !1382)
!1381 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1382 = !{!1383, !1384, !1393, !1394, !1395, !1396, !1397, !1398}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1380, file: !1381, line: 15, baseType: !1197, size: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1380, file: !1381, line: 17, baseType: !1385, size: 320, offset: 64)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1386, line: 22, size: 320, elements: !1387)
!1386 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1387 = !{!1388, !1389, !1390, !1391}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1385, file: !1386, line: 23, baseType: !677, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1385, file: !1386, line: 24, baseType: !674, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1385, file: !1386, line: 26, baseType: !186, size: 128, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1385, file: !1386, line: 28, baseType: !1392, size: 64, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1380, file: !1381, line: 19, baseType: !334, size: 64, offset: 384)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1380, file: !1381, line: 20, baseType: !668, size: 64, offset: 448)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1380, file: !1381, line: 23, baseType: !560, size: 128, offset: 512)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1380, file: !1381, line: 24, baseType: !370, size: 32, offset: 640)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1380, file: !1381, line: 29, baseType: !668, size: 64, offset: 704)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1380, file: !1381, line: 36, baseType: !1399, size: 320, offset: 768)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1400, line: 15, size: 320, elements: !1401)
!1400 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1401 = !{!1402, !1403, !1404, !1405, !1406, !1407, !1408}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1399, file: !1400, line: 16, baseType: !677, size: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1399, file: !1400, line: 18, baseType: !115, size: 32, offset: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1399, file: !1400, line: 19, baseType: !115, size: 32, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1399, file: !1400, line: 20, baseType: !115, size: 32, offset: 96)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1399, file: !1400, line: 21, baseType: !115, size: 32, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1399, file: !1400, line: 22, baseType: !334, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1399, file: !1400, line: 23, baseType: !334, size: 64, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1232, file: !1233, line: 138, baseType: !1410, size: 64, offset: 1152)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !371, line: 18, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1232, file: !1233, line: 139, baseType: !1413, size: 64, offset: 1216)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1415, line: 16, flags: DIFlagFwdDecl)
!1415 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1232, file: !1233, line: 140, baseType: !1417, size: 64, offset: 1280)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1233, line: 25, size: 64, elements: !1419)
!1419 = !{!1420, !1421, !1422}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1418, file: !1233, line: 26, baseType: !234, size: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1418, file: !1233, line: 27, baseType: !115, size: 32, offset: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1418, file: !1233, line: 28, baseType: !1423, offset: 64)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, elements: !1223)
!1424 = !DIDerivedType(tag: DW_TAG_member, scope: !1232, file: !1233, line: 142, baseType: !1425, size: 128, offset: 1344)
!1425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1232, file: !1233, line: 142, size: 128, elements: !1426)
!1426 = !{!1427, !1428}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1425, file: !1233, line: 143, baseType: !115, size: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1425, file: !1233, line: 144, baseType: !1062, size: 128, align: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1148, file: !65, line: 1013, baseType: !1430, size: 256, offset: 960)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !65, line: 970, size: 256, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1435, !1436, !1437}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1430, file: !65, line: 971, baseType: !334, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1430, file: !65, line: 972, baseType: !13, size: 32, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1430, file: !65, line: 973, baseType: !13, size: 32, offset: 96)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1430, file: !65, line: 974, baseType: !13, size: 32, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1430, file: !65, line: 975, baseType: !13, size: 32, offset: 160)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1430, file: !65, line: 976, baseType: !525, size: 64, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1148, file: !65, line: 1014, baseType: !788, size: 128, offset: 1216)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1148, file: !65, line: 1015, baseType: !364, size: 64, offset: 1344)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1148, file: !65, line: 1016, baseType: !1441, size: 64, offset: 1408)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1443)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !65, line: 1914, size: 2112, elements: !1444)
!1444 = !{!1445, !1446, !1450, !1455, !1459, !1536, !1537, !1552, !1565, !1573, !1577, !1578, !1582, !1583, !1587, !1592, !1593, !1597, !1601, !1607, !1608, !1612, !1613, !1619, !1623, !1627, !1633, !1637, !1641, !1645, !1649, !1650, !1656}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1443, file: !65, line: 1915, baseType: !181, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1443, file: !65, line: 1916, baseType: !1447, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!525, !1147, !525, !115}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1443, file: !65, line: 1917, baseType: !1451, size: 64, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!316, !1147, !284, !331, !1454}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1443, file: !65, line: 1918, baseType: !1456, size: 64, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!316, !1147, !203, !331, !1454}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1443, file: !65, line: 1919, baseType: !1460, size: 64, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!316, !1463, !1485}
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !65, line: 373, size: 384, elements: !1465)
!1465 = !{!1466, !1467, !1468, !1472, !1473, !1474, !1475}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1464, file: !65, line: 374, baseType: !1147, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1464, file: !65, line: 375, baseType: !525, size: 64, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1464, file: !65, line: 376, baseType: !1469, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{null, !1463, !320}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1464, file: !65, line: 377, baseType: !178, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1464, file: !65, line: 378, baseType: !115, size: 32, offset: 256)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1464, file: !65, line: 379, baseType: !252, size: 16, offset: 288)
!1475 = !DIDerivedType(tag: DW_TAG_member, scope: !1464, file: !65, line: 380, baseType: !1476, size: 64, offset: 320)
!1476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1464, file: !65, line: 380, size: 64, elements: !1477)
!1477 = !{!1478, !1481}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1476, file: !65, line: 386, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !65, line: 386, flags: DIFlagFwdDecl)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1476, file: !65, line: 395, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!316, !178}
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1487, line: 41, size: 320, elements: !1488)
!1487 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1488 = !{!1489, !1490, !1491, !1492, !1493, !1494, !1499, !1531}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1486, file: !1487, line: 42, baseType: !242, size: 8)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1486, file: !1487, line: 43, baseType: !1058, size: 8, offset: 8)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1486, file: !1487, line: 44, baseType: !1058, size: 8, offset: 16)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1486, file: !1487, line: 45, baseType: !1058, size: 8, offset: 24)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1486, file: !1487, line: 46, baseType: !1058, size: 8, offset: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1486, file: !1487, line: 47, baseType: !1495, size: 64, offset: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1486, file: !1487, line: 47, size: 64, elements: !1496)
!1496 = !{!1497, !1498}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1495, file: !1487, line: 48, baseType: !331, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1495, file: !1487, line: 49, baseType: !115, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, scope: !1486, file: !1487, line: 61, baseType: !1500, size: 128, offset: 128)
!1500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1486, file: !1487, line: 61, size: 128, elements: !1501)
!1501 = !{!1502, !1508}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1500, file: !1487, line: 67, baseType: !1503, size: 128)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1504, line: 17, size: 128, elements: !1505)
!1504 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1503, file: !1504, line: 19, baseType: !178, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1503, file: !1504, line: 20, baseType: !332, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, scope: !1500, file: !1487, line: 68, baseType: !1509, size: 128)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1500, file: !1487, line: 68, size: 128, elements: !1510)
!1510 = !{!1511, !1530}
!1511 = !DIDerivedType(tag: DW_TAG_member, scope: !1509, file: !1487, line: 69, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1509, file: !1487, line: 69, size: 64, elements: !1513)
!1513 = !{!1514, !1517, !1524, !1527, !1529}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1512, file: !1487, line: 71, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1503)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1512, file: !1487, line: 72, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1520)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1487, line: 17, size: 128, elements: !1521)
!1521 = !{!1522, !1523}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1520, file: !1487, line: 18, baseType: !178, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1520, file: !1487, line: 19, baseType: !331, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1512, file: !1487, line: 73, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !974)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1512, file: !1487, line: 74, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1512, file: !1487, line: 75, baseType: !178, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1509, file: !1487, line: 77, baseType: !331, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, scope: !1486, file: !1487, line: 80, baseType: !1532, size: 64, offset: 256)
!1532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1486, file: !1487, line: 80, size: 64, elements: !1533)
!1533 = !{!1534, !1535}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1532, file: !1487, line: 81, baseType: !334, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1532, file: !1487, line: 82, baseType: !525, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1443, file: !65, line: 1920, baseType: !1460, size: 64, offset: 320)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1443, file: !65, line: 1921, baseType: !1538, size: 64, offset: 384)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!115, !1463, !1541, !13}
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !148, line: 1559, size: 192, elements: !1543)
!1543 = !{!1544, !1547, !1548}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !1542, file: !148, line: 1560, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !148, line: 32, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !1542, file: !148, line: 1561, baseType: !1058, size: 8, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1542, file: !148, line: 1562, baseType: !1549, size: 64, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{null, !1541}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1443, file: !65, line: 1923, baseType: !1553, size: 64, offset: 448)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!115, !1147, !1556}
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !65, line: 1858, size: 128, elements: !1558)
!1558 = !{!1559, !1564}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1557, file: !65, line: 1859, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !65, line: 1855, baseType: !1561)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!1058, !1556, !203, !115, !525, !437, !13}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1557, file: !65, line: 1860, baseType: !525, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1443, file: !65, line: 1924, baseType: !1566, size: 64, offset: 512)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!1569, !1147, !1571}
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1570, line: 59, baseType: !13)
!1570 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !540, line: 31, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1443, file: !65, line: 1925, baseType: !1574, size: 64, offset: 576)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!320, !1147, !13, !334}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1443, file: !65, line: 1926, baseType: !1574, size: 64, offset: 640)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1443, file: !65, line: 1927, baseType: !1579, size: 64, offset: 704)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!115, !1147, !1107}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1443, file: !65, line: 1928, baseType: !334, size: 64, offset: 768)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1443, file: !65, line: 1929, baseType: !1584, size: 64, offset: 832)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!115, !364, !1147}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1443, file: !65, line: 1930, baseType: !1588, size: 64, offset: 896)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!115, !1147, !1591}
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !65, line: 1061, baseType: !178)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1443, file: !65, line: 1931, baseType: !1584, size: 64, offset: 960)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1443, file: !65, line: 1932, baseType: !1594, size: 64, offset: 1024)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!115, !1147, !525, !525, !115}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1443, file: !65, line: 1933, baseType: !1598, size: 64, offset: 1088)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!115, !115, !1147, !115}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1443, file: !65, line: 1934, baseType: !1602, size: 64, offset: 1152)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!115, !1147, !115, !1605}
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !65, line: 1063, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1443, file: !65, line: 1935, baseType: !1144, size: 64, offset: 1216)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1443, file: !65, line: 1936, baseType: !1609, size: 64, offset: 1280)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!115, !115}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1443, file: !65, line: 1937, baseType: !1602, size: 64, offset: 1344)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1443, file: !65, line: 1938, baseType: !1614, size: 64, offset: 1408)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!316, !1617, !1147, !1454, !331, !13}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !639, line: 59, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1443, file: !65, line: 1939, baseType: !1620, size: 64, offset: 1472)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!316, !1147, !1454, !1617, !331, !13}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1443, file: !65, line: 1940, baseType: !1624, size: 64, offset: 1536)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{null, !1147}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1443, file: !65, line: 1941, baseType: !1628, size: 64, offset: 1600)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!115, !1147, !115, !1631, !1632}
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1443, file: !65, line: 1942, baseType: !1634, size: 64, offset: 1664)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!320, !1147, !115, !525, !525}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1443, file: !65, line: 1944, baseType: !1638, size: 64, offset: 1728)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{null, !637, !1147}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1443, file: !65, line: 1948, baseType: !1642, size: 64, offset: 1792)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!316, !1147, !525, !1147, !525, !331, !13}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1443, file: !65, line: 1950, baseType: !1646, size: 64, offset: 1856)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!525, !1147, !525, !1147, !525, !525, !13}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1443, file: !65, line: 1953, baseType: !1594, size: 64, offset: 1920)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1443, file: !65, line: 1954, baseType: !1651, size: 64, offset: 1984)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!115, !1654, !13}
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !65, line: 1911, flags: DIFlagFwdDecl)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1443, file: !65, line: 1955, baseType: !1657, size: 64, offset: 2048)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!115, !1654, !1541, !13}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1148, file: !65, line: 1018, baseType: !437, size: 64, offset: 1472)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1148, file: !65, line: 1020, baseType: !178, size: 64, offset: 1536)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1148, file: !65, line: 1023, baseType: !178, size: 64, offset: 1600)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1148, file: !65, line: 1027, baseType: !1664, size: 64, offset: 1664)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1148, file: !65, line: 1029, baseType: !360, size: 64, offset: 1728)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1148, file: !65, line: 1030, baseType: !1667, size: 32, offset: 1792)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1668, line: 8, baseType: !433)
!1668 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1148, file: !65, line: 1031, baseType: !1667, size: 32, offset: 1824)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1124, file: !36, line: 756, baseType: !334, size: 64, offset: 704)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1124, file: !36, line: 757, baseType: !334, size: 64, offset: 768)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1124, file: !36, line: 760, baseType: !334, size: 64, offset: 832)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1124, file: !36, line: 761, baseType: !334, size: 64, offset: 896)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1124, file: !36, line: 763, baseType: !334, size: 64, offset: 960)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1124, file: !36, line: 764, baseType: !1676, size: 64, offset: 1024)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1678, line: 299, baseType: !1679)
!1678 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1678, line: 299, size: 64, elements: !1680)
!1680 = !{!1681}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1679, file: !1678, line: 299, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1683, line: 18, baseType: !334)
!1683 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1124, file: !36, line: 773, baseType: !234, size: 32, offset: 1088)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1124, file: !36, line: 785, baseType: !234, size: 32, offset: 1120)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1124, file: !36, line: 795, baseType: !1687, size: 64, offset: 1152)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !36, line: 726, size: 128, elements: !1689)
!1689 = !{!1690, !1691}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1688, file: !36, line: 727, baseType: !437, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1688, file: !36, line: 728, baseType: !115, size: 32, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1124, file: !36, line: 801, baseType: !334, size: 64, offset: 1216)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1124, file: !36, line: 804, baseType: !668, size: 64, offset: 1280)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1124, file: !36, line: 806, baseType: !115, size: 32, offset: 1344)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1124, file: !36, line: 808, baseType: !214, size: 32, offset: 1376)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1124, file: !36, line: 823, baseType: !876, size: 320, offset: 1408)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1124, file: !36, line: 825, baseType: !186, size: 128, offset: 1728)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1124, file: !36, line: 845, baseType: !115, size: 32, offset: 1856)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1124, file: !36, line: 849, baseType: !334, size: 64, offset: 1920)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1124, file: !36, line: 850, baseType: !334, size: 64, offset: 1984)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1124, file: !36, line: 852, baseType: !334, size: 64, offset: 2048)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1124, file: !36, line: 853, baseType: !334, size: 64, offset: 2112)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1124, file: !36, line: 854, baseType: !670, size: 64, offset: 2176)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1124, file: !36, line: 855, baseType: !334, size: 64, offset: 2240)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1124, file: !36, line: 856, baseType: !334, size: 64, offset: 2304)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1124, file: !36, line: 857, baseType: !334, size: 64, offset: 2368)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1124, file: !36, line: 858, baseType: !334, size: 64, offset: 2432)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1124, file: !36, line: 865, baseType: !410, size: 32, offset: 2496)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1124, file: !36, line: 867, baseType: !214, size: 32, offset: 2528)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1124, file: !36, line: 869, baseType: !334, size: 64, offset: 2560)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1124, file: !36, line: 869, baseType: !334, size: 64, offset: 2624)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1124, file: !36, line: 869, baseType: !334, size: 64, offset: 2688)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1124, file: !36, line: 869, baseType: !334, size: 64, offset: 2752)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1124, file: !36, line: 870, baseType: !334, size: 64, offset: 2816)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1124, file: !36, line: 870, baseType: !334, size: 64, offset: 2880)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1124, file: !36, line: 870, baseType: !334, size: 64, offset: 2944)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1124, file: !36, line: 871, baseType: !334, size: 64, offset: 3008)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1124, file: !36, line: 871, baseType: !334, size: 64, offset: 3072)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1124, file: !36, line: 871, baseType: !334, size: 64, offset: 3136)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1124, file: !36, line: 871, baseType: !334, size: 64, offset: 3200)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1124, file: !36, line: 873, baseType: !1722, size: 3328, offset: 3264)
!1722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 3328, elements: !1723)
!1723 = !{!1724}
!1724 = !DISubrange(count: 52)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1124, file: !36, line: 875, baseType: !1726, size: 1280, offset: 6592)
!1726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1385, size: 1280, elements: !5)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1124, file: !36, line: 877, baseType: !1728, size: 64, offset: 7872)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !36, line: 877, flags: DIFlagFwdDecl)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1124, file: !36, line: 880, baseType: !1731, size: 1088, offset: 7936)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1732, line: 72, baseType: !1733)
!1732 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1732, line: 23, size: 1088, elements: !1734)
!1734 = !{!1735, !1736, !1737, !1738, !1739, !1742, !1743, !1744, !1745, !1772, !1773, !1774}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1733, file: !1732, line: 28, baseType: !437, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1733, file: !1732, line: 38, baseType: !670, size: 64, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1733, file: !1732, line: 40, baseType: !334, size: 64, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1733, file: !1732, line: 43, baseType: !876, size: 320, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1733, file: !1732, line: 44, baseType: !1740, size: 64, offset: 512)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1732, line: 44, flags: DIFlagFwdDecl)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1733, file: !1732, line: 48, baseType: !334, size: 64, offset: 576)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1733, file: !1732, line: 59, baseType: !664, size: 256, offset: 640)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1733, file: !1732, line: 60, baseType: !178, size: 64, offset: 896)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1733, file: !1732, line: 61, baseType: !1746, size: 64, offset: 960)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1748)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1749, line: 13, size: 1216, elements: !1750)
!1749 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1750 = !{!1751, !1752, !1753, !1754, !1755, !1756, !1757, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1748, file: !1749, line: 14, baseType: !178, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1748, file: !1749, line: 15, baseType: !334, size: 64, offset: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1748, file: !1749, line: 17, baseType: !334, size: 64, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1748, file: !1749, line: 17, baseType: !334, size: 64, offset: 192)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1748, file: !1749, line: 18, baseType: !334, size: 64, offset: 256)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1748, file: !1749, line: 18, baseType: !334, size: 64, offset: 320)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1748, file: !1749, line: 19, baseType: !1758, size: 64, offset: 384)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1748, file: !1749, line: 21, baseType: !320, size: 64, offset: 448)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1748, file: !1749, line: 23, baseType: !320, size: 64, offset: 512)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1748, file: !1749, line: 24, baseType: !320, size: 64, offset: 576)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1748, file: !1749, line: 25, baseType: !320, size: 64, offset: 640)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1748, file: !1749, line: 26, baseType: !320, size: 64, offset: 704)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1748, file: !1749, line: 27, baseType: !320, size: 64, offset: 768)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1748, file: !1749, line: 28, baseType: !320, size: 64, offset: 832)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1748, file: !1749, line: 29, baseType: !320, size: 64, offset: 896)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1748, file: !1749, line: 30, baseType: !320, size: 64, offset: 960)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1748, file: !1749, line: 31, baseType: !320, size: 64, offset: 1024)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1748, file: !1749, line: 32, baseType: !320, size: 64, offset: 1088)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1748, file: !1749, line: 33, baseType: !320, size: 64, offset: 1152)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1733, file: !1732, line: 63, baseType: !234, size: 32, offset: 1024)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1733, file: !1732, line: 69, baseType: !252, size: 16, offset: 1056)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1733, file: !1732, line: 70, baseType: !1775, size: 16, offset: 1072)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !243, line: 18, baseType: !1776)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !245, line: 23, baseType: !1298)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1124, file: !36, line: 882, baseType: !334, size: 64, offset: 9024)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1124, file: !36, line: 885, baseType: !214, size: 32, offset: 9088)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1124, file: !36, line: 886, baseType: !1780, size: 64, offset: 9152)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !36, line: 732, flags: DIFlagFwdDecl)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1124, file: !36, line: 901, baseType: !1410, size: 64, offset: 9216)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1124, file: !36, line: 904, baseType: !1147, size: 64, offset: 9280)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1124, file: !36, line: 906, baseType: !1785, size: 64, offset: 9344)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !36, line: 906, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1124, file: !36, line: 930, baseType: !234, size: 32, offset: 9408)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1124, file: !36, line: 933, baseType: !234, size: 32, offset: 9440)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1124, file: !36, line: 935, baseType: !1790, size: 64, offset: 9472)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !87, line: 103, size: 64, elements: !1791)
!1791 = !{!1792}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1790, file: !87, line: 104, baseType: !1793, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !87, line: 101, flags: DIFlagFwdDecl)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1124, file: !36, line: 940, baseType: !668, size: 64, offset: 9536)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1124, file: !36, line: 942, baseType: !1797, size: 256, offset: 9600)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1798, line: 98, size: 256, elements: !1799)
!1798 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1799 = !{!1800, !1801, !1802}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1797, file: !1798, line: 99, baseType: !668, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1797, file: !1798, line: 100, baseType: !186, size: 128, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1797, file: !1798, line: 101, baseType: !1803, size: 64, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1798, line: 21, baseType: !1804)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{null, !1807}
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1121, file: !36, line: 986, baseType: !1809, offset: 10240)
!1809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, elements: !1223)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1108, file: !36, line: 640, baseType: !1811, size: 64, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1678, line: 297, baseType: !1812)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1678, line: 297, size: 64, elements: !1813)
!1813 = !{!1814}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1812, file: !1678, line: 297, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1683, line: 19, baseType: !334)
!1816 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !36, line: 646, baseType: !1817, size: 64, offset: 256)
!1817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1108, file: !36, line: 646, size: 64, elements: !1818)
!1818 = !{!1819, !1822}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1817, file: !36, line: 647, baseType: !1820, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1821)
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !36, line: 542, baseType: !334)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1817, file: !36, line: 648, baseType: !1821, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1108, file: !36, line: 666, baseType: !115, size: 32, offset: 320)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1108, file: !36, line: 667, baseType: !1825, size: 64, offset: 384)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !36, line: 579, size: 320, elements: !1827)
!1827 = !{!1828}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1826, file: !36, line: 580, baseType: !876, size: 320)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1108, file: !36, line: 670, baseType: !1058, size: 8, offset: 448)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1108, file: !36, line: 681, baseType: !1831, size: 256, offset: 512)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1108, file: !36, line: 678, size: 256, elements: !1832)
!1832 = !{!1833, !1834}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1831, file: !36, line: 679, baseType: !1272, size: 192, align: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1831, file: !36, line: 680, baseType: !334, size: 64, offset: 192)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1108, file: !36, line: 689, baseType: !186, size: 128, offset: 768)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1108, file: !36, line: 691, baseType: !1837, size: 64, offset: 896)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !36, line: 691, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1108, file: !36, line: 694, baseType: !1840, size: 64, offset: 960)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1842)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1101, line: 563, size: 1024, elements: !1843)
!1843 = !{!1844, !1848, !1849, !1853, !1857, !1861, !1862, !1866, !1870, !1874, !1875, !1876, !1880, !1884, !1890, !1894}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1842, file: !1101, line: 564, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{null, !1107}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1842, file: !1101, line: 569, baseType: !1845, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1842, file: !1101, line: 571, baseType: !1850, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!115, !1107, !334}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1842, file: !1101, line: 572, baseType: !1854, size: 64, offset: 192)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!115, !1107}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1842, file: !1101, line: 578, baseType: !1858, size: 64, offset: 256)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!115, !1107, !334, !334, !334}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1842, file: !1101, line: 580, baseType: !1095, size: 64, offset: 320)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1842, file: !1101, line: 581, baseType: !1863, size: 64, offset: 384)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!1098, !1099, !13}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1842, file: !1101, line: 582, baseType: !1867, size: 64, offset: 448)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!1098, !1099, !334, !334}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1842, file: !1101, line: 584, baseType: !1871, size: 64, offset: 512)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!334, !1107}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1842, file: !1101, line: 588, baseType: !1095, size: 64, offset: 576)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1842, file: !1101, line: 591, baseType: !1095, size: 64, offset: 640)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1842, file: !1101, line: 597, baseType: !1877, size: 64, offset: 704)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!115, !1107, !334, !178, !115, !115}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1842, file: !1101, line: 603, baseType: !1881, size: 64, offset: 768)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!203, !1107}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1842, file: !1101, line: 613, baseType: !1885, size: 64, offset: 832)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!115, !1107, !1888}
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !36, line: 717, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1842, file: !1101, line: 625, baseType: !1891, size: 64, offset: 896)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!1888, !1107, !334}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1842, file: !1101, line: 633, baseType: !1895, size: 64, offset: 960)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!977, !1107, !334}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1108, file: !36, line: 697, baseType: !334, size: 64, offset: 1024)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1108, file: !36, line: 699, baseType: !1147, size: 64, offset: 1088)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1108, file: !36, line: 700, baseType: !178, size: 64, offset: 1152)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1108, file: !36, line: 711, baseType: !668, size: 64, offset: 1216)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1108, file: !36, line: 717, baseType: !1888, size: 64, offset: 1280)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1108, file: !36, line: 722, baseType: !1904, offset: 1344)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !36, line: 570, elements: !568)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1104, file: !1101, line: 515, baseType: !179, size: 32, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1104, file: !1101, line: 516, baseType: !334, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1104, file: !1101, line: 517, baseType: !334, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1104, file: !1101, line: 518, baseType: !334, size: 64, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1100, file: !1101, line: 520, baseType: !35, size: 32, offset: 320)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1100, file: !1101, line: 522, baseType: !1911, size: 64, offset: 384)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1683, line: 22, baseType: !1913)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1683, line: 22, size: 64, elements: !1914)
!1914 = !{!1915}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1913, file: !1683, line: 22, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1683, line: 15, baseType: !334)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1100, file: !1101, line: 524, baseType: !1918, size: 64, offset: 448)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1678, line: 372, baseType: !1920)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1678, line: 372, size: 64, elements: !1921)
!1921 = !{!1922}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1920, file: !1678, line: 372, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1683, line: 16, baseType: !334)
!1924 = !DIDerivedType(tag: DW_TAG_member, scope: !1100, file: !1101, line: 527, baseType: !1925, size: 64, offset: 512)
!1925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1100, file: !1101, line: 527, size: 64, elements: !1926)
!1926 = !{!1927, !1933}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1925, file: !1101, line: 528, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1683, line: 21, baseType: !1929)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1683, line: 21, size: 64, elements: !1930)
!1930 = !{!1931}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1929, file: !1683, line: 21, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1683, line: 14, baseType: !334)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1925, file: !1101, line: 529, baseType: !1912, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1100, file: !1101, line: 534, baseType: !977, size: 64, offset: 576)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1100, file: !1101, line: 535, baseType: !977, size: 64, offset: 640)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1100, file: !1101, line: 541, baseType: !1937, size: 64, offset: 704)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1100, file: !1101, line: 545, baseType: !1939, size: 64, offset: 768)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1100, file: !1101, line: 549, baseType: !1941, size: 64, offset: 832)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1678, line: 520, baseType: !977)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1088, file: !20, line: 100, baseType: !1943, size: 64, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!115, !1027, !334, !334, !115}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1028, file: !20, line: 134, baseType: !178, size: 64, offset: 960)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1028, file: !20, line: 135, baseType: !115, size: 32, offset: 1024)
!1948 = !DIDerivedType(tag: DW_TAG_member, scope: !1028, file: !20, line: 136, baseType: !1949, size: 128, offset: 1088)
!1949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1028, file: !20, line: 136, size: 128, elements: !1950)
!1950 = !{!1951, !1957}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1949, file: !20, line: 137, baseType: !1952, size: 128)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1953, line: 6, size: 128, elements: !1954)
!1953 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1954 = !{!1955, !1956}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1952, file: !1953, line: 7, baseType: !437, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1952, file: !1953, line: 8, baseType: !437, size: 64, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, scope: !1949, file: !20, line: 138, baseType: !1958)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1949, file: !20, line: 138, elements: !1959)
!1959 = !{!1960, !1962}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1958, file: !20, line: 138, baseType: !1961)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1958, file: !20, line: 138, elements: !568)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1958, file: !20, line: 138, baseType: !1963)
!1963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1952, elements: !1223)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1024, file: !36, line: 147, baseType: !178, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !982, file: !36, line: 161, baseType: !1062, size: 128, align: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !36, line: 164, baseType: !1967, size: 32, offset: 384)
!1967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !978, file: !36, line: 164, size: 32, elements: !1968)
!1968 = !{!1969, !1970}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1967, file: !36, line: 169, baseType: !234, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1967, file: !36, line: 177, baseType: !13, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !978, file: !36, line: 181, baseType: !234, size: 32, offset: 416)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !974, file: !947, line: 33, baseType: !13, size: 32, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !974, file: !947, line: 34, baseType: !13, size: 32, offset: 96)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !934, file: !900, line: 317, baseType: !1975, size: 64, offset: 896)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !1977, line: 678, size: 1984, elements: !1978)
!1977 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!1978 = !{!1979, !1983, !1984, !1987, !2008, !2009, !2010, !2011, !2016, !2017, !2020}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !1976, file: !1977, line: 679, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1982, line: 325, flags: DIFlagFwdDecl)
!1982 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !1976, file: !1977, line: 680, baseType: !13, size: 32, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1976, file: !1977, line: 685, baseType: !1985, size: 64, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !1977, line: 685, flags: DIFlagFwdDecl)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !1976, file: !1977, line: 687, baseType: !1988, size: 576, offset: 192)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !1989, line: 26, baseType: !1990)
!1989 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !1989, line: 16, size: 576, elements: !1991)
!1991 = !{!1992, !1993, !1994, !1995, !1996, !1997, !2002, !2007}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1990, file: !1989, line: 17, baseType: !214, size: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !1990, file: !1989, line: 18, baseType: !115, size: 32, offset: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !1990, file: !1989, line: 19, baseType: !115, size: 32, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1990, file: !1989, line: 20, baseType: !1632, size: 64, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !1990, file: !1989, line: 22, baseType: !178, size: 64, offset: 192)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1990, file: !1989, line: 23, baseType: !1998, size: 64, offset: 256)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !1989, line: 13, baseType: !2000)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!178, !179, !178}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1990, file: !1989, line: 24, baseType: !2003, size: 64, offset: 320)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !1989, line: 14, baseType: !2005)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{null, !178, !178}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1990, file: !1989, line: 25, baseType: !1208, size: 192, offset: 384)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !1976, file: !1977, line: 688, baseType: !1988, size: 576, offset: 768)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !1976, file: !1977, line: 694, baseType: !13, size: 32, offset: 1344)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !1976, file: !1977, line: 699, baseType: !214, size: 32, offset: 1376)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !1976, file: !1977, line: 700, baseType: !2012, size: 128, offset: 1408)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1977, line: 550, size: 128, elements: !2013)
!2013 = !{!2014, !2015}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2012, file: !1977, line: 551, baseType: !933, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2012, file: !1977, line: 552, baseType: !933, size: 64, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !1976, file: !1977, line: 701, baseType: !1797, size: 256, offset: 1536)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !1976, file: !1977, line: 702, baseType: !2018, size: 64, offset: 1792)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1798, line: 18, flags: DIFlagFwdDecl)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !1976, file: !1977, line: 707, baseType: !560, size: 128, offset: 1856)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !934, file: !900, line: 324, baseType: !2022, offset: 960)
!2022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !974, elements: !1223)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !927, file: !148, line: 1390, baseType: !2024, size: 64, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!115, !933, !1541, !13}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !927, file: !148, line: 1392, baseType: !2028, size: 64, offset: 128)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!115, !906, !2031}
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !148, line: 115, baseType: !13)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !927, file: !148, line: 1393, baseType: !2033, size: 64, offset: 192)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{null, !906}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !927, file: !148, line: 1394, baseType: !2037, size: 64, offset: 256)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!115, !898, !2031, !13, !334}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !927, file: !148, line: 1396, baseType: !2037, size: 64, offset: 320)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !927, file: !148, line: 1398, baseType: !2042, size: 64, offset: 384)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!13, !906, !13}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !927, file: !148, line: 1400, baseType: !2033, size: 64, offset: 448)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !927, file: !148, line: 1401, baseType: !2047, size: 64, offset: 512)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!115, !898, !2050}
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !65, line: 56, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !927, file: !148, line: 1402, baseType: !2053, size: 64, offset: 576)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!115, !898, !1058}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !927, file: !148, line: 1403, baseType: !2033, size: 64, offset: 640)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !927, file: !148, line: 1405, baseType: !2058, size: 64, offset: 704)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{null, !898, !334}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !927, file: !148, line: 1406, baseType: !2062, size: 64, offset: 768)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!115, !906, !903, !13, !2065, !178}
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !148, line: 342, baseType: !2066)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!115, !2069, !13, !178}
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2071, line: 106, size: 512, elements: !2072)
!2071 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!2072 = !{!2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2082, !2083}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2070, file: !2071, line: 107, baseType: !438, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2070, file: !2071, line: 108, baseType: !438, size: 64, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2070, file: !2071, line: 109, baseType: !438, size: 64, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2070, file: !2071, line: 110, baseType: !244, size: 8, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2070, file: !2071, line: 111, baseType: !244, size: 8, offset: 200)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2070, file: !2071, line: 112, baseType: !244, size: 8, offset: 208)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2070, file: !2071, line: 113, baseType: !244, size: 8, offset: 216)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2070, file: !2071, line: 114, baseType: !2081, size: 32, offset: 224)
!2081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 32, elements: !5)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2070, file: !2071, line: 115, baseType: !438, size: 64, offset: 256)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2070, file: !2071, line: 116, baseType: !2084, size: 192, offset: 320)
!2084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 192, elements: !2085)
!2085 = !{!2086}
!2086 = !DISubrange(count: 24)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !927, file: !148, line: 1408, baseType: !2088, size: 64, offset: 832)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!284, !906, !2091}
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !927, file: !148, line: 1410, baseType: !2093, size: 64, offset: 896)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!115, !906, !2096, !147}
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !927, file: !148, line: 1412, baseType: !181, size: 64, offset: 960)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !927, file: !148, line: 1413, baseType: !2099, size: 64, offset: 1024)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2101)
!2101 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !148, line: 37, flags: DIFlagFwdDecl)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !927, file: !148, line: 1420, baseType: !2103, size: 64, offset: 1088)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!115, !906, !2106}
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !907, file: !148, line: 146, baseType: !2108, size: 64, offset: 640)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !148, line: 391, size: 7296, elements: !2110)
!2110 = !{!2111, !2112, !2115, !2116, !2119, !2122, !2123, !2127, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2717, !2718, !2722, !2723, !2724, !2725, !2758, !2759, !2760, !2763, !2766, !2767, !2768, !2769, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2788, !2789, !2790, !2791, !2792, !2793}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !2109, file: !148, line: 392, baseType: !1545, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !2109, file: !148, line: 393, baseType: !2113, size: 64, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !148, line: 30, flags: DIFlagFwdDecl)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !2109, file: !148, line: 395, baseType: !1041, size: 128, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2109, file: !148, line: 397, baseType: !2117, size: 64, offset: 256)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !148, line: 39, flags: DIFlagFwdDecl)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !2109, file: !148, line: 398, baseType: !2120, size: 64, offset: 320)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !148, line: 38, flags: DIFlagFwdDecl)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !2109, file: !148, line: 399, baseType: !664, size: 256, offset: 384)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !2109, file: !148, line: 401, baseType: !2124, size: 64, offset: 640)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2126)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !148, line: 401, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !2109, file: !148, line: 404, baseType: !2128, size: 64, offset: 704)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !148, line: 404, flags: DIFlagFwdDecl)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !2109, file: !148, line: 406, baseType: !13, size: 32, offset: 768)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !2109, file: !148, line: 409, baseType: !917, size: 128, offset: 832)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !2109, file: !148, line: 410, baseType: !13, size: 32, offset: 960)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !2109, file: !148, line: 416, baseType: !178, size: 64, offset: 1024)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !2109, file: !148, line: 421, baseType: !334, size: 64, offset: 1088)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !2109, file: !148, line: 426, baseType: !234, size: 32, offset: 1152)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2109, file: !148, line: 432, baseType: !115, size: 32, offset: 1184)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !2109, file: !148, line: 434, baseType: !214, size: 32, offset: 1216)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !2109, file: !148, line: 436, baseType: !906, size: 64, offset: 1280)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !2109, file: !148, line: 438, baseType: !1197, size: 32, offset: 1344)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !2109, file: !148, line: 443, baseType: !207, size: 64, offset: 1408)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2109, file: !148, line: 450, baseType: !2142, size: 64, offset: 1472)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !100, line: 705, size: 5824, elements: !2144)
!2144 = !{!2145, !2146, !2147, !2150, !2151, !2205, !2275, !2276, !2277, !2278, !2279, !2286, !2464, !2477, !2487, !2491, !2493, !2494, !2495, !2499, !2506, !2507, !2510, !2513, !2517, !2622, !2623, !2624, !2625, !2626, !2627, !2684, !2685, !2686, !2689, !2692, !2701, !2702, !2703, !2704, !2705, !2706}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2143, file: !100, line: 706, baseType: !199, size: 512)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2143, file: !100, line: 707, baseType: !2142, size: 64, offset: 512)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2143, file: !100, line: 709, baseType: !2148, size: 64, offset: 576)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !100, line: 37, flags: DIFlagFwdDecl)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2143, file: !100, line: 711, baseType: !203, size: 64, offset: 640)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2143, file: !100, line: 712, baseType: !2152, size: 64, offset: 704)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2154)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !100, line: 89, size: 384, elements: !2155)
!2155 = !{!2156, !2157, !2158, !2164, !2170, !2174}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2154, file: !100, line: 90, baseType: !203, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2154, file: !100, line: 91, baseType: !336, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2154, file: !100, line: 92, baseType: !2159, size: 64, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!115, !2162, !279}
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2143)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2154, file: !100, line: 93, baseType: !2165, size: 64, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!284, !2162, !2091, !2168, !2169}
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2154, file: !100, line: 95, baseType: !2171, size: 64, offset: 256)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{null, !2142}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2154, file: !100, line: 97, baseType: !2175, size: 64, offset: 320)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2177)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !107, line: 286, size: 1472, elements: !2178)
!2178 = !{!2179, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2177, file: !107, line: 287, baseType: !2180, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!115, !2142}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2177, file: !107, line: 288, baseType: !2171, size: 64, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2177, file: !107, line: 289, baseType: !2180, size: 64, offset: 128)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2177, file: !107, line: 290, baseType: !2180, size: 64, offset: 192)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2177, file: !107, line: 291, baseType: !2180, size: 64, offset: 256)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2177, file: !107, line: 292, baseType: !2180, size: 64, offset: 320)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2177, file: !107, line: 293, baseType: !2180, size: 64, offset: 384)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2177, file: !107, line: 294, baseType: !2180, size: 64, offset: 448)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2177, file: !107, line: 295, baseType: !2180, size: 64, offset: 512)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2177, file: !107, line: 296, baseType: !2180, size: 64, offset: 576)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2177, file: !107, line: 297, baseType: !2180, size: 64, offset: 640)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2177, file: !107, line: 298, baseType: !2180, size: 64, offset: 704)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2177, file: !107, line: 299, baseType: !2180, size: 64, offset: 768)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2177, file: !107, line: 300, baseType: !2180, size: 64, offset: 832)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2177, file: !107, line: 301, baseType: !2180, size: 64, offset: 896)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2177, file: !107, line: 302, baseType: !2180, size: 64, offset: 960)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2177, file: !107, line: 303, baseType: !2180, size: 64, offset: 1024)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2177, file: !107, line: 304, baseType: !2180, size: 64, offset: 1088)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2177, file: !107, line: 305, baseType: !2180, size: 64, offset: 1152)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2177, file: !107, line: 306, baseType: !2180, size: 64, offset: 1216)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2177, file: !107, line: 307, baseType: !2180, size: 64, offset: 1280)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2177, file: !107, line: 308, baseType: !2180, size: 64, offset: 1344)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2177, file: !107, line: 309, baseType: !2180, size: 64, offset: 1408)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2143, file: !100, line: 714, baseType: !2206, size: 64, offset: 768)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2208)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2209, line: 80, size: 1344, elements: !2210)
!2209 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2210 = !{!2211, !2212, !2213, !2214, !2215, !2216, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2274}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2208, file: !2209, line: 81, baseType: !203, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2208, file: !2209, line: 82, baseType: !203, size: 64, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2208, file: !2209, line: 83, baseType: !336, size: 64, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2208, file: !2209, line: 84, baseType: !336, size: 64, offset: 192)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2208, file: !2209, line: 85, baseType: !336, size: 64, offset: 256)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2208, file: !2209, line: 87, baseType: !2217, size: 64, offset: 320)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!115, !2142, !2220}
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !94, line: 96, size: 1152, elements: !2222)
!2222 = !{!2223, !2224, !2225, !2226, !2227, !2228, !2229, !2233, !2237, !2238, !2239, !2240, !2241, !2249, !2250, !2251, !2252, !2253, !2254}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2221, file: !94, line: 97, baseType: !203, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2221, file: !94, line: 98, baseType: !2206, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2221, file: !94, line: 100, baseType: !181, size: 64, offset: 128)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2221, file: !94, line: 101, baseType: !203, size: 64, offset: 192)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2221, file: !94, line: 103, baseType: !1058, size: 8, offset: 256)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2221, file: !94, line: 104, baseType: !93, size: 32, offset: 288)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2221, file: !94, line: 106, baseType: !2230, size: 64, offset: 320)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2232)
!2232 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !94, line: 106, flags: DIFlagFwdDecl)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2221, file: !94, line: 107, baseType: !2234, size: 64, offset: 384)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2236)
!2236 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !94, line: 107, flags: DIFlagFwdDecl)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2221, file: !94, line: 109, baseType: !2180, size: 64, offset: 448)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2221, file: !94, line: 110, baseType: !2171, size: 64, offset: 512)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2221, file: !94, line: 111, baseType: !2180, size: 64, offset: 576)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2221, file: !94, line: 112, baseType: !2171, size: 64, offset: 640)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2221, file: !94, line: 113, baseType: !2242, size: 64, offset: 704)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!115, !2142, !2245}
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !107, line: 60, baseType: !2246)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !107, line: 58, size: 32, elements: !2247)
!2247 = !{!2248}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2246, file: !107, line: 59, baseType: !115, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2221, file: !94, line: 114, baseType: !2180, size: 64, offset: 768)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2221, file: !94, line: 115, baseType: !336, size: 64, offset: 832)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2221, file: !94, line: 116, baseType: !336, size: 64, offset: 896)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2221, file: !94, line: 118, baseType: !2175, size: 64, offset: 960)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2221, file: !94, line: 119, baseType: !2171, size: 64, offset: 1024)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2221, file: !94, line: 121, baseType: !2255, size: 64, offset: 1088)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !94, line: 121, flags: DIFlagFwdDecl)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2208, file: !2209, line: 88, baseType: !2159, size: 64, offset: 384)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2208, file: !2209, line: 89, baseType: !2180, size: 64, offset: 448)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2208, file: !2209, line: 90, baseType: !2171, size: 64, offset: 512)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2208, file: !2209, line: 91, baseType: !2171, size: 64, offset: 576)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2208, file: !2209, line: 92, baseType: !2171, size: 64, offset: 640)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2208, file: !2209, line: 94, baseType: !2180, size: 64, offset: 704)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2208, file: !2209, line: 95, baseType: !2180, size: 64, offset: 768)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2208, file: !2209, line: 97, baseType: !2242, size: 64, offset: 832)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2208, file: !2209, line: 98, baseType: !2180, size: 64, offset: 896)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2208, file: !2209, line: 100, baseType: !2180, size: 64, offset: 960)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2208, file: !2209, line: 102, baseType: !2180, size: 64, offset: 1024)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2208, file: !2209, line: 103, baseType: !2171, size: 64, offset: 1088)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2208, file: !2209, line: 105, baseType: !2175, size: 64, offset: 1152)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2208, file: !2209, line: 107, baseType: !2271, size: 64, offset: 1216)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2273)
!2273 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2209, line: 107, flags: DIFlagFwdDecl)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2208, file: !2209, line: 109, baseType: !1058, size: 8, offset: 1280)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2143, file: !100, line: 715, baseType: !2220, size: 64, offset: 832)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2143, file: !100, line: 717, baseType: !178, size: 64, offset: 896)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2143, file: !100, line: 719, baseType: !178, size: 64, offset: 960)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2143, file: !100, line: 721, baseType: !664, size: 256, offset: 1024)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2143, file: !100, line: 725, baseType: !2280, size: 448, offset: 1280)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !100, line: 517, size: 448, elements: !2281)
!2281 = !{!2282, !2283, !2284, !2285}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2280, file: !100, line: 518, baseType: !186, size: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2280, file: !100, line: 519, baseType: !186, size: 128, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2280, file: !100, line: 520, baseType: !186, size: 128, offset: 256)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2280, file: !100, line: 521, baseType: !99, size: 32, offset: 384)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2143, file: !100, line: 726, baseType: !2287, size: 2496, offset: 1728)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !107, line: 663, size: 2496, elements: !2288)
!2288 = !{!2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2344, !2345, !2346, !2347, !2348, !2349, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2457, !2461}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2287, file: !107, line: 664, baseType: !2245, size: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2287, file: !107, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2287, file: !107, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2287, file: !107, line: 667, baseType: !1058, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2287, file: !107, line: 668, baseType: !1058, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2287, file: !107, line: 669, baseType: !1058, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2287, file: !107, line: 670, baseType: !1058, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2287, file: !107, line: 671, baseType: !1058, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2287, file: !107, line: 672, baseType: !1058, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2287, file: !107, line: 673, baseType: !1058, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2287, file: !107, line: 674, baseType: !1058, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2287, file: !107, line: 675, baseType: !433, size: 32, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2287, file: !107, line: 676, baseType: !214, size: 32, offset: 96)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2287, file: !107, line: 678, baseType: !186, size: 128, offset: 128)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2287, file: !107, line: 679, baseType: !1072, size: 256, offset: 256)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2287, file: !107, line: 680, baseType: !2305, size: 64, offset: 512)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2307, line: 43, size: 1536, elements: !2308)
!2307 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2308 = !{!2309, !2310, !2311, !2312, !2313, !2316, !2328, !2329, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2306, file: !2307, line: 44, baseType: !203, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2306, file: !2307, line: 45, baseType: !115, size: 32, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2306, file: !2307, line: 46, baseType: !186, size: 128, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2306, file: !2307, line: 47, baseType: !214, size: 32, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2306, file: !2307, line: 48, baseType: !2314, size: 64, offset: 320)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !107, line: 629, flags: DIFlagFwdDecl)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2306, file: !2307, line: 49, baseType: !2317, size: 320, offset: 384)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2318, line: 11, size: 320, elements: !2319)
!2318 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2319 = !{!2320, !2321, !2322, !2327}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2317, file: !2318, line: 16, baseType: !560, size: 128)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2317, file: !2318, line: 17, baseType: !334, size: 64, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2317, file: !2318, line: 18, baseType: !2323, size: 64, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{null, !2326}
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2317, file: !2318, line: 19, baseType: !433, size: 32, offset: 256)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2306, file: !2307, line: 50, baseType: !334, size: 64, offset: 704)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2306, file: !2307, line: 51, baseType: !2330, size: 64, offset: 768)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2331, line: 29, baseType: !674)
!2331 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2306, file: !2307, line: 52, baseType: !2330, size: 64, offset: 832)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2306, file: !2307, line: 53, baseType: !2330, size: 64, offset: 896)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2306, file: !2307, line: 54, baseType: !2330, size: 64, offset: 960)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2306, file: !2307, line: 55, baseType: !2330, size: 64, offset: 1024)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2306, file: !2307, line: 56, baseType: !334, size: 64, offset: 1088)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2306, file: !2307, line: 57, baseType: !334, size: 64, offset: 1152)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2306, file: !2307, line: 58, baseType: !334, size: 64, offset: 1216)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2306, file: !2307, line: 59, baseType: !334, size: 64, offset: 1280)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2306, file: !2307, line: 60, baseType: !334, size: 64, offset: 1344)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2306, file: !2307, line: 61, baseType: !2142, size: 64, offset: 1408)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2306, file: !2307, line: 62, baseType: !1058, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2306, file: !2307, line: 63, baseType: !1058, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2287, file: !107, line: 681, baseType: !1058, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2287, file: !107, line: 682, baseType: !1058, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2287, file: !107, line: 683, baseType: !1058, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2287, file: !107, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2287, file: !107, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2287, file: !107, line: 690, baseType: !2350, size: 512, offset: 640)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !76, line: 118, size: 512, elements: !2351)
!2351 = !{!2352, !2358, !2359, !2364, !2419, !2420, !2421, !2422}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2350, file: !76, line: 119, baseType: !2353, size: 256)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2354, line: 9, size: 256, elements: !2355)
!2354 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2355 = !{!2356, !2357}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2353, file: !2354, line: 10, baseType: !1272, size: 192, align: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2353, file: !2354, line: 11, baseType: !2330, size: 64, offset: 192)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2350, file: !76, line: 120, baseType: !2330, size: 64, offset: 256)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2350, file: !76, line: 121, baseType: !2360, size: 64, offset: 320)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!75, !2363}
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2350, file: !76, line: 122, baseType: !2365, size: 64, offset: 384)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !76, line: 159, size: 512, align: 512, elements: !2367)
!2367 = !{!2368, !2393, !2394, !2397, !2402, !2403, !2414, !2418}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2366, file: !76, line: 160, baseType: !2369, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !76, line: 215, size: 4608, align: 512, elements: !2371)
!2371 = !{!2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2370, file: !76, line: 216, baseType: !677, size: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2370, file: !76, line: 217, baseType: !13, size: 32, offset: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2370, file: !76, line: 218, baseType: !13, size: 32, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2370, file: !76, line: 219, baseType: !13, size: 32, offset: 96)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2370, file: !76, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2370, file: !76, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2370, file: !76, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2370, file: !76, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2370, file: !76, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2370, file: !76, line: 226, baseType: !13, size: 32, offset: 160)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2370, file: !76, line: 227, baseType: !254, size: 16, offset: 192)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2370, file: !76, line: 228, baseType: !254, size: 16, offset: 208)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2370, file: !76, line: 229, baseType: !13, size: 32, offset: 224)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2370, file: !76, line: 235, baseType: !2330, size: 64, offset: 256)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2370, file: !76, line: 236, baseType: !2363, size: 64, offset: 320)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2370, file: !76, line: 237, baseType: !2330, size: 64, offset: 384)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2370, file: !76, line: 238, baseType: !2363, size: 64, offset: 448)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2370, file: !76, line: 239, baseType: !2390, size: 4096, align: 512, offset: 512)
!2390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2366, size: 4096, align: 512, elements: !2391)
!2391 = !{!2392}
!2392 = !DISubrange(count: 8)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2366, file: !76, line: 161, baseType: !13, size: 32, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2366, file: !76, line: 162, baseType: !2395, size: 32, offset: 96)
!2395 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !180, line: 32, baseType: !2396)
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !318, line: 96, baseType: !115)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2366, file: !76, line: 163, baseType: !2398, size: 32, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !406, line: 274, baseType: !2399)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !406, line: 274, size: 32, elements: !2400)
!2400 = !{!2401}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2399, file: !406, line: 274, baseType: !410, size: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2366, file: !76, line: 164, baseType: !2363, size: 64, offset: 192)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2366, file: !76, line: 165, baseType: !2404, size: 128, offset: 256)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2354, line: 14, size: 128, elements: !2405)
!2405 = !{!2406}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2404, file: !2354, line: 15, baseType: !2407, size: 128)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1273, line: 26, size: 128, elements: !2408)
!2408 = !{!2409, !2413}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2407, file: !1273, line: 27, baseType: !2410, size: 64)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1273, line: 12, size: 64, elements: !2411)
!2411 = !{!2412}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2410, file: !1273, line: 13, baseType: !1277, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2407, file: !1273, line: 28, baseType: !1277, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2366, file: !76, line: 166, baseType: !2415, size: 64, offset: 384)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!2330}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2366, file: !76, line: 167, baseType: !2330, size: 64, offset: 448)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2350, file: !76, line: 123, baseType: !242, size: 8, offset: 448)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2350, file: !76, line: 124, baseType: !242, size: 8, offset: 456)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2350, file: !76, line: 125, baseType: !242, size: 8, offset: 464)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2350, file: !76, line: 126, baseType: !242, size: 8, offset: 472)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2287, file: !107, line: 691, baseType: !437, size: 64, offset: 1152)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2287, file: !107, line: 692, baseType: !1797, size: 256, offset: 1216)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2287, file: !107, line: 693, baseType: !1208, size: 192, offset: 1472)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2287, file: !107, line: 694, baseType: !2314, size: 64, offset: 1664)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2287, file: !107, line: 695, baseType: !234, size: 32, offset: 1728)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2287, file: !107, line: 696, baseType: !234, size: 32, offset: 1760)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2287, file: !107, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2287, file: !107, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2287, file: !107, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2287, file: !107, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2287, file: !107, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2287, file: !107, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2287, file: !107, line: 703, baseType: !1058, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2287, file: !107, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2287, file: !107, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2287, file: !107, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2287, file: !107, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2287, file: !107, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2287, file: !107, line: 709, baseType: !13, size: 32, offset: 1824)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2287, file: !107, line: 710, baseType: !106, size: 32, offset: 1856)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2287, file: !107, line: 711, baseType: !114, size: 32, offset: 1888)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2287, file: !107, line: 712, baseType: !114, size: 32, offset: 1920)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2287, file: !107, line: 713, baseType: !115, size: 32, offset: 1952)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2287, file: !107, line: 714, baseType: !115, size: 32, offset: 1984)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2287, file: !107, line: 715, baseType: !437, size: 64, offset: 2048)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2287, file: !107, line: 716, baseType: !437, size: 64, offset: 2112)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2287, file: !107, line: 717, baseType: !437, size: 64, offset: 2176)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2287, file: !107, line: 718, baseType: !437, size: 64, offset: 2240)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2287, file: !107, line: 720, baseType: !2452, size: 64, offset: 2304)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !107, line: 632, size: 64, elements: !2454)
!2454 = !{!2455, !2456}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2453, file: !107, line: 633, baseType: !214, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2453, file: !107, line: 634, baseType: !13, size: 32, offset: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2287, file: !107, line: 721, baseType: !2458, size: 64, offset: 2368)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{null, !2142, !1265}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2287, file: !107, line: 722, baseType: !2462, size: 64, offset: 2432)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !107, line: 722, flags: DIFlagFwdDecl)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2143, file: !100, line: 727, baseType: !2465, size: 64, offset: 4224)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !107, line: 742, size: 1792, elements: !2467)
!2467 = !{!2468, !2469, !2470, !2474, !2475, !2476}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2466, file: !107, line: 743, baseType: !2177, size: 1472)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2466, file: !107, line: 744, baseType: !2180, size: 64, offset: 1472)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2466, file: !107, line: 745, baseType: !2471, size: 64, offset: 1536)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{null, !2142, !1058}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2466, file: !107, line: 746, baseType: !2180, size: 64, offset: 1600)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2466, file: !107, line: 747, baseType: !2171, size: 64, offset: 1664)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2466, file: !107, line: 748, baseType: !2171, size: 64, offset: 1728)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2143, file: !100, line: 736, baseType: !2478, size: 128, offset: 4288)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !100, line: 529, size: 128, elements: !2479)
!2479 = !{!2480, !2484}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2478, file: !100, line: 531, baseType: !2481, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2483, line: 13, flags: DIFlagFwdDecl)
!2483 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2478, file: !100, line: 532, baseType: !2485, size: 64, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !100, line: 49, flags: DIFlagFwdDecl)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2143, file: !100, line: 738, baseType: !2488, size: 64, offset: 4416)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2490)
!2490 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !100, line: 738, flags: DIFlagFwdDecl)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2143, file: !100, line: 740, baseType: !2492, size: 64, offset: 4480)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2143, file: !100, line: 741, baseType: !437, size: 64, offset: 4544)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2143, file: !100, line: 746, baseType: !437, size: 64, offset: 4608)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2143, file: !100, line: 747, baseType: !2496, size: 64, offset: 4672)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2498)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !100, line: 747, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2143, file: !100, line: 749, baseType: !2500, size: 64, offset: 4736)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !100, line: 428, size: 128, elements: !2502)
!2502 = !{!2503, !2504, !2505}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2501, file: !100, line: 433, baseType: !13, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2501, file: !100, line: 434, baseType: !13, size: 32, offset: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2501, file: !100, line: 435, baseType: !334, size: 64, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2143, file: !100, line: 751, baseType: !186, size: 128, offset: 4800)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2143, file: !100, line: 762, baseType: !2508, size: 64, offset: 4928)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !100, line: 762, flags: DIFlagFwdDecl)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2143, file: !100, line: 770, baseType: !2511, offset: 4992)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2512, line: 5, elements: !568)
!2512 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2143, file: !100, line: 772, baseType: !2514, size: 64, offset: 4992)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2516, line: 18, flags: DIFlagFwdDecl)
!2516 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2143, file: !100, line: 773, baseType: !2518, size: 64, offset: 5056)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2520, line: 41, size: 512, elements: !2521)
!2520 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!2521 = !{!2522, !2523, !2618, !2619, !2620, !2621}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2519, file: !2520, line: 42, baseType: !2518, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2519, file: !2520, line: 43, baseType: !2524, size: 64, offset: 64)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2526)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2520, line: 125, size: 1408, elements: !2527)
!2527 = !{!2528, !2532, !2536, !2542, !2546, !2547, !2552, !2556, !2560, !2565, !2569, !2570, !2574, !2578, !2582, !2593, !2594, !2595, !2596, !2606, !2610, !2614}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2526, file: !2520, line: 126, baseType: !2529, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!2518, !2518}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2526, file: !2520, line: 127, baseType: !2533, size: 64, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{null, !2518}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2526, file: !2520, line: 128, baseType: !2537, size: 64, offset: 128)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!1058, !2540}
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2519)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2526, file: !2520, line: 129, baseType: !2543, size: 64, offset: 192)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!1758, !2540, !2162}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !2526, file: !2520, line: 131, baseType: !2537, size: 64, offset: 256)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !2526, file: !2520, line: 133, baseType: !2548, size: 64, offset: 320)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!2551, !2540}
!2551 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !2520, line: 132, flags: DIFlagFwdDecl)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2526, file: !2520, line: 134, baseType: !2553, size: 64, offset: 384)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!1058, !2540, !203}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2526, file: !2520, line: 136, baseType: !2557, size: 64, offset: 448)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!115, !2540, !203, !13, !178, !331}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2526, file: !2520, line: 141, baseType: !2561, size: 64, offset: 512)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!115, !2540, !203, !2564, !331}
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2526, file: !2520, line: 144, baseType: !2566, size: 64, offset: 576)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!203, !2540}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2526, file: !2520, line: 145, baseType: !2566, size: 64, offset: 640)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2526, file: !2520, line: 146, baseType: !2571, size: 64, offset: 704)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!2518, !2540}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2526, file: !2520, line: 148, baseType: !2575, size: 64, offset: 768)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!2518, !2540, !2518}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2526, file: !2520, line: 151, baseType: !2579, size: 64, offset: 832)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!2518, !2540, !203}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2526, file: !2520, line: 153, baseType: !2583, size: 64, offset: 896)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!115, !2540, !203, !203, !13, !13, !2586}
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2520, line: 94, size: 640, elements: !2588)
!2588 = !{!2589, !2590, !2591}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2587, file: !2520, line: 95, baseType: !2518, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2587, file: !2520, line: 96, baseType: !13, size: 32, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2587, file: !2520, line: 97, baseType: !2592, size: 512, offset: 128)
!2592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 512, elements: !2391)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2526, file: !2520, line: 158, baseType: !2575, size: 64, offset: 960)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2526, file: !2520, line: 161, baseType: !2571, size: 64, offset: 1024)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2526, file: !2520, line: 163, baseType: !2529, size: 64, offset: 1088)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2526, file: !2520, line: 164, baseType: !2597, size: 64, offset: 1152)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!115, !2540, !2600}
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2520, line: 73, size: 128, elements: !2602)
!2602 = !{!2603, !2604, !2605}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2601, file: !2520, line: 74, baseType: !13, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2601, file: !2520, line: 75, baseType: !13, size: 32, offset: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2601, file: !2520, line: 76, baseType: !2540, size: 64, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !2526, file: !2520, line: 166, baseType: !2607, size: 64, offset: 1216)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!178, !2518, !115}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !2526, file: !2520, line: 167, baseType: !2611, size: 64, offset: 1280)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!115, !2540, !13}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2526, file: !2520, line: 168, baseType: !2615, size: 64, offset: 1344)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!115, !2518}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2519, file: !2520, line: 44, baseType: !2142, size: 64, offset: 128)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2519, file: !2520, line: 45, baseType: !186, size: 128, offset: 192)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2519, file: !2520, line: 46, baseType: !186, size: 128, offset: 320)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2519, file: !2520, line: 47, baseType: !242, size: 8, offset: 448)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2143, file: !100, line: 776, baseType: !115, size: 32, offset: 5120)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2143, file: !100, line: 778, baseType: !520, size: 32, offset: 5152)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2143, file: !100, line: 779, baseType: !433, size: 32, offset: 5184)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2143, file: !100, line: 781, baseType: !214, size: 32, offset: 5216)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2143, file: !100, line: 782, baseType: !186, size: 128, offset: 5248)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2143, file: !100, line: 784, baseType: !2628, size: 64, offset: 5376)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2630)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2631, line: 52, size: 768, elements: !2632)
!2631 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2632 = !{!2633, !2634, !2635, !2636, !2637, !2641, !2645, !2646, !2647, !2675, !2679, !2683}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2630, file: !2631, line: 53, baseType: !203, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2630, file: !2631, line: 55, baseType: !336, size: 64, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2630, file: !2631, line: 56, baseType: !336, size: 64, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2630, file: !2631, line: 58, baseType: !2159, size: 64, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2630, file: !2631, line: 59, baseType: !2638, size: 64, offset: 256)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!284, !2162, !2091}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2630, file: !2631, line: 61, baseType: !2642, size: 64, offset: 320)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{null, !2628}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2630, file: !2631, line: 62, baseType: !2171, size: 64, offset: 384)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2630, file: !2631, line: 64, baseType: !2180, size: 64, offset: 448)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2630, file: !2631, line: 66, baseType: !2648, size: 64, offset: 512)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2650)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !59, line: 39, size: 384, elements: !2651)
!2651 = !{!2652, !2653, !2657, !2661, !2667, !2671}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2650, file: !59, line: 40, baseType: !58, size: 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2650, file: !59, line: 41, baseType: !2654, size: 64, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!1058}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2650, file: !59, line: 42, baseType: !2658, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!178}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2650, file: !59, line: 43, baseType: !2662, size: 64, offset: 192)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!1758, !2665}
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !59, line: 19, flags: DIFlagFwdDecl)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2650, file: !59, line: 44, baseType: !2668, size: 64, offset: 256)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!1758}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2650, file: !59, line: 45, baseType: !2672, size: 64, offset: 320)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{null, !178}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2630, file: !2631, line: 67, baseType: !2676, size: 64, offset: 576)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!1758, !2162}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2630, file: !2631, line: 69, baseType: !2680, size: 64, offset: 640)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{null, !2162, !2168, !2169}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2630, file: !2631, line: 71, baseType: !2175, size: 64, offset: 704)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2143, file: !100, line: 785, baseType: !336, size: 64, offset: 5440)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2143, file: !100, line: 787, baseType: !2171, size: 64, offset: 5504)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2143, file: !100, line: 788, baseType: !2687, size: 64, offset: 5568)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !100, line: 46, flags: DIFlagFwdDecl)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2143, file: !100, line: 789, baseType: !2690, size: 64, offset: 5632)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !100, line: 48, flags: DIFlagFwdDecl)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2143, file: !100, line: 791, baseType: !2693, size: 64, offset: 5696)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !100, line: 597, size: 128, elements: !2695)
!2695 = !{!2696, !2697, !2698, !2699, !2700}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2694, file: !100, line: 598, baseType: !122, size: 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2694, file: !100, line: 599, baseType: !131, size: 32, offset: 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2694, file: !100, line: 600, baseType: !136, size: 32, offset: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2694, file: !100, line: 601, baseType: !1058, size: 8, offset: 96)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2694, file: !100, line: 602, baseType: !1058, size: 8, offset: 104)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2143, file: !100, line: 793, baseType: !141, size: 32, offset: 5760)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2143, file: !100, line: 795, baseType: !1058, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2143, file: !100, line: 796, baseType: !1058, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2143, file: !100, line: 797, baseType: !1058, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2143, file: !100, line: 798, baseType: !1058, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2143, file: !100, line: 799, baseType: !1058, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !2109, file: !148, line: 451, baseType: !114, size: 32, offset: 1536)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !2109, file: !148, line: 457, baseType: !334, size: 64, offset: 1600)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !2109, file: !148, line: 459, baseType: !13, size: 32, offset: 1664)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !2109, file: !148, line: 466, baseType: !13, size: 32, offset: 1696)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2109, file: !148, line: 468, baseType: !2317, size: 320, offset: 1728)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !2109, file: !148, line: 469, baseType: !1797, size: 256, offset: 2048)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !2109, file: !148, line: 471, baseType: !234, size: 32, offset: 2304)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !2109, file: !148, line: 473, baseType: !2715, size: 64, offset: 2368)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !148, line: 473, flags: DIFlagFwdDecl)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2109, file: !148, line: 475, baseType: !186, size: 128, offset: 2432)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !2109, file: !148, line: 477, baseType: !2719, size: 64, offset: 2560)
!2719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 64, elements: !2720)
!2720 = !{!2721}
!2721 = !DISubrange(count: 1)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !2109, file: !148, line: 478, baseType: !960, size: 64, offset: 2624)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !2109, file: !148, line: 479, baseType: !186, size: 128, offset: 2688)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !2109, file: !148, line: 480, baseType: !664, size: 256, offset: 2816)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !2109, file: !148, line: 483, baseType: !2726, size: 960, offset: 3072)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !148, line: 300, size: 960, elements: !2727)
!2727 = !{!2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !2726, file: !148, line: 301, baseType: !153, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !2726, file: !148, line: 302, baseType: !334, size: 64, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !2726, file: !148, line: 303, baseType: !334, size: 64, offset: 128)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !2726, file: !148, line: 305, baseType: !13, size: 32, offset: 192)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !2726, file: !148, line: 306, baseType: !13, size: 32, offset: 224)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !2726, file: !148, line: 307, baseType: !13, size: 32, offset: 256)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !2726, file: !148, line: 308, baseType: !13, size: 32, offset: 288)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !2726, file: !148, line: 309, baseType: !13, size: 32, offset: 320)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2726, file: !148, line: 310, baseType: !13, size: 32, offset: 352)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !2726, file: !148, line: 311, baseType: !13, size: 32, offset: 384)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !2726, file: !148, line: 312, baseType: !13, size: 32, offset: 416)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !2726, file: !148, line: 313, baseType: !13, size: 32, offset: 448)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !2726, file: !148, line: 314, baseType: !13, size: 32, offset: 480)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !2726, file: !148, line: 315, baseType: !13, size: 32, offset: 512)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !2726, file: !148, line: 316, baseType: !13, size: 32, offset: 544)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !2726, file: !148, line: 317, baseType: !13, size: 32, offset: 576)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !2726, file: !148, line: 318, baseType: !13, size: 32, offset: 608)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !2726, file: !148, line: 319, baseType: !13, size: 32, offset: 640)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !2726, file: !148, line: 320, baseType: !13, size: 32, offset: 672)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !2726, file: !148, line: 321, baseType: !13, size: 32, offset: 704)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !2726, file: !148, line: 322, baseType: !13, size: 32, offset: 736)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !2726, file: !148, line: 323, baseType: !13, size: 32, offset: 768)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !2726, file: !148, line: 325, baseType: !254, size: 16, offset: 800)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !2726, file: !148, line: 326, baseType: !254, size: 16, offset: 816)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !2726, file: !148, line: 327, baseType: !254, size: 16, offset: 832)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !2726, file: !148, line: 329, baseType: !246, size: 8, offset: 848)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !2726, file: !148, line: 330, baseType: !246, size: 8, offset: 856)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !2726, file: !148, line: 331, baseType: !246, size: 8, offset: 864)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !2726, file: !148, line: 332, baseType: !157, size: 32, offset: 896)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !2726, file: !148, line: 339, baseType: !13, size: 32, offset: 928)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !2109, file: !148, line: 485, baseType: !13, size: 32, offset: 4032)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2109, file: !148, line: 487, baseType: !115, size: 32, offset: 4064)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !2109, file: !148, line: 489, baseType: !2761, size: 64, offset: 4096)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !148, line: 31, flags: DIFlagFwdDecl)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2109, file: !148, line: 494, baseType: !2764, size: 64, offset: 4160)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !148, line: 35, flags: DIFlagFwdDecl)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !2109, file: !148, line: 495, baseType: !186, size: 128, offset: 4224)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !2109, file: !148, line: 497, baseType: !186, size: 128, offset: 4352)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !2109, file: !148, line: 498, baseType: !214, size: 32, offset: 4480)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !2109, file: !148, line: 499, baseType: !2770, size: 704, offset: 4544)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1798, line: 111, size: 704, elements: !2771)
!2771 = !{!2772, !2773, !2774, !2775}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2770, file: !1798, line: 112, baseType: !1797, size: 256)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2770, file: !1798, line: 113, baseType: !2317, size: 320, offset: 256)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2770, file: !1798, line: 116, baseType: !2018, size: 64, offset: 576)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2770, file: !1798, line: 117, baseType: !115, size: 32, offset: 640)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !2109, file: !148, line: 501, baseType: !664, size: 256, offset: 5248)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !2109, file: !148, line: 502, baseType: !664, size: 256, offset: 5504)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !2109, file: !148, line: 508, baseType: !186, size: 128, offset: 5760)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !2109, file: !148, line: 509, baseType: !214, size: 32, offset: 5888)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !2109, file: !148, line: 511, baseType: !115, size: 32, offset: 5920)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2109, file: !148, line: 517, baseType: !1062, size: 128, align: 64, offset: 5952)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !2109, file: !148, line: 518, baseType: !1208, size: 192, offset: 6080)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !2109, file: !148, line: 523, baseType: !664, size: 256, offset: 6272)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !2109, file: !148, line: 525, baseType: !115, size: 32, offset: 6528)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !2109, file: !148, line: 527, baseType: !2786, size: 64, offset: 6592)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !148, line: 527, flags: DIFlagFwdDecl)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !2109, file: !148, line: 528, baseType: !186, size: 128, offset: 6656)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !2109, file: !148, line: 530, baseType: !399, size: 64, offset: 6784)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !2109, file: !148, line: 531, baseType: !399, size: 64, offset: 6848)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !2109, file: !148, line: 532, baseType: !399, size: 64, offset: 6912)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !2109, file: !148, line: 536, baseType: !664, size: 256, offset: 6976)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !2109, file: !148, line: 538, baseType: !1058, size: 8, offset: 7232)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !907, file: !148, line: 147, baseType: !178, size: 64, offset: 704)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !907, file: !148, line: 149, baseType: !1976, size: 1984, offset: 768)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !907, file: !148, line: 151, baseType: !115, size: 32, offset: 2752)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !907, file: !148, line: 152, baseType: !334, size: 64, offset: 2816)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !907, file: !148, line: 161, baseType: !664, size: 256, offset: 2880)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !907, file: !148, line: 162, baseType: !13, size: 32, offset: 3136)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !907, file: !148, line: 164, baseType: !2801, size: 64, offset: 3200)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !65, line: 50, flags: DIFlagFwdDecl)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !907, file: !148, line: 165, baseType: !199, size: 512, offset: 3264)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !907, file: !148, line: 166, baseType: !207, size: 64, offset: 3776)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !907, file: !148, line: 168, baseType: !186, size: 128, offset: 3840)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !907, file: !148, line: 170, baseType: !2807, size: 64, offset: 3968)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !148, line: 170, flags: DIFlagFwdDecl)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !907, file: !148, line: 171, baseType: !234, size: 32, offset: 4032)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !907, file: !148, line: 172, baseType: !2811, size: 64, offset: 4096)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !148, line: 104, flags: DIFlagFwdDecl)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !907, file: !148, line: 197, baseType: !2814, size: 64, offset: 4160)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !148, line: 197, flags: DIFlagFwdDecl)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !907, file: !148, line: 199, baseType: !115, size: 32, offset: 4224)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !907, file: !148, line: 200, baseType: !2818, size: 64, offset: 4288)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !148, line: 105, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !907, file: !148, line: 201, baseType: !2821, offset: 4352)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !567, line: 211, elements: !568)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !907, file: !148, line: 202, baseType: !437, size: 64, offset: 4352)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !907, file: !148, line: 203, baseType: !2031, size: 32, offset: 4416)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !907, file: !148, line: 209, baseType: !2825, size: 64, offset: 4480)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !148, line: 384, size: 576, elements: !2827)
!2827 = !{!2828, !2829, !2830, !2831}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2826, file: !148, line: 385, baseType: !199, size: 512)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !2826, file: !148, line: 386, baseType: !1058, size: 8, offset: 512)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !2826, file: !148, line: 387, baseType: !13, size: 32, offset: 544)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !2826, file: !148, line: 388, baseType: !2832, offset: 576)
!2832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2833, elements: !1223)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !148, line: 378, size: 640, elements: !2834)
!2834 = !{!2835, !2836, !2837}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2833, file: !148, line: 379, baseType: !199, size: 512)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !2833, file: !148, line: 380, baseType: !903, size: 64, offset: 512)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !2833, file: !148, line: 381, baseType: !903, size: 64, offset: 576)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !899, file: !900, line: 44, baseType: !2108, size: 64, offset: 192)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !899, file: !900, line: 45, baseType: !2840, size: 64, offset: 256)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !900, line: 45, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !899, file: !900, line: 46, baseType: !334, size: 64, offset: 320)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !899, file: !900, line: 47, baseType: !1058, size: 8, offset: 384)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !899, file: !900, line: 48, baseType: !242, size: 8, offset: 392)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !899, file: !900, line: 49, baseType: !1058, size: 8, offset: 400)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !899, file: !900, line: 50, baseType: !1058, size: 8, offset: 408)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !899, file: !900, line: 51, baseType: !520, size: 32, offset: 416)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !899, file: !900, line: 52, baseType: !234, size: 32, offset: 448)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !899, file: !900, line: 53, baseType: !214, size: 32, offset: 480)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !899, file: !900, line: 54, baseType: !364, size: 64, offset: 512)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !899, file: !900, line: 55, baseType: !178, size: 64, offset: 576)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !899, file: !900, line: 56, baseType: !178, size: 64, offset: 640)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !899, file: !900, line: 57, baseType: !2854, size: 64, offset: 704)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2856)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !148, line: 1477, size: 128, elements: !2857)
!2857 = !{!2858, !2862}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !2856, file: !148, line: 1478, baseType: !2859, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{null, !898, !1058}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2856, file: !148, line: 1483, baseType: !2863, size: 64, offset: 64)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{null, !898}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !899, file: !900, line: 58, baseType: !664, size: 256, offset: 768)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !899, file: !900, line: 60, baseType: !115, size: 32, offset: 1024)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !899, file: !900, line: 61, baseType: !115, size: 32, offset: 1056)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !899, file: !900, line: 62, baseType: !207, size: 64, offset: 1088)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !899, file: !900, line: 65, baseType: !664, size: 256, offset: 1152)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !899, file: !900, line: 66, baseType: !515, size: 64, offset: 1408)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !899, file: !900, line: 68, baseType: !2873, size: 64, offset: 1472)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !148, line: 63, size: 808, elements: !2875)
!2875 = !{!2876, !2880}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !2874, file: !148, line: 64, baseType: !2877, size: 296)
!2877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !2878)
!2878 = !{!2879}
!2879 = !DISubrange(count: 37)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !2874, file: !148, line: 65, baseType: !2881, size: 512, offset: 296)
!2881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 512, elements: !289)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !899, file: !900, line: 72, baseType: !1058, size: 8, offset: 1536)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !899, file: !900, line: 77, baseType: !2143, size: 5824, offset: 1600)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !516, file: !65, line: 1226, baseType: !2885, size: 64, offset: 1664)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !148, line: 1495, size: 128, elements: !2887)
!2887 = !{!2888, !2889}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !2886, file: !148, line: 1496, baseType: !898, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !2886, file: !148, line: 1497, baseType: !178, size: 64, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !516, file: !65, line: 1227, baseType: !2801, size: 64, offset: 1728)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !516, file: !65, line: 1228, baseType: !2892, size: 64, offset: 1792)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !65, line: 1228, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !516, file: !65, line: 1229, baseType: !560, size: 128, offset: 1856)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !516, file: !65, line: 1230, baseType: !13, size: 32, offset: 1984)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !516, file: !65, line: 1231, baseType: !2897, size: 2496, offset: 2048)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !70, line: 521, size: 2496, elements: !2898)
!2898 = !{!2899, !2900, !2901, !2903, !2935}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2897, file: !70, line: 522, baseType: !13, size: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2897, file: !70, line: 523, baseType: !876, size: 320, offset: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2897, file: !70, line: 524, baseType: !2902, size: 192, offset: 384)
!2902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 192, elements: !285)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2897, file: !70, line: 525, baseType: !2904, size: 1728, offset: 576)
!2904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2905, size: 1728, elements: !285)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !70, line: 222, size: 576, elements: !2906)
!2906 = !{!2907, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2905, file: !70, line: 223, baseType: !2908, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !70, line: 445, size: 256, elements: !2910)
!2910 = !{!2911, !2912, !2925, !2926}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2909, file: !70, line: 446, baseType: !115, size: 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2909, file: !70, line: 447, baseType: !2913, size: 64, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2915)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !70, line: 312, size: 512, elements: !2916)
!2916 = !{!2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2915, file: !70, line: 313, baseType: !608, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2915, file: !70, line: 314, baseType: !608, size: 64, offset: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2915, file: !70, line: 315, baseType: !608, size: 64, offset: 128)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2915, file: !70, line: 316, baseType: !608, size: 64, offset: 192)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2915, file: !70, line: 317, baseType: !743, size: 64, offset: 256)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2915, file: !70, line: 318, baseType: !743, size: 64, offset: 320)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2915, file: !70, line: 319, baseType: !743, size: 64, offset: 384)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2915, file: !70, line: 320, baseType: !773, size: 64, offset: 448)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2909, file: !70, line: 448, baseType: !181, size: 64, offset: 128)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2909, file: !70, line: 449, baseType: !2908, size: 64, offset: 192)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2905, file: !70, line: 224, baseType: !115, size: 32, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2905, file: !70, line: 226, baseType: !186, size: 128, offset: 128)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2905, file: !70, line: 227, baseType: !334, size: 64, offset: 256)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2905, file: !70, line: 228, baseType: !13, size: 32, offset: 320)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2905, file: !70, line: 229, baseType: !13, size: 32, offset: 352)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2905, file: !70, line: 230, baseType: !709, size: 64, offset: 384)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2905, file: !70, line: 231, baseType: !709, size: 64, offset: 448)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2905, file: !70, line: 232, baseType: !178, size: 64, offset: 512)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2897, file: !70, line: 526, baseType: !2936, size: 192, offset: 2304)
!2936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2913, size: 192, elements: !285)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !516, file: !65, line: 1233, baseType: !2938, size: 2368, offset: 4544)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !65, line: 1184, size: 2368, elements: !2939)
!2939 = !{!2940, !2941, !2942}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2938, file: !65, line: 1185, baseType: !254, size: 16)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2938, file: !65, line: 1186, baseType: !254, size: 16, offset: 16)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2938, file: !65, line: 1187, baseType: !2943, size: 2304, offset: 64)
!2943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2944, size: 2304, elements: !285)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2945, line: 12, size: 768, elements: !2946)
!2945 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2946 = !{!2947, !2955, !2957, !4098, !4099}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2944, file: !2945, line: 13, baseType: !2948, size: 384)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2949, line: 17, size: 384, elements: !2950)
!2949 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2950 = !{!2951, !2952, !2953, !2954}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2948, file: !2949, line: 18, baseType: !115, size: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2948, file: !2949, line: 19, baseType: !115, size: 32, offset: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2948, file: !2949, line: 20, baseType: !1208, size: 192, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2948, file: !2949, line: 22, baseType: !1062, size: 128, align: 64, offset: 256)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2944, file: !2945, line: 14, baseType: !2956, size: 64, offset: 384)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2944, file: !2945, line: 15, baseType: !2958, size: 64, offset: 448)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2959, line: 16, size: 64, elements: !2960)
!2959 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2960 = !{!2961}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2958, file: !2959, line: 17, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !639, line: 746, size: 58368, elements: !2964)
!2964 = !{!2965, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3045, !3056, !3076, !3080, !3083, !3114, !3115, !3116, !3117, !3125, !3127, !3128, !3129, !3130, !3131, !3132, !3143, !3144, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3161, !3162, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3250, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3265, !3266, !3267, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3299, !3305, !3306, !3307, !3308, !3309, !3313, !3316, !3323, !3328, !3331, !3334, !3337, !3341, !3481, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3521, !3522, !3523, !3532, !3540, !3541, !3542, !3543, !3544, !3549, !3550, !3551, !3554, !3555, !3557, !3568, !3571, !3579, !3582, !3583, !3669, !3670, !3671, !3672, !3673, !3679, !3680, !3681, !3682, !3685, !3686, !3689, !3703, !3704, !3707, !3708, !3709, !3712, !3713, !3714, !3715, !3716, !3717, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3749, !3750, !3756, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3838, !3840, !3841, !3842, !3843, !3844, !3845, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3875, !3876, !3877}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2963, file: !639, line: 752, baseType: !2966, size: 192)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2967, line: 56, size: 192, elements: !2968)
!2967 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2968 = !{!2969, !2970, !2971, !2972}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2966, file: !2967, line: 57, baseType: !334, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2966, file: !2967, line: 58, baseType: !334, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2966, file: !2967, line: 59, baseType: !433, size: 32, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2966, file: !2967, line: 61, baseType: !433, size: 32, offset: 160)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2963, file: !639, line: 754, baseType: !13, size: 32, offset: 192)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2963, file: !639, line: 767, baseType: !178, size: 64, offset: 256)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2963, file: !639, line: 768, baseType: !1197, size: 32, offset: 320)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2963, file: !639, line: 770, baseType: !13, size: 32, offset: 352)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2963, file: !639, line: 771, baseType: !13, size: 32, offset: 384)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2963, file: !639, line: 774, baseType: !115, size: 32, offset: 416)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2963, file: !639, line: 775, baseType: !2980, size: 128, offset: 448)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2981, line: 58, size: 128, elements: !2982)
!2981 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2982 = !{!2983, !2984, !2989, !2990}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2980, file: !2981, line: 59, baseType: !1154, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, scope: !2980, file: !2981, line: 60, baseType: !2985, size: 32, offset: 64)
!2985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2980, file: !2981, line: 60, size: 32, elements: !2986)
!2986 = !{!2987, !2988}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2985, file: !2981, line: 61, baseType: !13, size: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2985, file: !2981, line: 62, baseType: !234, size: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2980, file: !2981, line: 65, baseType: !252, size: 16, offset: 96)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2980, file: !2981, line: 65, baseType: !252, size: 16, offset: 112)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2963, file: !639, line: 776, baseType: !13, size: 32, offset: 576)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2963, file: !639, line: 777, baseType: !334, size: 64, offset: 640)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2963, file: !639, line: 778, baseType: !2962, size: 64, offset: 704)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2963, file: !639, line: 787, baseType: !115, size: 32, offset: 768)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2963, file: !639, line: 788, baseType: !115, size: 32, offset: 800)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2963, file: !639, line: 790, baseType: !115, size: 32, offset: 832)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2963, file: !639, line: 792, baseType: !115, size: 32, offset: 864)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2963, file: !639, line: 793, baseType: !115, size: 32, offset: 896)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2963, file: !639, line: 794, baseType: !115, size: 32, offset: 928)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2963, file: !639, line: 795, baseType: !13, size: 32, offset: 960)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2963, file: !639, line: 797, baseType: !3002, size: 2048, offset: 1024)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !639, line: 551, size: 2048, elements: !3003)
!3003 = !{!3004, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3024, !3027, !3028, !3029}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3002, file: !639, line: 553, baseType: !3005, size: 128)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !639, line: 411, size: 128, elements: !3006)
!3006 = !{!3007, !3008}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3005, file: !639, line: 412, baseType: !334, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3005, file: !639, line: 413, baseType: !433, size: 32, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3002, file: !639, line: 554, baseType: !1272, size: 192, align: 64, offset: 128)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3002, file: !639, line: 555, baseType: !437, size: 64, offset: 320)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3002, file: !639, line: 556, baseType: !437, size: 64, offset: 384)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3002, file: !639, line: 558, baseType: !186, size: 128, offset: 448)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3002, file: !639, line: 559, baseType: !13, size: 32, offset: 576)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3002, file: !639, line: 561, baseType: !437, size: 64, offset: 640)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3002, file: !639, line: 562, baseType: !437, size: 64, offset: 704)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3002, file: !639, line: 563, baseType: !437, size: 64, offset: 768)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3002, file: !639, line: 564, baseType: !437, size: 64, offset: 832)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3002, file: !639, line: 565, baseType: !674, size: 64, offset: 896)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3002, file: !639, line: 566, baseType: !437, size: 64, offset: 960)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3002, file: !639, line: 568, baseType: !437, size: 64, offset: 1024)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3002, file: !639, line: 571, baseType: !115, size: 32, offset: 1088)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3002, file: !639, line: 572, baseType: !3023, size: 64, offset: 1152)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3002, file: !639, line: 574, baseType: !3025, size: 64, offset: 1216)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !639, line: 49, flags: DIFlagFwdDecl)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3002, file: !639, line: 576, baseType: !3025, size: 64, offset: 1280)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3002, file: !639, line: 578, baseType: !334, size: 64, offset: 1344)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3002, file: !639, line: 588, baseType: !3030, size: 512, align: 512, offset: 1536)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !639, line: 497, size: 512, align: 512, elements: !3031)
!3031 = !{!3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3030, file: !639, line: 498, baseType: !437, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3030, file: !639, line: 499, baseType: !437, size: 64, offset: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3030, file: !639, line: 500, baseType: !437, size: 64, offset: 128)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3030, file: !639, line: 501, baseType: !433, size: 32, offset: 192)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3030, file: !639, line: 502, baseType: !433, size: 32, offset: 224)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3030, file: !639, line: 503, baseType: !334, size: 64, offset: 256)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3030, file: !639, line: 504, baseType: !334, size: 64, offset: 320)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3030, file: !639, line: 505, baseType: !334, size: 64, offset: 384)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3030, file: !639, line: 506, baseType: !3041, size: 64, align: 64, offset: 448)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !639, line: 445, size: 64, align: 64, elements: !3042)
!3042 = !{!3043, !3044}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3041, file: !639, line: 446, baseType: !13, size: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3041, file: !639, line: 447, baseType: !13, size: 32, offset: 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2963, file: !639, line: 798, baseType: !3046, size: 384, offset: 3072)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !639, line: 592, size: 384, elements: !3047)
!3047 = !{!3048, !3049, !3050, !3051, !3052, !3053, !3054}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3046, file: !639, line: 593, baseType: !186, size: 128)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3046, file: !639, line: 594, baseType: !334, size: 64, offset: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3046, file: !639, line: 595, baseType: !334, size: 64, offset: 192)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3046, file: !639, line: 596, baseType: !13, size: 32, offset: 256)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3046, file: !639, line: 597, baseType: !254, size: 16, offset: 288)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3046, file: !639, line: 598, baseType: !254, size: 16, offset: 304)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3046, file: !639, line: 600, baseType: !3055, size: 64, offset: 320)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2963, file: !639, line: 799, baseType: !3057, size: 1792, offset: 3456)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !639, line: 610, size: 1792, elements: !3058)
!3058 = !{!3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3057, file: !639, line: 611, baseType: !1272, size: 192, align: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3057, file: !639, line: 618, baseType: !437, size: 64, offset: 192)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3057, file: !639, line: 619, baseType: !437, size: 64, offset: 256)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3057, file: !639, line: 620, baseType: !437, size: 64, offset: 320)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3057, file: !639, line: 621, baseType: !437, size: 64, offset: 384)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3057, file: !639, line: 622, baseType: !437, size: 64, offset: 448)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3057, file: !639, line: 629, baseType: !674, size: 64, offset: 512)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3057, file: !639, line: 630, baseType: !437, size: 64, offset: 576)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3057, file: !639, line: 631, baseType: !13, size: 32, offset: 640)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3057, file: !639, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3057, file: !639, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3057, file: !639, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3057, file: !639, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3057, file: !639, line: 662, baseType: !2350, size: 512, offset: 704)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3057, file: !639, line: 671, baseType: !2350, size: 512, offset: 1216)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3057, file: !639, line: 679, baseType: !3075, size: 64, offset: 1728)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2963, file: !639, line: 800, baseType: !3077, size: 64, offset: 5248)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3079)
!3079 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !639, line: 800, flags: DIFlagFwdDecl)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2963, file: !639, line: 809, baseType: !3081, size: 64, offset: 5312)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !639, line: 70, flags: DIFlagFwdDecl)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2963, file: !639, line: 825, baseType: !3084, size: 2048, align: 512, offset: 5632)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !639, line: 509, size: 2048, align: 512, elements: !3085)
!3085 = !{!3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3084, file: !639, line: 511, baseType: !437, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3084, file: !639, line: 512, baseType: !437, size: 64, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3084, file: !639, line: 513, baseType: !437, size: 64, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3084, file: !639, line: 514, baseType: !437, size: 64, offset: 192)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3084, file: !639, line: 515, baseType: !437, size: 64, offset: 256)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3084, file: !639, line: 516, baseType: !437, size: 64, offset: 320)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3084, file: !639, line: 518, baseType: !437, size: 64, offset: 384)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3084, file: !639, line: 519, baseType: !437, size: 64, offset: 448)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3084, file: !639, line: 520, baseType: !674, size: 64, offset: 512)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3084, file: !639, line: 522, baseType: !437, size: 64, offset: 576)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3084, file: !639, line: 523, baseType: !437, size: 64, offset: 640)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3084, file: !639, line: 524, baseType: !674, size: 64, offset: 704)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3084, file: !639, line: 526, baseType: !674, size: 64, offset: 768)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3084, file: !639, line: 527, baseType: !437, size: 64, offset: 832)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3084, file: !639, line: 529, baseType: !437, size: 64, offset: 896)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3084, file: !639, line: 530, baseType: !437, size: 64, offset: 960)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3084, file: !639, line: 531, baseType: !437, size: 64, offset: 1024)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3084, file: !639, line: 532, baseType: !437, size: 64, offset: 1088)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3084, file: !639, line: 533, baseType: !437, size: 64, offset: 1152)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3084, file: !639, line: 535, baseType: !437, size: 64, offset: 1216)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3084, file: !639, line: 536, baseType: !437, size: 64, offset: 1280)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3084, file: !639, line: 537, baseType: !437, size: 64, offset: 1344)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3084, file: !639, line: 538, baseType: !437, size: 64, offset: 1408)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3084, file: !639, line: 539, baseType: !437, size: 64, offset: 1472)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3084, file: !639, line: 540, baseType: !437, size: 64, offset: 1536)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3084, file: !639, line: 541, baseType: !437, size: 64, offset: 1600)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3084, file: !639, line: 542, baseType: !437, size: 64, offset: 1664)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3084, file: !639, line: 543, baseType: !437, size: 64, offset: 1728)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2963, file: !639, line: 833, baseType: !13, size: 32, offset: 7680)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2963, file: !639, line: 836, baseType: !13, size: 32, offset: 7712)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2963, file: !639, line: 837, baseType: !115, size: 32, offset: 7744)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2963, file: !639, line: 838, baseType: !3118, size: 64, offset: 7808)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3120)
!3120 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3121, line: 19, baseType: !3122)
!3121 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3121, line: 19, size: 64, elements: !3123)
!3123 = !{!3124}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3122, file: !3121, line: 19, baseType: !2719, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2963, file: !639, line: 839, baseType: !3126, size: 64, offset: 7872)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2963, file: !639, line: 840, baseType: !3120, size: 64, offset: 7936)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2963, file: !639, line: 841, baseType: !178, size: 64, offset: 8000)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2963, file: !639, line: 843, baseType: !254, size: 16, offset: 8064)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2963, file: !639, line: 845, baseType: !254, size: 16, offset: 8080)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2963, file: !639, line: 848, baseType: !115, size: 32, offset: 8096)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2963, file: !639, line: 849, baseType: !3133, size: 32, offset: 8128)
!3133 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !639, line: 718, size: 32, elements: !3134)
!3134 = !{!3135, !3142}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3133, file: !639, line: 724, baseType: !3136, size: 32)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3133, file: !639, line: 719, size: 32, elements: !3137)
!3137 = !{!3138, !3139, !3140, !3141}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3136, file: !639, line: 720, baseType: !242, size: 8)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3136, file: !639, line: 721, baseType: !242, size: 8, offset: 8)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3136, file: !639, line: 722, baseType: !242, size: 8, offset: 16)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3136, file: !639, line: 723, baseType: !242, size: 8, offset: 24)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3133, file: !639, line: 725, baseType: !433, size: 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2963, file: !639, line: 850, baseType: !186, size: 128, offset: 8192)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2963, file: !639, line: 851, baseType: !3145, size: 64, offset: 8320)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !639, line: 60, flags: DIFlagFwdDecl)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2963, file: !639, line: 855, baseType: !334, size: 64, offset: 8384)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2963, file: !639, line: 856, baseType: !242, size: 8, offset: 8448)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2963, file: !639, line: 857, baseType: !242, size: 8, offset: 8456)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2963, file: !639, line: 858, baseType: !115, size: 32, offset: 8480)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2963, file: !639, line: 859, baseType: !186, size: 128, offset: 8512)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2963, file: !639, line: 860, baseType: !115, size: 32, offset: 8640)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2963, file: !639, line: 861, baseType: !186, size: 128, offset: 8704)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2963, file: !639, line: 873, baseType: !3155, size: 256, offset: 8832)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !639, line: 376, size: 256, elements: !3156)
!3156 = !{!3157, !3158, !3159, !3160}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3155, file: !639, line: 381, baseType: !334, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3155, file: !639, line: 384, baseType: !439, size: 64, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3155, file: !639, line: 389, baseType: !439, size: 64, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3155, file: !639, line: 392, baseType: !439, size: 64, offset: 192)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2963, file: !639, line: 875, baseType: !186, size: 128, offset: 9088)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2963, file: !639, line: 877, baseType: !3163, size: 320, offset: 9216)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3164, line: 86, size: 320, elements: !3165)
!3164 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3165 = !{!3166, !3167, !3168}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3163, file: !3164, line: 87, baseType: !115, size: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3163, file: !3164, line: 88, baseType: !186, size: 128, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3163, file: !3164, line: 89, baseType: !186, size: 128, offset: 192)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2963, file: !639, line: 878, baseType: !1272, size: 192, align: 64, offset: 9536)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2963, file: !639, line: 881, baseType: !1120, size: 64, offset: 9728)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2963, file: !639, line: 882, baseType: !1120, size: 64, offset: 9792)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2963, file: !639, line: 884, baseType: !115, size: 32, offset: 9856)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2963, file: !639, line: 885, baseType: !115, size: 32, offset: 9888)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2963, file: !639, line: 886, baseType: !115, size: 32, offset: 9920)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2963, file: !639, line: 888, baseType: !115, size: 32, offset: 9952)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2963, file: !639, line: 890, baseType: !334, size: 64, offset: 9984)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2963, file: !639, line: 893, baseType: !13, size: 32, offset: 10048)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2963, file: !639, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2963, file: !639, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2963, file: !639, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2963, file: !639, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2963, file: !639, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2963, file: !639, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2963, file: !639, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2963, file: !639, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2963, file: !639, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2963, file: !639, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2963, file: !639, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2963, file: !639, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2963, file: !639, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2963, file: !639, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2963, file: !639, line: 969, baseType: !334, size: 64, offset: 10176)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2963, file: !639, line: 971, baseType: !3194, size: 448, offset: 10240)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !81, line: 25, size: 448, elements: !3195)
!3195 = !{!3196, !3197, !3202}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3194, file: !81, line: 26, baseType: !334, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3194, file: !81, line: 27, baseType: !3198, size: 64, offset: 64)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!320, !3201}
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, scope: !3194, file: !81, line: 28, baseType: !3203, size: 320, offset: 128)
!3203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3194, file: !81, line: 28, size: 320, elements: !3204)
!3204 = !{!3205, !3215, !3240}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3203, file: !81, line: 37, baseType: !3206, size: 320)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3203, file: !81, line: 30, size: 320, elements: !3207)
!3207 = !{!3208, !3210, !3211, !3212, !3213, !3214}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3206, file: !81, line: 31, baseType: !3209, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3206, file: !81, line: 32, baseType: !433, size: 32, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3206, file: !81, line: 33, baseType: !433, size: 32, offset: 96)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3206, file: !81, line: 34, baseType: !433, size: 32, offset: 128)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3206, file: !81, line: 35, baseType: !437, size: 64, offset: 192)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3206, file: !81, line: 36, baseType: !3209, size: 64, offset: 256)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3203, file: !81, line: 47, baseType: !3216, size: 192)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3203, file: !81, line: 39, size: 192, elements: !3217)
!3217 = !{!3218, !3219, !3220, !3239}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3216, file: !81, line: 40, baseType: !2395, size: 32)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3216, file: !81, line: 41, baseType: !80, size: 32, offset: 32)
!3220 = !DIDerivedType(tag: DW_TAG_member, scope: !3216, file: !81, line: 42, baseType: !3221, size: 64, offset: 64)
!3221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3216, file: !81, line: 42, size: 64, elements: !3222)
!3222 = !{!3223, !3231}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3221, file: !81, line: 43, baseType: !3224, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3226, line: 7, size: 128, elements: !3227)
!3226 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3227 = !{!3228, !3230}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3225, file: !3226, line: 8, baseType: !3229, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !318, line: 93, baseType: !527)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3225, file: !3226, line: 9, baseType: !527, size: 64, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3221, file: !81, line: 44, baseType: !3232, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3234, line: 7, size: 64, elements: !3235)
!3234 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3235 = !{!3236, !3238}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3233, file: !3234, line: 8, baseType: !3237, size: 32)
!3237 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3234, line: 5, baseType: !1265)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3233, file: !3234, line: 9, baseType: !1265, size: 32, offset: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3216, file: !81, line: 46, baseType: !437, size: 64, offset: 128)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3203, file: !81, line: 55, baseType: !3241, size: 256)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3203, file: !81, line: 49, size: 256, elements: !3242)
!3242 = !{!3243, !3246, !3247, !3248, !3249}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3241, file: !81, line: 50, baseType: !3244, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !81, line: 14, flags: DIFlagFwdDecl)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3241, file: !81, line: 51, baseType: !115, size: 32, offset: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3241, file: !81, line: 52, baseType: !115, size: 32, offset: 96)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3241, file: !81, line: 53, baseType: !334, size: 64, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3241, file: !81, line: 54, baseType: !334, size: 64, offset: 192)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2963, file: !639, line: 973, baseType: !3251, size: 32, offset: 10688)
!3251 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !180, line: 27, baseType: !3252)
!3252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !318, line: 28, baseType: !115)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2963, file: !639, line: 974, baseType: !3251, size: 32, offset: 10720)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2963, file: !639, line: 978, baseType: !334, size: 64, offset: 10752)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2963, file: !639, line: 987, baseType: !2962, size: 64, offset: 10816)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2963, file: !639, line: 990, baseType: !2962, size: 64, offset: 10880)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2963, file: !639, line: 995, baseType: !186, size: 128, offset: 10944)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2963, file: !639, line: 996, baseType: !186, size: 128, offset: 11072)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2963, file: !639, line: 997, baseType: !2962, size: 64, offset: 11200)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2963, file: !639, line: 1005, baseType: !186, size: 128, offset: 11264)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2963, file: !639, line: 1006, baseType: !186, size: 128, offset: 11392)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2963, file: !639, line: 1009, baseType: !1193, size: 64, offset: 11520)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2963, file: !639, line: 1010, baseType: !3264, size: 512, offset: 11584)
!3264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 512, elements: !5)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2963, file: !639, line: 1011, baseType: !186, size: 128, offset: 12096)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2963, file: !639, line: 1012, baseType: !186, size: 128, offset: 12224)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2963, file: !639, line: 1014, baseType: !3268, size: 64, offset: 12352)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2963, file: !639, line: 1017, baseType: !631, size: 64, offset: 12416)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2963, file: !639, line: 1020, baseType: !631, size: 64, offset: 12480)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2963, file: !639, line: 1023, baseType: !178, size: 64, offset: 12544)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2963, file: !639, line: 1025, baseType: !437, size: 64, offset: 12608)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2963, file: !639, line: 1026, baseType: !437, size: 64, offset: 12672)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2963, file: !639, line: 1031, baseType: !437, size: 64, offset: 12736)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2963, file: !639, line: 1032, baseType: !3276, size: 192, offset: 12800)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !639, line: 324, size: 192, elements: !3277)
!3277 = !{!3278, !3279, !3280}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3276, file: !639, line: 326, baseType: !437, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3276, file: !639, line: 327, baseType: !437, size: 64, offset: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3276, file: !639, line: 328, baseType: !677, size: 32, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2963, file: !639, line: 1041, baseType: !334, size: 64, offset: 12992)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2963, file: !639, line: 1042, baseType: !334, size: 64, offset: 13056)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2963, file: !639, line: 1045, baseType: !437, size: 64, offset: 13120)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2963, file: !639, line: 1048, baseType: !437, size: 64, offset: 13184)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2963, file: !639, line: 1051, baseType: !334, size: 64, offset: 13248)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2963, file: !639, line: 1052, baseType: !334, size: 64, offset: 13312)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2963, file: !639, line: 1055, baseType: !3288, size: 640, offset: 13376)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3289, line: 132, size: 640, elements: !3290)
!3289 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3290 = !{!3291, !3297, !3298}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3288, file: !3289, line: 133, baseType: !3292, size: 576)
!3292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3293, size: 576, elements: !285)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3289, line: 117, size: 192, elements: !3294)
!3294 = !{!3295, !3296}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3293, file: !3289, line: 118, baseType: !437, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3293, file: !3289, line: 119, baseType: !2404, size: 128, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3288, file: !3289, line: 134, baseType: !13, size: 32, offset: 576)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3288, file: !3289, line: 135, baseType: !13, size: 32, offset: 608)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2963, file: !639, line: 1058, baseType: !3300, size: 448, offset: 14016)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3289, line: 144, size: 448, elements: !3301)
!3301 = !{!3302, !3303, !3304}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3300, file: !3289, line: 145, baseType: !1062, size: 128, align: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3300, file: !3289, line: 146, baseType: !664, size: 256, offset: 128)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3300, file: !3289, line: 147, baseType: !13, size: 32, offset: 384)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2963, file: !639, line: 1064, baseType: !1230, size: 64, offset: 14464)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2963, file: !639, line: 1067, baseType: !1230, size: 64, offset: 14528)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2963, file: !639, line: 1070, baseType: !1230, size: 64, offset: 14592)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2963, file: !639, line: 1074, baseType: !1257, size: 64, offset: 14656)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2963, file: !639, line: 1084, baseType: !3310, size: 128, offset: 14720)
!3310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3311)
!3311 = !{!3312}
!3312 = !DISubrange(count: 16)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2963, file: !639, line: 1086, baseType: !3314, size: 64, offset: 14848)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !639, line: 55, flags: DIFlagFwdDecl)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2963, file: !639, line: 1089, baseType: !3317, size: 64, offset: 14912)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3318, line: 12, size: 64, elements: !3319)
!3318 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3319 = !{!3320}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3317, file: !3318, line: 13, baseType: !3321, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3318, line: 8, flags: DIFlagFwdDecl)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2963, file: !639, line: 1090, baseType: !3324, size: 128, offset: 14976)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3325, line: 13, size: 128, elements: !3326)
!3325 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3326 = !{!3327}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3324, file: !3325, line: 14, baseType: !186, size: 128)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2963, file: !639, line: 1097, baseType: !3329, size: 64, offset: 15104)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !639, line: 50, flags: DIFlagFwdDecl)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2963, file: !639, line: 1100, baseType: !3332, size: 64, offset: 15168)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !639, line: 1100, flags: DIFlagFwdDecl)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2963, file: !639, line: 1103, baseType: !3335, size: 64, offset: 15232)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !639, line: 53, flags: DIFlagFwdDecl)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2963, file: !639, line: 1107, baseType: !3338, size: 64, offset: 15296)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3340, line: 35, flags: DIFlagFwdDecl)
!3340 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2963, file: !639, line: 1110, baseType: !3342, size: 64, offset: 15360)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3344, line: 93, size: 8768, elements: !3345)
!3344 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3345 = !{!3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3395, !3404, !3405, !3407, !3408, !3409, !3412, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3450, !3451, !3458, !3468, !3471, !3472, !3475, !3476, !3477, !3478, !3479, !3480}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3343, file: !3344, line: 94, baseType: !1197, size: 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3343, file: !3344, line: 95, baseType: !234, size: 32, offset: 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3343, file: !3344, line: 96, baseType: !115, size: 32, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3343, file: !3344, line: 97, baseType: !115, size: 32, offset: 96)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3343, file: !3344, line: 98, baseType: !186, size: 128, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3343, file: !3344, line: 100, baseType: !1208, size: 192, offset: 256)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3343, file: !3344, line: 103, baseType: !2962, size: 64, offset: 448)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3343, file: !3344, line: 106, baseType: !3354, size: 192, offset: 512)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1415, line: 32, size: 192, elements: !3355)
!3355 = !{!3356, !3357}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3354, file: !1415, line: 33, baseType: !186, size: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3354, file: !1415, line: 34, baseType: !3358, size: 64, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3359, line: 25, baseType: !3360)
!3359 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3359, line: 23, size: 64, elements: !3361)
!3361 = !{!3362}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3360, file: !3359, line: 24, baseType: !2719, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3343, file: !3344, line: 109, baseType: !556, size: 64, offset: 704)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3343, file: !3344, line: 112, baseType: !115, size: 32, offset: 768)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3343, file: !3344, line: 114, baseType: !115, size: 32, offset: 800)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3343, file: !3344, line: 115, baseType: !2962, size: 64, offset: 832)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3343, file: !3344, line: 118, baseType: !115, size: 32, offset: 896)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3343, file: !3344, line: 119, baseType: !13, size: 32, offset: 928)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3343, file: !3344, line: 121, baseType: !3370, size: 64, offset: 960)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3344, line: 80, size: 448, elements: !3372)
!3372 = !{!3373, !3374, !3380}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3371, file: !3344, line: 81, baseType: !234, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3371, file: !3344, line: 82, baseType: !3375, size: 128, offset: 64)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3344, line: 75, size: 128, elements: !3376)
!3376 = !{!3377, !3378}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3375, file: !3344, line: 76, baseType: !2962, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3375, file: !3344, line: 77, baseType: !3379, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3371, file: !3344, line: 83, baseType: !1072, size: 256, offset: 192)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3343, file: !3344, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3343, file: !3344, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3343, file: !3344, line: 138, baseType: !13, size: 32, offset: 1056)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3343, file: !3344, line: 139, baseType: !186, size: 128, offset: 1088)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3343, file: !3344, line: 142, baseType: !2350, size: 512, offset: 1216)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3343, file: !3344, line: 143, baseType: !2330, size: 64, offset: 1728)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3343, file: !3344, line: 150, baseType: !3388, size: 256, offset: 1792)
!3388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3389, size: 256, elements: !3393)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3344, line: 38, size: 128, elements: !3390)
!3390 = !{!3391, !3392}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3389, file: !3344, line: 39, baseType: !437, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3389, file: !3344, line: 40, baseType: !437, size: 64, offset: 64)
!3393 = !{!3394}
!3394 = !DISubrange(count: 2)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3343, file: !3344, line: 156, baseType: !3396, size: 192, offset: 2048)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3344, line: 66, size: 192, elements: !3397)
!3397 = !{!3398}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3396, file: !3344, line: 67, baseType: !3399, size: 192)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3344, line: 47, size: 192, elements: !3400)
!3400 = !{!3401, !3402, !3403}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3399, file: !3344, line: 48, baseType: !670, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3399, file: !3344, line: 49, baseType: !670, size: 64, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3399, file: !3344, line: 50, baseType: !670, size: 64, offset: 128)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3343, file: !3344, line: 160, baseType: !3288, size: 640, offset: 2240)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3343, file: !3344, line: 163, baseType: !3406, size: 256, offset: 2880)
!3406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1193, size: 256, elements: !5)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3343, file: !3344, line: 169, baseType: !1193, size: 64, offset: 3136)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3343, file: !3344, line: 172, baseType: !115, size: 32, offset: 3200)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3343, file: !3344, line: 174, baseType: !3410, size: 64, offset: 3264)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3344, line: 174, flags: DIFlagFwdDecl)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3343, file: !3344, line: 185, baseType: !3413, size: 64, offset: 3328)
!3413 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !406, line: 860, baseType: !3414)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !406, line: 853, size: 64, elements: !3415)
!3415 = !{!3416, !3417}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3414, file: !406, line: 858, baseType: !405, size: 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3414, file: !406, line: 859, baseType: !214, size: 32, offset: 32)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3343, file: !3344, line: 186, baseType: !437, size: 64, offset: 3392)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3343, file: !3344, line: 186, baseType: !437, size: 64, offset: 3456)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3343, file: !3344, line: 186, baseType: !437, size: 64, offset: 3520)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3343, file: !3344, line: 186, baseType: !437, size: 64, offset: 3584)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3343, file: !3344, line: 187, baseType: !437, size: 64, offset: 3648)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3343, file: !3344, line: 188, baseType: !437, size: 64, offset: 3712)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3343, file: !3344, line: 189, baseType: !3276, size: 192, offset: 3776)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3343, file: !3344, line: 190, baseType: !334, size: 64, offset: 3968)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3343, file: !3344, line: 190, baseType: !334, size: 64, offset: 4032)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3343, file: !3344, line: 190, baseType: !334, size: 64, offset: 4096)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3343, file: !3344, line: 190, baseType: !334, size: 64, offset: 4160)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3343, file: !3344, line: 191, baseType: !334, size: 64, offset: 4224)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3343, file: !3344, line: 191, baseType: !334, size: 64, offset: 4288)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3343, file: !3344, line: 191, baseType: !334, size: 64, offset: 4352)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3343, file: !3344, line: 191, baseType: !334, size: 64, offset: 4416)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3343, file: !3344, line: 192, baseType: !334, size: 64, offset: 4480)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3343, file: !3344, line: 192, baseType: !334, size: 64, offset: 4544)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3343, file: !3344, line: 192, baseType: !334, size: 64, offset: 4608)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3343, file: !3344, line: 192, baseType: !334, size: 64, offset: 4672)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3343, file: !3344, line: 193, baseType: !334, size: 64, offset: 4736)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3343, file: !3344, line: 193, baseType: !334, size: 64, offset: 4800)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3343, file: !3344, line: 194, baseType: !3440, size: 448, offset: 4864)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3441, line: 12, size: 448, elements: !3442)
!3441 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3442 = !{!3443, !3444, !3445, !3446, !3447, !3448, !3449}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3440, file: !3441, line: 15, baseType: !437, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3440, file: !3441, line: 17, baseType: !437, size: 64, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3440, file: !3441, line: 19, baseType: !437, size: 64, offset: 128)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3440, file: !3441, line: 21, baseType: !437, size: 64, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3440, file: !3441, line: 29, baseType: !437, size: 64, offset: 256)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3440, file: !3441, line: 35, baseType: !437, size: 64, offset: 320)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3440, file: !3441, line: 44, baseType: !437, size: 64, offset: 384)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3343, file: !3344, line: 202, baseType: !439, size: 64, offset: 5312)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3343, file: !3344, line: 213, baseType: !3452, size: 2048, offset: 5376)
!3452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3453, size: 2048, elements: !3311)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3454, line: 43, size: 128, elements: !3455)
!3454 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3455 = !{!3456, !3457}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3453, file: !3454, line: 44, baseType: !333, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3453, file: !3454, line: 45, baseType: !333, size: 64, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3343, file: !3344, line: 216, baseType: !3459, size: 448, offset: 7424)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3344, line: 30, size: 448, elements: !3460)
!3460 = !{!3461, !3462, !3463, !3464, !3465, !3466, !3467}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3459, file: !3344, line: 31, baseType: !115, size: 32)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3459, file: !3344, line: 32, baseType: !320, size: 64, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3459, file: !3344, line: 33, baseType: !334, size: 64, offset: 128)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3459, file: !3344, line: 34, baseType: !437, size: 64, offset: 192)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3459, file: !3344, line: 34, baseType: !437, size: 64, offset: 256)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3459, file: !3344, line: 35, baseType: !334, size: 64, offset: 320)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3459, file: !3344, line: 35, baseType: !334, size: 64, offset: 384)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3343, file: !3344, line: 219, baseType: !3469, size: 64, offset: 7872)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3344, line: 219, flags: DIFlagFwdDecl)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3343, file: !3344, line: 222, baseType: !13, size: 32, offset: 7936)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3343, file: !3344, line: 223, baseType: !3473, size: 64, offset: 8000)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3344, line: 223, flags: DIFlagFwdDecl)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3343, file: !3344, line: 230, baseType: !1058, size: 8, offset: 8064)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3343, file: !3344, line: 231, baseType: !1298, size: 16, offset: 8080)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3343, file: !3344, line: 232, baseType: !1298, size: 16, offset: 8096)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3343, file: !3344, line: 234, baseType: !1120, size: 64, offset: 8128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3343, file: !3344, line: 237, baseType: !664, size: 256, offset: 8192)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3343, file: !3344, line: 243, baseType: !876, size: 320, offset: 8448)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2963, file: !639, line: 1111, baseType: !3482, size: 64, offset: 15424)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3344, line: 20, size: 16640, elements: !3484)
!3484 = !{!3485, !3486, !3487, !3488}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3483, file: !3344, line: 21, baseType: !214, size: 32)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3483, file: !3344, line: 22, baseType: !1197, size: 32, offset: 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3483, file: !3344, line: 23, baseType: !1208, size: 192, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3483, file: !3344, line: 24, baseType: !3489, size: 16384, offset: 256)
!3489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3490, size: 16384, elements: !289)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1415, line: 51, size: 256, elements: !3491)
!3491 = !{!3492}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3490, file: !1415, line: 52, baseType: !3493, size: 256)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1415, line: 37, size: 256, elements: !3494)
!3494 = !{!3495, !3502, !3503, !3509}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3493, file: !1415, line: 39, baseType: !3496, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3497, line: 83, baseType: !3498)
!3497 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3497, line: 82, baseType: !3500)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{null, !115}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3493, file: !1415, line: 40, baseType: !334, size: 64, offset: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3493, file: !1415, line: 46, baseType: !3504, size: 64, offset: 128)
!3504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3497, line: 86, baseType: !3505)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3497, line: 85, baseType: !3507)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{null}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3493, file: !1415, line: 48, baseType: !3358, size: 64, offset: 192)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2963, file: !639, line: 1112, baseType: !3358, size: 64, offset: 15488)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2963, file: !639, line: 1113, baseType: !3358, size: 64, offset: 15552)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2963, file: !639, line: 1115, baseType: !3358, size: 64, offset: 15616)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2963, file: !639, line: 1116, baseType: !3354, size: 192, offset: 15680)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2963, file: !639, line: 1117, baseType: !334, size: 64, offset: 15872)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2963, file: !639, line: 1118, baseType: !331, size: 64, offset: 15936)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2963, file: !639, line: 1119, baseType: !13, size: 32, offset: 16000)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2963, file: !639, line: 1121, baseType: !1065, size: 64, offset: 16064)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2963, file: !639, line: 1125, baseType: !3519, size: 64, offset: 16128)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !639, line: 43, flags: DIFlagFwdDecl)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2963, file: !639, line: 1127, baseType: !370, size: 32, offset: 16192)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2963, file: !639, line: 1128, baseType: !13, size: 32, offset: 16224)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2963, file: !639, line: 1130, baseType: !3524, size: 128, offset: 16256)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3525, line: 37, size: 128, elements: !3526)
!3525 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3526 = !{!3527, !3528, !3529}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3524, file: !3525, line: 38, baseType: !115, size: 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3524, file: !3525, line: 39, baseType: !234, size: 32, offset: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3524, file: !3525, line: 40, baseType: !3530, size: 64, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3525, line: 24, flags: DIFlagFwdDecl)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2963, file: !639, line: 1131, baseType: !3533, size: 256, offset: 16384)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3534, line: 12, size: 256, elements: !3535)
!3534 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3535 = !{!3536, !3537, !3538, !3539}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3533, file: !3534, line: 13, baseType: !284, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3533, file: !3534, line: 14, baseType: !334, size: 64, offset: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3533, file: !3534, line: 15, baseType: !334, size: 64, offset: 128)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3533, file: !3534, line: 16, baseType: !1058, size: 8, offset: 192)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2963, file: !639, line: 1134, baseType: !437, size: 64, offset: 16640)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2963, file: !639, line: 1135, baseType: !437, size: 64, offset: 16704)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2963, file: !639, line: 1138, baseType: !214, size: 32, offset: 16768)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2963, file: !639, line: 1141, baseType: !677, size: 32, offset: 16800)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2963, file: !639, line: 1143, baseType: !3545, size: 64, offset: 16832)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !639, line: 735, size: 64, elements: !3546)
!3546 = !{!3547}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3545, file: !639, line: 736, baseType: !3548, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2963, file: !639, line: 1147, baseType: !2407, size: 128, offset: 16896)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2963, file: !639, line: 1149, baseType: !2962, size: 64, offset: 17024)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2963, file: !639, line: 1151, baseType: !3552, size: 64, offset: 17088)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !639, line: 1151, flags: DIFlagFwdDecl)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2963, file: !639, line: 1188, baseType: !178, size: 64, offset: 17152)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2963, file: !639, line: 1191, baseType: !3556, size: 64, offset: 17216)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2963, file: !639, line: 1194, baseType: !3558, size: 64, offset: 17280)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !148, line: 976, size: 320, elements: !3560)
!3560 = !{!3561, !3562, !3563, !3564, !3565, !3566, !3567}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !3559, file: !148, line: 977, baseType: !1545, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !3559, file: !148, line: 980, baseType: !1545, size: 64, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !3559, file: !148, line: 981, baseType: !254, size: 16, offset: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !3559, file: !148, line: 983, baseType: !254, size: 16, offset: 144)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !3559, file: !148, line: 985, baseType: !1058, size: 8, offset: 160)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !3559, file: !148, line: 986, baseType: !1058, size: 8, offset: 168)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3559, file: !148, line: 988, baseType: !186, size: 128, offset: 192)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2963, file: !639, line: 1197, baseType: !3569, size: 64, offset: 17344)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !639, line: 61, flags: DIFlagFwdDecl)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2963, file: !639, line: 1199, baseType: !3572, size: 64, offset: 17408)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3574, line: 99, size: 128, elements: !3575)
!3574 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3575 = !{!3576, !3577, !3578}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3573, file: !3574, line: 100, baseType: !668, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3573, file: !3574, line: 101, baseType: !234, size: 32, offset: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3573, file: !3574, line: 103, baseType: !254, size: 16, offset: 96)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2963, file: !639, line: 1202, baseType: !3580, size: 64, offset: 17472)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !639, line: 48, flags: DIFlagFwdDecl)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2963, file: !639, line: 1205, baseType: !334, size: 64, offset: 17536)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2963, file: !639, line: 1206, baseType: !3584, size: 64, offset: 17600)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1415, line: 14, baseType: !3586)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1415, line: 12, size: 384, elements: !3587)
!3587 = !{!3588}
!3588 = !DIDerivedType(tag: DW_TAG_member, scope: !3586, file: !1415, line: 13, baseType: !3589, size: 384)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3586, file: !1415, line: 13, size: 384, elements: !3590)
!3590 = !{!3591, !3592, !3593, !3594}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3589, file: !1415, line: 13, baseType: !115, size: 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3589, file: !1415, line: 13, baseType: !115, size: 32, offset: 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3589, file: !1415, line: 13, baseType: !115, size: 32, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3589, file: !1415, line: 13, baseType: !3595, size: 256, offset: 128)
!3595 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3596, line: 37, size: 256, elements: !3597)
!3596 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3597 = !{!3598, !3603, !3616, !3622, !3631, !3658, !3663}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3595, file: !3596, line: 42, baseType: !3599, size: 64)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3595, file: !3596, line: 39, size: 64, elements: !3600)
!3600 = !{!3601, !3602}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3599, file: !3596, line: 40, baseType: !3252, size: 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3599, file: !3596, line: 41, baseType: !376, size: 32, offset: 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3595, file: !3596, line: 50, baseType: !3604, size: 192)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3595, file: !3596, line: 45, size: 192, elements: !3605)
!3605 = !{!3606, !3608, !3609, !3615}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3604, file: !3596, line: 46, baseType: !3607, size: 32)
!3607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !318, line: 95, baseType: !115)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3604, file: !3596, line: 47, baseType: !115, size: 32, offset: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3604, file: !3596, line: 48, baseType: !3610, size: 64, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3596, line: 11, baseType: !3611)
!3611 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3596, line: 8, size: 64, elements: !3612)
!3612 = !{!3613, !3614}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3611, file: !3596, line: 9, baseType: !115, size: 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3611, file: !3596, line: 10, baseType: !178, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3604, file: !3596, line: 49, baseType: !115, size: 32, offset: 128)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3595, file: !3596, line: 57, baseType: !3617, size: 128)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3595, file: !3596, line: 53, size: 128, elements: !3618)
!3618 = !{!3619, !3620, !3621}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3617, file: !3596, line: 54, baseType: !3252, size: 32)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3617, file: !3596, line: 55, baseType: !376, size: 32, offset: 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3617, file: !3596, line: 56, baseType: !3610, size: 64, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3595, file: !3596, line: 66, baseType: !3623, size: 256)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3595, file: !3596, line: 60, size: 256, elements: !3624)
!3624 = !{!3625, !3626, !3627, !3628, !3630}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3623, file: !3596, line: 61, baseType: !3252, size: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3623, file: !3596, line: 62, baseType: !376, size: 32, offset: 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3623, file: !3596, line: 63, baseType: !115, size: 32, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3623, file: !3596, line: 64, baseType: !3629, size: 64, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !318, line: 94, baseType: !319)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3623, file: !3596, line: 65, baseType: !3629, size: 64, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3595, file: !3596, line: 105, baseType: !3632, size: 256)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3595, file: !3596, line: 69, size: 256, elements: !3633)
!3633 = !{!3634, !3635}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3632, file: !3596, line: 70, baseType: !178, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, scope: !3632, file: !3596, line: 79, baseType: !3636, size: 192, offset: 64)
!3636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3632, file: !3596, line: 79, size: 192, elements: !3637)
!3637 = !{!3638, !3639, !3640, !3647, !3652}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3636, file: !3596, line: 81, baseType: !115, size: 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3636, file: !3596, line: 86, baseType: !1298, size: 16)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3636, file: !3596, line: 92, baseType: !3641, size: 192)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3636, file: !3596, line: 88, size: 192, elements: !3642)
!3642 = !{!3643, !3645, !3646}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3641, file: !3596, line: 89, baseType: !3644, size: 64)
!3644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !2391)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3641, file: !3596, line: 90, baseType: !178, size: 64, offset: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3641, file: !3596, line: 91, baseType: !178, size: 64, offset: 128)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3636, file: !3596, line: 97, baseType: !3648, size: 96)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3636, file: !3596, line: 94, size: 96, elements: !3649)
!3649 = !{!3650, !3651}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3648, file: !3596, line: 95, baseType: !3644, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3648, file: !3596, line: 96, baseType: !434, size: 32, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3636, file: !3596, line: 103, baseType: !3653, size: 128)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3636, file: !3596, line: 99, size: 128, elements: !3654)
!3654 = !{!3655, !3656, !3657}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3653, file: !3596, line: 100, baseType: !334, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3653, file: !3596, line: 101, baseType: !434, size: 32, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3653, file: !3596, line: 102, baseType: !434, size: 32, offset: 96)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3595, file: !3596, line: 111, baseType: !3659, size: 128)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3595, file: !3596, line: 108, size: 128, elements: !3660)
!3660 = !{!3661, !3662}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3659, file: !3596, line: 109, baseType: !320, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3659, file: !3596, line: 110, baseType: !115, size: 32, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3595, file: !3596, line: 118, baseType: !3664, size: 128)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3595, file: !3596, line: 114, size: 128, elements: !3665)
!3665 = !{!3666, !3667, !3668}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3664, file: !3596, line: 115, baseType: !178, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3664, file: !3596, line: 116, baseType: !115, size: 32, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3664, file: !3596, line: 117, baseType: !13, size: 32, offset: 96)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2963, file: !639, line: 1208, baseType: !3440, size: 448, offset: 17664)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2963, file: !639, line: 1215, baseType: !437, size: 64, offset: 18112)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2963, file: !639, line: 1217, baseType: !437, size: 64, offset: 18176)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2963, file: !639, line: 1219, baseType: !437, size: 64, offset: 18240)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2963, file: !639, line: 1223, baseType: !3674, size: 64, offset: 18304)
!3674 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3675, line: 99, baseType: !3676)
!3675 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3675, line: 99, size: 64, elements: !3677)
!3677 = !{!3678}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3676, file: !3675, line: 99, baseType: !2719, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2963, file: !639, line: 1225, baseType: !405, size: 32, offset: 18368)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2963, file: !639, line: 1226, baseType: !115, size: 32, offset: 18400)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2963, file: !639, line: 1227, baseType: !115, size: 32, offset: 18432)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2963, file: !639, line: 1231, baseType: !3683, size: 64, offset: 18496)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !639, line: 1231, flags: DIFlagFwdDecl)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2963, file: !639, line: 1233, baseType: !186, size: 128, offset: 18560)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2963, file: !639, line: 1240, baseType: !3687, size: 64, offset: 18688)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !639, line: 62, flags: DIFlagFwdDecl)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2963, file: !639, line: 1242, baseType: !3690, size: 64, offset: 18752)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3692, line: 392, size: 96, elements: !3693)
!3692 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!3693 = !{!3694, !3700, !3702}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3691, file: !3692, line: 393, baseType: !3695, size: 32)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !3692, line: 388, size: 32, elements: !3696)
!3696 = !{!3697}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3695, file: !3692, line: 389, baseType: !3698, size: 32)
!3698 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !3699, line: 46, baseType: !433)
!3699 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !3691, file: !3692, line: 394, baseType: !3701, size: 32, offset: 32)
!3701 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !3699, line: 42, baseType: !1265)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !3691, file: !3692, line: 395, baseType: !3698, size: 32, offset: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2963, file: !639, line: 1244, baseType: !186, size: 128, offset: 18816)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2963, file: !639, line: 1245, baseType: !3705, size: 64, offset: 18944)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !639, line: 51, flags: DIFlagFwdDecl)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2963, file: !639, line: 1246, baseType: !664, size: 256, offset: 19008)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2963, file: !639, line: 1247, baseType: !13, size: 32, offset: 19264)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2963, file: !639, line: 1250, baseType: !3710, size: 64, offset: 19328)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !639, line: 57, flags: DIFlagFwdDecl)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2963, file: !639, line: 1251, baseType: !664, size: 256, offset: 19392)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2963, file: !639, line: 1252, baseType: !186, size: 128, offset: 19648)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2963, file: !639, line: 1259, baseType: !1888, size: 64, offset: 19776)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2963, file: !639, line: 1260, baseType: !1298, size: 16, offset: 19840)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2963, file: !639, line: 1261, baseType: !1298, size: 16, offset: 19856)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2963, file: !639, line: 1314, baseType: !3718, size: 64, offset: 19904)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3720, line: 62, size: 256, align: 256, elements: !3721)
!3720 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3721 = !{!3722, !3723, !3724, !3725, !3726, !3727, !3728}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3719, file: !3720, line: 75, baseType: !434, size: 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3719, file: !3720, line: 90, baseType: !434, size: 32, offset: 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3719, file: !3720, line: 112, baseType: !438, size: 64, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3719, file: !3720, line: 132, baseType: !434, size: 32, offset: 128)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3719, file: !3720, line: 140, baseType: !434, size: 32, offset: 160)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3719, file: !3720, line: 149, baseType: !434, size: 32, offset: 192)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3719, file: !3720, line: 154, baseType: !3729, offset: 224)
!3729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1223)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2963, file: !639, line: 1315, baseType: !433, size: 32, offset: 19968)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2963, file: !639, line: 1316, baseType: !433, size: 32, offset: 20000)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2963, file: !639, line: 1321, baseType: !334, size: 64, offset: 20032)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2963, file: !639, line: 1325, baseType: !115, size: 32, offset: 20096)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2963, file: !639, line: 1326, baseType: !115, size: 32, offset: 20128)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2963, file: !639, line: 1327, baseType: !115, size: 32, offset: 20160)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2963, file: !639, line: 1328, baseType: !115, size: 32, offset: 20192)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2963, file: !639, line: 1329, baseType: !1062, size: 128, align: 64, offset: 20224)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2963, file: !639, line: 1332, baseType: !3739, size: 128, offset: 20352)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3740, line: 51, size: 128, elements: !3741)
!3740 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3741 = !{!3742, !3747, !3748}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3739, file: !3740, line: 60, baseType: !3743, size: 64)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3744, line: 7, size: 64, elements: !3745)
!3744 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3745 = !{!3746}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3743, file: !3744, line: 12, baseType: !3122, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3739, file: !3740, line: 63, baseType: !1058, size: 8, offset: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3739, file: !3740, line: 70, baseType: !1058, size: 8, offset: 72)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2963, file: !639, line: 1335, baseType: !1617, size: 64, offset: 20480)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2963, file: !639, line: 1337, baseType: !3751, size: 128, offset: 20544)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3740, line: 39, size: 128, elements: !3752)
!3752 = !{!3753, !3754, !3755}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3751, file: !3740, line: 40, baseType: !977, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3751, file: !3740, line: 42, baseType: !434, size: 32, offset: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3751, file: !3740, line: 43, baseType: !434, size: 32, offset: 96)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2963, file: !639, line: 1340, baseType: !3757, size: 64, offset: 20672)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !639, line: 69, flags: DIFlagFwdDecl)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2963, file: !639, line: 1351, baseType: !115, size: 32, offset: 20736)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2963, file: !639, line: 1352, baseType: !115, size: 32, offset: 20768)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2963, file: !639, line: 1354, baseType: !334, size: 64, offset: 20800)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2963, file: !639, line: 1364, baseType: !437, size: 64, offset: 20864)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2963, file: !639, line: 1365, baseType: !437, size: 64, offset: 20928)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2963, file: !639, line: 1412, baseType: !334, size: 64, offset: 20992)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2963, file: !639, line: 1453, baseType: !906, size: 64, offset: 21056)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2963, file: !639, line: 1457, baseType: !3767, size: 64, offset: 21120)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !87, line: 61, size: 576, elements: !3769)
!3769 = !{!3770, !3771, !3790, !3793, !3794, !3827, !3837}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3768, file: !87, line: 62, baseType: !86, size: 32)
!3771 = !DIDerivedType(tag: DW_TAG_member, scope: !3768, file: !87, line: 64, baseType: !3772, size: 192, offset: 64)
!3772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3768, file: !87, line: 64, size: 192, elements: !3773)
!3773 = !{!3774, !3785}
!3774 = !DIDerivedType(tag: DW_TAG_member, scope: !3772, file: !87, line: 65, baseType: !3775, size: 192)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3772, file: !87, line: 65, size: 192, elements: !3776)
!3776 = !{!3777, !3784}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3775, file: !87, line: 66, baseType: !3778, size: 128)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3779, line: 50, size: 128, elements: !3780)
!3779 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3780 = !{!3781, !3782, !3783}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3778, file: !3779, line: 52, baseType: !334, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3778, file: !3779, line: 54, baseType: !13, size: 32, offset: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3778, file: !3779, line: 55, baseType: !13, size: 32, offset: 96)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3775, file: !87, line: 67, baseType: !334, size: 64, offset: 128)
!3785 = !DIDerivedType(tag: DW_TAG_member, scope: !3772, file: !87, line: 70, baseType: !3786, size: 192)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3772, file: !87, line: 70, size: 192, elements: !3787)
!3787 = !{!3788, !3789}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3786, file: !87, line: 71, baseType: !1062, size: 128, align: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3786, file: !87, line: 72, baseType: !334, size: 64, offset: 128)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3768, file: !87, line: 76, baseType: !3791, size: 64, offset: 256)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !87, line: 76, flags: DIFlagFwdDecl)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3768, file: !87, line: 77, baseType: !334, size: 64, offset: 320)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3768, file: !87, line: 79, baseType: !3795, size: 64, offset: 384)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3779, line: 25, size: 256, elements: !3797)
!3797 = !{!3798, !3804, !3808}
!3798 = !DIDerivedType(tag: DW_TAG_member, scope: !3796, file: !3779, line: 26, baseType: !3799, size: 128)
!3799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3796, file: !3779, line: 26, size: 128, elements: !3800)
!3800 = !{!3801, !3803}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3799, file: !3779, line: 27, baseType: !3802, size: 128)
!3802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 128, elements: !3311)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3799, file: !3779, line: 28, baseType: !3802, size: 128)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3796, file: !3779, line: 31, baseType: !3805, size: 64, offset: 128)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3807)
!3807 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3779, line: 23, flags: DIFlagFwdDecl)
!3808 = !DIDerivedType(tag: DW_TAG_member, scope: !3796, file: !3779, line: 33, baseType: !3809, size: 64, offset: 192)
!3809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3796, file: !3779, line: 33, size: 64, elements: !3810)
!3810 = !{!3811, !3817, !3822}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3809, file: !3779, line: 38, baseType: !3812, size: 64)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3809, file: !3779, line: 34, size: 64, elements: !3813)
!3813 = !{!3814, !3815, !3816}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3812, file: !3779, line: 35, baseType: !1265, size: 32)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3812, file: !3779, line: 36, baseType: !242, size: 8, offset: 32)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3812, file: !3779, line: 37, baseType: !242, size: 8, offset: 40)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3809, file: !3779, line: 42, baseType: !3818, size: 16)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3809, file: !3779, line: 39, size: 16, elements: !3819)
!3819 = !{!3820, !3821}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3818, file: !3779, line: 40, baseType: !242, size: 8)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3818, file: !3779, line: 41, baseType: !242, size: 8, offset: 8)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3809, file: !3779, line: 46, baseType: !3823, size: 16)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3809, file: !3779, line: 43, size: 16, elements: !3824)
!3824 = !{!3825, !3826}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3823, file: !3779, line: 44, baseType: !242, size: 8)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3823, file: !3779, line: 45, baseType: !242, size: 8, offset: 8)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3768, file: !87, line: 81, baseType: !3828, size: 64, offset: 448)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !87, line: 85, size: 384, elements: !3830)
!3830 = !{!3831, !3832, !3833, !3834, !3835, !3836}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3829, file: !87, line: 86, baseType: !3791, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3829, file: !87, line: 87, baseType: !334, size: 64, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3829, file: !87, line: 88, baseType: !334, size: 64, offset: 128)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3829, file: !87, line: 89, baseType: !334, size: 64, offset: 192)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3829, file: !87, line: 90, baseType: !1058, size: 8, offset: 256)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3829, file: !87, line: 92, baseType: !3828, size: 64, offset: 320)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3768, file: !87, line: 82, baseType: !13, size: 32, offset: 512)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2963, file: !639, line: 1463, baseType: !3839, offset: 21184)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !639, line: 739, elements: !568)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2963, file: !639, line: 1470, baseType: !1062, size: 128, align: 64, offset: 21184)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2963, file: !639, line: 1471, baseType: !1197, size: 32, offset: 21312)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2963, file: !639, line: 1472, baseType: !115, size: 32, offset: 21344)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2963, file: !639, line: 1474, baseType: !2962, size: 64, offset: 21376)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2963, file: !639, line: 1475, baseType: !2317, size: 320, offset: 21440)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2963, file: !639, line: 1478, baseType: !3846, size: 64, offset: 21760)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3848, line: 49, size: 512, elements: !3849)
!3848 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3849 = !{!3850, !3851, !3852, !3853, !3854, !3856, !3857, !3858, !3860}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3847, file: !3848, line: 50, baseType: !3846, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3847, file: !3848, line: 51, baseType: !178, size: 64, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3847, file: !3848, line: 52, baseType: !334, size: 64, offset: 128)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3847, file: !3848, line: 53, baseType: !334, size: 64, offset: 192)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3847, file: !3848, line: 54, baseType: !3855, size: 64, offset: 256)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3847, file: !3848, line: 56, baseType: !13, size: 32, offset: 320)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3847, file: !3848, line: 58, baseType: !13, size: 32, offset: 352)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3847, file: !3848, line: 59, baseType: !3859, size: 64, offset: 384)
!3859 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !180, line: 159, baseType: !437)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3847, file: !3848, line: 60, baseType: !1758, size: 64, offset: 448)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2963, file: !639, line: 1482, baseType: !1197, size: 32, offset: 21824)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2963, file: !639, line: 1489, baseType: !178, size: 64, offset: 21888)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2963, file: !639, line: 1504, baseType: !178, size: 64, offset: 21952)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2963, file: !639, line: 1505, baseType: !438, size: 64, offset: 22016)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2963, file: !639, line: 1506, baseType: !437, size: 64, offset: 22080)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2963, file: !639, line: 1507, baseType: !438, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2963, file: !639, line: 1508, baseType: !438, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2963, file: !639, line: 1509, baseType: !438, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2963, file: !639, line: 1510, baseType: !1062, size: 128, align: 64, offset: 22208)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2963, file: !639, line: 1511, baseType: !115, size: 32, offset: 22336)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2963, file: !639, line: 1515, baseType: !3872, size: 64, offset: 22400)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1155, line: 56, size: 64, elements: !3873)
!3873 = !{!3874}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3872, file: !1155, line: 57, baseType: !1158, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2963, file: !639, line: 1518, baseType: !3872, size: 64, offset: 22464)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2963, file: !639, line: 1528, baseType: !1062, size: 128, align: 64, offset: 22528)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2963, file: !639, line: 1552, baseType: !3878, size: 35328, offset: 23040)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3879, line: 430, size: 35328, elements: !3880)
!3879 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3880 = !{!3881, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3910, !3911, !3912, !3913, !3914, !3915, !3918, !3919, !3920, !3921}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3878, file: !3879, line: 432, baseType: !3882, size: 192)
!3882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3883, size: 192, elements: !285)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3884, line: 16, size: 64, elements: !3885)
!3884 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3885 = !{!3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3883, file: !3884, line: 17, baseType: !252, size: 16)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3883, file: !3884, line: 18, baseType: !252, size: 16, offset: 16)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3883, file: !3884, line: 19, baseType: !252, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3883, file: !3884, line: 19, baseType: !252, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3883, file: !3884, line: 19, baseType: !252, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3883, file: !3884, line: 19, baseType: !252, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3883, file: !3884, line: 19, baseType: !252, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3883, file: !3884, line: 20, baseType: !252, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3883, file: !3884, line: 20, baseType: !252, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3883, file: !3884, line: 20, baseType: !252, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3883, file: !3884, line: 20, baseType: !252, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3883, file: !3884, line: 20, baseType: !252, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3883, file: !3884, line: 20, baseType: !252, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3878, file: !3879, line: 436, baseType: !334, size: 64, offset: 192)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3878, file: !3879, line: 440, baseType: !254, size: 16, offset: 256)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3878, file: !3879, line: 441, baseType: !254, size: 16, offset: 272)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3878, file: !3879, line: 442, baseType: !254, size: 16, offset: 288)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3878, file: !3879, line: 443, baseType: !254, size: 16, offset: 304)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3878, file: !3879, line: 447, baseType: !334, size: 64, offset: 320)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3878, file: !3879, line: 448, baseType: !334, size: 64, offset: 384)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3878, file: !3879, line: 459, baseType: !3907, size: 256, offset: 448)
!3907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3908, size: 256, elements: !5)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3879, line: 428, flags: DIFlagFwdDecl)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3878, file: !3879, line: 461, baseType: !334, size: 64, offset: 704)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3878, file: !3879, line: 463, baseType: !334, size: 64, offset: 768)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3878, file: !3879, line: 465, baseType: !334, size: 64, offset: 832)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3878, file: !3879, line: 466, baseType: !334, size: 64, offset: 896)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3878, file: !3879, line: 467, baseType: !334, size: 64, offset: 960)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3878, file: !3879, line: 473, baseType: !3916, size: 64, offset: 1024)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3879, line: 10, flags: DIFlagFwdDecl)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3878, file: !3879, line: 480, baseType: !334, size: 64, offset: 1088)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3878, file: !3879, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3878, file: !3879, line: 491, baseType: !433, size: 32, offset: 1184)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3878, file: !3879, line: 501, baseType: !3922, size: 33792, offset: 1536)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3923, line: 448, size: 33792, elements: !3924)
!3923 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3924 = !{!3925, !3926, !3927, !4089, !4090, !4096, !4097}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3922, file: !3923, line: 461, baseType: !13, size: 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3922, file: !3923, line: 468, baseType: !334, size: 64, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3922, file: !3923, line: 476, baseType: !3928, size: 64, offset: 128)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3923, line: 356, size: 33280, align: 512, elements: !3930)
!3930 = !{!3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3929, file: !3923, line: 358, baseType: !13, size: 32)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3929, file: !3923, line: 361, baseType: !13, size: 32, offset: 32)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3929, file: !3923, line: 364, baseType: !437, size: 64, offset: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3929, file: !3923, line: 367, baseType: !437, size: 64, offset: 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3929, file: !3923, line: 370, baseType: !437, size: 64, offset: 192)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3929, file: !3923, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3929, file: !3923, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3929, file: !3923, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3929, file: !3923, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3929, file: !3923, line: 397, baseType: !3941, size: 32768, offset: 512)
!3941 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3923, line: 348, size: 32768, elements: !3942)
!3942 = !{!3943, !3958, !3995, !4072, !4085}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3941, file: !3923, line: 349, baseType: !3944, size: 896)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3923, line: 12, size: 896, elements: !3945)
!3945 = !{!3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3957}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3944, file: !3923, line: 13, baseType: !433, size: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3944, file: !3923, line: 14, baseType: !433, size: 32, offset: 32)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3944, file: !3923, line: 15, baseType: !433, size: 32, offset: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3944, file: !3923, line: 16, baseType: !433, size: 32, offset: 96)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3944, file: !3923, line: 17, baseType: !433, size: 32, offset: 128)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3944, file: !3923, line: 18, baseType: !433, size: 32, offset: 160)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3944, file: !3923, line: 19, baseType: !433, size: 32, offset: 192)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3944, file: !3923, line: 22, baseType: !3954, size: 640, offset: 224)
!3954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 640, elements: !3955)
!3955 = !{!3956}
!3956 = !DISubrange(count: 20)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3944, file: !3923, line: 25, baseType: !433, size: 32, offset: 864)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3941, file: !3923, line: 350, baseType: !3959, size: 4096, align: 128)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3923, line: 34, size: 4096, align: 128, elements: !3960)
!3960 = !{!3961, !3962, !3963, !3964, !3965, !3980, !3981, !3982, !3984, !3986, !3990}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3959, file: !3923, line: 35, baseType: !252, size: 16)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3959, file: !3923, line: 36, baseType: !252, size: 16, offset: 16)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3959, file: !3923, line: 37, baseType: !252, size: 16, offset: 32)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3959, file: !3923, line: 38, baseType: !252, size: 16, offset: 48)
!3965 = !DIDerivedType(tag: DW_TAG_member, scope: !3959, file: !3923, line: 39, baseType: !3966, size: 128, offset: 64)
!3966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3959, file: !3923, line: 39, size: 128, elements: !3967)
!3967 = !{!3968, !3973}
!3968 = !DIDerivedType(tag: DW_TAG_member, scope: !3966, file: !3923, line: 40, baseType: !3969, size: 128)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3966, file: !3923, line: 40, size: 128, elements: !3970)
!3970 = !{!3971, !3972}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3969, file: !3923, line: 41, baseType: !437, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3969, file: !3923, line: 42, baseType: !437, size: 64, offset: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, scope: !3966, file: !3923, line: 44, baseType: !3974, size: 128)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3966, file: !3923, line: 44, size: 128, elements: !3975)
!3975 = !{!3976, !3977, !3978, !3979}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3974, file: !3923, line: 45, baseType: !433, size: 32)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3974, file: !3923, line: 46, baseType: !433, size: 32, offset: 32)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3974, file: !3923, line: 47, baseType: !433, size: 32, offset: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3974, file: !3923, line: 48, baseType: !433, size: 32, offset: 96)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3959, file: !3923, line: 51, baseType: !433, size: 32, offset: 192)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3959, file: !3923, line: 52, baseType: !433, size: 32, offset: 224)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3959, file: !3923, line: 55, baseType: !3983, size: 1024, offset: 256)
!3983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 1024, elements: !446)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3959, file: !3923, line: 58, baseType: !3985, size: 2048, offset: 1280)
!3985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 2048, elements: !289)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3959, file: !3923, line: 60, baseType: !3987, size: 384, offset: 3328)
!3987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 384, elements: !3988)
!3988 = !{!3989}
!3989 = !DISubrange(count: 12)
!3990 = !DIDerivedType(tag: DW_TAG_member, scope: !3959, file: !3923, line: 62, baseType: !3991, size: 384, offset: 3712)
!3991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3959, file: !3923, line: 62, size: 384, elements: !3992)
!3992 = !{!3993, !3994}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3991, file: !3923, line: 63, baseType: !3987, size: 384)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3991, file: !3923, line: 64, baseType: !3987, size: 384)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3941, file: !3923, line: 351, baseType: !3996, size: 1088)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3923, line: 79, size: 1088, elements: !3997)
!3997 = !{!3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4071}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3996, file: !3923, line: 80, baseType: !433, size: 32)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3996, file: !3923, line: 81, baseType: !433, size: 32, offset: 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3996, file: !3923, line: 82, baseType: !433, size: 32, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3996, file: !3923, line: 83, baseType: !433, size: 32, offset: 96)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3996, file: !3923, line: 84, baseType: !433, size: 32, offset: 128)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3996, file: !3923, line: 85, baseType: !433, size: 32, offset: 160)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3996, file: !3923, line: 86, baseType: !433, size: 32, offset: 192)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3996, file: !3923, line: 88, baseType: !3954, size: 640, offset: 224)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3996, file: !3923, line: 89, baseType: !242, size: 8, offset: 864)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3996, file: !3923, line: 90, baseType: !242, size: 8, offset: 872)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3996, file: !3923, line: 91, baseType: !242, size: 8, offset: 880)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3996, file: !3923, line: 92, baseType: !242, size: 8, offset: 888)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3996, file: !3923, line: 93, baseType: !242, size: 8, offset: 896)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3996, file: !3923, line: 94, baseType: !242, size: 8, offset: 904)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3996, file: !3923, line: 95, baseType: !4013, size: 64, offset: 960)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4015, line: 11, size: 128, elements: !4016)
!4015 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4016 = !{!4017, !4018}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4014, file: !4015, line: 12, baseType: !320, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4014, file: !4015, line: 13, baseType: !4019, size: 64, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4021, line: 103, size: 1344, elements: !4022)
!4021 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4022 = !{!4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4051, !4052, !4053}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4020, file: !4021, line: 109, baseType: !334, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4020, file: !4021, line: 110, baseType: !334, size: 64, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4020, file: !4021, line: 111, baseType: !334, size: 64, offset: 128)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4020, file: !4021, line: 112, baseType: !334, size: 64, offset: 192)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4020, file: !4021, line: 113, baseType: !334, size: 64, offset: 256)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4020, file: !4021, line: 114, baseType: !334, size: 64, offset: 320)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4020, file: !4021, line: 117, baseType: !334, size: 64, offset: 384)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4020, file: !4021, line: 118, baseType: !334, size: 64, offset: 448)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4020, file: !4021, line: 119, baseType: !334, size: 64, offset: 512)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4020, file: !4021, line: 120, baseType: !334, size: 64, offset: 576)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4020, file: !4021, line: 121, baseType: !334, size: 64, offset: 640)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4020, file: !4021, line: 122, baseType: !334, size: 64, offset: 704)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4020, file: !4021, line: 123, baseType: !334, size: 64, offset: 768)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4020, file: !4021, line: 124, baseType: !334, size: 64, offset: 832)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4020, file: !4021, line: 125, baseType: !334, size: 64, offset: 896)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4020, file: !4021, line: 139, baseType: !334, size: 64, offset: 960)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4020, file: !4021, line: 142, baseType: !334, size: 64, offset: 1024)
!4040 = !DIDerivedType(tag: DW_TAG_member, scope: !4020, file: !4021, line: 144, baseType: !4041, size: 64, offset: 1088)
!4041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4020, file: !4021, line: 144, size: 64, elements: !4042)
!4042 = !{!4043, !4044, !4045}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4041, file: !4021, line: 146, baseType: !252, size: 16)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4041, file: !4021, line: 148, baseType: !437, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4041, file: !4021, line: 150, baseType: !4046, size: 64)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4021, line: 59, size: 64, elements: !4047)
!4047 = !{!4048, !4049, !4050}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4046, file: !4021, line: 61, baseType: !437, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4046, file: !4021, line: 63, baseType: !437, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4046, file: !4021, line: 65, baseType: !437, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4020, file: !4021, line: 153, baseType: !334, size: 64, offset: 1152)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4020, file: !4021, line: 154, baseType: !334, size: 64, offset: 1216)
!4053 = !DIDerivedType(tag: DW_TAG_member, scope: !4020, file: !4021, line: 156, baseType: !4054, size: 64, offset: 1280)
!4054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4020, file: !4021, line: 156, size: 64, elements: !4055)
!4055 = !{!4056, !4057, !4058}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4054, file: !4021, line: 158, baseType: !252, size: 16)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4054, file: !4021, line: 160, baseType: !437, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4054, file: !4021, line: 162, baseType: !4059, size: 64)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4021, line: 69, size: 64, elements: !4060)
!4060 = !{!4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4059, file: !4021, line: 71, baseType: !437, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4059, file: !4021, line: 73, baseType: !437, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4059, file: !4021, line: 75, baseType: !437, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4059, file: !4021, line: 77, baseType: !437, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4059, file: !4021, line: 80, baseType: !437, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4059, file: !4021, line: 83, baseType: !437, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4059, file: !4021, line: 86, baseType: !437, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4059, file: !4021, line: 88, baseType: !437, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4059, file: !4021, line: 93, baseType: !437, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4059, file: !4021, line: 100, baseType: !437, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3996, file: !3923, line: 96, baseType: !433, size: 32, offset: 1024)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3941, file: !3923, line: 352, baseType: !4073, size: 4608, align: 512)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3923, line: 333, size: 4608, align: 512, elements: !4074)
!4074 = !{!4075, !4076, !4083}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4073, file: !3923, line: 334, baseType: !3959, size: 4096, align: 128)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4073, file: !3923, line: 335, baseType: !4077, size: 512, offset: 4096)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3923, line: 312, size: 512, elements: !4078)
!4078 = !{!4079, !4080, !4081}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4077, file: !3923, line: 313, baseType: !437, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4077, file: !3923, line: 314, baseType: !437, size: 64, offset: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4077, file: !3923, line: 315, baseType: !4082, size: 384, offset: 128)
!4082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 384, elements: !1316)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4073, file: !3923, line: 336, baseType: !4084, offset: 4608)
!4084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, elements: !1223)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3941, file: !3923, line: 353, baseType: !4086, size: 32768)
!4086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 32768, elements: !4087)
!4087 = !{!4088}
!4088 = !DISubrange(count: 4096)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3922, file: !3923, line: 484, baseType: !3928, size: 64, offset: 192)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3922, file: !3923, line: 491, baseType: !4091, size: 128, offset: 256)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3923, line: 404, size: 128, elements: !4092)
!4092 = !{!4093, !4094, !4095}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4091, file: !3923, line: 424, baseType: !437, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4091, file: !3923, line: 432, baseType: !13, size: 32, offset: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4091, file: !3923, line: 440, baseType: !13, size: 32, offset: 96)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3922, file: !3923, line: 498, baseType: !4091, size: 128, offset: 384)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3922, file: !3923, line: 508, baseType: !3929, size: 33280, align: 512, offset: 512)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2944, file: !2945, line: 16, baseType: !1208, size: 192, offset: 512)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2944, file: !2945, line: 17, baseType: !234, size: 32, offset: 704)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !516, file: !65, line: 1240, baseType: !178, size: 64, offset: 6912)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !516, file: !65, line: 1243, baseType: !433, size: 32, offset: 6976)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !516, file: !65, line: 1245, baseType: !717, size: 64, offset: 7040)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !516, file: !65, line: 1246, baseType: !717, size: 64, offset: 7104)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !516, file: !65, line: 1248, baseType: !434, size: 32, offset: 7168)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !516, file: !65, line: 1249, baseType: !4106, size: 64, offset: 7232)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !65, line: 634, flags: DIFlagFwdDecl)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !516, file: !65, line: 1252, baseType: !913, size: 256, offset: 7296)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !516, file: !65, line: 1253, baseType: !4110, size: 128, offset: 7552)
!4110 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4111, line: 21, baseType: !4112)
!4111 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4111, line: 19, size: 128, elements: !4113)
!4113 = !{!4114}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4112, file: !4111, line: 20, baseType: !4115, size: 128)
!4115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 128, elements: !3311)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !516, file: !65, line: 1255, baseType: !13, size: 32, offset: 7680)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !516, file: !65, line: 1261, baseType: !664, size: 256, offset: 7744)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !516, file: !65, line: 1267, baseType: !203, size: 64, offset: 8000)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !516, file: !65, line: 1269, baseType: !462, size: 64, offset: 8064)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !516, file: !65, line: 1271, baseType: !4121, size: 448, offset: 8128)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !726, line: 63, size: 448, elements: !4122)
!4122 = !{!4123, !4128, !4129, !4130, !4131, !4132, !4133}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4121, file: !726, line: 64, baseType: !4124, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!334, !4127, !724}
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4121, file: !726, line: 66, baseType: !4124, size: 64, offset: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4121, file: !726, line: 69, baseType: !320, size: 64, offset: 128)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4121, file: !726, line: 70, baseType: !115, size: 32, offset: 192)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4121, file: !726, line: 71, baseType: !13, size: 32, offset: 224)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4121, file: !726, line: 74, baseType: !186, size: 128, offset: 256)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4121, file: !726, line: 85, baseType: !4134, size: 64, offset: 384)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !516, file: !65, line: 1274, baseType: !668, size: 64, offset: 8576)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !516, file: !65, line: 1280, baseType: !668, size: 64, offset: 8640)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !516, file: !65, line: 1283, baseType: !115, size: 32, offset: 8704)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !516, file: !65, line: 1286, baseType: !1667, size: 32, offset: 8736)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !516, file: !65, line: 1289, baseType: !2018, size: 64, offset: 8768)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !516, file: !65, line: 1290, baseType: !556, size: 64, offset: 8832)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !516, file: !65, line: 1297, baseType: !1410, size: 64, offset: 8896)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !516, file: !65, line: 1304, baseType: !4143, size: 64, offset: 8960)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4144, line: 49, size: 64, elements: !4145)
!4144 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4145 = !{!4146}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4143, file: !4144, line: 50, baseType: !4147, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4144, line: 41, size: 512, align: 512, elements: !4149)
!4149 = !{!4150, !4151, !4156}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4148, file: !4144, line: 43, baseType: !214, size: 32)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4148, file: !4144, line: 45, baseType: !4152, size: 192, offset: 64)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4144, line: 29, size: 192, elements: !4153)
!4153 = !{!4154, !4155}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4152, file: !4144, line: 30, baseType: !186, size: 128)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4152, file: !4144, line: 32, baseType: !320, size: 64, offset: 128)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4148, file: !4144, line: 46, baseType: !320, size: 64, offset: 256)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !516, file: !65, line: 1305, baseType: !4143, size: 64, offset: 9024)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !516, file: !65, line: 1306, baseType: !1062, size: 128, align: 64, offset: 9088)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !516, file: !65, line: 1307, baseType: !1797, size: 256, offset: 9216)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !516, file: !65, line: 1309, baseType: !664, size: 256, offset: 9472)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !516, file: !65, line: 1314, baseType: !115, size: 32, offset: 9728)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !516, file: !65, line: 1317, baseType: !214, size: 32, align: 512, offset: 10240)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !516, file: !65, line: 1318, baseType: !186, size: 128, offset: 10304)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !516, file: !65, line: 1320, baseType: !214, size: 32, offset: 10432)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !516, file: !65, line: 1321, baseType: !186, size: 128, offset: 10496)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !510, file: !511, line: 73, baseType: !115, size: 32, offset: 128)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !510, file: !511, line: 74, baseType: !4168, size: 64, offset: 192)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1247, line: 42, flags: DIFlagFwdDecl)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !464, file: !401, line: 141, baseType: !4172, size: 64, offset: 704)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!115, !786, !1058}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !464, file: !401, line: 142, baseType: !4176, size: 64, offset: 768)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!399, !399, !4179}
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !400, file: !401, line: 96, baseType: !515, size: 64, offset: 832)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !400, file: !401, line: 97, baseType: !334, size: 64, offset: 896)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !400, file: !401, line: 98, baseType: !178, size: 64, offset: 960)
!4184 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !401, line: 100, baseType: !4185, size: 128, offset: 1024)
!4185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !401, line: 100, size: 128, elements: !4186)
!4186 = !{!4187, !4188}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4185, file: !401, line: 101, baseType: !186, size: 128)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4185, file: !401, line: 102, baseType: !4189, size: 64)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !400, file: !401, line: 104, baseType: !186, size: 128, offset: 1152)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !400, file: !401, line: 105, baseType: !186, size: 128, offset: 1280)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !400, file: !401, line: 113, baseType: !4193, size: 128, offset: 1408)
!4193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !401, line: 109, size: 128, elements: !4194)
!4194 = !{!4195, !4196, !4197}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4193, file: !401, line: 110, baseType: !560, size: 128)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4193, file: !401, line: 111, baseType: !415, size: 128)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4193, file: !401, line: 112, baseType: !1062, size: 128, align: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !393, file: !65, line: 1968, baseType: !4199, size: 64, offset: 64)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!203, !399, !364, !4202}
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4204, line: 10, size: 128, elements: !4205)
!4204 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4205 = !{!4206, !4207}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4203, file: !4204, line: 11, baseType: !2672, size: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4203, file: !4204, line: 12, baseType: !178, size: 64, offset: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !393, file: !65, line: 1969, baseType: !4209, size: 64, offset: 128)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!115, !4168, !364, !115}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !393, file: !65, line: 1970, baseType: !4213, size: 64, offset: 192)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!387, !364, !115, !1058}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !393, file: !65, line: 1972, baseType: !4217, size: 64, offset: 256)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!115, !399, !284, !115}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !393, file: !65, line: 1974, baseType: !4221, size: 64, offset: 320)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!115, !4168, !364, !399, !326, !1058}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !393, file: !65, line: 1976, baseType: !4225, size: 64, offset: 384)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!115, !399, !364, !399}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !393, file: !65, line: 1977, baseType: !4229, size: 64, offset: 448)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!115, !364, !399}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !393, file: !65, line: 1978, baseType: !4233, size: 64, offset: 512)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!115, !4168, !364, !399, !203}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !393, file: !65, line: 1980, baseType: !4237, size: 64, offset: 576)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!115, !4168, !364, !399, !326}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !393, file: !65, line: 1982, baseType: !4229, size: 64, offset: 640)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !393, file: !65, line: 1983, baseType: !4242, size: 64, offset: 704)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!115, !4168, !364, !399, !326, !520}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !393, file: !65, line: 1985, baseType: !4246, size: 64, offset: 768)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!115, !4168, !364, !399, !364, !399, !13}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !393, file: !65, line: 1987, baseType: !4250, size: 64, offset: 832)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!115, !4168, !399, !4253}
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !65, line: 226, size: 640, elements: !4255)
!4255 = !{!4256, !4257, !4258, !4268, !4277, !4278, !4283, !4284, !4285}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4254, file: !65, line: 227, baseType: !13, size: 32)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4254, file: !65, line: 228, baseType: !326, size: 16, offset: 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, scope: !4254, file: !65, line: 241, baseType: !4259, size: 32, offset: 64)
!4259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4254, file: !65, line: 241, size: 32, elements: !4260)
!4260 = !{!4261, !4262}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4259, file: !65, line: 242, baseType: !370, size: 32)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4259, file: !65, line: 243, baseType: !4263, size: 32)
!4263 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4264, line: 16, baseType: !4265)
!4264 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4264, line: 14, size: 32, elements: !4266)
!4266 = !{!4267}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4265, file: !4264, line: 15, baseType: !375, size: 32)
!4268 = !DIDerivedType(tag: DW_TAG_member, scope: !4254, file: !65, line: 245, baseType: !4269, size: 32, offset: 96)
!4269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4254, file: !65, line: 245, size: 32, elements: !4270)
!4270 = !{!4271, !4272}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4269, file: !65, line: 246, baseType: !379, size: 32)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4269, file: !65, line: 247, baseType: !4273, size: 32)
!4273 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4264, line: 20, baseType: !4274)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4264, line: 18, size: 32, elements: !4275)
!4275 = !{!4276}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4274, file: !4264, line: 19, baseType: !383, size: 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4254, file: !65, line: 249, baseType: !525, size: 64, offset: 128)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4254, file: !65, line: 250, baseType: !4279, size: 128, offset: 192)
!4279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !718, line: 13, size: 128, elements: !4280)
!4280 = !{!4281, !4282}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4279, file: !718, line: 14, baseType: !717, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4279, file: !718, line: 15, baseType: !320, size: 64, offset: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4254, file: !65, line: 251, baseType: !4279, size: 128, offset: 320)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4254, file: !65, line: 252, baseType: !4279, size: 128, offset: 448)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4254, file: !65, line: 259, baseType: !1147, size: 64, offset: 576)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !393, file: !65, line: 1988, baseType: !4287, size: 64, offset: 896)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{!115, !4168, !786, !4290, !433, !13}
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4292, line: 22, size: 1280, elements: !4293)
!4292 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4293 = !{!4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4291, file: !4292, line: 23, baseType: !433, size: 32)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4291, file: !4292, line: 24, baseType: !326, size: 16, offset: 32)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4291, file: !4292, line: 25, baseType: !13, size: 32, offset: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4291, file: !4292, line: 26, baseType: !1294, size: 32, offset: 96)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4291, file: !4292, line: 27, baseType: !437, size: 64, offset: 128)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4291, file: !4292, line: 28, baseType: !437, size: 64, offset: 192)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4291, file: !4292, line: 41, baseType: !437, size: 64, offset: 256)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4291, file: !4292, line: 42, baseType: !520, size: 32, offset: 320)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4291, file: !4292, line: 43, baseType: !520, size: 32, offset: 352)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4291, file: !4292, line: 44, baseType: !370, size: 32, offset: 384)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4291, file: !4292, line: 45, baseType: !379, size: 32, offset: 416)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4291, file: !4292, line: 46, baseType: !525, size: 64, offset: 448)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4291, file: !4292, line: 47, baseType: !4279, size: 128, offset: 512)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4291, file: !4292, line: 48, baseType: !4279, size: 128, offset: 640)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4291, file: !4292, line: 49, baseType: !4279, size: 128, offset: 768)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4291, file: !4292, line: 50, baseType: !4279, size: 128, offset: 896)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4291, file: !4292, line: 51, baseType: !437, size: 64, offset: 1024)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4291, file: !4292, line: 52, baseType: !437, size: 64, offset: 1088)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4291, file: !4292, line: 53, baseType: !433, size: 32, offset: 1152)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4291, file: !4292, line: 54, baseType: !433, size: 32, offset: 1184)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4291, file: !4292, line: 55, baseType: !437, size: 64, offset: 1216)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !393, file: !65, line: 1990, baseType: !4316, size: 64, offset: 960)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!316, !399, !284, !331}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !393, file: !65, line: 1991, baseType: !4320, size: 64, offset: 1024)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!115, !364, !4323, !437, !437}
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !65, line: 55, flags: DIFlagFwdDecl)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !393, file: !65, line: 1993, baseType: !4326, size: 64, offset: 1088)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!115, !364, !115}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !393, file: !65, line: 1994, baseType: !4330, size: 64, offset: 1152)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!115, !364, !399, !1147, !13, !326}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !393, file: !65, line: 1997, baseType: !4334, size: 64, offset: 1216)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!115, !4168, !364, !1147, !326}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !393, file: !65, line: 1999, baseType: !4338, size: 64, offset: 1280)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!387, !4168, !399, !115}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !393, file: !65, line: 2001, baseType: !4342, size: 64, offset: 1344)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!115, !4168, !399, !387, !115}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !393, file: !65, line: 2003, baseType: !4346, size: 64, offset: 1408)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!115, !4168, !399, !4349}
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !65, line: 76, flags: DIFlagFwdDecl)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !393, file: !65, line: 2005, baseType: !4352, size: 64, offset: 1472)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!115, !399, !4349}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !393, file: !65, line: 2006, baseType: !4356, size: 64, offset: 1536)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!4359, !364}
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !65, line: 3192, size: 192, elements: !4361)
!4361 = !{!4362, !4363}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4360, file: !65, line: 3193, baseType: !917, size: 128)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4360, file: !65, line: 3194, baseType: !433, size: 32, offset: 128)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !365, file: !65, line: 655, baseType: !515, size: 64, offset: 448)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !365, file: !65, line: 656, baseType: !360, size: 64, offset: 512)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !365, file: !65, line: 659, baseType: !178, size: 64, offset: 576)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !365, file: !65, line: 663, baseType: !334, size: 64, offset: 640)
!4368 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !65, line: 671, baseType: !4369, size: 32, offset: 704)
!4369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !65, line: 671, size: 32, elements: !4370)
!4370 = !{!4371, !4373}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4369, file: !65, line: 672, baseType: !4372, size: 32)
!4372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4369, file: !65, line: 673, baseType: !13, size: 32)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !365, file: !65, line: 675, baseType: !520, size: 32, offset: 736)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !365, file: !65, line: 676, baseType: !525, size: 64, offset: 768)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !365, file: !65, line: 677, baseType: !4279, size: 128, offset: 832)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !365, file: !65, line: 678, baseType: !4279, size: 128, offset: 960)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !365, file: !65, line: 679, baseType: !4279, size: 128, offset: 1088)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !365, file: !65, line: 680, baseType: !214, size: 32, offset: 1216)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !365, file: !65, line: 681, baseType: !254, size: 16, offset: 1248)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !365, file: !65, line: 682, baseType: !242, size: 8, offset: 1264)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !365, file: !65, line: 683, baseType: !242, size: 8, offset: 1272)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !365, file: !65, line: 684, baseType: !864, size: 64, offset: 1280)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !365, file: !65, line: 691, baseType: !334, size: 64, offset: 1344)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !365, file: !65, line: 692, baseType: !876, size: 320, offset: 1408)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !365, file: !65, line: 694, baseType: !334, size: 64, offset: 1728)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !365, file: !65, line: 695, baseType: !334, size: 64, offset: 1792)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !365, file: !65, line: 697, baseType: !560, size: 128, offset: 1856)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !365, file: !65, line: 698, baseType: !186, size: 128, offset: 1984)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !365, file: !65, line: 707, baseType: !186, size: 128, offset: 2112)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !365, file: !65, line: 708, baseType: !186, size: 128, offset: 2240)
!4392 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !65, line: 709, baseType: !4393, size: 128, offset: 2368)
!4393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !65, line: 709, size: 128, elements: !4394)
!4394 = !{!4395, !4396}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4393, file: !65, line: 710, baseType: !556, size: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4393, file: !65, line: 711, baseType: !1062, size: 128, align: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !365, file: !65, line: 713, baseType: !670, size: 64, offset: 2496)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !365, file: !65, line: 714, baseType: !670, size: 64, offset: 2560)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !365, file: !65, line: 715, baseType: !234, size: 32, offset: 2624)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !365, file: !65, line: 716, baseType: !234, size: 32, offset: 2656)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !365, file: !65, line: 717, baseType: !234, size: 32, offset: 2688)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !365, file: !65, line: 719, baseType: !234, size: 32, offset: 2720)
!4403 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !65, line: 721, baseType: !4404, size: 64, offset: 2752)
!4404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !65, line: 721, size: 64, elements: !4405)
!4405 = !{!4406, !4407}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4404, file: !65, line: 722, baseType: !1441, size: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4404, file: !65, line: 723, baseType: !587, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !365, file: !65, line: 725, baseType: !4409, size: 64, offset: 2816)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !65, line: 725, flags: DIFlagFwdDecl)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !365, file: !65, line: 726, baseType: !361, size: 1536, align: 64, offset: 2880)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !365, file: !65, line: 727, baseType: !186, size: 128, offset: 4416)
!4413 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !65, line: 728, baseType: !4414, size: 64, offset: 4544)
!4414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !65, line: 728, size: 64, elements: !4415)
!4415 = !{!4416, !4417, !4428, !4429}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4414, file: !65, line: 729, baseType: !1617, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4414, file: !65, line: 730, baseType: !4418, size: 64)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !4420, line: 14, size: 832, elements: !4421)
!4420 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!4421 = !{!4422, !4423, !4424, !4425, !4426, !4427}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4419, file: !4420, line: 15, baseType: !199, size: 512)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4419, file: !4420, line: 16, baseType: !181, size: 64, offset: 512)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4419, file: !4420, line: 17, baseType: !1441, size: 64, offset: 576)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4419, file: !4420, line: 18, baseType: !186, size: 128, offset: 640)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4419, file: !4420, line: 19, baseType: !520, size: 32, offset: 768)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4419, file: !4420, line: 20, baseType: !13, size: 32, offset: 800)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4414, file: !65, line: 731, baseType: !284, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4414, file: !65, line: 732, baseType: !13, size: 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !365, file: !65, line: 735, baseType: !434, size: 32, offset: 4608)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !365, file: !65, line: 738, baseType: !434, size: 32, offset: 4640)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !365, file: !65, line: 739, baseType: !4106, size: 64, offset: 4672)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !365, file: !65, line: 750, baseType: !178, size: 64, offset: 4736)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !361, file: !65, line: 474, baseType: !917, size: 128, offset: 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !361, file: !65, line: 475, baseType: !876, size: 320, offset: 192)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !361, file: !65, line: 476, baseType: !179, size: 32, offset: 512)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !361, file: !65, line: 477, baseType: !234, size: 32, offset: 544)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !361, file: !65, line: 482, baseType: !2407, size: 128, offset: 576)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !361, file: !65, line: 483, baseType: !334, size: 64, offset: 704)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !361, file: !65, line: 484, baseType: !334, size: 64, offset: 768)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !361, file: !65, line: 485, baseType: !4442, size: 64, offset: 832)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4444)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !65, line: 404, size: 1280, elements: !4445)
!4445 = !{!4446, !4450, !4520, !4524, !4528, !4534, !4538, !4542, !4546, !4550, !4554, !4558, !4559, !4563, !4567, !4571, !4576, !4580, !4586, !4587}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4444, file: !65, line: 405, baseType: !4447, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!115, !977, !599}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4444, file: !65, line: 406, baseType: !4451, size: 64, offset: 64)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!115, !1147, !4454}
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !36, line: 293, size: 1536, elements: !4456)
!4456 = !{!4457, !4487, !4501}
!4457 = !DIDerivedType(tag: DW_TAG_member, scope: !4455, file: !36, line: 295, baseType: !4458, size: 512)
!4458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4455, file: !36, line: 295, size: 512, elements: !4459)
!4459 = !{!4460, !4486}
!4460 = !DIDerivedType(tag: DW_TAG_member, scope: !4458, file: !36, line: 296, baseType: !4461, size: 448)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4458, file: !36, line: 296, size: 448, elements: !4462)
!4462 = !{!4463, !4464, !4473, !4474, !4475, !4484, !4485}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4461, file: !36, line: 298, baseType: !334, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, scope: !4461, file: !36, line: 299, baseType: !4465, size: 128, offset: 64)
!4465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4461, file: !36, line: 299, size: 128, elements: !4466)
!4466 = !{!4467, !4468}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4465, file: !36, line: 300, baseType: !186, size: 128)
!4468 = !DIDerivedType(tag: DW_TAG_member, scope: !4465, file: !36, line: 302, baseType: !4469, size: 128)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4465, file: !36, line: 302, size: 128, elements: !4470)
!4470 = !{!4471, !4472}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4469, file: !36, line: 303, baseType: !178, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4469, file: !36, line: 305, baseType: !13, size: 32, offset: 64)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4461, file: !36, line: 310, baseType: !360, size: 64, offset: 192)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4461, file: !36, line: 311, baseType: !334, size: 64, offset: 256)
!4475 = !DIDerivedType(tag: DW_TAG_member, scope: !4461, file: !36, line: 312, baseType: !4476, size: 64, offset: 320)
!4476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4461, file: !36, line: 312, size: 64, elements: !4477)
!4477 = !{!4478, !4479}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4476, file: !36, line: 313, baseType: !178, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4476, file: !36, line: 314, baseType: !4480, size: 64)
!4480 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !36, line: 257, baseType: !4481)
!4481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 255, size: 64, elements: !4482)
!4482 = !{!4483}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4481, file: !36, line: 256, baseType: !334, size: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4461, file: !36, line: 316, baseType: !234, size: 32, offset: 384)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4461, file: !36, line: 317, baseType: !234, size: 32, offset: 416)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4458, file: !36, line: 323, baseType: !978, size: 512, align: 128)
!4487 = !DIDerivedType(tag: DW_TAG_member, scope: !4455, file: !36, line: 325, baseType: !4488, size: 512, offset: 512)
!4488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4455, file: !36, line: 325, size: 512, elements: !4489)
!4489 = !{!4490, !4500}
!4490 = !DIDerivedType(tag: DW_TAG_member, scope: !4488, file: !36, line: 326, baseType: !4491, size: 320)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4488, file: !36, line: 326, size: 320, elements: !4492)
!4492 = !{!4493, !4494, !4495, !4496, !4497, !4498, !4499}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4491, file: !36, line: 327, baseType: !334, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4491, file: !36, line: 328, baseType: !334, size: 64, offset: 64)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4491, file: !36, line: 329, baseType: !334, size: 64, offset: 128)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4491, file: !36, line: 331, baseType: !234, size: 32, offset: 192)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4491, file: !36, line: 332, baseType: !234, size: 32, offset: 224)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4491, file: !36, line: 333, baseType: !234, size: 32, offset: 256)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4491, file: !36, line: 335, baseType: !13, size: 32, offset: 288)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4488, file: !36, line: 339, baseType: !978, size: 512, align: 128)
!4501 = !DIDerivedType(tag: DW_TAG_member, scope: !4455, file: !36, line: 341, baseType: !4502, size: 512, offset: 1024)
!4502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4455, file: !36, line: 341, size: 512, elements: !4503)
!4503 = !{!4504, !4513, !4519}
!4504 = !DIDerivedType(tag: DW_TAG_member, scope: !4502, file: !36, line: 342, baseType: !4505, size: 384)
!4505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4502, file: !36, line: 342, size: 384, elements: !4506)
!4506 = !{!4507, !4508, !4509, !4510, !4511, !4512}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4505, file: !36, line: 343, baseType: !334, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4505, file: !36, line: 344, baseType: !334, size: 64, offset: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4505, file: !36, line: 346, baseType: !178, size: 64, offset: 128)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4505, file: !36, line: 347, baseType: !178, size: 64, offset: 192)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4505, file: !36, line: 348, baseType: !178, size: 64, offset: 256)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4505, file: !36, line: 349, baseType: !178, size: 64, offset: 320)
!4513 = !DIDerivedType(tag: DW_TAG_member, scope: !4502, file: !36, line: 352, baseType: !4514, size: 256)
!4514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4502, file: !36, line: 352, size: 256, elements: !4515)
!4515 = !{!4516, !4517, !4518}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4514, file: !36, line: 353, baseType: !334, size: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4514, file: !36, line: 354, baseType: !334, size: 64, offset: 64)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4514, file: !36, line: 356, baseType: !186, size: 128, offset: 128)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4502, file: !36, line: 359, baseType: !978, size: 512, align: 128)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4444, file: !65, line: 409, baseType: !4521, size: 64, offset: 128)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!115, !360, !599}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4444, file: !65, line: 412, baseType: !4525, size: 64, offset: 192)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!1058, !360, !4454}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4444, file: !65, line: 414, baseType: !4529, size: 64, offset: 256)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{null, !4532}
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !65, line: 310, flags: DIFlagFwdDecl)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4444, file: !65, line: 416, baseType: !4535, size: 64, offset: 320)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!115, !1147, !360, !525, !13, !3855, !1632}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4444, file: !65, line: 419, baseType: !4539, size: 64, offset: 384)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!115, !1147, !360, !525, !13, !13, !977, !178}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4444, file: !65, line: 424, baseType: !4543, size: 64, offset: 448)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!903, !360, !903}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4444, file: !65, line: 425, baseType: !4547, size: 64, offset: 512)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{null, !4454, !331, !331}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4444, file: !65, line: 426, baseType: !4551, size: 64, offset: 576)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!1058, !4454, !179}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4444, file: !65, line: 427, baseType: !4555, size: 64, offset: 640)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{null, !4454}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4444, file: !65, line: 428, baseType: !1460, size: 64, offset: 704)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4444, file: !65, line: 433, baseType: !4560, size: 64, offset: 768)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!115, !360, !4454, !4454, !51}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4444, file: !65, line: 435, baseType: !4564, size: 64, offset: 832)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!115, !4454}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4444, file: !65, line: 436, baseType: !4568, size: 64, offset: 896)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!1058, !4454, !331, !331}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4444, file: !65, line: 438, baseType: !4572, size: 64, offset: 960)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{null, !4454, !4575, !4575}
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4444, file: !65, line: 439, baseType: !4577, size: 64, offset: 1024)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!115, !360, !977}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4444, file: !65, line: 442, baseType: !4581, size: 64, offset: 1088)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!115, !4584, !1147, !2106}
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !65, line: 66, flags: DIFlagFwdDecl)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4444, file: !65, line: 444, baseType: !1624, size: 64, offset: 1152)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4444, file: !65, line: 445, baseType: !4588, size: 64, offset: 1216)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!115, !1463, !1485}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !361, file: !65, line: 486, baseType: !334, size: 64, offset: 896)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !361, file: !65, line: 487, baseType: !876, size: 320, offset: 960)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !361, file: !65, line: 488, baseType: !1667, size: 32, offset: 1280)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !361, file: !65, line: 489, baseType: !214, size: 32, offset: 1312)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !361, file: !65, line: 490, baseType: !186, size: 128, offset: 1344)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !361, file: !65, line: 491, baseType: !178, size: 64, offset: 1472)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !351, file: !310, line: 180, baseType: !4598, size: 64, offset: 320)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!316, !1147, !207, !350, !284, !525, !331}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !351, file: !310, line: 182, baseType: !4598, size: 64, offset: 384)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !351, file: !310, line: 184, baseType: !4603, size: 64, offset: 448)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!115, !1147, !207, !350, !1107}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !339, file: !310, line: 90, baseType: !4607, size: 64, offset: 192)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !339, file: !310, line: 91, baseType: !4609, size: 64, offset: 256)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !300, file: !200, line: 120, baseType: !4611, size: 64, offset: 192)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!2648, !267}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !300, file: !200, line: 121, baseType: !4615, size: 64, offset: 256)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!1758, !267}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !300, file: !200, line: 122, baseType: !4619, size: 64, offset: 320)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{null, !267, !2168, !2169}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !199, file: !200, line: 70, baseType: !4623, size: 64, offset: 384)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !540, line: 190, size: 1152, elements: !4625)
!4625 = !{!4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4717, !4718, !4719, !4720, !4721, !4724}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4624, file: !540, line: 191, baseType: !234, size: 32)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4624, file: !540, line: 192, baseType: !234, size: 32, offset: 32)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4624, file: !540, line: 202, baseType: !4623, size: 64, offset: 64)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4624, file: !540, line: 203, baseType: !203, size: 64, offset: 128)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4624, file: !540, line: 205, baseType: !1272, size: 192, align: 64, offset: 192)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4624, file: !540, line: 207, baseType: !1758, size: 64, offset: 384)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4624, file: !540, line: 208, baseType: !13, size: 32, offset: 448)
!4633 = !DIDerivedType(tag: DW_TAG_member, scope: !4624, file: !540, line: 209, baseType: !4634, size: 256, offset: 512)
!4634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4624, file: !540, line: 209, size: 256, elements: !4635)
!4635 = !{!4636, !4645, !4649}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4634, file: !540, line: 210, baseType: !4637, size: 256)
!4637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !540, line: 153, size: 256, elements: !4638)
!4638 = !{!4639, !4640, !4641, !4644}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4637, file: !540, line: 154, baseType: !334, size: 64)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4637, file: !540, line: 156, baseType: !2410, size: 64, offset: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4637, file: !540, line: 162, baseType: !4642, size: 64, offset: 128)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !540, line: 162, flags: DIFlagFwdDecl)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4637, file: !540, line: 167, baseType: !334, size: 64, offset: 192)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4634, file: !540, line: 211, baseType: !4646, size: 64)
!4646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !540, line: 170, size: 64, elements: !4647)
!4647 = !{!4648}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4646, file: !540, line: 171, baseType: !4623, size: 64)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4634, file: !540, line: 212, baseType: !4650, size: 256)
!4650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !540, line: 174, size: 256, elements: !4651)
!4651 = !{!4652, !4712, !4715, !4716}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4650, file: !540, line: 175, baseType: !4653, size: 64)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4655)
!4655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !540, line: 271, size: 768, elements: !4656)
!4656 = !{!4657, !4677, !4681, !4685, !4689, !4693, !4697, !4701, !4702, !4703, !4704, !4708}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4655, file: !540, line: 276, baseType: !4658, size: 64)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!115, !4661}
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !540, line: 251, size: 1216, elements: !4663)
!4663 = !{!4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4662, file: !540, line: 253, baseType: !4623, size: 64)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4662, file: !540, line: 254, baseType: !1147, size: 64, offset: 64)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4662, file: !540, line: 255, baseType: !637, size: 64, offset: 128)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4662, file: !540, line: 256, baseType: !178, size: 64, offset: 192)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4662, file: !540, line: 259, baseType: !664, size: 256, offset: 256)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4662, file: !540, line: 260, baseType: !664, size: 256, offset: 512)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4662, file: !540, line: 261, baseType: !115, size: 32, offset: 768)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4662, file: !540, line: 262, baseType: !186, size: 128, offset: 832)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4662, file: !540, line: 263, baseType: !284, size: 64, offset: 960)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4662, file: !540, line: 265, baseType: !331, size: 64, offset: 1024)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4662, file: !540, line: 266, baseType: !1058, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4662, file: !540, line: 267, baseType: !1058, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4662, file: !540, line: 268, baseType: !1840, size: 64, offset: 1152)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4655, file: !540, line: 277, baseType: !4678, size: 64, offset: 64)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{null, !4661}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4655, file: !540, line: 290, baseType: !4682, size: 64, offset: 128)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!115, !637, !178}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4655, file: !540, line: 292, baseType: !4686, size: 64, offset: 192)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{!178, !637, !1454}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4655, file: !540, line: 293, baseType: !4690, size: 64, offset: 256)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{!178, !637, !178, !1454}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4655, file: !540, line: 294, baseType: !4694, size: 64, offset: 320)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{null, !637, !178}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4655, file: !540, line: 296, baseType: !4698, size: 64, offset: 384)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!316, !4661, !284, !331, !525}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4655, file: !540, line: 306, baseType: !331, size: 64, offset: 448)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4655, file: !540, line: 313, baseType: !1058, size: 8, offset: 512)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4655, file: !540, line: 314, baseType: !4698, size: 64, offset: 576)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4655, file: !540, line: 317, baseType: !4705, size: 64, offset: 640)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{!1569, !4661, !1571}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4655, file: !540, line: 320, baseType: !4709, size: 64, offset: 704)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{!115, !4661, !1107}
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4650, file: !540, line: 176, baseType: !4713, size: 64, offset: 64)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !540, line: 35, flags: DIFlagFwdDecl)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4650, file: !540, line: 177, baseType: !525, size: 64, offset: 128)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4650, file: !540, line: 178, baseType: !4623, size: 64, offset: 192)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4624, file: !540, line: 215, baseType: !178, size: 64, offset: 768)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4624, file: !540, line: 221, baseType: !437, size: 64, offset: 832)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4624, file: !540, line: 223, baseType: !254, size: 16, offset: 896)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4624, file: !540, line: 224, baseType: !326, size: 16, offset: 912)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4624, file: !540, line: 225, baseType: !4722, size: 64, offset: 960)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !540, line: 36, flags: DIFlagFwdDecl)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4624, file: !540, line: 227, baseType: !1062, size: 128, align: 64, offset: 1024)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !199, file: !200, line: 71, baseType: !4726, size: 32, offset: 448)
!4726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4727, line: 19, size: 32, elements: !4728)
!4727 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4728 = !{!4729}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4726, file: !4727, line: 20, baseType: !1197, size: 32)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !199, file: !200, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !199, file: !200, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !199, file: !200, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !199, file: !200, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !199, file: !200, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !196, file: !12, line: 47, baseType: !181, size: 64, offset: 512)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !196, file: !12, line: 48, baseType: !207, size: 64, offset: 576)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !196, file: !12, line: 49, baseType: !4738, size: 64, offset: 640)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !196, file: !12, line: 50, baseType: !3268, size: 64, offset: 704)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !182, file: !12, line: 418, baseType: !4742, size: 64, offset: 1408)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !4744)
!4744 = !{!4745, !4746, !4751, !4755, !4759, !4763}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4743, file: !12, line: 54, baseType: !322, size: 128)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4743, file: !12, line: 55, baseType: !4747, size: 64, offset: 128)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = !DISubroutineType(types: !4749)
!4749 = !{!316, !4742, !4750, !284}
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4743, file: !12, line: 57, baseType: !4752, size: 64, offset: 192)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!316, !4742, !4750, !203, !331}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4743, file: !12, line: 59, baseType: !4756, size: 64, offset: 256)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DISubroutineType(types: !4758)
!4758 = !{null, !181, !203}
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4743, file: !12, line: 60, baseType: !4760, size: 64, offset: 320)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{!115, !181}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4743, file: !12, line: 61, baseType: !4764, size: 64, offset: 384)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{null, !181}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !182, file: !12, line: 419, baseType: !203, size: 64, offset: 1472)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !182, file: !12, line: 420, baseType: !203, size: 64, offset: 1536)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !182, file: !12, line: 421, baseType: !207, size: 64, offset: 1600)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !182, file: !12, line: 424, baseType: !4771, size: 64, offset: 1664)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4773)
!4773 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !182, file: !12, line: 425, baseType: !4775, size: 64, offset: 1728)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1265)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !182, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !182, file: !12, line: 435, baseType: !664, size: 256, offset: 1856)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !182, file: !12, line: 437, baseType: !4780, size: 64, offset: 2112)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4782, line: 69, size: 320, elements: !4783)
!4782 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!4783 = !{!4784, !4785, !4786, !4803, !4805, !4809, !4810}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4781, file: !4782, line: 70, baseType: !203, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4781, file: !4782, line: 71, baseType: !181, size: 64, offset: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4781, file: !4782, line: 72, baseType: !4787, size: 64, offset: 128)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4789)
!4789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4782, line: 47, size: 256, elements: !4790)
!4790 = !{!4791, !4792, !4798, !4802}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4789, file: !4782, line: 49, baseType: !13, size: 32)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4789, file: !4782, line: 51, baseType: !4793, size: 64, offset: 64)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{!115, !203, !4796}
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4781)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4789, file: !4782, line: 53, baseType: !4799, size: 64, offset: 128)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!115, !284, !4796}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4789, file: !4782, line: 55, baseType: !2672, size: 64, offset: 192)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4781, file: !4782, line: 73, baseType: !4804, size: 16, offset: 192)
!4804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4781, file: !4782, line: 74, baseType: !4806, size: 8, offset: 208)
!4806 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !243, line: 16, baseType: !4807)
!4807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !245, line: 20, baseType: !4808)
!4808 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4781, file: !4782, line: 75, baseType: !242, size: 8, offset: 216)
!4810 = !DIDerivedType(tag: DW_TAG_member, scope: !4781, file: !4782, line: 76, baseType: !4811, size: 64, offset: 256)
!4811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4781, file: !4782, line: 76, size: 64, elements: !4812)
!4812 = !{!4813, !4814, !4821}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4811, file: !4782, line: 77, baseType: !178, size: 64)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4811, file: !4782, line: 78, baseType: !4815, size: 64)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4817)
!4817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4782, line: 86, size: 128, elements: !4818)
!4818 = !{!4819, !4820}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4817, file: !4782, line: 87, baseType: !13, size: 32)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4817, file: !4782, line: 88, baseType: !284, size: 64, offset: 64)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4811, file: !4782, line: 79, baseType: !4822, size: 64)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4824)
!4824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4782, line: 92, size: 256, elements: !4825)
!4825 = !{!4826, !4827, !4828, !4829, !4830}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4824, file: !4782, line: 94, baseType: !13, size: 32)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4824, file: !4782, line: 95, baseType: !13, size: 32, offset: 32)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4824, file: !4782, line: 96, baseType: !2956, size: 64, offset: 64)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4824, file: !4782, line: 97, baseType: !4787, size: 64, offset: 128)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4824, file: !4782, line: 98, baseType: !178, size: 64, offset: 192)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !182, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !182, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !182, file: !12, line: 442, baseType: !4771, size: 64, offset: 2240)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !182, file: !12, line: 443, baseType: !4775, size: 64, offset: 2304)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !182, file: !12, line: 444, baseType: !1058, size: 8, offset: 2368)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !182, file: !12, line: 451, baseType: !1058, size: 8, offset: 2376)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !182, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !182, file: !12, line: 455, baseType: !4839, size: 64, offset: 2432)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4841, line: 23, size: 96, elements: !4842)
!4841 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4842 = !{!4843, !4844, !4845}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4840, file: !4841, line: 24, baseType: !115, size: 32)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4840, file: !4841, line: 24, baseType: !115, size: 32, offset: 32)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4840, file: !4841, line: 24, baseType: !115, size: 32, offset: 64)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !182, file: !12, line: 458, baseType: !4847, size: 64, offset: 2496)
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = !DISubroutineType(types: !4849)
!4849 = !{!115}
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !182, file: !12, line: 460, baseType: !4851, size: 4032, align: 512, offset: 2560)
!4851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4852, size: 4032, elements: !4866)
!4852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !4853)
!4853 = !{!4854, !4855, !4856}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4852, file: !12, line: 363, baseType: !178, size: 64)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4852, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4852, file: !12, line: 367, baseType: !4857, size: 448, offset: 128)
!4857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !4858)
!4858 = !{!4859, !4860}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4857, file: !12, line: 320, baseType: !181, size: 64)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4857, file: !12, line: 321, baseType: !4861, size: 384, offset: 64)
!4861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4862, line: 40, size: 384, elements: !4863)
!4862 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4863 = !{!4864}
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4861, file: !4862, line: 41, baseType: !4865, size: 384, align: 64)
!4865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1272, size: 384, align: 64, elements: !3393)
!4866 = !{!4867}
!4867 = !DISubrange(count: 7)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !182, file: !12, line: 463, baseType: !4869, size: 192, offset: 6592)
!4869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4870, line: 8, size: 192, elements: !4871)
!4870 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4871 = !{!4872, !4873, !4874}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4869, file: !4870, line: 10, baseType: !13, size: 32)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4869, file: !4870, line: 11, baseType: !631, size: 64, offset: 64)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4869, file: !4870, line: 12, baseType: !4875, size: 64, offset: 128)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4877, line: 59, size: 48, elements: !4878)
!4877 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4878 = !{!4879, !4880, !4881, !4882, !4883, !4884}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4876, file: !4877, line: 60, baseType: !1775, size: 16)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4876, file: !4877, line: 61, baseType: !1775, size: 16, offset: 16)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4876, file: !4877, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4876, file: !4877, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4876, file: !4877, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4876, file: !4877, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !182, file: !12, line: 465, baseType: !334, size: 64, offset: 6784)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !182, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !182, file: !12, line: 470, baseType: !186, size: 128, offset: 6912)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !182, file: !12, line: 471, baseType: !4889, size: 64, offset: 7040)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4891, line: 33, size: 96, elements: !4892)
!4891 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4892 = !{!4893, !4894, !4895, !4896}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4890, file: !4891, line: 37, baseType: !115, size: 32)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4890, file: !4891, line: 43, baseType: !115, size: 32, offset: 32)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4890, file: !4891, line: 45, baseType: !254, size: 16, offset: 64)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4890, file: !4891, line: 47, baseType: !254, size: 16, offset: 80)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !182, file: !12, line: 476, baseType: !4898, size: 64, offset: 7104)
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !4900)
!4900 = !{!4901, !4917, !4918, !4919}
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4899, file: !12, line: 379, baseType: !4902, size: 64)
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4904, line: 204, baseType: !4905)
!4904 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4904, line: 197, size: 192, elements: !4906)
!4906 = !{!4907, !4909, !4910, !4911, !4913, !4915}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4905, file: !4904, line: 198, baseType: !4908, size: 32)
!4908 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4904, line: 21, baseType: !434)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4905, file: !4904, line: 199, baseType: !246, size: 8, offset: 32)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4905, file: !4904, line: 200, baseType: !246, size: 8, offset: 40)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4905, file: !4904, line: 201, baseType: !4912, size: 16, offset: 48)
!4912 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4904, line: 17, baseType: !253)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4905, file: !4904, line: 202, baseType: !4914, size: 64, offset: 64)
!4914 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4904, line: 16, baseType: !438)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4905, file: !4904, line: 203, baseType: !4916, size: 64, offset: 128)
!4916 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4904, line: 22, baseType: !438)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4899, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4899, file: !12, line: 381, baseType: !284, size: 64, offset: 128)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4899, file: !12, line: 382, baseType: !284, size: 64, offset: 192)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !182, file: !12, line: 477, baseType: !4899, size: 256, offset: 7168)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !182, file: !12, line: 480, baseType: !4922, size: 64, offset: 7424)
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!4923 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !182, file: !12, line: 483, baseType: !4925, size: 64, offset: 7488)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !182, file: !12, line: 488, baseType: !284, size: 64, offset: 7552)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !182, file: !12, line: 492, baseType: !178, size: 64, offset: 7616)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !182, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !182, file: !12, line: 495, baseType: !178, size: 64, offset: 7744)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !182, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !182, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !182, file: !12, line: 500, baseType: !4934, size: 64, offset: 7872)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4936, line: 45, baseType: !4937)
!4936 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !182, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !182, file: !12, line: 504, baseType: !4940, size: 64, offset: 8000)
!4940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4941, size: 64)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4943, line: 96, size: 192, elements: !4944)
!4943 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4944 = !{!4945, !4946, !4989, !4990}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4942, file: !4943, line: 97, baseType: !13, size: 32)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4942, file: !4943, line: 98, baseType: !4947, size: 64, offset: 64)
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4943, line: 24, size: 3072, elements: !4949)
!4949 = !{!4950, !4952, !4953, !4954, !4955, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4986, !4987, !4988}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4948, file: !4943, line: 26, baseType: !4951, size: 128)
!4951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 128, elements: !3393)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4948, file: !4943, line: 27, baseType: !4951, size: 128, offset: 128)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4948, file: !4943, line: 28, baseType: !115, size: 32, offset: 256)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4948, file: !4943, line: 31, baseType: !214, size: 32, align: 512, offset: 512)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4948, file: !4943, line: 32, baseType: !4956, size: 960, offset: 576)
!4956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4957, line: 206, size: 960, elements: !4958)
!4957 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4958 = !{!4959, !4960, !4963, !4965, !4966, !4968}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4956, file: !4957, line: 207, baseType: !1065, size: 64)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4956, file: !4957, line: 208, baseType: !4961, size: 256, offset: 64)
!4961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4962, size: 256, elements: !5)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4956, file: !4957, line: 209, baseType: !4964, size: 256, offset: 320)
!4964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 256, elements: !5)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4956, file: !4957, line: 213, baseType: !320, size: 64, offset: 576)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4956, file: !4957, line: 215, baseType: !4967, size: 256, offset: 640)
!4967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 256, elements: !5)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4956, file: !4957, line: 216, baseType: !242, size: 8, offset: 896)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4948, file: !4943, line: 33, baseType: !334, size: 64, offset: 1536)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4948, file: !4943, line: 34, baseType: !334, size: 64, offset: 1600)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4948, file: !4943, line: 35, baseType: !1058, size: 8, offset: 1664)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4948, file: !4943, line: 36, baseType: !2317, size: 320, offset: 1728)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4948, file: !4943, line: 37, baseType: !1797, size: 256, offset: 2048)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4948, file: !4943, line: 38, baseType: !1062, size: 128, align: 64, offset: 2304)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4948, file: !4943, line: 39, baseType: !4976, size: 64, offset: 2432)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4943, line: 49, size: 768, elements: !4978)
!4978 = !{!4979, !4980, !4981, !4982, !4983, !4984, !4985}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4977, file: !4943, line: 50, baseType: !214, size: 32)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4977, file: !4943, line: 51, baseType: !4964, size: 256, offset: 64)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4977, file: !4943, line: 53, baseType: !4964, size: 256, offset: 320)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4977, file: !4943, line: 54, baseType: !334, size: 64, offset: 576)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4977, file: !4943, line: 55, baseType: !4976, size: 64, offset: 640)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4977, file: !4943, line: 56, baseType: !115, size: 32, offset: 704)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4977, file: !4943, line: 57, baseType: !115, size: 32, offset: 736)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4948, file: !4943, line: 40, baseType: !334, size: 64, offset: 2496)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4948, file: !4943, line: 42, baseType: !115, size: 32, offset: 2560)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4948, file: !4943, line: 43, baseType: !4941, size: 64, offset: 2624)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4942, file: !4943, line: 99, baseType: !2821, offset: 128)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4942, file: !4943, line: 100, baseType: !4991, size: 64, offset: 128)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4943, line: 63, size: 3008, elements: !4993)
!4993 = !{!4994, !4995, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4992, file: !4943, line: 64, baseType: !4976, size: 64)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4992, file: !4943, line: 65, baseType: !4996, size: 192, offset: 64)
!4996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4976, size: 192, elements: !285)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4992, file: !4943, line: 67, baseType: !115, size: 32, offset: 256)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4992, file: !4943, line: 68, baseType: !664, size: 256, offset: 320)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4992, file: !4943, line: 69, baseType: !214, size: 32, offset: 576)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4992, file: !4943, line: 70, baseType: !664, size: 256, offset: 640)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4992, file: !4943, line: 71, baseType: !334, size: 64, offset: 896)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4992, file: !4943, line: 72, baseType: !334, size: 64, offset: 960)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4992, file: !4943, line: 73, baseType: !334, size: 64, offset: 1024)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4992, file: !4943, line: 74, baseType: !334, size: 64, offset: 1088)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4992, file: !4943, line: 75, baseType: !334, size: 64, offset: 1152)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4992, file: !4943, line: 76, baseType: !334, size: 64, offset: 1216)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4992, file: !4943, line: 77, baseType: !334, size: 64, offset: 1280)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4992, file: !4943, line: 78, baseType: !334, size: 64, offset: 1344)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4992, file: !4943, line: 79, baseType: !1058, size: 8, offset: 1408)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4992, file: !4943, line: 80, baseType: !334, size: 64, offset: 1472)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4992, file: !4943, line: 81, baseType: !664, size: 256, offset: 1536)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4992, file: !4943, line: 82, baseType: !1072, size: 256, offset: 1792)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4992, file: !4943, line: 84, baseType: !234, size: 32, offset: 2048)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4992, file: !4943, line: 87, baseType: !334, size: 64, offset: 2112)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4992, file: !4943, line: 88, baseType: !334, size: 64, offset: 2176)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4992, file: !4943, line: 89, baseType: !2770, size: 704, offset: 2240)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4992, file: !4943, line: 90, baseType: !4941, size: 64, offset: 2944)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !182, file: !12, line: 515, baseType: !5019, size: 64, offset: 8064)
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5020, size: 64)
!5020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !5021, line: 117, size: 128, elements: !5022)
!5021 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!5022 = !{!5023, !5024, !5025}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5020, file: !5021, line: 118, baseType: !1265, size: 32)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !5020, file: !5021, line: 119, baseType: !1265, size: 32, offset: 32)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5020, file: !5021, line: 120, baseType: !320, size: 64, offset: 64)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !182, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !182, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !182, file: !12, line: 520, baseType: !2564, size: 64, offset: 8192)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !182, file: !12, line: 523, baseType: !5030, size: 64, offset: 8256)
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !182, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !182, file: !12, line: 525, baseType: !5035, size: 64, offset: 8384)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5037, size: 64)
!5037 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !182, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !182, file: !12, line: 533, baseType: !178, size: 64, offset: 8512)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !182, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !182, file: !12, line: 535, baseType: !5042, size: 64, offset: 8640)
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !182, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !182, file: !12, line: 539, baseType: !115, size: 32, offset: 8736)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !182, file: !12, line: 540, baseType: !5046, size: 64, offset: 8768)
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !5048, line: 32, size: 64, elements: !5049)
!5048 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!5049 = !{!5050, !5051}
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5047, file: !5048, line: 33, baseType: !1265, size: 32)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5047, file: !5048, line: 34, baseType: !1265, size: 32, offset: 32)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !182, file: !12, line: 563, baseType: !186, size: 128, offset: 8832)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !182, file: !12, line: 565, baseType: !186, size: 128, offset: 8960)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !182, file: !12, line: 568, baseType: !5055, size: 64, offset: 9088)
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !182, file: !12, line: 570, baseType: !234, size: 32, offset: 9152)
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_device", file: !2, line: 23, size: 6912, elements: !5059)
!5059 = !{!5060, !5061, !5062, !5063, !5064, !5065, !5066}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !5058, file: !2, line: 24, baseType: !2108, size: 64)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5058, file: !2, line: 25, baseType: !2143, size: 5824, offset: 64)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !5058, file: !2, line: 26, baseType: !4419, size: 832, offset: 5888)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "max_queue", scope: !5058, file: !2, line: 27, baseType: !115, size: 32, offset: 6720)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5058, file: !2, line: 28, baseType: !13, size: 32, offset: 6752)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_size", scope: !5058, file: !2, line: 29, baseType: !13, size: 32, offset: 6784)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "sg_io_fn", scope: !5058, file: !2, line: 30, baseType: !5067, size: 64, offset: 6848)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = !DIDerivedType(tag: DW_TAG_typedef, name: "bsg_sg_io_fn", file: !5069, line: 11, baseType: !5070)
!5069 = !DIFile(filename: "./include/linux/bsg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1a8bb8057652c884b6761c0a258e865c")
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!115, !2108, !5072, !1058, !13}
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_io_v4", file: !5074, line: 22, size: 1280, elements: !5075)
!5074 = !DIFile(filename: "./include/uapi/linux/bsg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1a26eac0c82409d22aee72688f385a0")
!5075 = !{!5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "guard", scope: !5073, file: !5074, line: 23, baseType: !1266, size: 32)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !5073, file: !5074, line: 24, baseType: !434, size: 32, offset: 32)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "subprotocol", scope: !5073, file: !5074, line: 25, baseType: !434, size: 32, offset: 64)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "request_len", scope: !5073, file: !5074, line: 28, baseType: !434, size: 32, offset: 96)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !5073, file: !5074, line: 29, baseType: !438, size: 64, offset: 128)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "request_tag", scope: !5073, file: !5074, line: 30, baseType: !438, size: 64, offset: 192)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "request_attr", scope: !5073, file: !5074, line: 31, baseType: !434, size: 32, offset: 256)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "request_priority", scope: !5073, file: !5074, line: 32, baseType: !434, size: 32, offset: 288)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "request_extra", scope: !5073, file: !5074, line: 33, baseType: !434, size: 32, offset: 320)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "max_response_len", scope: !5073, file: !5074, line: 34, baseType: !434, size: 32, offset: 352)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !5073, file: !5074, line: 35, baseType: !438, size: 64, offset: 384)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "dout_iovec_count", scope: !5073, file: !5074, line: 38, baseType: !434, size: 32, offset: 448)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xfer_len", scope: !5073, file: !5074, line: 40, baseType: !434, size: 32, offset: 480)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "din_iovec_count", scope: !5073, file: !5074, line: 41, baseType: !434, size: 32, offset: 512)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "din_xfer_len", scope: !5073, file: !5074, line: 42, baseType: !434, size: 32, offset: 544)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xferp", scope: !5073, file: !5074, line: 43, baseType: !438, size: 64, offset: 576)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "din_xferp", scope: !5073, file: !5074, line: 44, baseType: !438, size: 64, offset: 640)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5073, file: !5074, line: 46, baseType: !434, size: 32, offset: 704)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5073, file: !5074, line: 47, baseType: !434, size: 32, offset: 736)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "usr_ptr", scope: !5073, file: !5074, line: 48, baseType: !438, size: 64, offset: 768)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "spare_in", scope: !5073, file: !5074, line: 49, baseType: !434, size: 32, offset: 832)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "driver_status", scope: !5073, file: !5074, line: 51, baseType: !434, size: 32, offset: 864)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "transport_status", scope: !5073, file: !5074, line: 52, baseType: !434, size: 32, offset: 896)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "device_status", scope: !5073, file: !5074, line: 53, baseType: !434, size: 32, offset: 928)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "retry_delay", scope: !5073, file: !5074, line: 54, baseType: !434, size: 32, offset: 960)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5073, file: !5074, line: 55, baseType: !434, size: 32, offset: 992)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !5073, file: !5074, line: 56, baseType: !434, size: 32, offset: 1024)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "response_len", scope: !5073, file: !5074, line: 57, baseType: !434, size: 32, offset: 1056)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "din_resid", scope: !5073, file: !5074, line: 58, baseType: !1266, size: 32, offset: 1088)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "dout_resid", scope: !5073, file: !5074, line: 59, baseType: !1266, size: 32, offset: 1120)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "generated_tag", scope: !5073, file: !5074, line: 60, baseType: !438, size: 64, offset: 1152)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "spare_out", scope: !5073, file: !5074, line: 61, baseType: !434, size: 32, offset: 1216)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5073, file: !5074, line: 63, baseType: !434, size: 32, offset: 1248)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5111)
!5111 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !115)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!5114 = !{!0, !7, !5115, !5120, !5123, !5125, !5130, !5135, !5140, !5143, !5145, !5147, !5152, !5158, !5160, !5228, !5233, !5238, !5244, !5246, !5249}
!5115 = !DIGlobalVariableExpression(var: !5116, expr: !DIExpression())
!5116 = distinct !DIGlobalVariable(scope: null, file: !2, line: 206, type: !5117, isLocal: true, isDefinition: true)
!5117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !5118)
!5118 = !{!5119}
!5119 = !DISubrange(count: 27)
!5120 = !DIGlobalVariableExpression(var: !5121, expr: !DIExpression())
!5121 = distinct !DIGlobalVariable(scope: null, file: !2, line: 214, type: !5122, isLocal: true, isDefinition: true)
!5122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !285)
!5123 = !DIGlobalVariableExpression(var: !5124, expr: !DIExpression())
!5124 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_bsg_register_queue344", scope: !9, file: !2, line: 238, type: !178, isLocal: true, isDefinition: true)
!5125 = !DIGlobalVariableExpression(var: !5126, expr: !DIExpression())
!5126 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author345", scope: !9, file: !2, line: 273, type: !5127, isLocal: true, isDefinition: true, align: 8)
!5127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 176, elements: !5128)
!5128 = !{!5129}
!5129 = !DISubrange(count: 22)
!5130 = !DIGlobalVariableExpression(var: !5131, expr: !DIExpression())
!5131 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description346", scope: !9, file: !2, line: 274, type: !5132, isLocal: true, isDefinition: true, align: 8)
!5132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 432, elements: !5133)
!5133 = !{!5134}
!5134 = !DISubrange(count: 54)
!5135 = !DIGlobalVariableExpression(var: !5136, expr: !DIExpression())
!5136 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file347", scope: !9, file: !2, line: 275, type: !5137, isLocal: true, isDefinition: true, align: 8)
!5137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 152, elements: !5138)
!5138 = !{!5139}
!5139 = !DISubrange(count: 19)
!5140 = !DIGlobalVariableExpression(var: !5141, expr: !DIExpression())
!5141 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license348", scope: !9, file: !2, line: 275, type: !5142, isLocal: true, isDefinition: true, align: 8)
!5142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 128, elements: !3311)
!5143 = !DIGlobalVariableExpression(var: !5144, expr: !DIExpression())
!5144 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_bsg__349_277_bsg_init6350", scope: !9, file: !2, line: 277, type: !178, isLocal: true, isDefinition: true)
!5145 = !DIGlobalVariableExpression(var: !5146, expr: !DIExpression())
!5146 = distinct !DIGlobalVariable(name: "bsg_major", scope: !9, file: !2, line: 43, type: !115, isLocal: true, isDefinition: true)
!5147 = !DIGlobalVariableExpression(var: !5148, expr: !DIExpression())
!5148 = distinct !DIGlobalVariable(scope: null, file: !168, line: 480, type: !5149, isLocal: true, isDefinition: true)
!5149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5150)
!5150 = !{!5151}
!5151 = !DISubrange(count: 21)
!5152 = !DIGlobalVariableExpression(var: !5153, expr: !DIExpression())
!5153 = distinct !DIGlobalVariable(name: "bsg_minor_ida", scope: !9, file: !2, line: 41, type: !5154, isLocal: true, isDefinition: true)
!5154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !5155, line: 246, size: 128, elements: !5156)
!5155 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!5156 = !{!5157}
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5154, file: !5155, line: 247, baseType: !917, size: 128)
!5158 = !DIGlobalVariableExpression(var: !5159, expr: !DIExpression())
!5159 = distinct !DIGlobalVariable(name: "bsg_fops", scope: !9, file: !2, line: 161, type: !1442, isLocal: true, isDefinition: true)
!5160 = !DIGlobalVariableExpression(var: !5161, expr: !DIExpression())
!5161 = distinct !DIGlobalVariable(name: "_rs", scope: !5162, file: !2, line: 153, type: !1399, isLocal: true, isDefinition: true)
!5162 = distinct !DISubprogram(name: "bsg_ioctl", scope: !2, file: !2, line: 104, type: !1575, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5163)
!5163 = !{!5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5176, !5177, !5178, !5179, !5180, !5183, !5184, !5185, !5186, !5187, !5190, !5191, !5192, !5193, !5194, !5198, !5199, !5201, !5204, !5205, !5206, !5207, !5209, !5210, !5211, !5215, !5216, !5218, !5220, !5221, !5224, !5225, !5226, !5227}
!5164 = !DILocalVariable(name: "file", arg: 1, scope: !5162, file: !2, line: 104, type: !1147)
!5165 = !DILocalVariable(name: "cmd", arg: 2, scope: !5162, file: !2, line: 104, type: !13)
!5166 = !DILocalVariable(name: "arg", arg: 3, scope: !5162, file: !2, line: 104, type: !334)
!5167 = !DILocalVariable(name: "bd", scope: !5162, file: !2, line: 106, type: !5057)
!5168 = !DILocalVariable(name: "q", scope: !5162, file: !2, line: 107, type: !2108)
!5169 = !DILocalVariable(name: "uarg", scope: !5162, file: !2, line: 108, type: !178)
!5170 = !DILocalVariable(name: "intp", scope: !5162, file: !2, line: 109, type: !631)
!5171 = !DILocalVariable(name: "val", scope: !5162, file: !2, line: 110, type: !115)
!5172 = !DILocalVariable(name: "__ret_pu", scope: !5173, file: !2, line: 125, type: !115)
!5173 = distinct !DILexicalBlock(scope: !5174, file: !2, line: 125, column: 10)
!5174 = distinct !DILexicalBlock(scope: !5175, file: !2, line: 125, column: 10)
!5175 = distinct !DILexicalBlock(scope: !5162, file: !2, line: 112, column: 15)
!5176 = !DILocalVariable(name: "__ptr_pu", scope: !5173, file: !2, line: 125, type: !178)
!5177 = !DILocalVariable(name: "__val_pu", scope: !5173, file: !2, line: 125, type: !115)
!5178 = !DILocalVariable(name: "__x", scope: !5173, file: !2, line: 125, type: !115)
!5179 = !DILocalVariable(name: "__ptr", scope: !5173, file: !2, line: 125, type: !631)
!5180 = !DILocalVariable(name: "__ret_pu", scope: !5181, file: !2, line: 127, type: !115)
!5181 = distinct !DILexicalBlock(scope: !5182, file: !2, line: 127, column: 10)
!5182 = distinct !DILexicalBlock(scope: !5175, file: !2, line: 127, column: 10)
!5183 = !DILocalVariable(name: "__ptr_pu", scope: !5181, file: !2, line: 127, type: !178)
!5184 = !DILocalVariable(name: "__val_pu", scope: !5181, file: !2, line: 127, type: !115)
!5185 = !DILocalVariable(name: "__x", scope: !5181, file: !2, line: 127, type: !115)
!5186 = !DILocalVariable(name: "__ptr", scope: !5181, file: !2, line: 127, type: !631)
!5187 = !DILocalVariable(name: "__ret_pu", scope: !5188, file: !2, line: 129, type: !115)
!5188 = distinct !DILexicalBlock(scope: !5189, file: !2, line: 129, column: 10)
!5189 = distinct !DILexicalBlock(scope: !5175, file: !2, line: 129, column: 10)
!5190 = !DILocalVariable(name: "__ptr_pu", scope: !5188, file: !2, line: 129, type: !178)
!5191 = !DILocalVariable(name: "__val_pu", scope: !5188, file: !2, line: 129, type: !115)
!5192 = !DILocalVariable(name: "__x", scope: !5188, file: !2, line: 129, type: !115)
!5193 = !DILocalVariable(name: "__ptr", scope: !5188, file: !2, line: 129, type: !631)
!5194 = !DILocalVariable(name: "__ret_gu", scope: !5195, file: !2, line: 131, type: !115)
!5195 = distinct !DILexicalBlock(scope: !5196, file: !2, line: 131, column: 7)
!5196 = distinct !DILexicalBlock(scope: !5197, file: !2, line: 131, column: 7)
!5197 = distinct !DILexicalBlock(scope: !5175, file: !2, line: 131, column: 7)
!5198 = !DILocalVariable(name: "__val_gu", scope: !5195, file: !2, line: 131, type: !13)
!5199 = !DILocalVariable(name: "__tmp", scope: !5200, file: !2, line: 131, type: !437)
!5200 = distinct !DILexicalBlock(scope: !5195, file: !2, line: 131, column: 7)
!5201 = !DILocalVariable(name: "__ret_pu", scope: !5202, file: !2, line: 138, type: !115)
!5202 = distinct !DILexicalBlock(scope: !5203, file: !2, line: 138, column: 10)
!5203 = distinct !DILexicalBlock(scope: !5175, file: !2, line: 138, column: 10)
!5204 = !DILocalVariable(name: "__ptr_pu", scope: !5202, file: !2, line: 138, type: !178)
!5205 = !DILocalVariable(name: "__val_pu", scope: !5202, file: !2, line: 138, type: !115)
!5206 = !DILocalVariable(name: "__x", scope: !5202, file: !2, line: 138, type: !115)
!5207 = !DILocalVariable(name: "__UNIQUE_ID___x339", scope: !5208, file: !2, line: 138, type: !13)
!5208 = distinct !DILexicalBlock(scope: !5202, file: !2, line: 138, column: 10)
!5209 = !DILocalVariable(name: "__UNIQUE_ID___y340", scope: !5208, file: !2, line: 138, type: !13)
!5210 = !DILocalVariable(name: "__ptr", scope: !5202, file: !2, line: 138, type: !631)
!5211 = !DILocalVariable(name: "__ret_gu", scope: !5212, file: !2, line: 141, type: !115)
!5212 = distinct !DILexicalBlock(scope: !5213, file: !2, line: 141, column: 7)
!5213 = distinct !DILexicalBlock(scope: !5214, file: !2, line: 141, column: 7)
!5214 = distinct !DILexicalBlock(scope: !5175, file: !2, line: 141, column: 7)
!5215 = !DILocalVariable(name: "__val_gu", scope: !5212, file: !2, line: 141, type: !13)
!5216 = !DILocalVariable(name: "__tmp", scope: !5217, file: !2, line: 141, type: !437)
!5217 = distinct !DILexicalBlock(scope: !5212, file: !2, line: 141, column: 7)
!5218 = !DILocalVariable(name: "__UNIQUE_ID___x341", scope: !5219, file: !2, line: 146, type: !13)
!5219 = distinct !DILexicalBlock(scope: !5175, file: !2, line: 146, column: 4)
!5220 = !DILocalVariable(name: "__UNIQUE_ID___y342", scope: !5219, file: !2, line: 146, type: !13)
!5221 = !DILocalVariable(name: "__ret_pu", scope: !5222, file: !2, line: 149, type: !115)
!5222 = distinct !DILexicalBlock(scope: !5223, file: !2, line: 149, column: 10)
!5223 = distinct !DILexicalBlock(scope: !5175, file: !2, line: 149, column: 10)
!5224 = !DILocalVariable(name: "__ptr_pu", scope: !5222, file: !2, line: 149, type: !178)
!5225 = !DILocalVariable(name: "__val_pu", scope: !5222, file: !2, line: 149, type: !115)
!5226 = !DILocalVariable(name: "__x", scope: !5222, file: !2, line: 149, type: !115)
!5227 = !DILocalVariable(name: "__ptr", scope: !5222, file: !2, line: 149, type: !631)
!5228 = !DIGlobalVariableExpression(var: !5229, expr: !DIExpression())
!5229 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !5230, isLocal: true, isDefinition: true)
!5230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 80, elements: !5231)
!5231 = !{!5232}
!5232 = !DISubrange(count: 10)
!5233 = !DIGlobalVariableExpression(var: !5234, expr: !DIExpression())
!5234 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !5235, isLocal: true, isDefinition: true)
!5235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !5236)
!5236 = !{!5237}
!5237 = !DISubrange(count: 51)
!5238 = !DIGlobalVariableExpression(var: !5239, expr: !DIExpression())
!5239 = distinct !DIGlobalVariable(scope: null, file: !5240, line: 249, type: !5241, isLocal: true, isDefinition: true)
!5240 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!5241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5242)
!5242 = !{!5243}
!5243 = !DISubrange(count: 28)
!5244 = !DIGlobalVariableExpression(var: !5245, expr: !DIExpression())
!5245 = distinct !DIGlobalVariable(name: "bsg_class", scope: !9, file: !2, line: 245, type: !2629, isLocal: true, isDefinition: true)
!5246 = !DIGlobalVariableExpression(var: !5247, expr: !DIExpression())
!5247 = distinct !DIGlobalVariable(scope: null, file: !2, line: 242, type: !5248, isLocal: true, isDefinition: true)
!5248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !4866)
!5249 = !DIGlobalVariableExpression(var: !5250, expr: !DIExpression())
!5250 = distinct !DIGlobalVariable(scope: null, file: !2, line: 264, type: !5251, isLocal: true, isDefinition: true)
!5251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !5252)
!5252 = !{!5253}
!5253 = !DISubrange(count: 71)
!5254 = !{!"rsp"}
!5255 = !{i32 7, !"Dwarf Version", i32 5}
!5256 = !{i32 2, !"Debug Info Version", i32 3}
!5257 = !{i32 1, !"wchar_size", i32 2}
!5258 = !{i32 8, !"cf-protection-branch", i32 1}
!5259 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5260 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5261 = !{i32 1, !"Code Model", i32 2}
!5262 = !{i32 1, !"override-stack-alignment", i32 8}
!5263 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5264 = distinct !DISubprogram(name: "bsg_unregister_queue", scope: !2, file: !2, line: 178, type: !5265, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5267)
!5265 = !DISubroutineType(types: !5266)
!5266 = !{null, !5057}
!5267 = !{!5268, !5269}
!5268 = !DILocalVariable(name: "bd", arg: 1, scope: !5264, file: !2, line: 178, type: !5057)
!5269 = !DILocalVariable(name: "disk", scope: !5264, file: !2, line: 180, type: !906)
!5270 = !DILocation(line: 178, column: 46, scope: !5264)
!5271 = !DILocation(line: 180, column: 2, scope: !5264)
!5272 = !DILocation(line: 180, column: 18, scope: !5264)
!5273 = !DILocation(line: 180, column: 25, scope: !5264)
!5274 = !DILocation(line: 180, column: 29, scope: !5264)
!5275 = !DILocation(line: 180, column: 36, scope: !5264)
!5276 = !DILocation(line: 182, column: 6, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5264, file: !2, line: 182, column: 6)
!5278 = !DILocation(line: 182, column: 11, scope: !5277)
!5279 = !DILocation(line: 182, column: 14, scope: !5277)
!5280 = !DILocation(line: 182, column: 20, scope: !5277)
!5281 = !DILocation(line: 182, column: 31, scope: !5277)
!5282 = !DILocation(line: 182, column: 6, scope: !5264)
!5283 = !DILocation(line: 183, column: 22, scope: !5277)
!5284 = !DILocation(line: 183, column: 28, scope: !5277)
!5285 = !DILocation(line: 183, column: 3, scope: !5277)
!5286 = !DILocation(line: 184, column: 19, scope: !5264)
!5287 = !DILocation(line: 184, column: 23, scope: !5264)
!5288 = !DILocation(line: 184, column: 30, scope: !5264)
!5289 = !DILocation(line: 184, column: 34, scope: !5264)
!5290 = !DILocation(line: 184, column: 2, scope: !5264)
!5291 = !DILocation(line: 185, column: 14, scope: !5264)
!5292 = !DILocation(line: 185, column: 18, scope: !5264)
!5293 = !DILocation(line: 185, column: 2, scope: !5264)
!5294 = !DILocation(line: 186, column: 1, scope: !5264)
!5295 = !DISubprogram(name: "sysfs_remove_link", scope: !310, file: !310, line: 298, type: !5296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5296 = !DISubroutineType(types: !5297)
!5297 = !{null, !207, !203}
!5298 = !DISubprogram(name: "cdev_device_del", scope: !4420, file: !4420, line: 33, type: !5299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5299 = !DISubroutineType(types: !5300)
!5300 = !{null, !4418, !2142}
!5301 = !DISubprogram(name: "put_device", scope: !100, file: !100, line: 1231, type: !2172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5302 = distinct !DISubprogram(name: "bsg_register_queue", scope: !2, file: !2, line: 189, type: !5303, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5305)
!5303 = !DISubroutineType(types: !5304)
!5304 = !{!5057, !2108, !2142, !203, !5067}
!5305 = !{!5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313}
!5306 = !DILocalVariable(name: "q", arg: 1, scope: !5302, file: !2, line: 189, type: !2108)
!5307 = !DILocalVariable(name: "parent", arg: 2, scope: !5302, file: !2, line: 190, type: !2142)
!5308 = !DILocalVariable(name: "name", arg: 3, scope: !5302, file: !2, line: 190, type: !203)
!5309 = !DILocalVariable(name: "sg_io_fn", arg: 4, scope: !5302, file: !2, line: 190, type: !5067)
!5310 = !DILocalVariable(name: "bd", scope: !5302, file: !2, line: 192, type: !5057)
!5311 = !DILocalVariable(name: "ret", scope: !5302, file: !2, line: 193, type: !115)
!5312 = !DILabel(scope: !5302, name: "out_device_del", file: !2, line: 232)
!5313 = !DILabel(scope: !5302, name: "out_put_device", file: !2, line: 234)
!5314 = !DILocation(line: 189, column: 61, scope: !5302)
!5315 = !DILocation(line: 190, column: 18, scope: !5302)
!5316 = !DILocation(line: 190, column: 38, scope: !5302)
!5317 = !DILocation(line: 190, column: 58, scope: !5302)
!5318 = !DILocation(line: 192, column: 2, scope: !5302)
!5319 = !DILocation(line: 192, column: 21, scope: !5302)
!5320 = !DILocation(line: 193, column: 2, scope: !5302)
!5321 = !DILocation(line: 193, column: 6, scope: !5302)
!5322 = !DILocation(line: 195, column: 7, scope: !5302)
!5323 = !DILocation(line: 195, column: 5, scope: !5302)
!5324 = !DILocation(line: 196, column: 7, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5302, file: !2, line: 196, column: 6)
!5326 = !DILocation(line: 196, column: 6, scope: !5302)
!5327 = !DILocation(line: 197, column: 10, scope: !5325)
!5328 = !DILocation(line: 197, column: 3, scope: !5325)
!5329 = !DILocation(line: 198, column: 2, scope: !5302)
!5330 = !DILocation(line: 198, column: 6, scope: !5302)
!5331 = !DILocation(line: 198, column: 16, scope: !5302)
!5332 = !DILocation(line: 199, column: 2, scope: !5302)
!5333 = !DILocation(line: 199, column: 6, scope: !5302)
!5334 = !DILocation(line: 199, column: 20, scope: !5302)
!5335 = !DILocation(line: 200, column: 14, scope: !5302)
!5336 = !DILocation(line: 200, column: 2, scope: !5302)
!5337 = !DILocation(line: 200, column: 6, scope: !5302)
!5338 = !DILocation(line: 200, column: 12, scope: !5302)
!5339 = !DILocation(line: 201, column: 17, scope: !5302)
!5340 = !DILocation(line: 201, column: 2, scope: !5302)
!5341 = !DILocation(line: 201, column: 6, scope: !5302)
!5342 = !DILocation(line: 201, column: 15, scope: !5302)
!5343 = !DILocation(line: 203, column: 8, scope: !5302)
!5344 = !DILocation(line: 203, column: 6, scope: !5302)
!5345 = !DILocation(line: 204, column: 6, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5302, file: !2, line: 204, column: 6)
!5347 = !DILocation(line: 204, column: 10, scope: !5346)
!5348 = !DILocation(line: 204, column: 6, scope: !5302)
!5349 = !DILocation(line: 205, column: 7, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5351, file: !2, line: 205, column: 7)
!5351 = distinct !DILexicalBlock(scope: !5346, file: !2, line: 204, column: 15)
!5352 = !DILocation(line: 205, column: 11, scope: !5350)
!5353 = !DILocation(line: 205, column: 7, scope: !5351)
!5354 = !DILocation(line: 206, column: 4, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5350, file: !2, line: 206, column: 4)
!5356 = !DILocation(line: 206, column: 4, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5355, file: !2, line: 206, column: 4)
!5358 = !DILocation(line: 206, column: 4, scope: !5350)
!5359 = !DILocation(line: 207, column: 9, scope: !5351)
!5360 = !DILocation(line: 207, column: 3, scope: !5351)
!5361 = !DILocation(line: 208, column: 18, scope: !5351)
!5362 = !DILocation(line: 208, column: 10, scope: !5351)
!5363 = !DILocation(line: 208, column: 3, scope: !5351)
!5364 = !DILocation(line: 210, column: 20, scope: !5302)
!5365 = !DILocation(line: 210, column: 2, scope: !5302)
!5366 = !DILocation(line: 210, column: 6, scope: !5302)
!5367 = !DILocation(line: 210, column: 13, scope: !5302)
!5368 = !DILocation(line: 210, column: 18, scope: !5302)
!5369 = !DILocation(line: 211, column: 2, scope: !5302)
!5370 = !DILocation(line: 211, column: 6, scope: !5302)
!5371 = !DILocation(line: 211, column: 13, scope: !5302)
!5372 = !DILocation(line: 211, column: 19, scope: !5302)
!5373 = !DILocation(line: 212, column: 22, scope: !5302)
!5374 = !DILocation(line: 212, column: 2, scope: !5302)
!5375 = !DILocation(line: 212, column: 6, scope: !5302)
!5376 = !DILocation(line: 212, column: 13, scope: !5302)
!5377 = !DILocation(line: 212, column: 20, scope: !5302)
!5378 = !DILocation(line: 213, column: 2, scope: !5302)
!5379 = !DILocation(line: 213, column: 6, scope: !5302)
!5380 = !DILocation(line: 213, column: 13, scope: !5302)
!5381 = !DILocation(line: 213, column: 21, scope: !5302)
!5382 = !DILocation(line: 214, column: 16, scope: !5302)
!5383 = !DILocation(line: 214, column: 20, scope: !5302)
!5384 = !DILocation(line: 214, column: 34, scope: !5302)
!5385 = !DILocation(line: 214, column: 2, scope: !5302)
!5386 = !DILocation(line: 215, column: 21, scope: !5302)
!5387 = !DILocation(line: 215, column: 25, scope: !5302)
!5388 = !DILocation(line: 215, column: 2, scope: !5302)
!5389 = !DILocation(line: 217, column: 13, scope: !5302)
!5390 = !DILocation(line: 217, column: 17, scope: !5302)
!5391 = !DILocation(line: 217, column: 2, scope: !5302)
!5392 = !DILocation(line: 218, column: 2, scope: !5302)
!5393 = !DILocation(line: 218, column: 6, scope: !5302)
!5394 = !DILocation(line: 218, column: 11, scope: !5302)
!5395 = !DILocation(line: 218, column: 17, scope: !5302)
!5396 = !DILocation(line: 219, column: 25, scope: !5302)
!5397 = !DILocation(line: 219, column: 29, scope: !5302)
!5398 = !DILocation(line: 219, column: 36, scope: !5302)
!5399 = !DILocation(line: 219, column: 40, scope: !5302)
!5400 = !DILocation(line: 219, column: 8, scope: !5302)
!5401 = !DILocation(line: 219, column: 6, scope: !5302)
!5402 = !DILocation(line: 220, column: 6, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5302, file: !2, line: 220, column: 6)
!5404 = !DILocation(line: 220, column: 6, scope: !5302)
!5405 = !DILocation(line: 221, column: 3, scope: !5403)
!5406 = !DILocation(line: 223, column: 6, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5302, file: !2, line: 223, column: 6)
!5408 = !DILocation(line: 223, column: 9, scope: !5407)
!5409 = !DILocation(line: 223, column: 14, scope: !5407)
!5410 = !DILocation(line: 223, column: 17, scope: !5407)
!5411 = !DILocation(line: 223, column: 20, scope: !5407)
!5412 = !DILocation(line: 223, column: 26, scope: !5407)
!5413 = !DILocation(line: 223, column: 37, scope: !5407)
!5414 = !DILocation(line: 223, column: 6, scope: !5302)
!5415 = !DILocation(line: 224, column: 28, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5407, file: !2, line: 223, column: 41)
!5417 = !DILocation(line: 224, column: 31, scope: !5416)
!5418 = !DILocation(line: 224, column: 37, scope: !5416)
!5419 = !DILocation(line: 224, column: 50, scope: !5416)
!5420 = !DILocation(line: 224, column: 54, scope: !5416)
!5421 = !DILocation(line: 224, column: 61, scope: !5416)
!5422 = !DILocation(line: 224, column: 9, scope: !5416)
!5423 = !DILocation(line: 224, column: 7, scope: !5416)
!5424 = !DILocation(line: 226, column: 7, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5416, file: !2, line: 226, column: 7)
!5426 = !DILocation(line: 226, column: 7, scope: !5416)
!5427 = !DILocation(line: 227, column: 4, scope: !5425)
!5428 = !DILocation(line: 228, column: 2, scope: !5416)
!5429 = !DILocation(line: 230, column: 9, scope: !5302)
!5430 = !DILocation(line: 230, column: 2, scope: !5302)
!5431 = !DILocation(line: 232, column: 1, scope: !5302)
!5432 = !DILocation(line: 233, column: 19, scope: !5302)
!5433 = !DILocation(line: 233, column: 23, scope: !5302)
!5434 = !DILocation(line: 233, column: 30, scope: !5302)
!5435 = !DILocation(line: 233, column: 34, scope: !5302)
!5436 = !DILocation(line: 233, column: 2, scope: !5302)
!5437 = !DILocation(line: 234, column: 1, scope: !5302)
!5438 = !DILocation(line: 235, column: 14, scope: !5302)
!5439 = !DILocation(line: 235, column: 18, scope: !5302)
!5440 = !DILocation(line: 235, column: 2, scope: !5302)
!5441 = !DILocation(line: 236, column: 17, scope: !5302)
!5442 = !DILocation(line: 236, column: 9, scope: !5302)
!5443 = !DILocation(line: 236, column: 2, scope: !5302)
!5444 = !DILocation(line: 237, column: 1, scope: !5302)
!5445 = distinct !DISubprogram(name: "kzalloc", scope: !168, file: !168, line: 719, type: !5446, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5448)
!5446 = !DISubroutineType(types: !5447)
!5447 = !{!178, !331, !179}
!5448 = !{!5449, !5450}
!5449 = !DILocalVariable(name: "size", arg: 1, scope: !5445, file: !168, line: 719, type: !331)
!5450 = !DILocalVariable(name: "flags", arg: 2, scope: !5445, file: !168, line: 719, type: !179)
!5451 = !DILocation(line: 719, column: 52, scope: !5445)
!5452 = !DILocation(line: 719, column: 64, scope: !5445)
!5453 = !DILocation(line: 721, column: 17, scope: !5445)
!5454 = !DILocation(line: 721, column: 23, scope: !5445)
!5455 = !DILocation(line: 721, column: 29, scope: !5445)
!5456 = !DILocation(line: 721, column: 9, scope: !5445)
!5457 = !DILocation(line: 721, column: 2, scope: !5445)
!5458 = distinct !DISubprogram(name: "ERR_PTR", scope: !5459, file: !5459, line: 39, type: !5460, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5462)
!5459 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5460 = !DISubroutineType(types: !5461)
!5461 = !{!178, !320}
!5462 = !{!5463}
!5463 = !DILocalVariable(name: "error", arg: 1, scope: !5458, file: !5459, line: 39, type: !320)
!5464 = !DILocation(line: 39, column: 48, scope: !5458)
!5465 = !DILocation(line: 41, column: 18, scope: !5458)
!5466 = !DILocation(line: 41, column: 9, scope: !5458)
!5467 = !DILocation(line: 41, column: 2, scope: !5458)
!5468 = distinct !DISubprogram(name: "ida_alloc_max", scope: !5155, file: !5155, line: 309, type: !5469, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5472)
!5469 = !DISubroutineType(types: !5470)
!5470 = !{!115, !5471, !13, !179}
!5471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5154, size: 64)
!5472 = !{!5473, !5474, !5475}
!5473 = !DILocalVariable(name: "ida", arg: 1, scope: !5468, file: !5155, line: 309, type: !5471)
!5474 = !DILocalVariable(name: "max", arg: 2, scope: !5468, file: !5155, line: 309, type: !13)
!5475 = !DILocalVariable(name: "gfp", arg: 3, scope: !5468, file: !5155, line: 309, type: !179)
!5476 = !DILocation(line: 309, column: 45, scope: !5468)
!5477 = !DILocation(line: 309, column: 63, scope: !5468)
!5478 = !DILocation(line: 309, column: 74, scope: !5468)
!5479 = !DILocation(line: 311, column: 25, scope: !5468)
!5480 = !DILocation(line: 311, column: 33, scope: !5468)
!5481 = !DILocation(line: 311, column: 38, scope: !5468)
!5482 = !DILocation(line: 311, column: 9, scope: !5468)
!5483 = !DILocation(line: 311, column: 2, scope: !5468)
!5484 = !DISubprogram(name: "_dev_err", scope: !5485, file: !5485, line: 50, type: !5486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5485 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5486 = !DISubroutineType(types: !5487)
!5487 = !{null, !2162, !203, null}
!5488 = !DISubprogram(name: "kfree", scope: !168, file: !168, line: 227, type: !5489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5489 = !DISubroutineType(types: !5490)
!5490 = !{null, !1758}
!5491 = distinct !DISubprogram(name: "bsg_device_release", scope: !2, file: !2, line: 170, type: !2172, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5492)
!5492 = !{!5493, !5494, !5495}
!5493 = !DILocalVariable(name: "dev", arg: 1, scope: !5491, file: !2, line: 170, type: !2142)
!5494 = !DILocalVariable(name: "bd", scope: !5491, file: !2, line: 172, type: !5057)
!5495 = !DILocalVariable(name: "__mptr", scope: !5496, file: !2, line: 172, type: !178)
!5496 = distinct !DILexicalBlock(scope: !5491, file: !2, line: 172, column: 26)
!5497 = !DILocation(line: 170, column: 47, scope: !5491)
!5498 = !DILocation(line: 172, column: 2, scope: !5491)
!5499 = !DILocation(line: 172, column: 21, scope: !5491)
!5500 = !DILocation(line: 172, column: 26, scope: !5496)
!5501 = !DILocation(line: 172, column: 26, scope: !5491)
!5502 = !DILocation(line: 174, column: 27, scope: !5491)
!5503 = !DILocation(line: 174, column: 2, scope: !5491)
!5504 = !DILocation(line: 175, column: 8, scope: !5491)
!5505 = !DILocation(line: 175, column: 2, scope: !5491)
!5506 = !DILocation(line: 176, column: 1, scope: !5491)
!5507 = !DISubprogram(name: "dev_set_name", scope: !100, file: !100, line: 879, type: !5508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5508 = !DISubroutineType(types: !5509)
!5509 = !{!115, !2142, !203, null}
!5510 = !DISubprogram(name: "device_initialize", scope: !100, file: !100, line: 1056, type: !2172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5511 = !DISubprogram(name: "cdev_init", scope: !4420, file: !4420, line: 23, type: !5512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5512 = !DISubroutineType(types: !5513)
!5513 = !{null, !4418, !1441}
!5514 = !DISubprogram(name: "cdev_device_add", scope: !4420, file: !4420, line: 32, type: !5515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5515 = !DISubroutineType(types: !5516)
!5516 = !{!115, !4418, !2142}
!5517 = !DISubprogram(name: "sysfs_create_link", scope: !310, file: !310, line: 293, type: !5518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5518 = !DISubroutineType(types: !5519)
!5519 = !{!115, !207, !207, !203}
!5520 = distinct !DISubprogram(name: "__initstub__kmod_bsg__349_277_bsg_init6", scope: !2, file: !2, line: 277, type: !4848, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5521 = !DILocation(line: 277, column: 1, scope: !5520)
!5522 = distinct !DISubprogram(name: "bsg_init", scope: !2, file: !2, line: 250, type: !4848, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5523)
!5523 = !{!5524, !5525, !5526}
!5524 = !DILocalVariable(name: "devid", scope: !5522, file: !2, line: 252, type: !520)
!5525 = !DILocalVariable(name: "ret", scope: !5522, file: !2, line: 253, type: !115)
!5526 = !DILabel(scope: !5522, name: "destroy_bsg_class", file: !2, line: 268)
!5527 = !DILocation(line: 252, column: 2, scope: !5522)
!5528 = !DILocation(line: 252, column: 8, scope: !5522)
!5529 = !DILocation(line: 253, column: 2, scope: !5522)
!5530 = !DILocation(line: 253, column: 6, scope: !5522)
!5531 = !DILocation(line: 255, column: 8, scope: !5522)
!5532 = !DILocation(line: 255, column: 6, scope: !5522)
!5533 = !DILocation(line: 256, column: 6, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5522, file: !2, line: 256, column: 6)
!5535 = !DILocation(line: 256, column: 6, scope: !5522)
!5536 = !DILocation(line: 257, column: 10, scope: !5534)
!5537 = !DILocation(line: 257, column: 3, scope: !5534)
!5538 = !DILocation(line: 259, column: 8, scope: !5522)
!5539 = !DILocation(line: 259, column: 6, scope: !5522)
!5540 = !DILocation(line: 260, column: 6, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5522, file: !2, line: 260, column: 6)
!5542 = !DILocation(line: 260, column: 6, scope: !5522)
!5543 = !DILocation(line: 261, column: 3, scope: !5541)
!5544 = !DILocation(line: 262, column: 14, scope: !5522)
!5545 = !DILocation(line: 262, column: 12, scope: !5522)
!5546 = !DILocation(line: 264, column: 2, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5522, file: !2, line: 264, column: 2)
!5548 = !DILocation(line: 264, column: 2, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5547, file: !2, line: 264, column: 2)
!5550 = !DILocation(line: 266, column: 2, scope: !5522)
!5551 = !DILocation(line: 268, column: 1, scope: !5522)
!5552 = !DILocation(line: 269, column: 2, scope: !5522)
!5553 = !DILocation(line: 270, column: 9, scope: !5522)
!5554 = !DILocation(line: 270, column: 2, scope: !5522)
!5555 = !DILocation(line: 271, column: 1, scope: !5522)
!5556 = distinct !DISubprogram(name: "kmalloc", scope: !168, file: !168, line: 591, type: !5446, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5557)
!5557 = !{!5558, !5559, !5560}
!5558 = !DILocalVariable(name: "size", arg: 1, scope: !5556, file: !168, line: 591, type: !331)
!5559 = !DILocalVariable(name: "flags", arg: 2, scope: !5556, file: !168, line: 591, type: !179)
!5560 = !DILocalVariable(name: "index", scope: !5561, file: !168, line: 594, type: !13)
!5561 = distinct !DILexicalBlock(scope: !5562, file: !168, line: 593, column: 42)
!5562 = distinct !DILexicalBlock(scope: !5556, file: !168, line: 593, column: 6)
!5563 = !DILocation(line: 591, column: 61, scope: !5556)
!5564 = !DILocation(line: 591, column: 73, scope: !5556)
!5565 = !DILocation(line: 593, column: 27, scope: !5562)
!5566 = !DILocation(line: 593, column: 6, scope: !5562)
!5567 = !DILocation(line: 593, column: 33, scope: !5562)
!5568 = !DILocation(line: 593, column: 36, scope: !5562)
!5569 = !DILocation(line: 593, column: 6, scope: !5556)
!5570 = !DILocation(line: 594, column: 3, scope: !5561)
!5571 = !DILocation(line: 594, column: 16, scope: !5561)
!5572 = !DILocation(line: 596, column: 7, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5561, file: !168, line: 596, column: 7)
!5574 = !DILocation(line: 596, column: 12, scope: !5573)
!5575 = !DILocation(line: 596, column: 7, scope: !5561)
!5576 = !DILocation(line: 597, column: 25, scope: !5573)
!5577 = !DILocation(line: 597, column: 31, scope: !5573)
!5578 = !DILocation(line: 597, column: 11, scope: !5573)
!5579 = !DILocation(line: 597, column: 4, scope: !5573)
!5580 = !DILocation(line: 599, column: 11, scope: !5561)
!5581 = !DILocation(line: 599, column: 9, scope: !5561)
!5582 = !DILocation(line: 601, column: 33, scope: !5561)
!5583 = !DILocation(line: 601, column: 40, scope: !5561)
!5584 = !DILocation(line: 601, column: 20, scope: !5561)
!5585 = !DILocation(line: 601, column: 5, scope: !5561)
!5586 = !DILocation(line: 601, column: 51, scope: !5561)
!5587 = !DILocation(line: 602, column: 5, scope: !5561)
!5588 = !DILocation(line: 602, column: 12, scope: !5561)
!5589 = !DILocation(line: 600, column: 10, scope: !5561)
!5590 = !DILocation(line: 600, column: 3, scope: !5561)
!5591 = !DILocation(line: 603, column: 2, scope: !5562)
!5592 = !DILocation(line: 604, column: 19, scope: !5556)
!5593 = !DILocation(line: 604, column: 25, scope: !5556)
!5594 = !DILocation(line: 604, column: 9, scope: !5556)
!5595 = !DILocation(line: 604, column: 2, scope: !5556)
!5596 = !DILocation(line: 605, column: 1, scope: !5556)
!5597 = !DISubprogram(name: "kmalloc_large", scope: !168, file: !168, line: 531, type: !5446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5598 = distinct !DISubprogram(name: "__kmalloc_index", scope: !168, file: !168, line: 444, type: !5599, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5601)
!5599 = !DISubroutineType(types: !5600)
!5600 = !{!13, !331, !1058}
!5601 = !{!5602, !5603}
!5602 = !DILocalVariable(name: "size", arg: 1, scope: !5598, file: !168, line: 444, type: !331)
!5603 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5598, file: !168, line: 445, type: !1058)
!5604 = !DILocation(line: 444, column: 60, scope: !5598)
!5605 = !DILocation(line: 445, column: 16, scope: !5598)
!5606 = !DILocation(line: 447, column: 7, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 447, column: 6)
!5608 = !DILocation(line: 447, column: 6, scope: !5598)
!5609 = !DILocation(line: 448, column: 3, scope: !5607)
!5610 = !DILocation(line: 450, column: 6, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 450, column: 6)
!5612 = !DILocation(line: 450, column: 11, scope: !5611)
!5613 = !DILocation(line: 450, column: 6, scope: !5598)
!5614 = !DILocation(line: 451, column: 3, scope: !5611)
!5615 = !DILocation(line: 453, column: 32, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 453, column: 6)
!5617 = !DILocation(line: 453, column: 37, scope: !5616)
!5618 = !DILocation(line: 453, column: 42, scope: !5616)
!5619 = !DILocation(line: 453, column: 45, scope: !5616)
!5620 = !DILocation(line: 453, column: 50, scope: !5616)
!5621 = !DILocation(line: 453, column: 6, scope: !5598)
!5622 = !DILocation(line: 454, column: 3, scope: !5616)
!5623 = !DILocation(line: 455, column: 32, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 455, column: 6)
!5625 = !DILocation(line: 455, column: 37, scope: !5624)
!5626 = !DILocation(line: 455, column: 43, scope: !5624)
!5627 = !DILocation(line: 455, column: 46, scope: !5624)
!5628 = !DILocation(line: 455, column: 51, scope: !5624)
!5629 = !DILocation(line: 455, column: 6, scope: !5598)
!5630 = !DILocation(line: 456, column: 3, scope: !5624)
!5631 = !DILocation(line: 457, column: 6, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 457, column: 6)
!5633 = !DILocation(line: 457, column: 11, scope: !5632)
!5634 = !DILocation(line: 457, column: 6, scope: !5598)
!5635 = !DILocation(line: 457, column: 26, scope: !5632)
!5636 = !DILocation(line: 458, column: 6, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 458, column: 6)
!5638 = !DILocation(line: 458, column: 11, scope: !5637)
!5639 = !DILocation(line: 458, column: 6, scope: !5598)
!5640 = !DILocation(line: 458, column: 26, scope: !5637)
!5641 = !DILocation(line: 459, column: 6, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 459, column: 6)
!5643 = !DILocation(line: 459, column: 11, scope: !5642)
!5644 = !DILocation(line: 459, column: 6, scope: !5598)
!5645 = !DILocation(line: 459, column: 26, scope: !5642)
!5646 = !DILocation(line: 460, column: 6, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 460, column: 6)
!5648 = !DILocation(line: 460, column: 11, scope: !5647)
!5649 = !DILocation(line: 460, column: 6, scope: !5598)
!5650 = !DILocation(line: 460, column: 26, scope: !5647)
!5651 = !DILocation(line: 461, column: 6, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 461, column: 6)
!5653 = !DILocation(line: 461, column: 11, scope: !5652)
!5654 = !DILocation(line: 461, column: 6, scope: !5598)
!5655 = !DILocation(line: 461, column: 26, scope: !5652)
!5656 = !DILocation(line: 462, column: 6, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 462, column: 6)
!5658 = !DILocation(line: 462, column: 11, scope: !5657)
!5659 = !DILocation(line: 462, column: 6, scope: !5598)
!5660 = !DILocation(line: 462, column: 26, scope: !5657)
!5661 = !DILocation(line: 463, column: 6, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 463, column: 6)
!5663 = !DILocation(line: 463, column: 11, scope: !5662)
!5664 = !DILocation(line: 463, column: 6, scope: !5598)
!5665 = !DILocation(line: 463, column: 26, scope: !5662)
!5666 = !DILocation(line: 464, column: 6, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 464, column: 6)
!5668 = !DILocation(line: 464, column: 11, scope: !5667)
!5669 = !DILocation(line: 464, column: 6, scope: !5598)
!5670 = !DILocation(line: 464, column: 26, scope: !5667)
!5671 = !DILocation(line: 465, column: 6, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 465, column: 6)
!5673 = !DILocation(line: 465, column: 11, scope: !5672)
!5674 = !DILocation(line: 465, column: 6, scope: !5598)
!5675 = !DILocation(line: 465, column: 26, scope: !5672)
!5676 = !DILocation(line: 466, column: 6, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 466, column: 6)
!5678 = !DILocation(line: 466, column: 11, scope: !5677)
!5679 = !DILocation(line: 466, column: 6, scope: !5598)
!5680 = !DILocation(line: 466, column: 26, scope: !5677)
!5681 = !DILocation(line: 467, column: 6, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 467, column: 6)
!5683 = !DILocation(line: 467, column: 11, scope: !5682)
!5684 = !DILocation(line: 467, column: 6, scope: !5598)
!5685 = !DILocation(line: 467, column: 26, scope: !5682)
!5686 = !DILocation(line: 468, column: 6, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 468, column: 6)
!5688 = !DILocation(line: 468, column: 11, scope: !5687)
!5689 = !DILocation(line: 468, column: 6, scope: !5598)
!5690 = !DILocation(line: 468, column: 26, scope: !5687)
!5691 = !DILocation(line: 469, column: 6, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 469, column: 6)
!5693 = !DILocation(line: 469, column: 11, scope: !5692)
!5694 = !DILocation(line: 469, column: 6, scope: !5598)
!5695 = !DILocation(line: 469, column: 26, scope: !5692)
!5696 = !DILocation(line: 470, column: 6, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 470, column: 6)
!5698 = !DILocation(line: 470, column: 11, scope: !5697)
!5699 = !DILocation(line: 470, column: 6, scope: !5598)
!5700 = !DILocation(line: 470, column: 26, scope: !5697)
!5701 = !DILocation(line: 471, column: 6, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 471, column: 6)
!5703 = !DILocation(line: 471, column: 11, scope: !5702)
!5704 = !DILocation(line: 471, column: 6, scope: !5598)
!5705 = !DILocation(line: 471, column: 26, scope: !5702)
!5706 = !DILocation(line: 472, column: 6, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 472, column: 6)
!5708 = !DILocation(line: 472, column: 11, scope: !5707)
!5709 = !DILocation(line: 472, column: 6, scope: !5598)
!5710 = !DILocation(line: 472, column: 26, scope: !5707)
!5711 = !DILocation(line: 473, column: 6, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 473, column: 6)
!5713 = !DILocation(line: 473, column: 11, scope: !5712)
!5714 = !DILocation(line: 473, column: 6, scope: !5598)
!5715 = !DILocation(line: 473, column: 26, scope: !5712)
!5716 = !DILocation(line: 474, column: 6, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 474, column: 6)
!5718 = !DILocation(line: 474, column: 11, scope: !5717)
!5719 = !DILocation(line: 474, column: 6, scope: !5598)
!5720 = !DILocation(line: 474, column: 27, scope: !5717)
!5721 = !DILocation(line: 475, column: 6, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 475, column: 6)
!5723 = !DILocation(line: 475, column: 11, scope: !5722)
!5724 = !DILocation(line: 475, column: 6, scope: !5598)
!5725 = !DILocation(line: 475, column: 32, scope: !5722)
!5726 = !DILocation(line: 477, column: 50, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5598, file: !168, line: 477, column: 6)
!5728 = !{i8 0, i8 2}
!5729 = !DILocation(line: 477, column: 6, scope: !5598)
!5730 = !DILocation(line: 478, column: 3, scope: !5727)
!5731 = !DILocation(line: 478, column: 3, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5733, file: !168, line: 478, column: 3)
!5733 = distinct !DILexicalBlock(scope: !5727, file: !168, line: 478, column: 3)
!5734 = !{i32 -2141383451}
!5735 = !DILocation(line: 478, column: 3, scope: !5733)
!5736 = !DILocation(line: 480, column: 3, scope: !5727)
!5737 = !DILocation(line: 480, column: 3, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5727, file: !168, line: 480, column: 3)
!5739 = !DILocation(line: 480, column: 3, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !5738, file: !168, line: 480, column: 3)
!5741 = !DILocation(line: 480, column: 3, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5738, file: !168, line: 480, column: 3)
!5743 = !{i64 2153584048, i64 2153584077, i64 2153584123, i64 2153584181, i64 2153584235, i64 2153584289, i64 2153584344, i64 2153584375}
!5744 = !DILocation(line: 483, column: 2, scope: !5598)
!5745 = !DILocation(line: 484, column: 1, scope: !5598)
!5746 = !DISubprogram(name: "kmalloc_trace", scope: !168, file: !168, line: 525, type: !5747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5747 = !DISubroutineType(types: !5748)
!5748 = !{!178, !1980, !179, !331}
!5749 = distinct !DISubprogram(name: "kmalloc_type", scope: !168, file: !168, line: 401, type: !5750, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5752)
!5750 = !DISubroutineType(types: !5751)
!5751 = !{!167, !179, !334}
!5752 = !{!5753, !5754}
!5753 = !DILocalVariable(name: "flags", arg: 1, scope: !5749, file: !168, line: 401, type: !179)
!5754 = !DILocalVariable(name: "caller", arg: 2, scope: !5749, file: !168, line: 401, type: !334)
!5755 = !DILocation(line: 401, column: 67, scope: !5749)
!5756 = !DILocation(line: 401, column: 88, scope: !5749)
!5757 = !DILocation(line: 407, column: 6, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5749, file: !168, line: 407, column: 6)
!5759 = !DILocation(line: 407, column: 6, scope: !5749)
!5760 = !DILocation(line: 413, column: 3, scope: !5758)
!5761 = !DILocation(line: 423, column: 38, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5749, file: !168, line: 423, column: 6)
!5763 = !DILocation(line: 423, column: 44, scope: !5762)
!5764 = !DILocation(line: 423, column: 6, scope: !5749)
!5765 = !DILocation(line: 424, column: 3, scope: !5762)
!5766 = !DILocation(line: 426, column: 3, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5749, file: !168, line: 425, column: 6)
!5768 = !DILocation(line: 429, column: 1, scope: !5749)
!5769 = !DISubprogram(name: "__kmalloc", scope: !168, file: !168, line: 488, type: !5446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5770 = !DISubprogram(name: "__compiletime_assert_255", scope: !168, file: !168, line: 478, type: !3507, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5771 = !DISubprogram(name: "ida_alloc_range", scope: !5155, file: !5155, line: 257, type: !5772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5772 = !DISubroutineType(types: !5773)
!5773 = !{!115, !5471, !13, !13, !179}
!5774 = !DISubprogram(name: "ida_free", scope: !5155, file: !5155, line: 258, type: !5775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5775 = !DISubroutineType(types: !5776)
!5776 = !{null, !5471, !13}
!5777 = !DILocation(line: 104, column: 36, scope: !5162)
!5778 = !DILocation(line: 104, column: 55, scope: !5162)
!5779 = !DILocation(line: 104, column: 74, scope: !5162)
!5780 = !DILocation(line: 106, column: 2, scope: !5162)
!5781 = !DILocation(line: 106, column: 21, scope: !5162)
!5782 = !DILocation(line: 106, column: 51, scope: !5162)
!5783 = !DILocation(line: 106, column: 40, scope: !5162)
!5784 = !DILocation(line: 106, column: 26, scope: !5162)
!5785 = !DILocation(line: 107, column: 2, scope: !5162)
!5786 = !DILocation(line: 107, column: 24, scope: !5162)
!5787 = !DILocation(line: 107, column: 28, scope: !5162)
!5788 = !DILocation(line: 107, column: 32, scope: !5162)
!5789 = !DILocation(line: 108, column: 2, scope: !5162)
!5790 = !DILocation(line: 108, column: 15, scope: !5162)
!5791 = !DILocation(line: 108, column: 38, scope: !5162)
!5792 = !DILocation(line: 108, column: 22, scope: !5162)
!5793 = !DILocation(line: 109, column: 2, scope: !5162)
!5794 = !DILocation(line: 109, column: 14, scope: !5162)
!5795 = !DILocation(line: 109, column: 21, scope: !5162)
!5796 = !DILocation(line: 110, column: 2, scope: !5162)
!5797 = !DILocation(line: 110, column: 6, scope: !5162)
!5798 = !DILocation(line: 112, column: 10, scope: !5162)
!5799 = !DILocation(line: 112, column: 2, scope: !5162)
!5800 = !DILocation(line: 117, column: 28, scope: !5175)
!5801 = !DILocation(line: 117, column: 32, scope: !5175)
!5802 = !DILocation(line: 117, column: 10, scope: !5175)
!5803 = !DILocation(line: 117, column: 3, scope: !5175)
!5804 = !DILocation(line: 119, column: 28, scope: !5175)
!5805 = !DILocation(line: 119, column: 32, scope: !5175)
!5806 = !DILocation(line: 119, column: 10, scope: !5175)
!5807 = !DILocation(line: 119, column: 3, scope: !5175)
!5808 = !DILocation(line: 125, column: 10, scope: !5174)
!5809 = !DILocation(line: 125, column: 10, scope: !5173)
!5810 = !{i64 2155545165}
!5811 = !DILocation(line: 125, column: 10, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5173, file: !2, line: 125, column: 10)
!5813 = !DILocation(line: 125, column: 3, scope: !5175)
!5814 = !DILocation(line: 127, column: 10, scope: !5182)
!5815 = !DILocation(line: 127, column: 10, scope: !5181)
!5816 = !{i64 2155546205}
!5817 = !DILocation(line: 127, column: 10, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5181, file: !2, line: 127, column: 10)
!5819 = !DILocation(line: 127, column: 3, scope: !5175)
!5820 = !DILocation(line: 129, column: 10, scope: !5189)
!5821 = !DILocation(line: 129, column: 10, scope: !5188)
!5822 = !{i64 2155547241}
!5823 = !DILocation(line: 129, column: 10, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5188, file: !2, line: 129, column: 10)
!5825 = !DILocation(line: 129, column: 3, scope: !5175)
!5826 = !DILocation(line: 131, column: 7, scope: !5196)
!5827 = !DILocation(line: 131, column: 7, scope: !5195)
!5828 = !{i64 2155548086}
!5829 = !DILocation(line: 131, column: 7, scope: !5200)
!5830 = !DILocation(line: 131, column: 7, scope: !5197)
!5831 = !DILocation(line: 131, column: 7, scope: !5175)
!5832 = !DILocation(line: 132, column: 4, scope: !5197)
!5833 = !DILocation(line: 133, column: 36, scope: !5175)
!5834 = !DILocation(line: 133, column: 17, scope: !5175)
!5835 = !DILocation(line: 133, column: 3, scope: !5175)
!5836 = !DILocation(line: 133, column: 7, scope: !5175)
!5837 = !DILocation(line: 133, column: 15, scope: !5175)
!5838 = !DILocation(line: 134, column: 3, scope: !5175)
!5839 = !DILocation(line: 136, column: 29, scope: !5175)
!5840 = !DILocation(line: 136, column: 33, scope: !5175)
!5841 = !DILocation(line: 136, column: 10, scope: !5175)
!5842 = !DILocation(line: 136, column: 3, scope: !5175)
!5843 = !DILocation(line: 138, column: 10, scope: !5203)
!5844 = !DILocation(line: 138, column: 10, scope: !5202)
!5845 = !DILocation(line: 138, column: 10, scope: !5208)
!5846 = !{i64 2155562044}
!5847 = !DILocation(line: 138, column: 10, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5202, file: !2, line: 138, column: 10)
!5849 = !DILocation(line: 138, column: 3, scope: !5175)
!5850 = !DILocation(line: 141, column: 7, scope: !5213)
!5851 = !DILocation(line: 141, column: 7, scope: !5212)
!5852 = !{i64 2155565440}
!5853 = !DILocation(line: 141, column: 7, scope: !5217)
!5854 = !DILocation(line: 141, column: 7, scope: !5214)
!5855 = !DILocation(line: 141, column: 7, scope: !5175)
!5856 = !DILocation(line: 142, column: 4, scope: !5214)
!5857 = !DILocation(line: 143, column: 7, scope: !5858)
!5858 = distinct !DILexicalBlock(scope: !5175, file: !2, line: 143, column: 7)
!5859 = !DILocation(line: 143, column: 11, scope: !5858)
!5860 = !DILocation(line: 143, column: 7, scope: !5175)
!5861 = !DILocation(line: 144, column: 4, scope: !5858)
!5862 = !DILocation(line: 146, column: 4, scope: !5219)
!5863 = !DILocation(line: 146, column: 4, scope: !5175)
!5864 = !DILocation(line: 145, column: 3, scope: !5175)
!5865 = !DILocation(line: 145, column: 7, scope: !5175)
!5866 = !DILocation(line: 145, column: 21, scope: !5175)
!5867 = !DILocation(line: 147, column: 3, scope: !5175)
!5868 = !DILocation(line: 149, column: 10, scope: !5223)
!5869 = !DILocation(line: 149, column: 10, scope: !5222)
!5870 = !{i64 2155578711}
!5871 = !DILocation(line: 149, column: 10, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5222, file: !2, line: 149, column: 10)
!5873 = !DILocation(line: 149, column: 3, scope: !5175)
!5874 = !DILocation(line: 151, column: 20, scope: !5175)
!5875 = !DILocation(line: 151, column: 24, scope: !5175)
!5876 = !DILocation(line: 151, column: 30, scope: !5175)
!5877 = !DILocation(line: 151, column: 37, scope: !5175)
!5878 = !DILocation(line: 151, column: 52, scope: !5175)
!5879 = !DILocation(line: 151, column: 10, scope: !5175)
!5880 = !DILocation(line: 151, column: 3, scope: !5175)
!5881 = !DILocation(line: 153, column: 3, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5883, file: !2, line: 153, column: 3)
!5883 = distinct !DILexicalBlock(scope: !5175, file: !2, line: 153, column: 3)
!5884 = !DILocation(line: 153, column: 3, scope: !5883)
!5885 = !DILocation(line: 153, column: 3, scope: !5886)
!5886 = distinct !DILexicalBlock(scope: !5882, file: !2, line: 153, column: 3)
!5887 = !DILocation(line: 153, column: 3, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5886, file: !2, line: 153, column: 3)
!5889 = !DILocation(line: 155, column: 3, scope: !5175)
!5890 = !DILocation(line: 157, column: 3, scope: !5175)
!5891 = !DILocation(line: 159, column: 1, scope: !5162)
!5892 = distinct !DISubprogram(name: "bsg_open", scope: !2, file: !2, line: 74, type: !1585, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5893)
!5893 = !{!5894, !5895}
!5894 = !DILocalVariable(name: "inode", arg: 1, scope: !5892, file: !2, line: 74, type: !364)
!5895 = !DILocalVariable(name: "file", arg: 2, scope: !5892, file: !2, line: 74, type: !1147)
!5896 = !DILocation(line: 74, column: 35, scope: !5892)
!5897 = !DILocation(line: 74, column: 55, scope: !5892)
!5898 = !DILocation(line: 76, column: 35, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5892, file: !2, line: 76, column: 6)
!5900 = !DILocation(line: 76, column: 21, scope: !5899)
!5901 = !DILocation(line: 76, column: 43, scope: !5899)
!5902 = !DILocation(line: 76, column: 7, scope: !5899)
!5903 = !DILocation(line: 76, column: 6, scope: !5892)
!5904 = !DILocation(line: 77, column: 3, scope: !5899)
!5905 = !DILocation(line: 78, column: 2, scope: !5892)
!5906 = !DILocation(line: 79, column: 1, scope: !5892)
!5907 = distinct !DISubprogram(name: "bsg_release", scope: !2, file: !2, line: 81, type: !1585, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5908)
!5908 = !{!5909, !5910}
!5909 = !DILocalVariable(name: "inode", arg: 1, scope: !5907, file: !2, line: 81, type: !364)
!5910 = !DILocalVariable(name: "file", arg: 2, scope: !5907, file: !2, line: 81, type: !1147)
!5911 = !DILocation(line: 81, column: 38, scope: !5907)
!5912 = !DILocation(line: 81, column: 58, scope: !5907)
!5913 = !DILocation(line: 83, column: 30, scope: !5907)
!5914 = !DILocation(line: 83, column: 16, scope: !5907)
!5915 = !DILocation(line: 83, column: 38, scope: !5907)
!5916 = !DILocation(line: 83, column: 2, scope: !5907)
!5917 = !DILocation(line: 84, column: 2, scope: !5907)
!5918 = distinct !DISubprogram(name: "to_bsg_device", scope: !2, file: !2, line: 33, type: !5919, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5921)
!5919 = !DISubroutineType(types: !5920)
!5920 = !{!5057, !364}
!5921 = !{!5922, !5923}
!5922 = !DILocalVariable(name: "inode", arg: 1, scope: !5918, file: !2, line: 33, type: !364)
!5923 = !DILocalVariable(name: "__mptr", scope: !5924, file: !2, line: 35, type: !178)
!5924 = distinct !DILexicalBlock(scope: !5918, file: !2, line: 35, column: 9)
!5925 = !DILocation(line: 33, column: 62, scope: !5918)
!5926 = !DILocation(line: 35, column: 9, scope: !5924)
!5927 = !DILocation(line: 35, column: 9, scope: !5918)
!5928 = !DILocation(line: 35, column: 2, scope: !5918)
!5929 = distinct !DISubprogram(name: "file_inode", scope: !65, file: !65, line: 1073, type: !5930, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5934)
!5930 = !DISubroutineType(types: !5931)
!5931 = !{!364, !5932}
!5932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5933, size: 64)
!5933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1148)
!5934 = !{!5935}
!5935 = !DILocalVariable(name: "f", arg: 1, scope: !5929, file: !65, line: 1073, type: !5932)
!5936 = !DILocation(line: 1073, column: 59, scope: !5929)
!5937 = !DILocation(line: 1075, column: 9, scope: !5929)
!5938 = !DILocation(line: 1075, column: 12, scope: !5929)
!5939 = !DILocation(line: 1075, column: 2, scope: !5929)
!5940 = distinct !DISubprogram(name: "bsg_get_command_q", scope: !2, file: !2, line: 87, type: !5941, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5943)
!5941 = !DISubroutineType(types: !5942)
!5942 = !{!115, !5057, !631}
!5943 = !{!5944, !5945, !5946, !5949, !5950, !5951, !5952}
!5944 = !DILocalVariable(name: "bd", arg: 1, scope: !5940, file: !2, line: 87, type: !5057)
!5945 = !DILocalVariable(name: "uarg", arg: 2, scope: !5940, file: !2, line: 87, type: !631)
!5946 = !DILocalVariable(name: "__ret_pu", scope: !5947, file: !2, line: 89, type: !115)
!5947 = distinct !DILexicalBlock(scope: !5948, file: !2, line: 89, column: 9)
!5948 = distinct !DILexicalBlock(scope: !5940, file: !2, line: 89, column: 9)
!5949 = !DILocalVariable(name: "__ptr_pu", scope: !5947, file: !2, line: 89, type: !178)
!5950 = !DILocalVariable(name: "__val_pu", scope: !5947, file: !2, line: 89, type: !115)
!5951 = !DILocalVariable(name: "__x", scope: !5947, file: !2, line: 89, type: !115)
!5952 = !DILocalVariable(name: "__ptr", scope: !5947, file: !2, line: 89, type: !631)
!5953 = !DILocation(line: 87, column: 49, scope: !5940)
!5954 = !DILocation(line: 87, column: 65, scope: !5940)
!5955 = !DILocation(line: 89, column: 9, scope: !5948)
!5956 = !DILocation(line: 89, column: 9, scope: !5947)
!5957 = !DILocation(line: 89, column: 9, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5947, file: !2, line: 89, column: 9)
!5959 = !DILocation(line: 89, column: 9, scope: !5960)
!5960 = distinct !DILexicalBlock(scope: !5958, file: !2, line: 89, column: 9)
!5961 = !{i64 2155539041}
!5962 = !DILocation(line: 89, column: 9, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5947, file: !2, line: 89, column: 9)
!5964 = !DILocation(line: 89, column: 9, scope: !5940)
!5965 = !DILocation(line: 89, column: 2, scope: !5940)
!5966 = distinct !DISubprogram(name: "bsg_set_command_q", scope: !2, file: !2, line: 92, type: !5941, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5967)
!5967 = !{!5968, !5969, !5970, !5971, !5975, !5976}
!5968 = !DILocalVariable(name: "bd", arg: 1, scope: !5966, file: !2, line: 92, type: !5057)
!5969 = !DILocalVariable(name: "uarg", arg: 2, scope: !5966, file: !2, line: 92, type: !631)
!5970 = !DILocalVariable(name: "max_queue", scope: !5966, file: !2, line: 94, type: !115)
!5971 = !DILocalVariable(name: "__ret_gu", scope: !5972, file: !2, line: 96, type: !115)
!5972 = distinct !DILexicalBlock(scope: !5973, file: !2, line: 96, column: 6)
!5973 = distinct !DILexicalBlock(scope: !5974, file: !2, line: 96, column: 6)
!5974 = distinct !DILexicalBlock(scope: !5966, file: !2, line: 96, column: 6)
!5975 = !DILocalVariable(name: "__val_gu", scope: !5972, file: !2, line: 96, type: !13)
!5976 = !DILocalVariable(name: "__tmp", scope: !5977, file: !2, line: 96, type: !437)
!5977 = distinct !DILexicalBlock(scope: !5972, file: !2, line: 96, column: 6)
!5978 = !DILocation(line: 92, column: 49, scope: !5966)
!5979 = !DILocation(line: 92, column: 65, scope: !5966)
!5980 = !DILocation(line: 94, column: 2, scope: !5966)
!5981 = !DILocation(line: 94, column: 6, scope: !5966)
!5982 = !DILocation(line: 96, column: 6, scope: !5973)
!5983 = !DILocation(line: 96, column: 6, scope: !5972)
!5984 = !{i64 2155540899}
!5985 = !DILocation(line: 96, column: 6, scope: !5977)
!5986 = !DILocation(line: 96, column: 6, scope: !5974)
!5987 = !DILocation(line: 96, column: 6, scope: !5966)
!5988 = !DILocation(line: 97, column: 3, scope: !5974)
!5989 = !DILocation(line: 98, column: 6, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5966, file: !2, line: 98, column: 6)
!5991 = !DILocation(line: 98, column: 16, scope: !5990)
!5992 = !DILocation(line: 98, column: 6, scope: !5966)
!5993 = !DILocation(line: 99, column: 3, scope: !5990)
!5994 = !DILocation(line: 100, column: 2, scope: !5966)
!5995 = !DILocation(line: 100, column: 2, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !5966, file: !2, line: 100, column: 2)
!5997 = !DILocation(line: 100, column: 2, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5996, file: !2, line: 100, column: 2)
!5999 = !DILocation(line: 100, column: 2, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5996, file: !2, line: 100, column: 2)
!6001 = !DILocation(line: 101, column: 2, scope: !5966)
!6002 = !DILocation(line: 102, column: 1, scope: !5966)
!6003 = distinct !DISubprogram(name: "might_fault", scope: !6004, file: !6004, line: 202, type: !3507, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!6004 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6005 = !DILocation(line: 202, column: 40, scope: !6003)
!6006 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !6007, file: !6007, line: 76, type: !6008, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6010)
!6007 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!6008 = !DISubroutineType(types: !6009)
!6009 = !{null, !178, !1758, !331, !331}
!6010 = !{!6011, !6012, !6013, !6014}
!6011 = !DILocalVariable(name: "to", arg: 1, scope: !6006, file: !6007, line: 76, type: !178)
!6012 = !DILocalVariable(name: "from", arg: 2, scope: !6006, file: !6007, line: 76, type: !1758)
!6013 = !DILocalVariable(name: "to_copy", arg: 3, scope: !6006, file: !6007, line: 77, type: !331)
!6014 = !DILocalVariable(name: "left", arg: 4, scope: !6006, file: !6007, line: 77, type: !331)
!6015 = !DILocation(line: 76, column: 52, scope: !6006)
!6016 = !DILocation(line: 76, column: 68, scope: !6006)
!6017 = !DILocation(line: 77, column: 18, scope: !6006)
!6018 = !DILocation(line: 77, column: 34, scope: !6006)
!6019 = !DILocation(line: 79, column: 1, scope: !6006)
!6020 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !6007, file: !6007, line: 70, type: !6021, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6023)
!6021 = !DISubroutineType(types: !6022)
!6022 = !{null, !1758, !331}
!6023 = !{!6024, !6025}
!6024 = !DILocalVariable(name: "address", arg: 1, scope: !6020, file: !6007, line: 70, type: !1758)
!6025 = !DILocalVariable(name: "size", arg: 2, scope: !6020, file: !6007, line: 70, type: !331)
!6026 = !DILocation(line: 70, column: 54, scope: !6020)
!6027 = !DILocation(line: 70, column: 70, scope: !6020)
!6028 = !DILocation(line: 72, column: 1, scope: !6020)
!6029 = !DISubprogram(name: "clock_t_to_jiffies", scope: !6030, file: !6030, line: 590, type: !6031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6030 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!6031 = !DISubroutineType(types: !6032)
!6032 = !{!334, !334}
!6033 = !DISubprogram(name: "jiffies_to_clock_t", scope: !6030, file: !6030, line: 578, type: !6034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6034 = !DISubroutineType(types: !6035)
!6035 = !{!6036, !334}
!6036 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !180, line: 76, baseType: !3629)
!6037 = distinct !DISubprogram(name: "queue_max_bytes", scope: !148, file: !148, line: 1113, type: !6038, scopeLine: 1114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6040)
!6038 = !DISubroutineType(types: !6039)
!6039 = !{!13, !2108}
!6040 = !{!6041, !6042, !6044}
!6041 = !DILocalVariable(name: "q", arg: 1, scope: !6037, file: !148, line: 1113, type: !2108)
!6042 = !DILocalVariable(name: "__UNIQUE_ID___x330", scope: !6043, file: !148, line: 1115, type: !13)
!6043 = distinct !DILexicalBlock(scope: !6037, file: !148, line: 1115, column: 9)
!6044 = !DILocalVariable(name: "__UNIQUE_ID___y331", scope: !6043, file: !148, line: 1115, type: !13)
!6045 = !DILocation(line: 1113, column: 66, scope: !6037)
!6046 = !DILocation(line: 1115, column: 9, scope: !6043)
!6047 = !DILocation(line: 1115, column: 9, scope: !6037)
!6048 = !DILocation(line: 1115, column: 65, scope: !6037)
!6049 = !DILocation(line: 1115, column: 2, scope: !6037)
!6050 = distinct !DISubprogram(name: "bsg_sg_io", scope: !2, file: !2, line: 57, type: !6051, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6053)
!6051 = !DISubroutineType(types: !6052)
!6052 = !{!115, !5057, !1058, !178}
!6053 = !{!6054, !6055, !6056, !6057, !6058}
!6054 = !DILocalVariable(name: "bd", arg: 1, scope: !6050, file: !2, line: 57, type: !5057)
!6055 = !DILocalVariable(name: "open_for_write", arg: 2, scope: !6050, file: !2, line: 57, type: !1058)
!6056 = !DILocalVariable(name: "uarg", arg: 3, scope: !6050, file: !2, line: 58, type: !178)
!6057 = !DILocalVariable(name: "hdr", scope: !6050, file: !2, line: 60, type: !5073)
!6058 = !DILocalVariable(name: "ret", scope: !6050, file: !2, line: 61, type: !115)
!6059 = !DILocation(line: 57, column: 41, scope: !6050)
!6060 = !DILocation(line: 57, column: 50, scope: !6050)
!6061 = !DILocation(line: 58, column: 21, scope: !6050)
!6062 = !DILocation(line: 60, column: 2, scope: !6050)
!6063 = !DILocation(line: 60, column: 18, scope: !6050)
!6064 = !DILocation(line: 61, column: 2, scope: !6050)
!6065 = !DILocation(line: 61, column: 6, scope: !6050)
!6066 = !DILocation(line: 63, column: 27, scope: !6067)
!6067 = distinct !DILexicalBlock(scope: !6050, file: !2, line: 63, column: 6)
!6068 = !DILocation(line: 63, column: 6, scope: !6067)
!6069 = !DILocation(line: 63, column: 6, scope: !6050)
!6070 = !DILocation(line: 64, column: 3, scope: !6067)
!6071 = !DILocation(line: 65, column: 10, scope: !6072)
!6072 = distinct !DILexicalBlock(scope: !6050, file: !2, line: 65, column: 6)
!6073 = !DILocation(line: 65, column: 16, scope: !6072)
!6074 = !DILocation(line: 65, column: 6, scope: !6050)
!6075 = !DILocation(line: 66, column: 3, scope: !6072)
!6076 = !DILocation(line: 67, column: 8, scope: !6050)
!6077 = !DILocation(line: 67, column: 12, scope: !6050)
!6078 = !DILocation(line: 67, column: 21, scope: !6050)
!6079 = !DILocation(line: 67, column: 25, scope: !6050)
!6080 = !DILocation(line: 67, column: 38, scope: !6050)
!6081 = !DILocation(line: 68, column: 19, scope: !6050)
!6082 = !DILocation(line: 68, column: 7, scope: !6050)
!6083 = !DILocation(line: 67, column: 6, scope: !6050)
!6084 = !DILocation(line: 69, column: 7, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6050, file: !2, line: 69, column: 6)
!6086 = !DILocation(line: 69, column: 11, scope: !6085)
!6087 = !DILocation(line: 69, column: 27, scope: !6085)
!6088 = !DILocation(line: 69, column: 14, scope: !6085)
!6089 = !DILocation(line: 69, column: 6, scope: !6050)
!6090 = !DILocation(line: 70, column: 3, scope: !6085)
!6091 = !DILocation(line: 71, column: 9, scope: !6050)
!6092 = !DILocation(line: 71, column: 2, scope: !6050)
!6093 = !DILocation(line: 72, column: 1, scope: !6050)
!6094 = !DISubprogram(name: "___ratelimit", scope: !1400, file: !1400, line: 44, type: !6095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6095 = !DISubroutineType(types: !6096)
!6096 = !{!115, !6097, !203}
!6097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!6098 = !DISubprogram(name: "_printk", scope: !6099, file: !6099, line: 153, type: !6100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6099 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6100 = !DISubroutineType(types: !6101)
!6101 = !{!115, !203, null}
!6102 = distinct !DISubprogram(name: "get_current", scope: !6103, file: !6103, line: 39, type: !6104, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6106)
!6103 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6104 = !DISubroutineType(types: !6105)
!6105 = !{!2962}
!6106 = !{!6107, !6109, !6111}
!6107 = !DILocalVariable(name: "pscr_ret__", scope: !6108, file: !6103, line: 41, type: !2962)
!6108 = distinct !DILexicalBlock(scope: !6102, file: !6103, line: 41, column: 9)
!6109 = !DILocalVariable(name: "__vpp_verify", scope: !6110, file: !6103, line: 41, type: !1758)
!6110 = distinct !DILexicalBlock(scope: !6108, file: !6103, line: 41, column: 9)
!6111 = !DILocalVariable(name: "pfo_val__", scope: !6112, file: !6103, line: 41, type: !437)
!6112 = distinct !DILexicalBlock(scope: !6108, file: !6103, line: 41, column: 9)
!6113 = !DILocation(line: 41, column: 9, scope: !6108)
!6114 = !DILocation(line: 41, column: 9, scope: !6110)
!6115 = !DILocation(line: 41, column: 9, scope: !6112)
!6116 = !{i64 2148537296}
!6117 = !DILocation(line: 41, column: 9, scope: !6102)
!6118 = !DILocation(line: 41, column: 2, scope: !6102)
!6119 = distinct !DISubprogram(name: "queue_max_sectors", scope: !148, file: !148, line: 1108, type: !6120, scopeLine: 1109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6124)
!6120 = !DISubroutineType(types: !6121)
!6121 = !{!13, !6122}
!6122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6123, size: 64)
!6123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2109)
!6124 = !{!6125}
!6125 = !DILocalVariable(name: "q", arg: 1, scope: !6119, file: !148, line: 1108, type: !6122)
!6126 = !DILocation(line: 1108, column: 74, scope: !6119)
!6127 = !DILocation(line: 1110, column: 9, scope: !6119)
!6128 = !DILocation(line: 1110, column: 12, scope: !6119)
!6129 = !DILocation(line: 1110, column: 19, scope: !6119)
!6130 = !DILocation(line: 1110, column: 2, scope: !6119)
!6131 = distinct !DISubprogram(name: "copy_from_user", scope: !6132, file: !6132, line: 180, type: !6133, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6135)
!6132 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!6133 = !DISubroutineType(types: !6134)
!6134 = !{!334, !178, !1758, !334}
!6135 = !{!6136, !6137, !6138}
!6136 = !DILocalVariable(name: "to", arg: 1, scope: !6131, file: !6132, line: 180, type: !178)
!6137 = !DILocalVariable(name: "from", arg: 2, scope: !6131, file: !6132, line: 180, type: !1758)
!6138 = !DILocalVariable(name: "n", arg: 3, scope: !6131, file: !6132, line: 180, type: !334)
!6139 = !DILocation(line: 180, column: 22, scope: !6131)
!6140 = !DILocation(line: 180, column: 45, scope: !6131)
!6141 = !DILocation(line: 180, column: 65, scope: !6131)
!6142 = !DILocation(line: 182, column: 22, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6131, file: !6132, line: 182, column: 6)
!6144 = !DILocation(line: 182, column: 26, scope: !6143)
!6145 = !DILocation(line: 182, column: 6, scope: !6143)
!6146 = !DILocation(line: 182, column: 6, scope: !6131)
!6147 = !DILocation(line: 183, column: 23, scope: !6143)
!6148 = !DILocation(line: 183, column: 27, scope: !6143)
!6149 = !DILocation(line: 183, column: 33, scope: !6143)
!6150 = !DILocation(line: 183, column: 7, scope: !6143)
!6151 = !DILocation(line: 183, column: 5, scope: !6143)
!6152 = !DILocation(line: 183, column: 3, scope: !6143)
!6153 = !DILocation(line: 184, column: 9, scope: !6131)
!6154 = !DILocation(line: 184, column: 2, scope: !6131)
!6155 = distinct !DISubprogram(name: "bsg_timeout", scope: !2, file: !2, line: 45, type: !6156, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6158)
!6156 = !DISubroutineType(types: !6157)
!6157 = !{!13, !5057, !5072}
!6158 = !{!6159, !6160, !6161, !6162, !6164}
!6159 = !DILocalVariable(name: "bd", arg: 1, scope: !6155, file: !2, line: 45, type: !5057)
!6160 = !DILocalVariable(name: "hdr", arg: 2, scope: !6155, file: !2, line: 45, type: !5072)
!6161 = !DILocalVariable(name: "timeout", scope: !6155, file: !2, line: 47, type: !13)
!6162 = !DILocalVariable(name: "__UNIQUE_ID___x335", scope: !6163, file: !2, line: 54, type: !13)
!6163 = distinct !DILexicalBlock(scope: !6155, file: !2, line: 54, column: 9)
!6164 = !DILocalVariable(name: "__UNIQUE_ID___y336", scope: !6163, file: !2, line: 54, type: !13)
!6165 = !DILocation(line: 45, column: 52, scope: !6155)
!6166 = !DILocation(line: 45, column: 73, scope: !6155)
!6167 = !DILocation(line: 47, column: 2, scope: !6155)
!6168 = !DILocation(line: 47, column: 15, scope: !6155)
!6169 = !DILocation(line: 49, column: 6, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6155, file: !2, line: 49, column: 6)
!6171 = !DILocation(line: 49, column: 11, scope: !6170)
!6172 = !DILocation(line: 49, column: 6, scope: !6155)
!6173 = !DILocation(line: 50, column: 30, scope: !6170)
!6174 = !DILocation(line: 50, column: 35, scope: !6170)
!6175 = !DILocation(line: 50, column: 13, scope: !6170)
!6176 = !DILocation(line: 50, column: 11, scope: !6170)
!6177 = !DILocation(line: 50, column: 3, scope: !6170)
!6178 = !DILocation(line: 51, column: 11, scope: !6179)
!6179 = distinct !DILexicalBlock(scope: !6170, file: !2, line: 51, column: 11)
!6180 = !DILocation(line: 51, column: 15, scope: !6179)
!6181 = !DILocation(line: 51, column: 11, scope: !6170)
!6182 = !DILocation(line: 52, column: 13, scope: !6179)
!6183 = !DILocation(line: 52, column: 17, scope: !6179)
!6184 = !DILocation(line: 52, column: 11, scope: !6179)
!6185 = !DILocation(line: 52, column: 3, scope: !6179)
!6186 = !DILocation(line: 54, column: 9, scope: !6163)
!6187 = !DILocation(line: 54, column: 9, scope: !6155)
!6188 = !DILocation(line: 55, column: 1, scope: !6155)
!6189 = !DILocation(line: 54, column: 2, scope: !6155)
!6190 = distinct !DISubprogram(name: "copy_to_user", scope: !6132, file: !6132, line: 188, type: !6133, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6191)
!6191 = !{!6192, !6193, !6194}
!6192 = !DILocalVariable(name: "to", arg: 1, scope: !6190, file: !6132, line: 188, type: !178)
!6193 = !DILocalVariable(name: "from", arg: 2, scope: !6190, file: !6132, line: 188, type: !1758)
!6194 = !DILocalVariable(name: "n", arg: 3, scope: !6190, file: !6132, line: 188, type: !334)
!6195 = !DILocation(line: 188, column: 27, scope: !6190)
!6196 = !DILocation(line: 188, column: 43, scope: !6190)
!6197 = !DILocation(line: 188, column: 63, scope: !6190)
!6198 = !DILocation(line: 190, column: 22, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6190, file: !6132, line: 190, column: 6)
!6200 = !DILocation(line: 190, column: 28, scope: !6199)
!6201 = !DILocation(line: 190, column: 6, scope: !6199)
!6202 = !DILocation(line: 190, column: 6, scope: !6190)
!6203 = !DILocation(line: 191, column: 21, scope: !6199)
!6204 = !DILocation(line: 191, column: 25, scope: !6199)
!6205 = !DILocation(line: 191, column: 31, scope: !6199)
!6206 = !DILocation(line: 191, column: 7, scope: !6199)
!6207 = !DILocation(line: 191, column: 5, scope: !6199)
!6208 = !DILocation(line: 191, column: 3, scope: !6199)
!6209 = !DILocation(line: 192, column: 9, scope: !6190)
!6210 = !DILocation(line: 192, column: 2, scope: !6190)
!6211 = distinct !DISubprogram(name: "check_copy_size", scope: !5240, file: !5240, line: 237, type: !6212, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6214)
!6212 = !DISubroutineType(types: !6213)
!6213 = !{!1058, !1758, !331, !1058}
!6214 = !{!6215, !6216, !6217, !6218, !6219, !6222}
!6215 = !DILocalVariable(name: "addr", arg: 1, scope: !6211, file: !5240, line: 237, type: !1758)
!6216 = !DILocalVariable(name: "bytes", arg: 2, scope: !6211, file: !5240, line: 237, type: !331)
!6217 = !DILocalVariable(name: "is_source", arg: 3, scope: !6211, file: !5240, line: 237, type: !1058)
!6218 = !DILocalVariable(name: "sz", scope: !6211, file: !5240, line: 239, type: !115)
!6219 = !DILocalVariable(name: "__ret_warn_on", scope: !6220, file: !5240, line: 249, type: !115)
!6220 = distinct !DILexicalBlock(scope: !6221, file: !5240, line: 249, column: 6)
!6221 = distinct !DILexicalBlock(scope: !6211, file: !5240, line: 249, column: 6)
!6222 = !DILocalVariable(name: "__flags", scope: !6223, file: !5240, line: 249, type: !115)
!6223 = distinct !DILexicalBlock(scope: !6224, file: !5240, line: 249, column: 6)
!6224 = distinct !DILexicalBlock(scope: !6220, file: !5240, line: 249, column: 6)
!6225 = !DILocation(line: 237, column: 29, scope: !6211)
!6226 = !DILocation(line: 237, column: 42, scope: !6211)
!6227 = !DILocation(line: 237, column: 54, scope: !6211)
!6228 = !DILocation(line: 239, column: 2, scope: !6211)
!6229 = !DILocation(line: 239, column: 6, scope: !6211)
!6230 = !DILocation(line: 239, column: 33, scope: !6211)
!6231 = !DILocation(line: 239, column: 11, scope: !6211)
!6232 = !DILocation(line: 240, column: 6, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6211, file: !5240, line: 240, column: 6)
!6234 = !DILocation(line: 0, scope: !6233)
!6235 = !DILocation(line: 240, column: 6, scope: !6211)
!6236 = !DILocation(line: 241, column: 29, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6238, file: !5240, line: 241, column: 7)
!6238 = distinct !DILexicalBlock(scope: !6233, file: !5240, line: 240, column: 39)
!6239 = !DILocation(line: 241, column: 8, scope: !6237)
!6240 = !DILocation(line: 241, column: 7, scope: !6238)
!6241 = !DILocation(line: 242, column: 18, scope: !6237)
!6242 = !DILocation(line: 242, column: 22, scope: !6237)
!6243 = !DILocation(line: 242, column: 4, scope: !6237)
!6244 = !DILocation(line: 243, column: 12, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !6237, file: !5240, line: 243, column: 12)
!6246 = !DILocation(line: 243, column: 12, scope: !6237)
!6247 = !DILocation(line: 244, column: 4, scope: !6245)
!6248 = !{i32 2111475}
!6249 = !DILocation(line: 246, column: 4, scope: !6245)
!6250 = !{i32 2111504}
!6251 = !DILocation(line: 247, column: 3, scope: !6238)
!6252 = !DILocation(line: 249, column: 6, scope: !6220)
!6253 = !DILocation(line: 249, column: 6, scope: !6224)
!6254 = !DILocation(line: 249, column: 6, scope: !6223)
!6255 = !DILocation(line: 249, column: 6, scope: !6256)
!6256 = distinct !DILexicalBlock(scope: !6223, file: !5240, line: 249, column: 6)
!6257 = !DILocation(line: 249, column: 6, scope: !6258)
!6258 = distinct !DILexicalBlock(scope: !6223, file: !5240, line: 249, column: 6)
!6259 = !{i64 2149611937, i64 2149611966, i64 2149612012, i64 2149612070, i64 2149612124, i64 2149612178, i64 2149612233, i64 2149612264, i64 2149612572, i64 2149612578, i64 2149612625, i64 2149612648, i64 2149612674}
!6260 = !DILocation(line: 249, column: 6, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6223, file: !5240, line: 249, column: 6)
!6262 = !DILocation(line: 249, column: 6, scope: !6221)
!6263 = !DILocation(line: 249, column: 6, scope: !6211)
!6264 = !DILocation(line: 250, column: 3, scope: !6221)
!6265 = !DILocation(line: 251, column: 20, scope: !6211)
!6266 = !DILocation(line: 251, column: 26, scope: !6211)
!6267 = !DILocation(line: 251, column: 33, scope: !6211)
!6268 = !DILocation(line: 251, column: 2, scope: !6211)
!6269 = !DILocation(line: 252, column: 2, scope: !6211)
!6270 = !DILocation(line: 253, column: 1, scope: !6211)
!6271 = !DISubprogram(name: "_copy_from_user", scope: !6132, file: !6132, line: 158, type: !6133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6272 = distinct !DISubprogram(name: "copy_overflow", scope: !5240, file: !5240, line: 230, type: !6273, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6275)
!6273 = !DISubroutineType(types: !6274)
!6274 = !{null, !115, !334}
!6275 = !{!6276, !6277}
!6276 = !DILocalVariable(name: "size", arg: 1, scope: !6272, file: !5240, line: 230, type: !115)
!6277 = !DILocalVariable(name: "count", arg: 2, scope: !6272, file: !5240, line: 230, type: !334)
!6278 = !DILocation(line: 230, column: 38, scope: !6272)
!6279 = !DILocation(line: 230, column: 58, scope: !6272)
!6280 = !DILocation(line: 233, column: 19, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6272, file: !5240, line: 232, column: 6)
!6282 = !DILocation(line: 233, column: 25, scope: !6281)
!6283 = !DILocation(line: 233, column: 3, scope: !6281)
!6284 = !DILocation(line: 234, column: 1, scope: !6272)
!6285 = !DISubprogram(name: "__bad_copy_from", scope: !5240, file: !5240, line: 224, type: !3507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6286 = !DISubprogram(name: "__bad_copy_to", scope: !5240, file: !5240, line: 226, type: !3507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6287 = distinct !DISubprogram(name: "check_object_size", scope: !5240, file: !5240, line: 218, type: !6288, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6290)
!6288 = !DISubroutineType(types: !6289)
!6289 = !{null, !1758, !334, !1058}
!6290 = !{!6291, !6292, !6293}
!6291 = !DILocalVariable(name: "ptr", arg: 1, scope: !6287, file: !5240, line: 218, type: !1758)
!6292 = !DILocalVariable(name: "n", arg: 2, scope: !6287, file: !5240, line: 218, type: !334)
!6293 = !DILocalVariable(name: "to_user", arg: 3, scope: !6287, file: !5240, line: 219, type: !1058)
!6294 = !DILocation(line: 218, column: 50, scope: !6287)
!6295 = !DILocation(line: 218, column: 69, scope: !6287)
!6296 = !DILocation(line: 219, column: 15, scope: !6287)
!6297 = !DILocation(line: 220, column: 3, scope: !6287)
!6298 = !DISubprogram(name: "__copy_overflow", scope: !5240, file: !5240, line: 228, type: !6273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6299 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !6030, file: !6030, line: 515, type: !6300, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6302)
!6300 = !DISubroutineType(types: !6301)
!6301 = !{!334, !4372}
!6302 = !{!6303}
!6303 = !DILocalVariable(name: "m", arg: 1, scope: !6299, file: !6030, line: 515, type: !4372)
!6304 = !DILocation(line: 515, column: 74, scope: !6299)
!6305 = !DILocation(line: 517, column: 27, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6299, file: !6030, line: 517, column: 6)
!6307 = !DILocation(line: 517, column: 6, scope: !6306)
!6308 = !DILocation(line: 517, column: 6, scope: !6299)
!6309 = !DILocation(line: 518, column: 12, scope: !6310)
!6310 = distinct !DILexicalBlock(scope: !6311, file: !6030, line: 518, column: 7)
!6311 = distinct !DILexicalBlock(scope: !6306, file: !6030, line: 517, column: 31)
!6312 = !DILocation(line: 518, column: 14, scope: !6310)
!6313 = !DILocation(line: 518, column: 7, scope: !6311)
!6314 = !DILocation(line: 519, column: 4, scope: !6310)
!6315 = !DILocation(line: 520, column: 28, scope: !6311)
!6316 = !DILocation(line: 520, column: 10, scope: !6311)
!6317 = !DILocation(line: 520, column: 3, scope: !6311)
!6318 = !DILocation(line: 522, column: 29, scope: !6319)
!6319 = distinct !DILexicalBlock(scope: !6306, file: !6030, line: 521, column: 9)
!6320 = !DILocation(line: 522, column: 10, scope: !6319)
!6321 = !DILocation(line: 522, column: 3, scope: !6319)
!6322 = !DILocation(line: 524, column: 1, scope: !6299)
!6323 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !6030, file: !6030, line: 458, type: !6300, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6324)
!6324 = !{!6325}
!6325 = !DILocalVariable(name: "m", arg: 1, scope: !6323, file: !6030, line: 458, type: !4372)
!6326 = !DILocation(line: 458, column: 66, scope: !6323)
!6327 = !DILocation(line: 460, column: 10, scope: !6323)
!6328 = !DILocation(line: 460, column: 12, scope: !6323)
!6329 = !DILocation(line: 460, column: 34, scope: !6323)
!6330 = !DILocation(line: 460, column: 39, scope: !6323)
!6331 = !DILocation(line: 460, column: 2, scope: !6323)
!6332 = !DISubprogram(name: "__msecs_to_jiffies", scope: !6030, file: !6030, line: 451, type: !6300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6333 = !DISubprogram(name: "_copy_to_user", scope: !6132, file: !6132, line: 176, type: !6133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6334 = !DISubprogram(name: "blk_get_queue", scope: !148, file: !148, line: 959, type: !6335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6335 = !DISubroutineType(types: !6336)
!6336 = !{!1058, !2108}
!6337 = !DISubprogram(name: "blk_put_queue", scope: !148, file: !148, line: 960, type: !6338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6338 = !DISubroutineType(types: !6339)
!6339 = !{null, !2108}
!6340 = distinct !DISubprogram(name: "bsg_devnode", scope: !2, file: !2, line: 240, type: !2639, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6341)
!6341 = !{!6342, !6343}
!6342 = !DILocalVariable(name: "dev", arg: 1, scope: !6340, file: !2, line: 240, type: !2162)
!6343 = !DILocalVariable(name: "mode", arg: 2, scope: !6340, file: !2, line: 240, type: !2091)
!6344 = !DILocation(line: 240, column: 47, scope: !6340)
!6345 = !DILocation(line: 240, column: 61, scope: !6340)
!6346 = !DILocation(line: 242, column: 50, scope: !6340)
!6347 = !DILocation(line: 242, column: 41, scope: !6340)
!6348 = !DILocation(line: 242, column: 9, scope: !6340)
!6349 = !DILocation(line: 242, column: 2, scope: !6340)
!6350 = !DISubprogram(name: "kasprintf", scope: !6351, file: !6351, line: 16, type: !6352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6351 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!6352 = !DISubroutineType(types: !6353)
!6353 = !{!284, !179, !203, null}
!6354 = distinct !DISubprogram(name: "dev_name", scope: !100, file: !100, line: 858, type: !6355, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6357)
!6355 = !DISubroutineType(types: !6356)
!6356 = !{!203, !2162}
!6357 = !{!6358}
!6358 = !DILocalVariable(name: "dev", arg: 1, scope: !6354, file: !100, line: 858, type: !2162)
!6359 = !DILocation(line: 858, column: 57, scope: !6354)
!6360 = !DILocation(line: 861, column: 6, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !6354, file: !100, line: 861, column: 6)
!6362 = !DILocation(line: 861, column: 11, scope: !6361)
!6363 = !DILocation(line: 861, column: 6, scope: !6354)
!6364 = !DILocation(line: 862, column: 10, scope: !6361)
!6365 = !DILocation(line: 862, column: 15, scope: !6361)
!6366 = !DILocation(line: 862, column: 3, scope: !6361)
!6367 = !DILocation(line: 864, column: 23, scope: !6354)
!6368 = !DILocation(line: 864, column: 28, scope: !6354)
!6369 = !DILocation(line: 864, column: 9, scope: !6354)
!6370 = !DILocation(line: 864, column: 2, scope: !6354)
!6371 = !DILocation(line: 865, column: 1, scope: !6354)
!6372 = distinct !DISubprogram(name: "kobject_name", scope: !200, file: !200, line: 87, type: !272, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6373)
!6373 = !{!6374}
!6374 = !DILocalVariable(name: "kobj", arg: 1, scope: !6372, file: !200, line: 87, type: !267)
!6375 = !DILocation(line: 87, column: 62, scope: !6372)
!6376 = !DILocation(line: 89, column: 9, scope: !6372)
!6377 = !DILocation(line: 89, column: 15, scope: !6372)
!6378 = !DILocation(line: 89, column: 2, scope: !6372)
!6379 = !DISubprogram(name: "class_register", scope: !2631, file: !2631, line: 80, type: !6380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6380 = !DISubroutineType(types: !6381)
!6381 = !{!115, !2628}
!6382 = !DISubprogram(name: "alloc_chrdev_region", scope: !65, file: !65, line: 2592, type: !6383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6383 = !DISubroutineType(types: !6384)
!6384 = !{!115, !6385, !13, !13, !203}
!6385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!6386 = !DISubprogram(name: "class_unregister", scope: !2631, file: !2631, line: 81, type: !2643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
