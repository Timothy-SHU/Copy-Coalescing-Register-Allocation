; ModuleID = 'sound/core/hwdep.c'
source_filename = "sound/core/hwdep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hwdep_new: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hwdep_new ; .previous"
module asm ".section\09\22.initcall6.init..kmod_snd_hwdep__278_548_alsa_hwdep_init\22, \22a\22\09\09"
module asm "__initcall__kmod_snd_hwdep__278_548_alsa_hwdep_init6:\09\09\09"
module asm ".long\09__initstub__kmod_snd_hwdep__278_548_alsa_hwdep_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcpu_hot = type { %union.anon.20 }
%union.anon.20 = type { %struct.anon.21, [16 x i8] }
%struct.anon.21 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.snd_hwdep = type { ptr, %struct.list_head, i32, [32 x i8], [80 x i8], i32, %struct.snd_hwdep_ops, %struct.wait_queue_head, ptr, ptr, ptr, %struct.mutex, i32, i32, i8 }
%struct.snd_hwdep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, ptr, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i64, %struct.list_head, %struct.list_head, %struct.xarray, %struct.xarray, i8, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i64, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.13, %struct.qspinlock }
%union.anon.13 = type { %struct.atomic_t }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.snd_hwdep_info = type { i32, i32, [64 x i8], [80 x i8], i32, [64 x i8] }
%struct.file = type { %union.anon.15, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.snd_hwdep_dsp_status = type { i32, [32 x i8], i32, i32, i32, [16 x i8] }
%struct.snd_hwdep_dsp_image = type { i32, [64 x i8], ptr, i64, i64 }
%struct.snd_hwdep_dsp_image32 = type { i32, [64 x i8], i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.16, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.17, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.18, ptr, %struct.address_space, %struct.list_head, %union.anon.19, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.16 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.17 = type { %struct.callback_head }
%union.anon.18 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.19 = type { ptr }
%struct.snd_info_entry = type { ptr, i16, i64, i16, %union.anon.22, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.22 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_info_buffer = type { ptr, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author273 = internal constant [50 x i8] c"snd_hwdep.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description274 = internal constant [47 x i8] c"snd_hwdep.description=Hardware dependent layer\00", section ".modinfo", align 1, !dbg !4610
@__UNIQUE_ID_file275 = internal constant [36 x i8] c"snd_hwdep.file=sound/core/snd-hwdep\00", section ".modinfo", align 1, !dbg !4615
@__UNIQUE_ID_license276 = internal constant [22 x i8] c"snd_hwdep.license=GPL\00", section ".modinfo", align 1, !dbg !4620
@snd_hwdep_new.ops = internal constant %struct.snd_device_ops { ptr @snd_hwdep_dev_free, ptr @snd_hwdep_dev_register, ptr @snd_hwdep_dev_disconnect }, align 8, !dbg !4625
@snd_hwdep_new.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4660
@.str = private unnamed_addr constant [18 x i8] c"&hwdep->open_wait\00", align 1, !dbg !4662
@snd_hwdep_new.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4667
@.str.2 = private unnamed_addr constant [19 x i8] c"&hwdep->open_mutex\00", align 1, !dbg !4669
@.str.3 = private unnamed_addr constant [9 x i8] c"hwC%iD%i\00", align 1, !dbg !4674
@__UNIQUE_ID___addressable_snd_hwdep_new277 = internal global ptr @snd_hwdep_new, section ".discard.addressable", align 8, !dbg !4679
@snd_hwdep_proc_entry = internal global ptr null, align 8, !dbg !4687
@__UNIQUE_ID___addressable___initstub__kmod_snd_hwdep__278_548_alsa_hwdep_init6279 = internal global ptr @__initstub__kmod_snd_hwdep__278_548_alsa_hwdep_init6, section ".discard.addressable", align 8, !dbg !4681
@__exitcall_alsa_hwdep_exit = internal global ptr @alsa_hwdep_exit, section ".exitcall.exit", align 8, !dbg !4683
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4689
@register_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @register_mutex, i64 16), ptr getelementptr (i8, ptr @register_mutex, i64 16) } }, align 8, !dbg !4697
@snd_hwdep_devices = internal global %struct.list_head { ptr @snd_hwdep_devices, ptr @snd_hwdep_devices }, align 8, !dbg !4699
@snd_hwdep_f_ops = internal constant %struct.file_operations { ptr null, ptr @snd_hwdep_llseek, ptr @snd_hwdep_read, ptr @snd_hwdep_write, ptr null, ptr null, ptr null, ptr null, ptr @snd_hwdep_poll, ptr @snd_hwdep_ioctl, ptr @snd_hwdep_ioctl_compat, ptr @snd_hwdep_mmap, i64 0, ptr @snd_hwdep_open, ptr null, ptr @snd_hwdep_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4701
@.str.5 = private unnamed_addr constant [20 x i8] c"unable to register\0A\00", align 1, !dbg !4694
@.str.6 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !4703
@snd_major = external dso_local global i32, align 4
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.7 = private unnamed_addr constant [6 x i8] c"hwdep\00", align 1, !dbg !4709
@.str.8 = private unnamed_addr constant [15 x i8] c"%02i-%02i: %s\0A\00", align 1, !dbg !4711
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author273, ptr @__UNIQUE_ID_description274, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_license276, ptr @__UNIQUE_ID___addressable_snd_hwdep_new277, ptr @snd_hwdep_proc_done, ptr @alsa_hwdep_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_snd_hwdep__278_548_alsa_hwdep_init6279, ptr @__exitcall_alsa_hwdep_exit], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hwdep_new(ptr noundef %card, ptr noundef %id, i32 noundef %device, ptr noundef %rhwdep) #0 align 16 !dbg !4627 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %device.addr = alloca i32, align 4
  %rhwdep.addr = alloca ptr, align 8
  %hwdep = alloca ptr, align 8
  %err = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !4632, metadata !DIExpression()), !dbg !4729
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !4633, metadata !DIExpression()), !dbg !4730
  store i32 %device, ptr %device.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !4634, metadata !DIExpression()), !dbg !4731
  store ptr %rhwdep, ptr %rhwdep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rhwdep.addr, metadata !4635, metadata !DIExpression()), !dbg !4732
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwdep) #21, !dbg !4733
  call void @llvm.dbg.declare(metadata ptr %hwdep, metadata !4636, metadata !DIExpression()), !dbg !4734
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #21, !dbg !4735
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4637, metadata !DIExpression()), !dbg !4736
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !4737
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4638, metadata !DIExpression()), !dbg !4737
  %0 = load ptr, ptr %card.addr, align 8, !dbg !4737
  %tobool = icmp ne ptr %0, null, !dbg !4737
  %lnot = xor i1 %tobool, true, !dbg !4737
  %lnot1 = xor i1 %lnot, true, !dbg !4737
  %lnot2 = xor i1 %lnot1, true, !dbg !4737
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4737
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4737
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !4737
  %tobool3 = icmp ne i32 %1, 0, !dbg !4737
  %lnot4 = xor i1 %tobool3, true, !dbg !4737
  %lnot6 = xor i1 %lnot4, true, !dbg !4737
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4737
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4737
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4737
  store i64 %expval, ptr %tmp, align 8, !dbg !4737
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !4738
  %2 = load i64, ptr %tmp, align 8, !dbg !4737
  %tobool8 = icmp ne i64 %2, 0, !dbg !4738
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4739

if.then:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4, !dbg !4740
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4740

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %rhwdep.addr, align 8, !dbg !4741
  %tobool9 = icmp ne ptr %3, null, !dbg !4741
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4743

if.then10:                                        ; preds = %if.end
  %4 = load ptr, ptr %rhwdep.addr, align 8, !dbg !4744
  store ptr null, ptr %4, align 8, !dbg !4745
  br label %if.end11, !dbg !4746

if.end11:                                         ; preds = %if.then10, %if.end
  %call = call noalias ptr @kzalloc(i64 noundef 328, i32 noundef 3264) #22, !dbg !4747
  store ptr %call, ptr %hwdep, align 8, !dbg !4748
  %5 = load ptr, ptr %hwdep, align 8, !dbg !4749
  %tobool12 = icmp ne ptr %5, null, !dbg !4749
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !4751

if.then13:                                        ; preds = %if.end11
  store i32 -12, ptr %retval, align 4, !dbg !4752
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4752

if.end14:                                         ; preds = %if.end11
  br label %do.body, !dbg !4753

do.body:                                          ; preds = %if.end14
  %6 = load ptr, ptr %hwdep, align 8, !dbg !4754
  %open_wait = getelementptr inbounds %struct.snd_hwdep, ptr %6, i32 0, i32 7, !dbg !4754
  call void @__init_waitqueue_head(ptr noundef %open_wait, ptr noundef @.str, ptr noundef @snd_hwdep_new.__key) #23, !dbg !4754
  br label %do.cond, !dbg !4754

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4754

do.end:                                           ; preds = %do.cond
  br label %do.body15, !dbg !4756

do.body15:                                        ; preds = %do.end
  %7 = load ptr, ptr %hwdep, align 8, !dbg !4757
  %open_mutex = getelementptr inbounds %struct.snd_hwdep, ptr %7, i32 0, i32 11, !dbg !4757
  call void @__mutex_init(ptr noundef %open_mutex, ptr noundef @.str.2, ptr noundef @snd_hwdep_new.__key.1) #23, !dbg !4757
  br label %do.cond16, !dbg !4757

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !4757

do.end17:                                         ; preds = %do.cond16
  %8 = load ptr, ptr %card.addr, align 8, !dbg !4759
  %9 = load ptr, ptr %hwdep, align 8, !dbg !4760
  %card18 = getelementptr inbounds %struct.snd_hwdep, ptr %9, i32 0, i32 0, !dbg !4761
  store ptr %8, ptr %card18, align 8, !dbg !4762
  %10 = load i32, ptr %device.addr, align 4, !dbg !4763
  %11 = load ptr, ptr %hwdep, align 8, !dbg !4764
  %device19 = getelementptr inbounds %struct.snd_hwdep, ptr %11, i32 0, i32 2, !dbg !4765
  store i32 %10, ptr %device19, align 8, !dbg !4766
  %12 = load ptr, ptr %id.addr, align 8, !dbg !4767
  %tobool20 = icmp ne ptr %12, null, !dbg !4767
  br i1 %tobool20, label %if.then21, label %if.end24, !dbg !4769

if.then21:                                        ; preds = %do.end17
  %13 = load ptr, ptr %hwdep, align 8, !dbg !4770
  %id22 = getelementptr inbounds %struct.snd_hwdep, ptr %13, i32 0, i32 3, !dbg !4771
  %arraydecay = getelementptr inbounds [32 x i8], ptr %id22, i64 0, i64 0, !dbg !4770
  %14 = load ptr, ptr %id.addr, align 8, !dbg !4772
  %call23 = call i64 @strscpy(ptr noundef %arraydecay, ptr noundef %14, i64 noundef 32) #23, !dbg !4773
  br label %if.end24, !dbg !4773

if.end24:                                         ; preds = %if.then21, %do.end17
  %15 = load ptr, ptr %hwdep, align 8, !dbg !4774
  %dev = getelementptr inbounds %struct.snd_hwdep, ptr %15, i32 0, i32 10, !dbg !4775
  %16 = load ptr, ptr %card.addr, align 8, !dbg !4776
  %call25 = call i32 @snd_device_alloc(ptr noundef %dev, ptr noundef %16) #23, !dbg !4777
  store i32 %call25, ptr %err, align 4, !dbg !4778
  %17 = load i32, ptr %err, align 4, !dbg !4779
  %cmp = icmp slt i32 %17, 0, !dbg !4781
  br i1 %cmp, label %if.then27, label %if.end28, !dbg !4782

if.then27:                                        ; preds = %if.end24
  %18 = load ptr, ptr %hwdep, align 8, !dbg !4783
  call void @snd_hwdep_free(ptr noundef %18) #23, !dbg !4785
  %19 = load i32, ptr %err, align 4, !dbg !4786
  store i32 %19, ptr %retval, align 4, !dbg !4787
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4787

if.end28:                                         ; preds = %if.end24
  %20 = load ptr, ptr %hwdep, align 8, !dbg !4788
  %dev29 = getelementptr inbounds %struct.snd_hwdep, ptr %20, i32 0, i32 10, !dbg !4789
  %21 = load ptr, ptr %dev29, align 8, !dbg !4789
  %22 = load ptr, ptr %card.addr, align 8, !dbg !4790
  %number = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 0, !dbg !4791
  %23 = load i32, ptr %number, align 8, !dbg !4791
  %24 = load i32, ptr %device.addr, align 4, !dbg !4792
  %call30 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %21, ptr noundef @.str.3, i32 noundef %23, i32 noundef %24) #23, !dbg !4793
  %25 = load ptr, ptr %card.addr, align 8, !dbg !4794
  %26 = load ptr, ptr %hwdep, align 8, !dbg !4795
  %call31 = call i32 @snd_device_new(ptr noundef %25, i32 noundef 9, ptr noundef %26, ptr noundef @snd_hwdep_new.ops) #23, !dbg !4796
  store i32 %call31, ptr %err, align 4, !dbg !4797
  %27 = load i32, ptr %err, align 4, !dbg !4798
  %cmp32 = icmp slt i32 %27, 0, !dbg !4800
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !4801

if.then34:                                        ; preds = %if.end28
  %28 = load ptr, ptr %hwdep, align 8, !dbg !4802
  call void @snd_hwdep_free(ptr noundef %28) #23, !dbg !4804
  %29 = load i32, ptr %err, align 4, !dbg !4805
  store i32 %29, ptr %retval, align 4, !dbg !4806
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4806

if.end35:                                         ; preds = %if.end28
  %30 = load ptr, ptr %rhwdep.addr, align 8, !dbg !4807
  %tobool36 = icmp ne ptr %30, null, !dbg !4807
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !4809

if.then37:                                        ; preds = %if.end35
  %31 = load ptr, ptr %hwdep, align 8, !dbg !4810
  %32 = load ptr, ptr %rhwdep.addr, align 8, !dbg !4811
  store ptr %31, ptr %32, align 8, !dbg !4812
  br label %if.end38, !dbg !4813

if.end38:                                         ; preds = %if.then37, %if.end35
  store i32 0, ptr %retval, align 4, !dbg !4814
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4814

cleanup:                                          ; preds = %if.end38, %if.then34, %if.then27, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #21, !dbg !4815
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwdep) #21, !dbg !4815
  %33 = load i32, ptr %retval, align 4, !dbg !4815
  ret i32 %33, !dbg !4815
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_hwdep_dev_free(ptr noundef %device) #0 align 16 !dbg !4816 {
entry:
  %device.addr = alloca ptr, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !4818, metadata !DIExpression()), !dbg !4819
  %0 = load ptr, ptr %device.addr, align 8, !dbg !4820
  %device_data = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4, !dbg !4821
  %1 = load ptr, ptr %device_data, align 8, !dbg !4821
  call void @snd_hwdep_free(ptr noundef %1) #23, !dbg !4822
  ret i32 0, !dbg !4823
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_hwdep_dev_register(ptr noundef %device) #0 align 16 !dbg !4824 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %hwdep = alloca ptr, align 8
  %card = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !4826, metadata !DIExpression()), !dbg !4830
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwdep) #21, !dbg !4831
  call void @llvm.dbg.declare(metadata ptr %hwdep, metadata !4827, metadata !DIExpression()), !dbg !4832
  %0 = load ptr, ptr %device.addr, align 8, !dbg !4833
  %device_data = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4, !dbg !4834
  %1 = load ptr, ptr %device_data, align 8, !dbg !4834
  store ptr %1, ptr %hwdep, align 8, !dbg !4832
  call void @llvm.lifetime.start.p0(i64 8, ptr %card) #21, !dbg !4835
  call void @llvm.dbg.declare(metadata ptr %card, metadata !4828, metadata !DIExpression()), !dbg !4836
  %2 = load ptr, ptr %hwdep, align 8, !dbg !4837
  %card1 = getelementptr inbounds %struct.snd_hwdep, ptr %2, i32 0, i32 0, !dbg !4838
  %3 = load ptr, ptr %card1, align 8, !dbg !4838
  store ptr %3, ptr %card, align 8, !dbg !4836
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #21, !dbg !4839
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4829, metadata !DIExpression()), !dbg !4840
  call void @mutex_lock(ptr noundef @register_mutex) #23, !dbg !4841
  %4 = load ptr, ptr %card, align 8, !dbg !4842
  %5 = load ptr, ptr %hwdep, align 8, !dbg !4844
  %device2 = getelementptr inbounds %struct.snd_hwdep, ptr %5, i32 0, i32 2, !dbg !4845
  %6 = load i32, ptr %device2, align 8, !dbg !4845
  %call = call ptr @snd_hwdep_search(ptr noundef %4, i32 noundef %6) #23, !dbg !4846
  %tobool = icmp ne ptr %call, null, !dbg !4846
  br i1 %tobool, label %if.then, label %if.end, !dbg !4847

if.then:                                          ; preds = %entry
  call void @mutex_unlock(ptr noundef @register_mutex) #23, !dbg !4848
  store i32 -16, ptr %retval, align 4, !dbg !4850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4850

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %hwdep, align 8, !dbg !4851
  %list = getelementptr inbounds %struct.snd_hwdep, ptr %7, i32 0, i32 1, !dbg !4852
  call void @list_add_tail(ptr noundef %list, ptr noundef @snd_hwdep_devices) #23, !dbg !4853
  %8 = load ptr, ptr %hwdep, align 8, !dbg !4854
  %card3 = getelementptr inbounds %struct.snd_hwdep, ptr %8, i32 0, i32 0, !dbg !4855
  %9 = load ptr, ptr %card3, align 8, !dbg !4855
  %10 = load ptr, ptr %hwdep, align 8, !dbg !4856
  %device4 = getelementptr inbounds %struct.snd_hwdep, ptr %10, i32 0, i32 2, !dbg !4857
  %11 = load i32, ptr %device4, align 8, !dbg !4857
  %12 = load ptr, ptr %hwdep, align 8, !dbg !4858
  %13 = load ptr, ptr %hwdep, align 8, !dbg !4859
  %dev = getelementptr inbounds %struct.snd_hwdep, ptr %13, i32 0, i32 10, !dbg !4860
  %14 = load ptr, ptr %dev, align 8, !dbg !4860
  %call5 = call i32 @snd_register_device(i32 noundef 4, ptr noundef %9, i32 noundef %11, ptr noundef @snd_hwdep_f_ops, ptr noundef %12, ptr noundef %14) #23, !dbg !4861
  store i32 %call5, ptr %err, align 4, !dbg !4862
  %15 = load i32, ptr %err, align 4, !dbg !4863
  %cmp = icmp slt i32 %15, 0, !dbg !4865
  br i1 %cmp, label %if.then6, label %if.end9, !dbg !4866

if.then6:                                         ; preds = %if.end
  br label %do.body, !dbg !4867

do.body:                                          ; preds = %if.then6
  br label %do.cond, !dbg !4870

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4870

do.end:                                           ; preds = %do.cond
  %16 = load ptr, ptr %hwdep, align 8, !dbg !4867
  %dev7 = getelementptr inbounds %struct.snd_hwdep, ptr %16, i32 0, i32 10, !dbg !4867
  %17 = load ptr, ptr %dev7, align 8, !dbg !4867
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef @.str.5) #24, !dbg !4867
  %18 = load ptr, ptr %hwdep, align 8, !dbg !4872
  %list8 = getelementptr inbounds %struct.snd_hwdep, ptr %18, i32 0, i32 1, !dbg !4873
  call void @list_del(ptr noundef %list8) #23, !dbg !4874
  call void @mutex_unlock(ptr noundef @register_mutex) #23, !dbg !4875
  %19 = load i32, ptr %err, align 4, !dbg !4876
  store i32 %19, ptr %retval, align 4, !dbg !4877
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4877

if.end9:                                          ; preds = %if.end
  call void @mutex_unlock(ptr noundef @register_mutex) #23, !dbg !4878
  store i32 0, ptr %retval, align 4, !dbg !4879
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4879

cleanup:                                          ; preds = %if.end9, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #21, !dbg !4880
  call void @llvm.lifetime.end.p0(i64 8, ptr %card) #21, !dbg !4880
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwdep) #21, !dbg !4880
  %20 = load i32, ptr %retval, align 4, !dbg !4880
  ret i32 %20, !dbg !4880
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_hwdep_dev_disconnect(ptr noundef %device) #0 align 16 !dbg !4881 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %hwdep = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !4883, metadata !DIExpression()), !dbg !4888
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwdep) #21, !dbg !4889
  call void @llvm.dbg.declare(metadata ptr %hwdep, metadata !4884, metadata !DIExpression()), !dbg !4890
  %0 = load ptr, ptr %device.addr, align 8, !dbg !4891
  %device_data = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4, !dbg !4892
  %1 = load ptr, ptr %device_data, align 8, !dbg !4892
  store ptr %1, ptr %hwdep, align 8, !dbg !4890
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !4893
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4885, metadata !DIExpression()), !dbg !4893
  %2 = load ptr, ptr %hwdep, align 8, !dbg !4893
  %tobool = icmp ne ptr %2, null, !dbg !4893
  %lnot = xor i1 %tobool, true, !dbg !4893
  %lnot1 = xor i1 %lnot, true, !dbg !4893
  %lnot2 = xor i1 %lnot1, true, !dbg !4893
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4893
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4893
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !4893
  %tobool3 = icmp ne i32 %3, 0, !dbg !4893
  %lnot4 = xor i1 %tobool3, true, !dbg !4893
  %lnot6 = xor i1 %lnot4, true, !dbg !4893
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4893
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4893
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4893
  store i64 %expval, ptr %tmp, align 8, !dbg !4893
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !4894
  %4 = load i64, ptr %tmp, align 8, !dbg !4893
  %tobool8 = icmp ne i64 %4, 0, !dbg !4894
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4895

if.then:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4, !dbg !4896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4896

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @register_mutex) #23, !dbg !4897
  %5 = load ptr, ptr %hwdep, align 8, !dbg !4898
  %card = getelementptr inbounds %struct.snd_hwdep, ptr %5, i32 0, i32 0, !dbg !4900
  %6 = load ptr, ptr %card, align 8, !dbg !4900
  %7 = load ptr, ptr %hwdep, align 8, !dbg !4901
  %device9 = getelementptr inbounds %struct.snd_hwdep, ptr %7, i32 0, i32 2, !dbg !4902
  %8 = load i32, ptr %device9, align 8, !dbg !4902
  %call = call ptr @snd_hwdep_search(ptr noundef %6, i32 noundef %8) #23, !dbg !4903
  %9 = load ptr, ptr %hwdep, align 8, !dbg !4904
  %cmp = icmp ne ptr %call, %9, !dbg !4905
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !4906

if.then11:                                        ; preds = %if.end
  call void @mutex_unlock(ptr noundef @register_mutex) #23, !dbg !4907
  store i32 -22, ptr %retval, align 4, !dbg !4909
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4909

if.end12:                                         ; preds = %if.end
  %10 = load ptr, ptr %hwdep, align 8, !dbg !4910
  %open_mutex = getelementptr inbounds %struct.snd_hwdep, ptr %10, i32 0, i32 11, !dbg !4911
  call void @mutex_lock(ptr noundef %open_mutex) #23, !dbg !4912
  %11 = load ptr, ptr %hwdep, align 8, !dbg !4913
  %open_wait = getelementptr inbounds %struct.snd_hwdep, ptr %11, i32 0, i32 7, !dbg !4913
  %call13 = call i32 @__wake_up(ptr noundef %open_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #23, !dbg !4913
  %12 = load ptr, ptr %hwdep, align 8, !dbg !4914
  %dev = getelementptr inbounds %struct.snd_hwdep, ptr %12, i32 0, i32 10, !dbg !4915
  %13 = load ptr, ptr %dev, align 8, !dbg !4915
  %call14 = call i32 @snd_unregister_device(ptr noundef %13) #23, !dbg !4916
  %14 = load ptr, ptr %hwdep, align 8, !dbg !4917
  %list = getelementptr inbounds %struct.snd_hwdep, ptr %14, i32 0, i32 1, !dbg !4918
  call void @list_del_init(ptr noundef %list) #23, !dbg !4919
  %15 = load ptr, ptr %hwdep, align 8, !dbg !4920
  %open_mutex15 = getelementptr inbounds %struct.snd_hwdep, ptr %15, i32 0, i32 11, !dbg !4921
  call void @mutex_unlock(ptr noundef %open_mutex15) #23, !dbg !4922
  call void @mutex_unlock(ptr noundef @register_mutex) #23, !dbg !4923
  store i32 0, ptr %retval, align 4, !dbg !4924
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4924

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwdep) #21, !dbg !4925
  %16 = load i32, ptr %retval, align 4, !dbg !4925
  ret i32 %16, !dbg !4925
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !4926 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4930, metadata !DIExpression()), !dbg !4932
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4931, metadata !DIExpression()), !dbg !4933
  %0 = load i64, ptr %size.addr, align 8, !dbg !4934
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4935
  %or = or i32 %1, 256, !dbg !4936
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #22, !dbg !4937
  ret ptr %call, !dbg !4938
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4939 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4944 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4948 dso_local i64 @strscpy(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4952 dso_local i32 @snd_device_alloc(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_hwdep_free(ptr noundef %hwdep) #0 align 16 !dbg !4956 {
entry:
  %hwdep.addr = alloca ptr, align 8
  store ptr %hwdep, ptr %hwdep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hwdep.addr, metadata !4958, metadata !DIExpression()), !dbg !4959
  %0 = load ptr, ptr %hwdep.addr, align 8, !dbg !4960
  %tobool = icmp ne ptr %0, null, !dbg !4960
  br i1 %tobool, label %if.end, label %if.then, !dbg !4962

if.then:                                          ; preds = %entry
  br label %return, !dbg !4963

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %hwdep.addr, align 8, !dbg !4964
  %private_free = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 9, !dbg !4966
  %2 = load ptr, ptr %private_free, align 8, !dbg !4966
  %tobool1 = icmp ne ptr %2, null, !dbg !4964
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !4967

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %hwdep.addr, align 8, !dbg !4968
  %private_free3 = getelementptr inbounds %struct.snd_hwdep, ptr %3, i32 0, i32 9, !dbg !4969
  %4 = load ptr, ptr %private_free3, align 8, !dbg !4969
  %5 = load ptr, ptr %hwdep.addr, align 8, !dbg !4970
  call void %4(ptr noundef %5) #23, !dbg !4968
  br label %if.end4, !dbg !4968

if.end4:                                          ; preds = %if.then2, %if.end
  %6 = load ptr, ptr %hwdep.addr, align 8, !dbg !4971
  %dev = getelementptr inbounds %struct.snd_hwdep, ptr %6, i32 0, i32 10, !dbg !4972
  %7 = load ptr, ptr %dev, align 8, !dbg !4972
  call void @put_device(ptr noundef %7) #23, !dbg !4973
  %8 = load ptr, ptr %hwdep.addr, align 8, !dbg !4974
  call void @kfree(ptr noundef %8) #23, !dbg !4975
  br label %return, !dbg !4976

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !4976
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4977 dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4980 dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @snd_hwdep_proc_done() #6 section ".exit.text" align 16 !dbg !4983 {
entry:
  %0 = load ptr, ptr @snd_hwdep_proc_entry, align 8, !dbg !4984
  call void @snd_info_free_entry(ptr noundef %0) #23, !dbg !4985
  ret void, !dbg !4986
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4987 dso_local void @snd_info_free_entry(ptr noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @alsa_hwdep_exit() #6 section ".exit.text" align 16 !dbg !4988 {
entry:
  %call = call i32 @snd_ctl_unregister_ioctl(ptr noundef @snd_hwdep_control_ioctl) #23, !dbg !4989
  %call1 = call i32 @snd_ctl_unregister_ioctl_compat(ptr noundef @snd_hwdep_control_ioctl) #23, !dbg !4990
  call void @snd_hwdep_proc_done() #24, !dbg !4991
  ret void, !dbg !4992
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4993 dso_local i32 @snd_ctl_unregister_ioctl(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_hwdep_control_ioctl(ptr noundef %card, ptr noundef %control, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5016 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca ptr, align 8
  %control.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %device = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %tmp5 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp25 = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp28 = alloca i64, align 8
  %info = alloca ptr, align 8
  %device35 = alloca i32, align 4
  %err = alloca i32, align 4
  %hwdep = alloca ptr, align 8
  %tmp36 = alloca i64, align 8
  %__ret_gu37 = alloca i32, align 4
  %__val_gu38 = alloca i32, align 4
  %__tmp43 = alloca i64, align 8
  %tmp45 = alloca i32, align 4
  %tmp47 = alloca i64, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !5018, metadata !DIExpression()), !dbg !5052
  store ptr %control, ptr %control.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %control.addr, metadata !5019, metadata !DIExpression()), !dbg !5053
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5020, metadata !DIExpression()), !dbg !5054
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5021, metadata !DIExpression()), !dbg !5055
  %0 = load i32, ptr %cmd.addr, align 4, !dbg !5056
  switch i32 %0, label %sw.epilog [
    i32 -1073457888, label %sw.bb
    i32 -2133043935, label %sw.bb34
  ], !dbg !5057

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %device) #21, !dbg !5058
  call void @llvm.dbg.declare(metadata ptr %device, metadata !5022, metadata !DIExpression()), !dbg !5059
  call void @might_fault() #23, !dbg !5060
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #21, !dbg !5061
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !5025, metadata !DIExpression()), !dbg !5061
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #21, !dbg !5061
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !5029, metadata !DIExpression()), !dbg !5061
  %1 = call i64 @llvm.read_register.i64(metadata !4719), !dbg !5061
  %2 = load i64, ptr %arg.addr, align 8, !dbg !5061
  %3 = inttoptr i64 %2 to ptr, !dbg !5061
  %4 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %3, i64 4, i64 %1) #21, !dbg !5061, !srcloc !5062
  %asmresult = extractvalue { ptr, i32, i64 } %4, 0, !dbg !5061
  %asmresult1 = extractvalue { ptr, i32, i64 } %4, 1, !dbg !5061
  %asmresult2 = extractvalue { ptr, i32, i64 } %4, 2, !dbg !5061
  %5 = ptrtoint ptr %asmresult to i64, !dbg !5061
  %6 = trunc i64 %5 to i32, !dbg !5061
  store i32 %6, ptr %__ret_gu, align 4, !dbg !5061
  store i32 %asmresult1, ptr %__val_gu, align 4, !dbg !5061
  call void @llvm.write_register.i64(metadata !4719, i64 %asmresult2), !dbg !5061
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #21, !dbg !5063
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !5030, metadata !DIExpression()), !dbg !5063
  %7 = load i32, ptr %__val_gu, align 4, !dbg !5063
  %conv = zext i32 %7 to i64, !dbg !5063
  store i64 %conv, ptr %__tmp, align 8, !dbg !5063
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #23, !dbg !5063
  %8 = load i64, ptr %__tmp, align 8, !dbg !5063
  %conv4 = trunc i64 %8 to i32, !dbg !5063
  store i32 %conv4, ptr %__val_gu, align 4, !dbg !5063
  store i32 %conv4, ptr %tmp3, align 4, !dbg !5063
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #21, !dbg !5061
  %9 = load i32, ptr %tmp3, align 4, !dbg !5063
  %10 = load i32, ptr %__val_gu, align 4, !dbg !5061
  store i32 %10, ptr %device, align 4, !dbg !5061
  %11 = load i32, ptr %__ret_gu, align 4, !dbg !5061
  %conv6 = sext i32 %11 to i64, !dbg !5061
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !5061
  store i64 %expval, ptr %tmp5, align 8, !dbg !5061
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #21, !dbg !5060
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #21, !dbg !5060
  %12 = load i64, ptr %tmp5, align 8, !dbg !5061
  store i64 %12, ptr %tmp, align 8, !dbg !5060
  %13 = load i64, ptr %tmp, align 8, !dbg !5060
  %tobool = icmp ne i64 %13, 0, !dbg !5064
  br i1 %tobool, label %if.then, label %if.end, !dbg !5065

if.then:                                          ; preds = %sw.bb
  store i32 -14, ptr %retval, align 4, !dbg !5066
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5066

if.end:                                           ; preds = %sw.bb
  call void @mutex_lock(ptr noundef @register_mutex) #23, !dbg !5067
  %14 = load i32, ptr %device, align 4, !dbg !5068
  %cmp = icmp slt i32 %14, 0, !dbg !5070
  br i1 %cmp, label %if.then8, label %if.else, !dbg !5071

if.then8:                                         ; preds = %if.end
  store i32 0, ptr %device, align 4, !dbg !5072
  br label %if.end14, !dbg !5073

if.else:                                          ; preds = %if.end
  %15 = load i32, ptr %device, align 4, !dbg !5074
  %cmp9 = icmp slt i32 %15, 4, !dbg !5076
  br i1 %cmp9, label %if.then11, label %if.else12, !dbg !5077

if.then11:                                        ; preds = %if.else
  %16 = load i32, ptr %device, align 4, !dbg !5078
  %inc = add i32 %16, 1, !dbg !5078
  store i32 %inc, ptr %device, align 4, !dbg !5078
  br label %if.end13, !dbg !5079

if.else12:                                        ; preds = %if.else
  store i32 4, ptr %device, align 4, !dbg !5080
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then11
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then8
  br label %while.cond, !dbg !5081

while.cond:                                       ; preds = %if.end19, %if.end14
  %17 = load i32, ptr %device, align 4, !dbg !5082
  %cmp15 = icmp slt i32 %17, 4, !dbg !5083
  br i1 %cmp15, label %while.body, label %while.end, !dbg !5081

while.body:                                       ; preds = %while.cond
  %18 = load ptr, ptr %card.addr, align 8, !dbg !5084
  %19 = load i32, ptr %device, align 4, !dbg !5087
  %call = call ptr @snd_hwdep_search(ptr noundef %18, i32 noundef %19) #23, !dbg !5088
  %tobool17 = icmp ne ptr %call, null, !dbg !5088
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !5089

if.then18:                                        ; preds = %while.body
  br label %while.end, !dbg !5090

if.end19:                                         ; preds = %while.body
  %20 = load i32, ptr %device, align 4, !dbg !5091
  %inc20 = add i32 %20, 1, !dbg !5091
  store i32 %inc20, ptr %device, align 4, !dbg !5091
  br label %while.cond, !dbg !5081, !llvm.loop !5092

while.end:                                        ; preds = %if.then18, %while.cond
  %21 = load i32, ptr %device, align 4, !dbg !5096
  %cmp21 = icmp sge i32 %21, 4, !dbg !5098
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !5099

if.then23:                                        ; preds = %while.end
  store i32 -1, ptr %device, align 4, !dbg !5100
  br label %if.end24, !dbg !5101

if.end24:                                         ; preds = %if.then23, %while.end
  call void @mutex_unlock(ptr noundef @register_mutex) #23, !dbg !5102
  call void @might_fault() #23, !dbg !5103
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #21, !dbg !5104
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !5032, metadata !DIExpression()), !dbg !5104
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #21, !dbg !5104
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !5036, metadata !DIExpression()), !dbg !5104
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #21, !dbg !5104
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !5037, metadata !DIExpression()), !dbg !5104
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #21, !dbg !5104
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !5038, metadata !DIExpression()), !dbg !5104
  %22 = load i32, ptr %device, align 4, !dbg !5104
  store i32 %22, ptr %__x, align 4, !dbg !5104
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #21, !dbg !5104
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5039, metadata !DIExpression()), !dbg !5104
  %23 = load i64, ptr %arg.addr, align 8, !dbg !5104
  %24 = inttoptr i64 %23 to ptr, !dbg !5104
  store ptr %24, ptr %__ptr, align 8, !dbg !5104
  %25 = load ptr, ptr %__ptr, align 8, !dbg !5104
  store ptr %25, ptr %__ptr_pu, align 8, !dbg !5104
  %26 = load i32, ptr %__x, align 4, !dbg !5104
  store i32 %26, ptr %__val_pu, align 4, !dbg !5104
  %27 = call i64 @llvm.read_register.i64(metadata !4719), !dbg !5104
  %28 = load ptr, ptr %__ptr_pu, align 8, !dbg !5104
  %29 = load i32, ptr %__val_pu, align 4, !dbg !5104
  %30 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %28, i32 %29, i64 4, i64 %27) #21, !dbg !5104, !srcloc !5105
  %asmresult26 = extractvalue { ptr, i64 } %30, 0, !dbg !5104
  %asmresult27 = extractvalue { ptr, i64 } %30, 1, !dbg !5104
  %31 = ptrtoint ptr %asmresult26 to i64, !dbg !5104
  %32 = trunc i64 %31 to i32, !dbg !5104
  store i32 %32, ptr %__ret_pu, align 4, !dbg !5104
  call void @llvm.write_register.i64(metadata !4719, i64 %asmresult27), !dbg !5104
  %33 = load ptr, ptr %__ptr, align 8, !dbg !5106
  call void @kmsan_copy_to_user(ptr noundef %33, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #23, !dbg !5106
  %34 = load i32, ptr %__ret_pu, align 4, !dbg !5104
  %conv29 = sext i32 %34 to i64, !dbg !5104
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !5104
  store i64 %expval30, ptr %tmp28, align 8, !dbg !5104
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #21, !dbg !5103
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #21, !dbg !5103
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #21, !dbg !5103
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #21, !dbg !5103
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #21, !dbg !5103
  %35 = load i64, ptr %tmp28, align 8, !dbg !5104
  store i64 %35, ptr %tmp25, align 8, !dbg !5103
  %36 = load i64, ptr %tmp25, align 8, !dbg !5103
  %tobool31 = icmp ne i64 %36, 0, !dbg !5108
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5109

if.then32:                                        ; preds = %if.end24
  store i32 -14, ptr %retval, align 4, !dbg !5110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5110

if.end33:                                         ; preds = %if.end24
  store i32 0, ptr %retval, align 4, !dbg !5111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5111

cleanup:                                          ; preds = %if.end33, %if.then32, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %device) #21, !dbg !5112
  br label %return

sw.bb34:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #21, !dbg !5113
  call void @llvm.dbg.declare(metadata ptr %info, metadata !5040, metadata !DIExpression()), !dbg !5114
  %37 = load i64, ptr %arg.addr, align 8, !dbg !5115
  %38 = inttoptr i64 %37 to ptr, !dbg !5116
  store ptr %38, ptr %info, align 8, !dbg !5114
  call void @llvm.lifetime.start.p0(i64 4, ptr %device35) #21, !dbg !5117
  call void @llvm.dbg.declare(metadata ptr %device35, metadata !5042, metadata !DIExpression()), !dbg !5118
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #21, !dbg !5117
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5043, metadata !DIExpression()), !dbg !5119
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwdep) #21, !dbg !5120
  call void @llvm.dbg.declare(metadata ptr %hwdep, metadata !5044, metadata !DIExpression()), !dbg !5121
  call void @might_fault() #23, !dbg !5122
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu37) #21, !dbg !5123
  call void @llvm.dbg.declare(metadata ptr %__ret_gu37, metadata !5045, metadata !DIExpression()), !dbg !5123
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu38) #21, !dbg !5123
  call void @llvm.dbg.declare(metadata ptr %__val_gu38, metadata !5049, metadata !DIExpression()), !dbg !5123
  %39 = call i64 @llvm.read_register.i64(metadata !4719), !dbg !5123
  %40 = load ptr, ptr %info, align 8, !dbg !5123
  %device39 = getelementptr inbounds %struct.snd_hwdep_info, ptr %40, i32 0, i32 0, !dbg !5123
  %41 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %device39, i64 4, i64 %39) #21, !dbg !5123, !srcloc !5124
  %asmresult40 = extractvalue { ptr, i32, i64 } %41, 0, !dbg !5123
  %asmresult41 = extractvalue { ptr, i32, i64 } %41, 1, !dbg !5123
  %asmresult42 = extractvalue { ptr, i32, i64 } %41, 2, !dbg !5123
  %42 = ptrtoint ptr %asmresult40 to i64, !dbg !5123
  %43 = trunc i64 %42 to i32, !dbg !5123
  store i32 %43, ptr %__ret_gu37, align 4, !dbg !5123
  store i32 %asmresult41, ptr %__val_gu38, align 4, !dbg !5123
  call void @llvm.write_register.i64(metadata !4719, i64 %asmresult42), !dbg !5123
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp43) #21, !dbg !5125
  call void @llvm.dbg.declare(metadata ptr %__tmp43, metadata !5050, metadata !DIExpression()), !dbg !5125
  %44 = load i32, ptr %__val_gu38, align 4, !dbg !5125
  %conv44 = zext i32 %44 to i64, !dbg !5125
  store i64 %conv44, ptr %__tmp43, align 8, !dbg !5125
  call void @kmsan_unpoison_memory(ptr noundef %__tmp43, i64 noundef 8) #23, !dbg !5125
  %45 = load i64, ptr %__tmp43, align 8, !dbg !5125
  %conv46 = trunc i64 %45 to i32, !dbg !5125
  store i32 %conv46, ptr %__val_gu38, align 4, !dbg !5125
  store i32 %conv46, ptr %tmp45, align 4, !dbg !5125
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp43) #21, !dbg !5123
  %46 = load i32, ptr %tmp45, align 4, !dbg !5125
  %47 = load i32, ptr %__val_gu38, align 4, !dbg !5123
  store i32 %47, ptr %device35, align 4, !dbg !5123
  %48 = load i32, ptr %__ret_gu37, align 4, !dbg !5123
  %conv48 = sext i32 %48 to i64, !dbg !5123
  %expval49 = call i64 @llvm.expect.i64(i64 %conv48, i64 0), !dbg !5123
  store i64 %expval49, ptr %tmp47, align 8, !dbg !5123
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu38) #21, !dbg !5122
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu37) #21, !dbg !5122
  %49 = load i64, ptr %tmp47, align 8, !dbg !5123
  store i64 %49, ptr %tmp36, align 8, !dbg !5122
  %50 = load i64, ptr %tmp36, align 8, !dbg !5122
  %tobool50 = icmp ne i64 %50, 0, !dbg !5126
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !5127

if.then51:                                        ; preds = %sw.bb34
  store i32 -14, ptr %retval, align 4, !dbg !5128
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup59, !dbg !5128

if.end52:                                         ; preds = %sw.bb34
  call void @mutex_lock(ptr noundef @register_mutex) #23, !dbg !5129
  %51 = load ptr, ptr %card.addr, align 8, !dbg !5130
  %52 = load i32, ptr %device35, align 4, !dbg !5131
  %call53 = call ptr @snd_hwdep_search(ptr noundef %51, i32 noundef %52) #23, !dbg !5132
  store ptr %call53, ptr %hwdep, align 8, !dbg !5133
  %53 = load ptr, ptr %hwdep, align 8, !dbg !5134
  %tobool54 = icmp ne ptr %53, null, !dbg !5134
  br i1 %tobool54, label %if.then55, label %if.else57, !dbg !5136

if.then55:                                        ; preds = %if.end52
  %54 = load ptr, ptr %hwdep, align 8, !dbg !5137
  %55 = load ptr, ptr %info, align 8, !dbg !5138
  %call56 = call i32 @snd_hwdep_info(ptr noundef %54, ptr noundef %55) #23, !dbg !5139
  store i32 %call56, ptr %err, align 4, !dbg !5140
  br label %if.end58, !dbg !5141

if.else57:                                        ; preds = %if.end52
  store i32 -6, ptr %err, align 4, !dbg !5142
  br label %if.end58

if.end58:                                         ; preds = %if.else57, %if.then55
  call void @mutex_unlock(ptr noundef @register_mutex) #23, !dbg !5143
  %56 = load i32, ptr %err, align 4, !dbg !5144
  store i32 %56, ptr %retval, align 4, !dbg !5145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup59, !dbg !5145

cleanup59:                                        ; preds = %if.end58, %if.then51
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwdep) #21, !dbg !5146
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #21, !dbg !5146
  call void @llvm.lifetime.end.p0(i64 4, ptr %device35) #21, !dbg !5146
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #21, !dbg !5146
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 -515, ptr %retval, align 4, !dbg !5147
  br label %return, !dbg !5147

return:                                           ; preds = %sw.epilog, %cleanup59, %cleanup
  %57 = load i32, ptr %retval, align 4, !dbg !5148
  ret i32 %57, !dbg !5148
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5149 dso_local i32 @snd_ctl_unregister_ioctl_compat(ptr noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_snd_hwdep__278_548_alsa_hwdep_init6() #6 section ".init.text" align 16 !dbg !5150 {
entry:
  %call = call i32 @alsa_hwdep_init() #24, !dbg !5151
  ret i32 %call, !dbg !5151
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @alsa_hwdep_init() #6 section ".init.text" align 16 !dbg !5152 {
entry:
  call void @snd_hwdep_proc_init() #24, !dbg !5153
  %call = call i32 @snd_ctl_register_ioctl(ptr noundef @snd_hwdep_control_ioctl) #23, !dbg !5154
  %call1 = call i32 @snd_ctl_register_ioctl_compat(ptr noundef @snd_hwdep_control_ioctl) #23, !dbg !5155
  ret i32 0, !dbg !5156
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !5157 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5159, metadata !DIExpression()), !dbg !5164
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5160, metadata !DIExpression()), !dbg !5165
  %0 = load i64, ptr %size.addr, align 8, !dbg !5166
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5167
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5168

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5169
  %tobool = icmp ne i64 %2, 0, !dbg !5169
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5170

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #21, !dbg !5171
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5161, metadata !DIExpression()), !dbg !5172
  %3 = load i64, ptr %size.addr, align 8, !dbg !5173
  %cmp = icmp ugt i64 %3, 8192, !dbg !5175
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5176

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5177
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5178
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #22, !dbg !5179
  store ptr %call, ptr %retval, align 8, !dbg !5180
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5180

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5181
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #23, !dbg !5181
  store i32 %call2, ptr %index, align 4, !dbg !5182
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5183
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5184
  %9 = ptrtoint ptr %8 to i64, !dbg !5184
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #23, !dbg !5185
  %idxprom = zext i32 %call3 to i64, !dbg !5186
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5186
  %10 = load i32, ptr %index, align 4, !dbg !5187
  %idxprom4 = zext i32 %10 to i64, !dbg !5186
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5186
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5186
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5188
  %13 = load i64, ptr %size.addr, align 8, !dbg !5189
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #25, !dbg !5190
  store ptr %call6, ptr %retval, align 8, !dbg !5191
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5191

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #21, !dbg !5192
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5193
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5194
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #22, !dbg !5195
  store ptr %call8, ptr %retval, align 8, !dbg !5196
  br label %return, !dbg !5196

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5197
  ret ptr %16, !dbg !5197
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5198 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !5199 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5203, metadata !DIExpression()), !dbg !5205
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5204, metadata !DIExpression()), !dbg !5206
  %0 = load i64, ptr %size.addr, align 8, !dbg !5207
  %tobool = icmp ne i64 %0, 0, !dbg !5207
  br i1 %tobool, label %if.end, label %if.then, !dbg !5209

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5210
  br label %return, !dbg !5210

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5211
  %cmp = icmp ule i64 %1, 8, !dbg !5213
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5214

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5215
  br label %return, !dbg !5215

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5216
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5218
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5219

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5220
  %cmp4 = icmp ule i64 %3, 96, !dbg !5221
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5222

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5223
  br label %return, !dbg !5223

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5224
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5226
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5227

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5228
  %cmp9 = icmp ule i64 %5, 192, !dbg !5229
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5230

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5231
  br label %return, !dbg !5231

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5232
  %cmp12 = icmp ule i64 %6, 8, !dbg !5234
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5235

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5236
  br label %return, !dbg !5236

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5237
  %cmp15 = icmp ule i64 %7, 16, !dbg !5239
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5240

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5241
  br label %return, !dbg !5241

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5242
  %cmp18 = icmp ule i64 %8, 32, !dbg !5244
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5245

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5246
  br label %return, !dbg !5246

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5247
  %cmp21 = icmp ule i64 %9, 64, !dbg !5249
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5250

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5251
  br label %return, !dbg !5251

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5252
  %cmp24 = icmp ule i64 %10, 128, !dbg !5254
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5255

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5256
  br label %return, !dbg !5256

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5257
  %cmp27 = icmp ule i64 %11, 256, !dbg !5259
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5260

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5261
  br label %return, !dbg !5261

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5262
  %cmp30 = icmp ule i64 %12, 512, !dbg !5264
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5265

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5266
  br label %return, !dbg !5266

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5267
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5269
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5270

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5271
  br label %return, !dbg !5271

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5272
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5274
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5275

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5276
  br label %return, !dbg !5276

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5277
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5279
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5280

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5281
  br label %return, !dbg !5281

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5282
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5284
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5285

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5286
  br label %return, !dbg !5286

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5287
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5289
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5290

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5291
  br label %return, !dbg !5291

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5292
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5294
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5295

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5296
  br label %return, !dbg !5296

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5297
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5299
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5300

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5301
  br label %return, !dbg !5301

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5302
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5304
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5305

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5306
  br label %return, !dbg !5306

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5307
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5309
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5310

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5311
  br label %return, !dbg !5311

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5312
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5314
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5315

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5316
  br label %return, !dbg !5316

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5317
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5319
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5320

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5321
  br label %return, !dbg !5321

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5322
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5324
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5325

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5326
  br label %return, !dbg !5326

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5327, !range !5329, !noundef !575
  %tobool69 = trunc i8 %25 to i1, !dbg !5327
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5330

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5331

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #26, !dbg !5332, !srcloc !5335
  unreachable, !dbg !5332

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5336

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5337

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5338

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5340

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5338

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #21, !dbg !5342, !srcloc !5344
  br label %do.end75, !dbg !5342

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5338

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5345
  br label %return, !dbg !5345

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5346
  ret i32 %26, !dbg !5346
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5347 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !5352 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5356, metadata !DIExpression()), !dbg !5358
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5357, metadata !DIExpression()), !dbg !5359
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5360
  %and = and i32 %0, 17, !dbg !5360
  %cmp = icmp eq i32 %and, 0, !dbg !5360
  %lnot = xor i1 %cmp, true, !dbg !5360
  %lnot1 = xor i1 %lnot, true, !dbg !5360
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5360
  %conv = sext i32 %lnot.ext to i64, !dbg !5360
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5360
  %tobool = icmp ne i64 %expval, 0, !dbg !5360
  br i1 %tobool, label %if.then, label %if.end, !dbg !5362

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5363
  br label %return, !dbg !5363

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5364
  %and2 = and i32 %1, 1, !dbg !5366
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5366
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5367

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5368
  br label %return, !dbg !5368

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5369
  br label %return, !dbg !5369

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5371
  ret i32 %2, !dbg !5371
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5372 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5373 dso_local void @__compiletime_assert_117() #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5374 dso_local void @put_device(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5375 dso_local void @kfree(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5378 dso_local void @mutex_lock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @snd_hwdep_search(ptr noundef %card, i32 noundef %device) #0 align 16 !dbg !5381 {
entry:
  %retval = alloca ptr, align 8
  %card.addr = alloca ptr, align 8
  %device.addr = alloca i32, align 4
  %hwdep = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr5 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !5385, metadata !DIExpression()), !dbg !5394
  store i32 %device, ptr %device.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !5386, metadata !DIExpression()), !dbg !5395
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwdep) #21, !dbg !5396
  call void @llvm.dbg.declare(metadata ptr %hwdep, metadata !5387, metadata !DIExpression()), !dbg !5397
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #21, !dbg !5398
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5388, metadata !DIExpression()), !dbg !5398
  %0 = load ptr, ptr @snd_hwdep_devices, align 8, !dbg !5398
  store ptr %0, ptr %__mptr, align 8, !dbg !5398
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5398
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !5398
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5398
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #21, !dbg !5399
  %2 = load ptr, ptr %tmp, align 8, !dbg !5398
  store ptr %2, ptr %hwdep, align 8, !dbg !5399
  br label %for.cond, !dbg !5399

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %hwdep, align 8, !dbg !5400
  %list = getelementptr inbounds %struct.snd_hwdep, ptr %3, i32 0, i32 1, !dbg !5400
  %cmp = icmp eq ptr %list, @snd_hwdep_devices, !dbg !5400
  %lnot = xor i1 %cmp, true, !dbg !5400
  br i1 %lnot, label %for.body, label %for.end, !dbg !5399

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %hwdep, align 8, !dbg !5401
  %card1 = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 0, !dbg !5403
  %5 = load ptr, ptr %card1, align 8, !dbg !5403
  %6 = load ptr, ptr %card.addr, align 8, !dbg !5404
  %cmp2 = icmp eq ptr %5, %6, !dbg !5405
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !5406

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %hwdep, align 8, !dbg !5407
  %device3 = getelementptr inbounds %struct.snd_hwdep, ptr %7, i32 0, i32 2, !dbg !5408
  %8 = load i32, ptr %device3, align 8, !dbg !5408
  %9 = load i32, ptr %device.addr, align 4, !dbg !5409
  %cmp4 = icmp eq i32 %8, %9, !dbg !5410
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5411

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %hwdep, align 8, !dbg !5412
  store ptr %10, ptr %retval, align 8, !dbg !5413
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5413

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !5409

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #21, !dbg !5414
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !5391, metadata !DIExpression()), !dbg !5414
  %11 = load ptr, ptr %hwdep, align 8, !dbg !5414
  %list6 = getelementptr inbounds %struct.snd_hwdep, ptr %11, i32 0, i32 1, !dbg !5414
  %next = getelementptr inbounds %struct.list_head, ptr %list6, i32 0, i32 0, !dbg !5414
  %12 = load ptr, ptr %next, align 8, !dbg !5414
  store ptr %12, ptr %__mptr5, align 8, !dbg !5414
  %13 = load ptr, ptr %__mptr5, align 8, !dbg !5414
  %add.ptr8 = getelementptr i8, ptr %13, i64 -8, !dbg !5414
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !5414
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #21, !dbg !5400
  %14 = load ptr, ptr %tmp7, align 8, !dbg !5414
  store ptr %14, ptr %hwdep, align 8, !dbg !5400
  br label %for.cond, !dbg !5400, !llvm.loop !5415

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !5417
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5417

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwdep) #21, !dbg !5418
  %15 = load ptr, ptr %retval, align 8, !dbg !5418
  ret ptr %15, !dbg !5418
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5419 dso_local void @mutex_unlock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #13 align 16 !dbg !5420 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5425, metadata !DIExpression()), !dbg !5427
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5426, metadata !DIExpression()), !dbg !5428
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5429
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5430
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5431
  %2 = load ptr, ptr %prev, align 8, !dbg !5431
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5432
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #23, !dbg !5433
  ret void, !dbg !5434
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5435 dso_local i32 @snd_register_device(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5438 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #13 align 16 !dbg !5442 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5446, metadata !DIExpression()), !dbg !5447
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5448
  call void @__list_del_entry(ptr noundef %0) #23, !dbg !5449
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5450
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5451
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5452
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5453
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5454
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5455
  ret void, !dbg !5456
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #13 align 16 !dbg !5457 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5461, metadata !DIExpression()), !dbg !5464
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5462, metadata !DIExpression()), !dbg !5465
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5463, metadata !DIExpression()), !dbg !5466
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5467
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5469
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5470
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #23, !dbg !5471
  br i1 %call, label %if.end, label %if.then, !dbg !5472

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5473

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5474
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5475
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5476
  store ptr %3, ptr %prev1, align 8, !dbg !5477
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5478
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5479
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5480
  store ptr %5, ptr %next2, align 8, !dbg !5481
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5482
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5483
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5484
  store ptr %7, ptr %prev3, align 8, !dbg !5485
  br label %do.body, !dbg !5486

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5487

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5489

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5487

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5491
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5491
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5491
  store volatile ptr %9, ptr %next6, align 8, !dbg !5491
  br label %do.end7, !dbg !5491

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5487

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5493
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #13 align 16 !dbg !5494 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5498, metadata !DIExpression()), !dbg !5501
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5499, metadata !DIExpression()), !dbg !5502
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5500, metadata !DIExpression()), !dbg !5503
  ret i1 true, !dbg !5504
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @snd_hwdep_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %orig) #0 align 16 !dbg !5505 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %orig.addr = alloca i32, align 4
  %hw = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5507, metadata !DIExpression()), !dbg !5511
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5508, metadata !DIExpression()), !dbg !5512
  store i32 %orig, ptr %orig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %orig.addr, metadata !5509, metadata !DIExpression()), !dbg !5513
  call void @llvm.lifetime.start.p0(i64 8, ptr %hw) #21, !dbg !5514
  call void @llvm.dbg.declare(metadata ptr %hw, metadata !5510, metadata !DIExpression()), !dbg !5515
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5516
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5517
  %1 = load ptr, ptr %private_data, align 8, !dbg !5517
  store ptr %1, ptr %hw, align 8, !dbg !5515
  %2 = load ptr, ptr %hw, align 8, !dbg !5518
  %ops = getelementptr inbounds %struct.snd_hwdep, ptr %2, i32 0, i32 6, !dbg !5520
  %llseek = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops, i32 0, i32 0, !dbg !5521
  %3 = load ptr, ptr %llseek, align 8, !dbg !5521
  %tobool = icmp ne ptr %3, null, !dbg !5518
  br i1 %tobool, label %if.then, label %if.end, !dbg !5522

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %hw, align 8, !dbg !5523
  %ops1 = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 6, !dbg !5524
  %llseek2 = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops1, i32 0, i32 0, !dbg !5525
  %5 = load ptr, ptr %llseek2, align 8, !dbg !5525
  %6 = load ptr, ptr %hw, align 8, !dbg !5526
  %7 = load ptr, ptr %file.addr, align 8, !dbg !5527
  %8 = load i64, ptr %offset.addr, align 8, !dbg !5528
  %9 = load i32, ptr %orig.addr, align 4, !dbg !5529
  %call = call i64 %5(ptr noundef %6, ptr noundef %7, i64 noundef %8, i32 noundef %9) #23, !dbg !5523
  store i64 %call, ptr %retval, align 8, !dbg !5530
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5530

if.end:                                           ; preds = %entry
  store i64 -6, ptr %retval, align 8, !dbg !5531
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5531

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hw) #21, !dbg !5532
  %10 = load i64, ptr %retval, align 8, !dbg !5532
  ret i64 %10, !dbg !5532
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @snd_hwdep_read(ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %offset) #0 align 16 !dbg !5533 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %offset.addr = alloca ptr, align 8
  %hw = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5535, metadata !DIExpression()), !dbg !5540
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5536, metadata !DIExpression()), !dbg !5541
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5537, metadata !DIExpression()), !dbg !5542
  store ptr %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5538, metadata !DIExpression()), !dbg !5543
  call void @llvm.lifetime.start.p0(i64 8, ptr %hw) #21, !dbg !5544
  call void @llvm.dbg.declare(metadata ptr %hw, metadata !5539, metadata !DIExpression()), !dbg !5545
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5546
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5547
  %1 = load ptr, ptr %private_data, align 8, !dbg !5547
  store ptr %1, ptr %hw, align 8, !dbg !5545
  %2 = load ptr, ptr %hw, align 8, !dbg !5548
  %ops = getelementptr inbounds %struct.snd_hwdep, ptr %2, i32 0, i32 6, !dbg !5550
  %read = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops, i32 0, i32 1, !dbg !5551
  %3 = load ptr, ptr %read, align 8, !dbg !5551
  %tobool = icmp ne ptr %3, null, !dbg !5548
  br i1 %tobool, label %if.then, label %if.end, !dbg !5552

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %hw, align 8, !dbg !5553
  %ops1 = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 6, !dbg !5554
  %read2 = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops1, i32 0, i32 1, !dbg !5555
  %5 = load ptr, ptr %read2, align 8, !dbg !5555
  %6 = load ptr, ptr %hw, align 8, !dbg !5556
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !5557
  %8 = load i64, ptr %count.addr, align 8, !dbg !5558
  %9 = load ptr, ptr %offset.addr, align 8, !dbg !5559
  %call = call i64 %5(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9) #23, !dbg !5553
  store i64 %call, ptr %retval, align 8, !dbg !5560
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5560

if.end:                                           ; preds = %entry
  store i64 -6, ptr %retval, align 8, !dbg !5561
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5561

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hw) #21, !dbg !5562
  %10 = load i64, ptr %retval, align 8, !dbg !5562
  ret i64 %10, !dbg !5562
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @snd_hwdep_write(ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %offset) #0 align 16 !dbg !5563 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %offset.addr = alloca ptr, align 8
  %hw = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5565, metadata !DIExpression()), !dbg !5570
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5566, metadata !DIExpression()), !dbg !5571
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5567, metadata !DIExpression()), !dbg !5572
  store ptr %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5568, metadata !DIExpression()), !dbg !5573
  call void @llvm.lifetime.start.p0(i64 8, ptr %hw) #21, !dbg !5574
  call void @llvm.dbg.declare(metadata ptr %hw, metadata !5569, metadata !DIExpression()), !dbg !5575
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5576
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5577
  %1 = load ptr, ptr %private_data, align 8, !dbg !5577
  store ptr %1, ptr %hw, align 8, !dbg !5575
  %2 = load ptr, ptr %hw, align 8, !dbg !5578
  %ops = getelementptr inbounds %struct.snd_hwdep, ptr %2, i32 0, i32 6, !dbg !5580
  %write = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops, i32 0, i32 2, !dbg !5581
  %3 = load ptr, ptr %write, align 8, !dbg !5581
  %tobool = icmp ne ptr %3, null, !dbg !5578
  br i1 %tobool, label %if.then, label %if.end, !dbg !5582

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %hw, align 8, !dbg !5583
  %ops1 = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 6, !dbg !5584
  %write2 = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops1, i32 0, i32 2, !dbg !5585
  %5 = load ptr, ptr %write2, align 8, !dbg !5585
  %6 = load ptr, ptr %hw, align 8, !dbg !5586
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !5587
  %8 = load i64, ptr %count.addr, align 8, !dbg !5588
  %9 = load ptr, ptr %offset.addr, align 8, !dbg !5589
  %call = call i64 %5(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9) #23, !dbg !5583
  store i64 %call, ptr %retval, align 8, !dbg !5590
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5590

if.end:                                           ; preds = %entry
  store i64 -6, ptr %retval, align 8, !dbg !5591
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5591

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hw) #21, !dbg !5592
  %10 = load i64, ptr %retval, align 8, !dbg !5592
  ret i64 %10, !dbg !5592
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_hwdep_poll(ptr noundef %file, ptr noundef %wait) #0 align 16 !dbg !5593 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %wait.addr = alloca ptr, align 8
  %hw = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5597, metadata !DIExpression()), !dbg !5600
  store ptr %wait, ptr %wait.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !5598, metadata !DIExpression()), !dbg !5601
  call void @llvm.lifetime.start.p0(i64 8, ptr %hw) #21, !dbg !5602
  call void @llvm.dbg.declare(metadata ptr %hw, metadata !5599, metadata !DIExpression()), !dbg !5603
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5604
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5605
  %1 = load ptr, ptr %private_data, align 8, !dbg !5605
  store ptr %1, ptr %hw, align 8, !dbg !5603
  %2 = load ptr, ptr %hw, align 8, !dbg !5606
  %ops = getelementptr inbounds %struct.snd_hwdep, ptr %2, i32 0, i32 6, !dbg !5608
  %poll = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops, i32 0, i32 5, !dbg !5609
  %3 = load ptr, ptr %poll, align 8, !dbg !5609
  %tobool = icmp ne ptr %3, null, !dbg !5606
  br i1 %tobool, label %if.then, label %if.end, !dbg !5610

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %hw, align 8, !dbg !5611
  %ops1 = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 6, !dbg !5612
  %poll2 = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops1, i32 0, i32 5, !dbg !5613
  %5 = load ptr, ptr %poll2, align 8, !dbg !5613
  %6 = load ptr, ptr %hw, align 8, !dbg !5614
  %7 = load ptr, ptr %file.addr, align 8, !dbg !5615
  %8 = load ptr, ptr %wait.addr, align 8, !dbg !5616
  %call = call i32 %5(ptr noundef %6, ptr noundef %7, ptr noundef %8) #23, !dbg !5611
  store i32 %call, ptr %retval, align 4, !dbg !5617
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5617

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5618
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5618

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hw) #21, !dbg !5619
  %9 = load i32, ptr %retval, align 4, !dbg !5619
  ret i32 %9, !dbg !5619
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @snd_hwdep_ioctl(ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5620 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %hw = alloca ptr, align 8
  %argp = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp2 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5622, metadata !DIExpression()), !dbg !5635
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5623, metadata !DIExpression()), !dbg !5636
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5624, metadata !DIExpression()), !dbg !5637
  call void @llvm.lifetime.start.p0(i64 8, ptr %hw) #21, !dbg !5638
  call void @llvm.dbg.declare(metadata ptr %hw, metadata !5625, metadata !DIExpression()), !dbg !5639
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5640
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5641
  %1 = load ptr, ptr %private_data, align 8, !dbg !5641
  store ptr %1, ptr %hw, align 8, !dbg !5639
  call void @llvm.lifetime.start.p0(i64 8, ptr %argp) #21, !dbg !5642
  call void @llvm.dbg.declare(metadata ptr %argp, metadata !5626, metadata !DIExpression()), !dbg !5643
  %2 = load i64, ptr %arg.addr, align 8, !dbg !5644
  %3 = inttoptr i64 %2 to ptr, !dbg !5645
  store ptr %3, ptr %argp, align 8, !dbg !5643
  %4 = load i32, ptr %cmd.addr, align 4, !dbg !5646
  switch i32 %4, label %sw.epilog [
    i32 -2147203072, label %sw.bb
    i32 -2133047295, label %sw.bb3
    i32 -2143270910, label %sw.bb5
    i32 1080051715, label %sw.bb8
  ], !dbg !5647

sw.bb:                                            ; preds = %entry
  call void @might_fault() #23, !dbg !5648
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #21, !dbg !5649
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !5627, metadata !DIExpression()), !dbg !5649
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #21, !dbg !5649
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !5631, metadata !DIExpression()), !dbg !5649
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #21, !dbg !5649
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !5632, metadata !DIExpression()), !dbg !5649
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #21, !dbg !5649
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !5633, metadata !DIExpression()), !dbg !5649
  store i32 65537, ptr %__x, align 4, !dbg !5649
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #21, !dbg !5649
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5634, metadata !DIExpression()), !dbg !5649
  %5 = load ptr, ptr %argp, align 8, !dbg !5649
  store ptr %5, ptr %__ptr, align 8, !dbg !5649
  %6 = load ptr, ptr %__ptr, align 8, !dbg !5649
  store ptr %6, ptr %__ptr_pu, align 8, !dbg !5649
  %7 = load i32, ptr %__x, align 4, !dbg !5649
  store i32 %7, ptr %__val_pu, align 4, !dbg !5649
  %8 = call i64 @llvm.read_register.i64(metadata !4719), !dbg !5649
  %9 = load ptr, ptr %__ptr_pu, align 8, !dbg !5649
  %10 = load i32, ptr %__val_pu, align 4, !dbg !5649
  %11 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %9, i32 %10, i64 4, i64 %8) #21, !dbg !5649, !srcloc !5650
  %asmresult = extractvalue { ptr, i64 } %11, 0, !dbg !5649
  %asmresult1 = extractvalue { ptr, i64 } %11, 1, !dbg !5649
  %12 = ptrtoint ptr %asmresult to i64, !dbg !5649
  %13 = trunc i64 %12 to i32, !dbg !5649
  store i32 %13, ptr %__ret_pu, align 4, !dbg !5649
  call void @llvm.write_register.i64(metadata !4719, i64 %asmresult1), !dbg !5649
  %14 = load ptr, ptr %__ptr, align 8, !dbg !5651
  call void @kmsan_copy_to_user(ptr noundef %14, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #23, !dbg !5651
  %15 = load i32, ptr %__ret_pu, align 4, !dbg !5649
  %conv = sext i32 %15 to i64, !dbg !5649
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5649
  store i64 %expval, ptr %tmp2, align 8, !dbg !5649
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #21, !dbg !5648
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #21, !dbg !5648
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #21, !dbg !5648
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #21, !dbg !5648
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #21, !dbg !5648
  %16 = load i64, ptr %tmp2, align 8, !dbg !5649
  store i64 %16, ptr %tmp, align 8, !dbg !5648
  %17 = load i64, ptr %tmp, align 8, !dbg !5648
  store i64 %17, ptr %retval, align 8, !dbg !5653
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5653

sw.bb3:                                           ; preds = %entry
  %18 = load ptr, ptr %hw, align 8, !dbg !5654
  %19 = load ptr, ptr %argp, align 8, !dbg !5655
  %call = call i32 @snd_hwdep_info(ptr noundef %18, ptr noundef %19) #23, !dbg !5656
  %conv4 = sext i32 %call to i64, !dbg !5656
  store i64 %conv4, ptr %retval, align 8, !dbg !5657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5657

sw.bb5:                                           ; preds = %entry
  %20 = load ptr, ptr %hw, align 8, !dbg !5658
  %21 = load ptr, ptr %argp, align 8, !dbg !5659
  %call6 = call i32 @snd_hwdep_dsp_status(ptr noundef %20, ptr noundef %21) #23, !dbg !5660
  %conv7 = sext i32 %call6 to i64, !dbg !5660
  store i64 %conv7, ptr %retval, align 8, !dbg !5661
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5661

sw.bb8:                                           ; preds = %entry
  %22 = load ptr, ptr %hw, align 8, !dbg !5662
  %23 = load ptr, ptr %argp, align 8, !dbg !5663
  %call9 = call i32 @snd_hwdep_dsp_load_user(ptr noundef %22, ptr noundef %23) #23, !dbg !5664
  %conv10 = sext i32 %call9 to i64, !dbg !5664
  store i64 %conv10, ptr %retval, align 8, !dbg !5665
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5665

sw.epilog:                                        ; preds = %entry
  %24 = load ptr, ptr %hw, align 8, !dbg !5666
  %ops = getelementptr inbounds %struct.snd_hwdep, ptr %24, i32 0, i32 6, !dbg !5668
  %ioctl = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops, i32 0, i32 6, !dbg !5669
  %25 = load ptr, ptr %ioctl, align 8, !dbg !5669
  %tobool = icmp ne ptr %25, null, !dbg !5666
  br i1 %tobool, label %if.then, label %if.end, !dbg !5670

if.then:                                          ; preds = %sw.epilog
  %26 = load ptr, ptr %hw, align 8, !dbg !5671
  %ops11 = getelementptr inbounds %struct.snd_hwdep, ptr %26, i32 0, i32 6, !dbg !5672
  %ioctl12 = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops11, i32 0, i32 6, !dbg !5673
  %27 = load ptr, ptr %ioctl12, align 8, !dbg !5673
  %28 = load ptr, ptr %hw, align 8, !dbg !5674
  %29 = load ptr, ptr %file.addr, align 8, !dbg !5675
  %30 = load i32, ptr %cmd.addr, align 4, !dbg !5676
  %31 = load i64, ptr %arg.addr, align 8, !dbg !5677
  %call13 = call i32 %27(ptr noundef %28, ptr noundef %29, i32 noundef %30, i64 noundef %31) #23, !dbg !5671
  %conv14 = sext i32 %call13 to i64, !dbg !5671
  store i64 %conv14, ptr %retval, align 8, !dbg !5678
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5678

if.end:                                           ; preds = %sw.epilog
  store i64 -25, ptr %retval, align 8, !dbg !5679
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5679

cleanup:                                          ; preds = %if.end, %if.then, %sw.bb8, %sw.bb5, %sw.bb3, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %argp) #21, !dbg !5680
  call void @llvm.lifetime.end.p0(i64 8, ptr %hw) #21, !dbg !5680
  %32 = load i64, ptr %retval, align 8, !dbg !5680
  ret i64 %32, !dbg !5680
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @snd_hwdep_ioctl_compat(ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5681 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %hw = alloca ptr, align 8
  %argp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5683, metadata !DIExpression()), !dbg !5688
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5684, metadata !DIExpression()), !dbg !5689
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5685, metadata !DIExpression()), !dbg !5690
  call void @llvm.lifetime.start.p0(i64 8, ptr %hw) #21, !dbg !5691
  call void @llvm.dbg.declare(metadata ptr %hw, metadata !5686, metadata !DIExpression()), !dbg !5692
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5693
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5694
  %1 = load ptr, ptr %private_data, align 8, !dbg !5694
  store ptr %1, ptr %hw, align 8, !dbg !5692
  call void @llvm.lifetime.start.p0(i64 8, ptr %argp) #21, !dbg !5695
  call void @llvm.dbg.declare(metadata ptr %argp, metadata !5687, metadata !DIExpression()), !dbg !5696
  %2 = load i64, ptr %arg.addr, align 8, !dbg !5697
  %conv = trunc i64 %2 to i32, !dbg !5697
  %call = call ptr @compat_ptr(i32 noundef %conv) #23, !dbg !5698
  store ptr %call, ptr %argp, align 8, !dbg !5696
  %3 = load i32, ptr %cmd.addr, align 4, !dbg !5699
  switch i32 %3, label %sw.epilog [
    i32 -2147203072, label %sw.bb
    i32 -2133047295, label %sw.bb
    i32 -2143270910, label %sw.bb
    i32 1079003139, label %sw.bb2
  ], !dbg !5700

sw.bb:                                            ; preds = %entry, %entry, %entry
  %4 = load ptr, ptr %file.addr, align 8, !dbg !5701
  %5 = load i32, ptr %cmd.addr, align 4, !dbg !5703
  %6 = load ptr, ptr %argp, align 8, !dbg !5704
  %7 = ptrtoint ptr %6 to i64, !dbg !5705
  %call1 = call i64 @snd_hwdep_ioctl(ptr noundef %4, i32 noundef %5, i64 noundef %7) #23, !dbg !5706
  store i64 %call1, ptr %retval, align 8, !dbg !5707
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5707

sw.bb2:                                           ; preds = %entry
  %8 = load ptr, ptr %hw, align 8, !dbg !5708
  %9 = load ptr, ptr %argp, align 8, !dbg !5709
  %call3 = call i32 @snd_hwdep_dsp_load_compat(ptr noundef %8, ptr noundef %9) #23, !dbg !5710
  %conv4 = sext i32 %call3 to i64, !dbg !5710
  store i64 %conv4, ptr %retval, align 8, !dbg !5711
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5711

sw.epilog:                                        ; preds = %entry
  %10 = load ptr, ptr %hw, align 8, !dbg !5712
  %ops = getelementptr inbounds %struct.snd_hwdep, ptr %10, i32 0, i32 6, !dbg !5714
  %ioctl_compat = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops, i32 0, i32 7, !dbg !5715
  %11 = load ptr, ptr %ioctl_compat, align 8, !dbg !5715
  %tobool = icmp ne ptr %11, null, !dbg !5712
  br i1 %tobool, label %if.then, label %if.end, !dbg !5716

if.then:                                          ; preds = %sw.epilog
  %12 = load ptr, ptr %hw, align 8, !dbg !5717
  %ops5 = getelementptr inbounds %struct.snd_hwdep, ptr %12, i32 0, i32 6, !dbg !5718
  %ioctl_compat6 = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops5, i32 0, i32 7, !dbg !5719
  %13 = load ptr, ptr %ioctl_compat6, align 8, !dbg !5719
  %14 = load ptr, ptr %hw, align 8, !dbg !5720
  %15 = load ptr, ptr %file.addr, align 8, !dbg !5721
  %16 = load i32, ptr %cmd.addr, align 4, !dbg !5722
  %17 = load i64, ptr %arg.addr, align 8, !dbg !5723
  %call7 = call i32 %13(ptr noundef %14, ptr noundef %15, i32 noundef %16, i64 noundef %17) #23, !dbg !5717
  %conv8 = sext i32 %call7 to i64, !dbg !5717
  store i64 %conv8, ptr %retval, align 8, !dbg !5724
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5724

if.end:                                           ; preds = %sw.epilog
  store i64 -515, ptr %retval, align 8, !dbg !5725
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5725

cleanup:                                          ; preds = %if.end, %if.then, %sw.bb2, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %argp) #21, !dbg !5726
  call void @llvm.lifetime.end.p0(i64 8, ptr %hw) #21, !dbg !5726
  %18 = load i64, ptr %retval, align 8, !dbg !5726
  ret i64 %18, !dbg !5726
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_hwdep_mmap(ptr noundef %file, ptr noundef %vma) #0 align 16 !dbg !5727 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %vma.addr = alloca ptr, align 8
  %hw = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5729, metadata !DIExpression()), !dbg !5732
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5730, metadata !DIExpression()), !dbg !5733
  call void @llvm.lifetime.start.p0(i64 8, ptr %hw) #21, !dbg !5734
  call void @llvm.dbg.declare(metadata ptr %hw, metadata !5731, metadata !DIExpression()), !dbg !5735
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5736
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5737
  %1 = load ptr, ptr %private_data, align 8, !dbg !5737
  store ptr %1, ptr %hw, align 8, !dbg !5735
  %2 = load ptr, ptr %hw, align 8, !dbg !5738
  %ops = getelementptr inbounds %struct.snd_hwdep, ptr %2, i32 0, i32 6, !dbg !5740
  %mmap = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops, i32 0, i32 8, !dbg !5741
  %3 = load ptr, ptr %mmap, align 8, !dbg !5741
  %tobool = icmp ne ptr %3, null, !dbg !5738
  br i1 %tobool, label %if.then, label %if.end, !dbg !5742

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %hw, align 8, !dbg !5743
  %ops1 = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 6, !dbg !5744
  %mmap2 = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops1, i32 0, i32 8, !dbg !5745
  %5 = load ptr, ptr %mmap2, align 8, !dbg !5745
  %6 = load ptr, ptr %hw, align 8, !dbg !5746
  %7 = load ptr, ptr %file.addr, align 8, !dbg !5747
  %8 = load ptr, ptr %vma.addr, align 8, !dbg !5748
  %call = call i32 %5(ptr noundef %6, ptr noundef %7, ptr noundef %8) #23, !dbg !5743
  store i32 %call, ptr %retval, align 4, !dbg !5749
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5749

if.end:                                           ; preds = %entry
  store i32 -6, ptr %retval, align 4, !dbg !5750
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5750

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hw) #21, !dbg !5751
  %9 = load i32, ptr %retval, align 4, !dbg !5751
  ret i32 %9, !dbg !5751
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_hwdep_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !5752 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %major = alloca i32, align 4
  %hw = alloca ptr, align 8
  %err = alloca i32, align 4
  %wait = alloca %struct.wait_queue_entry, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5754, metadata !DIExpression()), !dbg !5780
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5755, metadata !DIExpression()), !dbg !5781
  call void @llvm.lifetime.start.p0(i64 4, ptr %major) #21, !dbg !5782
  call void @llvm.dbg.declare(metadata ptr %major, metadata !5756, metadata !DIExpression()), !dbg !5783
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5784
  %call = call i32 @imajor(ptr noundef %0) #23, !dbg !5785
  store i32 %call, ptr %major, align 4, !dbg !5783
  call void @llvm.lifetime.start.p0(i64 8, ptr %hw) #21, !dbg !5786
  call void @llvm.dbg.declare(metadata ptr %hw, metadata !5757, metadata !DIExpression()), !dbg !5787
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #21, !dbg !5788
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5758, metadata !DIExpression()), !dbg !5789
  call void @llvm.lifetime.start.p0(i64 40, ptr %wait) #21, !dbg !5790
  call void @llvm.dbg.declare(metadata ptr %wait, metadata !5759, metadata !DIExpression()), !dbg !5791
  %1 = load i32, ptr %major, align 4, !dbg !5792
  %2 = load i32, ptr @snd_major, align 4, !dbg !5794
  %cmp = icmp eq i32 %1, %2, !dbg !5795
  br i1 %cmp, label %if.then, label %if.else, !dbg !5796

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %inode.addr, align 8, !dbg !5797
  %call1 = call i32 @iminor(ptr noundef %3) #23, !dbg !5799
  %call2 = call ptr @snd_lookup_minor_data(i32 noundef %call1, i32 noundef 4) #23, !dbg !5800
  store ptr %call2, ptr %hw, align 8, !dbg !5801
  br label %if.end, !dbg !5802

if.else:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4, !dbg !5803
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5803

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %hw, align 8, !dbg !5804
  %cmp3 = icmp eq ptr %4, null, !dbg !5806
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !5807

if.then4:                                         ; preds = %if.end
  store i32 -19, ptr %retval, align 4, !dbg !5808
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5808

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %hw, align 8, !dbg !5809
  %card = getelementptr inbounds %struct.snd_hwdep, ptr %5, i32 0, i32 0, !dbg !5811
  %6 = load ptr, ptr %card, align 8, !dbg !5811
  %module = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 8, !dbg !5812
  %7 = load ptr, ptr %module, align 8, !dbg !5812
  %call6 = call zeroext i1 @try_module_get(ptr noundef %7) #23, !dbg !5813
  br i1 %call6, label %if.end9, label %if.then7, !dbg !5814

if.then7:                                         ; preds = %if.end5
  %8 = load ptr, ptr %hw, align 8, !dbg !5815
  %card8 = getelementptr inbounds %struct.snd_hwdep, ptr %8, i32 0, i32 0, !dbg !5817
  %9 = load ptr, ptr %card8, align 8, !dbg !5817
  call void @snd_card_unref(ptr noundef %9) #23, !dbg !5818
  store i32 -14, ptr %retval, align 4, !dbg !5819
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5819

if.end9:                                          ; preds = %if.end5
  %call10 = call ptr @get_current() #23, !dbg !5820
  call void @init_waitqueue_entry(ptr noundef %wait, ptr noundef %call10) #23, !dbg !5821
  %10 = load ptr, ptr %hw, align 8, !dbg !5822
  %open_wait = getelementptr inbounds %struct.snd_hwdep, ptr %10, i32 0, i32 7, !dbg !5823
  call void @add_wait_queue(ptr noundef %open_wait, ptr noundef %wait) #23, !dbg !5824
  %11 = load ptr, ptr %hw, align 8, !dbg !5825
  %open_mutex = getelementptr inbounds %struct.snd_hwdep, ptr %11, i32 0, i32 11, !dbg !5826
  call void @mutex_lock(ptr noundef %open_mutex) #23, !dbg !5827
  br label %while.cond, !dbg !5828

while.cond:                                       ; preds = %if.end57, %if.end9
  br label %while.body, !dbg !5828

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %hw, align 8, !dbg !5829
  %exclusive = getelementptr inbounds %struct.snd_hwdep, ptr %12, i32 0, i32 14, !dbg !5831
  %bf.load = load i8, ptr %exclusive, align 8, !dbg !5831
  %bf.clear = and i8 %bf.load, 1, !dbg !5831
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5831
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5829
  br i1 %tobool, label %land.lhs.true, label %if.end13, !dbg !5832

land.lhs.true:                                    ; preds = %while.body
  %13 = load ptr, ptr %hw, align 8, !dbg !5833
  %used = getelementptr inbounds %struct.snd_hwdep, ptr %13, i32 0, i32 12, !dbg !5834
  %14 = load i32, ptr %used, align 8, !dbg !5834
  %cmp11 = icmp sgt i32 %14, 0, !dbg !5835
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !5836

if.then12:                                        ; preds = %land.lhs.true
  store i32 -16, ptr %err, align 4, !dbg !5837
  br label %while.end, !dbg !5839

if.end13:                                         ; preds = %land.lhs.true, %while.body
  %15 = load ptr, ptr %hw, align 8, !dbg !5840
  %ops = getelementptr inbounds %struct.snd_hwdep, ptr %15, i32 0, i32 6, !dbg !5842
  %open = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops, i32 0, i32 3, !dbg !5843
  %16 = load ptr, ptr %open, align 8, !dbg !5843
  %tobool14 = icmp ne ptr %16, null, !dbg !5840
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !5844

if.then15:                                        ; preds = %if.end13
  store i32 0, ptr %err, align 4, !dbg !5845
  br label %while.end, !dbg !5847

if.end16:                                         ; preds = %if.end13
  %17 = load ptr, ptr %hw, align 8, !dbg !5848
  %ops17 = getelementptr inbounds %struct.snd_hwdep, ptr %17, i32 0, i32 6, !dbg !5849
  %open18 = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops17, i32 0, i32 3, !dbg !5850
  %18 = load ptr, ptr %open18, align 8, !dbg !5850
  %19 = load ptr, ptr %hw, align 8, !dbg !5851
  %20 = load ptr, ptr %file.addr, align 8, !dbg !5852
  %call19 = call i32 %18(ptr noundef %19, ptr noundef %20) #23, !dbg !5848
  store i32 %call19, ptr %err, align 4, !dbg !5853
  %21 = load i32, ptr %err, align 4, !dbg !5854
  %cmp20 = icmp sge i32 %21, 0, !dbg !5856
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !5857

if.then21:                                        ; preds = %if.end16
  br label %while.end, !dbg !5858

if.end22:                                         ; preds = %if.end16
  %22 = load i32, ptr %err, align 4, !dbg !5859
  %cmp23 = icmp eq i32 %22, -11, !dbg !5861
  br i1 %cmp23, label %if.then24, label %if.else28, !dbg !5862

if.then24:                                        ; preds = %if.end22
  %23 = load ptr, ptr %file.addr, align 8, !dbg !5863
  %f_flags = getelementptr inbounds %struct.file, ptr %23, i32 0, i32 6, !dbg !5866
  %24 = load i32, ptr %f_flags, align 8, !dbg !5866
  %and = and i32 %24, 2048, !dbg !5867
  %tobool25 = icmp ne i32 %and, 0, !dbg !5867
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5868

if.then26:                                        ; preds = %if.then24
  store i32 -16, ptr %err, align 4, !dbg !5869
  br label %while.end, !dbg !5871

if.end27:                                         ; preds = %if.then24
  br label %if.end29, !dbg !5872

if.else28:                                        ; preds = %if.end22
  br label %while.end, !dbg !5873

if.end29:                                         ; preds = %if.end27
  br label %do.body, !dbg !5874

do.body:                                          ; preds = %if.end29
  br label %do.body30, !dbg !5875

do.body30:                                        ; preds = %do.body
  br label %do.cond, !dbg !5876

do.cond:                                          ; preds = %do.body30
  br label %do.end, !dbg !5876

do.end:                                           ; preds = %do.cond
  br label %do.body31, !dbg !5875

do.body31:                                        ; preds = %do.end
  br label %do.body32, !dbg !5878

do.body32:                                        ; preds = %do.body31
  br label %do.cond33, !dbg !5879

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !5879

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !5878

do.body35:                                        ; preds = %do.end34
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #21, !dbg !5881
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !5772, metadata !DIExpression()), !dbg !5881
  %call36 = call ptr @get_current() #23, !dbg !5881
  %__state = getelementptr inbounds %struct.task_struct, ptr %call36, i32 0, i32 1, !dbg !5881
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !5881
  br label %do.body37, !dbg !5881

do.body37:                                        ; preds = %do.body35
  br label %do.cond38, !dbg !5882

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !5882

do.end39:                                         ; preds = %do.cond38
  %25 = load ptr, ptr %__ai_ptr, align 8, !dbg !5881
  call void @instrument_atomic_read_write(ptr noundef %25, i64 noundef 4) #23, !dbg !5881
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #21, !dbg !5884
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5778, metadata !DIExpression()), !dbg !5884
  store i32 1, ptr %__ret, align 4, !dbg !5884
  %26 = load i32, ptr %__ret, align 4, !dbg !5884
  %27 = load ptr, ptr %__ai_ptr, align 8, !dbg !5884
  %28 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %27, i32 %26, ptr elementtype(i32) %27) #21, !dbg !5884, !srcloc !5885
  store i32 %28, ptr %__ret, align 4, !dbg !5884
  %29 = load i32, ptr %__ret, align 4, !dbg !5884
  store i32 %29, ptr %tmp40, align 4, !dbg !5884
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #21, !dbg !5881
  %30 = load i32, ptr %tmp40, align 4, !dbg !5884
  store i32 %30, ptr %tmp, align 4, !dbg !5881
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #21, !dbg !5886
  %31 = load i32, ptr %tmp, align 4, !dbg !5881
  br label %do.cond41, !dbg !5886

do.cond41:                                        ; preds = %do.end39
  br label %do.end42, !dbg !5886

do.end42:                                         ; preds = %do.cond41
  br label %do.cond43, !dbg !5878

do.cond43:                                        ; preds = %do.end42
  br label %do.end44, !dbg !5878

do.end44:                                         ; preds = %do.cond43
  br label %do.cond45, !dbg !5875

do.cond45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !5875

do.end46:                                         ; preds = %do.cond45
  %32 = load ptr, ptr %hw, align 8, !dbg !5887
  %open_mutex47 = getelementptr inbounds %struct.snd_hwdep, ptr %32, i32 0, i32 11, !dbg !5888
  call void @mutex_unlock(ptr noundef %open_mutex47) #23, !dbg !5889
  call void @schedule() #23, !dbg !5890
  %33 = load ptr, ptr %hw, align 8, !dbg !5891
  %open_mutex48 = getelementptr inbounds %struct.snd_hwdep, ptr %33, i32 0, i32 11, !dbg !5892
  call void @mutex_lock(ptr noundef %open_mutex48) #23, !dbg !5893
  %34 = load ptr, ptr %hw, align 8, !dbg !5894
  %card49 = getelementptr inbounds %struct.snd_hwdep, ptr %34, i32 0, i32 0, !dbg !5896
  %35 = load ptr, ptr %card49, align 8, !dbg !5896
  %shutdown = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 28, !dbg !5897
  %36 = load i32, ptr %shutdown, align 4, !dbg !5897
  %tobool50 = icmp ne i32 %36, 0, !dbg !5894
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !5898

if.then51:                                        ; preds = %do.end46
  store i32 -19, ptr %err, align 4, !dbg !5899
  br label %while.end, !dbg !5901

if.end52:                                         ; preds = %do.end46
  %call53 = call ptr @get_current() #23, !dbg !5902
  %call54 = call i32 @signal_pending(ptr noundef %call53) #23, !dbg !5904
  %tobool55 = icmp ne i32 %call54, 0, !dbg !5904
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !5905

if.then56:                                        ; preds = %if.end52
  store i32 -512, ptr %err, align 4, !dbg !5906
  br label %while.end, !dbg !5908

if.end57:                                         ; preds = %if.end52
  br label %while.cond, !dbg !5828, !llvm.loop !5909

while.end:                                        ; preds = %if.then56, %if.then51, %if.else28, %if.then26, %if.then21, %if.then15, %if.then12
  %37 = load ptr, ptr %hw, align 8, !dbg !5911
  %open_wait58 = getelementptr inbounds %struct.snd_hwdep, ptr %37, i32 0, i32 7, !dbg !5912
  call void @remove_wait_queue(ptr noundef %open_wait58, ptr noundef %wait) #23, !dbg !5913
  %38 = load i32, ptr %err, align 4, !dbg !5914
  %cmp59 = icmp sge i32 %38, 0, !dbg !5916
  br i1 %cmp59, label %if.then60, label %if.end75, !dbg !5917

if.then60:                                        ; preds = %while.end
  %39 = load ptr, ptr %hw, align 8, !dbg !5918
  %card61 = getelementptr inbounds %struct.snd_hwdep, ptr %39, i32 0, i32 0, !dbg !5920
  %40 = load ptr, ptr %card61, align 8, !dbg !5920
  %41 = load ptr, ptr %file.addr, align 8, !dbg !5921
  %call62 = call i32 @snd_card_file_add(ptr noundef %40, ptr noundef %41) #23, !dbg !5922
  store i32 %call62, ptr %err, align 4, !dbg !5923
  %42 = load i32, ptr %err, align 4, !dbg !5924
  %cmp63 = icmp sge i32 %42, 0, !dbg !5926
  br i1 %cmp63, label %if.then64, label %if.else66, !dbg !5927

if.then64:                                        ; preds = %if.then60
  %43 = load ptr, ptr %hw, align 8, !dbg !5928
  %44 = load ptr, ptr %file.addr, align 8, !dbg !5930
  %private_data = getelementptr inbounds %struct.file, ptr %44, i32 0, i32 15, !dbg !5931
  store ptr %43, ptr %private_data, align 8, !dbg !5932
  %45 = load ptr, ptr %hw, align 8, !dbg !5933
  %used65 = getelementptr inbounds %struct.snd_hwdep, ptr %45, i32 0, i32 12, !dbg !5934
  %46 = load i32, ptr %used65, align 8, !dbg !5935
  %inc = add i32 %46, 1, !dbg !5935
  store i32 %inc, ptr %used65, align 8, !dbg !5935
  br label %if.end74, !dbg !5936

if.else66:                                        ; preds = %if.then60
  %47 = load ptr, ptr %hw, align 8, !dbg !5937
  %ops67 = getelementptr inbounds %struct.snd_hwdep, ptr %47, i32 0, i32 6, !dbg !5940
  %release = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops67, i32 0, i32 4, !dbg !5941
  %48 = load ptr, ptr %release, align 8, !dbg !5941
  %tobool68 = icmp ne ptr %48, null, !dbg !5937
  br i1 %tobool68, label %if.then69, label %if.end73, !dbg !5942

if.then69:                                        ; preds = %if.else66
  %49 = load ptr, ptr %hw, align 8, !dbg !5943
  %ops70 = getelementptr inbounds %struct.snd_hwdep, ptr %49, i32 0, i32 6, !dbg !5944
  %release71 = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops70, i32 0, i32 4, !dbg !5945
  %50 = load ptr, ptr %release71, align 8, !dbg !5945
  %51 = load ptr, ptr %hw, align 8, !dbg !5946
  %52 = load ptr, ptr %file.addr, align 8, !dbg !5947
  %call72 = call i32 %50(ptr noundef %51, ptr noundef %52) #23, !dbg !5943
  br label %if.end73, !dbg !5943

if.end73:                                         ; preds = %if.then69, %if.else66
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then64
  br label %if.end75, !dbg !5948

if.end75:                                         ; preds = %if.end74, %while.end
  %53 = load ptr, ptr %hw, align 8, !dbg !5949
  %open_mutex76 = getelementptr inbounds %struct.snd_hwdep, ptr %53, i32 0, i32 11, !dbg !5950
  call void @mutex_unlock(ptr noundef %open_mutex76) #23, !dbg !5951
  %54 = load i32, ptr %err, align 4, !dbg !5952
  %cmp77 = icmp slt i32 %54, 0, !dbg !5954
  br i1 %cmp77, label %if.then78, label %if.end81, !dbg !5955

if.then78:                                        ; preds = %if.end75
  %55 = load ptr, ptr %hw, align 8, !dbg !5956
  %card79 = getelementptr inbounds %struct.snd_hwdep, ptr %55, i32 0, i32 0, !dbg !5957
  %56 = load ptr, ptr %card79, align 8, !dbg !5957
  %module80 = getelementptr inbounds %struct.snd_card, ptr %56, i32 0, i32 8, !dbg !5958
  %57 = load ptr, ptr %module80, align 8, !dbg !5958
  call void @module_put(ptr noundef %57) #23, !dbg !5959
  br label %if.end81, !dbg !5959

if.end81:                                         ; preds = %if.then78, %if.end75
  %58 = load ptr, ptr %hw, align 8, !dbg !5960
  %card82 = getelementptr inbounds %struct.snd_hwdep, ptr %58, i32 0, i32 0, !dbg !5961
  %59 = load ptr, ptr %card82, align 8, !dbg !5961
  call void @snd_card_unref(ptr noundef %59) #23, !dbg !5962
  %60 = load i32, ptr %err, align 4, !dbg !5963
  store i32 %60, ptr %retval, align 4, !dbg !5964
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5964

cleanup:                                          ; preds = %if.end81, %if.then7, %if.then4, %if.else
  call void @llvm.lifetime.end.p0(i64 40, ptr %wait) #21, !dbg !5965
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #21, !dbg !5965
  call void @llvm.lifetime.end.p0(i64 8, ptr %hw) #21, !dbg !5965
  call void @llvm.lifetime.end.p0(i64 4, ptr %major) #21, !dbg !5965
  %61 = load i32, ptr %retval, align 4, !dbg !5965
  ret i32 %61, !dbg !5965
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_hwdep_release(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !5966 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %hw = alloca ptr, align 8
  %mod = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5968, metadata !DIExpression()), !dbg !5973
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5969, metadata !DIExpression()), !dbg !5974
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #21, !dbg !5975
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5970, metadata !DIExpression()), !dbg !5976
  store i32 0, ptr %err, align 4, !dbg !5976
  call void @llvm.lifetime.start.p0(i64 8, ptr %hw) #21, !dbg !5977
  call void @llvm.dbg.declare(metadata ptr %hw, metadata !5971, metadata !DIExpression()), !dbg !5978
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5979
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5980
  %1 = load ptr, ptr %private_data, align 8, !dbg !5980
  store ptr %1, ptr %hw, align 8, !dbg !5978
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod) #21, !dbg !5981
  call void @llvm.dbg.declare(metadata ptr %mod, metadata !5972, metadata !DIExpression()), !dbg !5982
  %2 = load ptr, ptr %hw, align 8, !dbg !5983
  %card = getelementptr inbounds %struct.snd_hwdep, ptr %2, i32 0, i32 0, !dbg !5984
  %3 = load ptr, ptr %card, align 8, !dbg !5984
  %module = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 8, !dbg !5985
  %4 = load ptr, ptr %module, align 8, !dbg !5985
  store ptr %4, ptr %mod, align 8, !dbg !5982
  %5 = load ptr, ptr %hw, align 8, !dbg !5986
  %open_mutex = getelementptr inbounds %struct.snd_hwdep, ptr %5, i32 0, i32 11, !dbg !5987
  call void @mutex_lock(ptr noundef %open_mutex) #23, !dbg !5988
  %6 = load ptr, ptr %hw, align 8, !dbg !5989
  %ops = getelementptr inbounds %struct.snd_hwdep, ptr %6, i32 0, i32 6, !dbg !5991
  %release = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops, i32 0, i32 4, !dbg !5992
  %7 = load ptr, ptr %release, align 8, !dbg !5992
  %tobool = icmp ne ptr %7, null, !dbg !5989
  br i1 %tobool, label %if.then, label %if.end, !dbg !5993

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %hw, align 8, !dbg !5994
  %ops1 = getelementptr inbounds %struct.snd_hwdep, ptr %8, i32 0, i32 6, !dbg !5995
  %release2 = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops1, i32 0, i32 4, !dbg !5996
  %9 = load ptr, ptr %release2, align 8, !dbg !5996
  %10 = load ptr, ptr %hw, align 8, !dbg !5997
  %11 = load ptr, ptr %file.addr, align 8, !dbg !5998
  %call = call i32 %9(ptr noundef %10, ptr noundef %11) #23, !dbg !5994
  store i32 %call, ptr %err, align 4, !dbg !5999
  br label %if.end, !dbg !6000

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %hw, align 8, !dbg !6001
  %used = getelementptr inbounds %struct.snd_hwdep, ptr %12, i32 0, i32 12, !dbg !6003
  %13 = load i32, ptr %used, align 8, !dbg !6003
  %cmp = icmp sgt i32 %13, 0, !dbg !6004
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !6005

if.then3:                                         ; preds = %if.end
  %14 = load ptr, ptr %hw, align 8, !dbg !6006
  %used4 = getelementptr inbounds %struct.snd_hwdep, ptr %14, i32 0, i32 12, !dbg !6007
  %15 = load i32, ptr %used4, align 8, !dbg !6008
  %dec = add i32 %15, -1, !dbg !6008
  store i32 %dec, ptr %used4, align 8, !dbg !6008
  br label %if.end5, !dbg !6006

if.end5:                                          ; preds = %if.then3, %if.end
  %16 = load ptr, ptr %hw, align 8, !dbg !6009
  %open_mutex6 = getelementptr inbounds %struct.snd_hwdep, ptr %16, i32 0, i32 11, !dbg !6010
  call void @mutex_unlock(ptr noundef %open_mutex6) #23, !dbg !6011
  %17 = load ptr, ptr %hw, align 8, !dbg !6012
  %open_wait = getelementptr inbounds %struct.snd_hwdep, ptr %17, i32 0, i32 7, !dbg !6012
  %call7 = call i32 @__wake_up(ptr noundef %open_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #23, !dbg !6012
  %18 = load ptr, ptr %hw, align 8, !dbg !6013
  %card8 = getelementptr inbounds %struct.snd_hwdep, ptr %18, i32 0, i32 0, !dbg !6014
  %19 = load ptr, ptr %card8, align 8, !dbg !6014
  %20 = load ptr, ptr %file.addr, align 8, !dbg !6015
  %call9 = call i32 @snd_card_file_remove(ptr noundef %19, ptr noundef %20) #23, !dbg !6016
  %21 = load ptr, ptr %mod, align 8, !dbg !6017
  call void @module_put(ptr noundef %21) #23, !dbg !6018
  %22 = load i32, ptr %err, align 4, !dbg !6019
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod) #21, !dbg !6020
  call void @llvm.lifetime.end.p0(i64 8, ptr %hw) #21, !dbg !6020
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #21, !dbg !6020
  ret i32 %22, !dbg !6021
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #13 align 16 !dbg !6022 {
entry:
  ret void, !dbg !6024
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #15

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #13 align 16 !dbg !6025 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6030, metadata !DIExpression()), !dbg !6034
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6031, metadata !DIExpression()), !dbg !6035
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !6032, metadata !DIExpression()), !dbg !6036
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !6033, metadata !DIExpression()), !dbg !6037
  ret void, !dbg !6038
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_hwdep_info(ptr noundef %hw, ptr noundef %_info) #0 align 16 !dbg !6039 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca ptr, align 8
  %_info.addr = alloca ptr, align 8
  %info = alloca %struct.snd_hwdep_info, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hw, ptr %hw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hw.addr, metadata !6043, metadata !DIExpression()), !dbg !6046
  store ptr %_info, ptr %_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_info.addr, metadata !6044, metadata !DIExpression()), !dbg !6047
  call void @llvm.lifetime.start.p0(i64 220, ptr %info) #21, !dbg !6048
  call void @llvm.dbg.declare(metadata ptr %info, metadata !6045, metadata !DIExpression()), !dbg !6049
  call void @llvm.memset.p0.i64(ptr align 4 %info, i8 0, i64 220, i1 false), !dbg !6050
  %0 = load ptr, ptr %hw.addr, align 8, !dbg !6051
  %card = getelementptr inbounds %struct.snd_hwdep, ptr %0, i32 0, i32 0, !dbg !6052
  %1 = load ptr, ptr %card, align 8, !dbg !6052
  %number = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 0, !dbg !6053
  %2 = load i32, ptr %number, align 8, !dbg !6053
  %card1 = getelementptr inbounds %struct.snd_hwdep_info, ptr %info, i32 0, i32 1, !dbg !6054
  store i32 %2, ptr %card1, align 4, !dbg !6055
  %id = getelementptr inbounds %struct.snd_hwdep_info, ptr %info, i32 0, i32 2, !dbg !6056
  %arraydecay = getelementptr inbounds [64 x i8], ptr %id, i64 0, i64 0, !dbg !6057
  %3 = load ptr, ptr %hw.addr, align 8, !dbg !6058
  %id2 = getelementptr inbounds %struct.snd_hwdep, ptr %3, i32 0, i32 3, !dbg !6059
  %arraydecay3 = getelementptr inbounds [32 x i8], ptr %id2, i64 0, i64 0, !dbg !6058
  %call = call i64 @strscpy(ptr noundef %arraydecay, ptr noundef %arraydecay3, i64 noundef 64) #23, !dbg !6060
  %name = getelementptr inbounds %struct.snd_hwdep_info, ptr %info, i32 0, i32 3, !dbg !6061
  %arraydecay4 = getelementptr inbounds [80 x i8], ptr %name, i64 0, i64 0, !dbg !6062
  %4 = load ptr, ptr %hw.addr, align 8, !dbg !6063
  %name5 = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 4, !dbg !6064
  %arraydecay6 = getelementptr inbounds [80 x i8], ptr %name5, i64 0, i64 0, !dbg !6063
  %call7 = call i64 @strscpy(ptr noundef %arraydecay4, ptr noundef %arraydecay6, i64 noundef 80) #23, !dbg !6065
  %5 = load ptr, ptr %hw.addr, align 8, !dbg !6066
  %iface = getelementptr inbounds %struct.snd_hwdep, ptr %5, i32 0, i32 5, !dbg !6067
  %6 = load i32, ptr %iface, align 4, !dbg !6067
  %iface8 = getelementptr inbounds %struct.snd_hwdep_info, ptr %info, i32 0, i32 4, !dbg !6068
  store i32 %6, ptr %iface8, align 4, !dbg !6069
  %7 = load ptr, ptr %_info.addr, align 8, !dbg !6070
  %call9 = call i64 @copy_to_user(ptr noundef %7, ptr noundef %info, i64 noundef 220) #23, !dbg !6072
  %tobool = icmp ne i64 %call9, 0, !dbg !6072
  br i1 %tobool, label %if.then, label %if.end, !dbg !6073

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !6074
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6074

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6075
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6075

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 220, ptr %info) #21, !dbg !6076
  %8 = load i32, ptr %retval, align 4, !dbg !6076
  ret i32 %8, !dbg !6076
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_hwdep_dsp_status(ptr noundef %hw, ptr noundef %_info) #0 align 16 !dbg !6077 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca ptr, align 8
  %_info.addr = alloca ptr, align 8
  %info = alloca %struct.snd_hwdep_dsp_status, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hw, ptr %hw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hw.addr, metadata !6079, metadata !DIExpression()), !dbg !6083
  store ptr %_info, ptr %_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_info.addr, metadata !6080, metadata !DIExpression()), !dbg !6084
  call void @llvm.lifetime.start.p0(i64 64, ptr %info) #21, !dbg !6085
  call void @llvm.dbg.declare(metadata ptr %info, metadata !6081, metadata !DIExpression()), !dbg !6086
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #21, !dbg !6087
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6082, metadata !DIExpression()), !dbg !6088
  %0 = load ptr, ptr %hw.addr, align 8, !dbg !6089
  %ops = getelementptr inbounds %struct.snd_hwdep, ptr %0, i32 0, i32 6, !dbg !6091
  %dsp_status = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops, i32 0, i32 9, !dbg !6092
  %1 = load ptr, ptr %dsp_status, align 8, !dbg !6092
  %tobool = icmp ne ptr %1, null, !dbg !6089
  br i1 %tobool, label %if.end, label %if.then, !dbg !6093

if.then:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4, !dbg !6094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6094

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 4 %info, i8 0, i64 64, i1 false), !dbg !6095
  %2 = load ptr, ptr %hw.addr, align 8, !dbg !6096
  %dsp_loaded = getelementptr inbounds %struct.snd_hwdep, ptr %2, i32 0, i32 13, !dbg !6097
  %3 = load i32, ptr %dsp_loaded, align 4, !dbg !6097
  %dsp_loaded1 = getelementptr inbounds %struct.snd_hwdep_dsp_status, ptr %info, i32 0, i32 3, !dbg !6098
  store i32 %3, ptr %dsp_loaded1, align 4, !dbg !6099
  %4 = load ptr, ptr %hw.addr, align 8, !dbg !6100
  %ops2 = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 6, !dbg !6101
  %dsp_status3 = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops2, i32 0, i32 9, !dbg !6102
  %5 = load ptr, ptr %dsp_status3, align 8, !dbg !6102
  %6 = load ptr, ptr %hw.addr, align 8, !dbg !6103
  %call = call i32 %5(ptr noundef %6, ptr noundef %info) #23, !dbg !6100
  store i32 %call, ptr %err, align 4, !dbg !6104
  %7 = load i32, ptr %err, align 4, !dbg !6105
  %cmp = icmp slt i32 %7, 0, !dbg !6107
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !6108

if.then4:                                         ; preds = %if.end
  %8 = load i32, ptr %err, align 4, !dbg !6109
  store i32 %8, ptr %retval, align 4, !dbg !6110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6110

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %_info.addr, align 8, !dbg !6111
  %call6 = call i64 @copy_to_user(ptr noundef %9, ptr noundef %info, i64 noundef 64) #23, !dbg !6113
  %tobool7 = icmp ne i64 %call6, 0, !dbg !6113
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !6114

if.then8:                                         ; preds = %if.end5
  store i32 -14, ptr %retval, align 4, !dbg !6115
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6115

if.end9:                                          ; preds = %if.end5
  store i32 0, ptr %retval, align 4, !dbg !6116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6116

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #21, !dbg !6117
  call void @llvm.lifetime.end.p0(i64 64, ptr %info) #21, !dbg !6117
  %10 = load i32, ptr %retval, align 4, !dbg !6117
  ret i32 %10, !dbg !6117
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_hwdep_dsp_load_user(ptr noundef %hw, ptr noundef %_info) #0 align 16 !dbg !6118 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca ptr, align 8
  %_info.addr = alloca ptr, align 8
  %info = alloca %struct.snd_hwdep_dsp_image, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hw, ptr %hw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hw.addr, metadata !6120, metadata !DIExpression()), !dbg !6123
  store ptr %_info, ptr %_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_info.addr, metadata !6121, metadata !DIExpression()), !dbg !6124
  call void @llvm.lifetime.start.p0(i64 96, ptr %info) #21, !dbg !6125
  call void @llvm.dbg.declare(metadata ptr %info, metadata !6122, metadata !DIExpression()), !dbg !6126
  call void @llvm.memset.p0.i64(ptr align 8 %info, i8 0, i64 96, i1 false), !dbg !6126
  %0 = load ptr, ptr %_info.addr, align 8, !dbg !6127
  %call = call i64 @copy_from_user(ptr noundef %info, ptr noundef %0, i64 noundef 96) #23, !dbg !6129
  %tobool = icmp ne i64 %call, 0, !dbg !6129
  br i1 %tobool, label %if.then, label %if.end, !dbg !6130

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !6131
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6131

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %hw.addr, align 8, !dbg !6132
  %call1 = call i32 @snd_hwdep_dsp_load(ptr noundef %1, ptr noundef %info) #23, !dbg !6133
  store i32 %call1, ptr %retval, align 4, !dbg !6134
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6134

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 96, ptr %info) #21, !dbg !6135
  %2 = load i32, ptr %retval, align 4, !dbg !6135
  ret i32 %2, !dbg !6135
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #10 align 16 !dbg !6136 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6141, metadata !DIExpression()), !dbg !6144
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6142, metadata !DIExpression()), !dbg !6145
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6143, metadata !DIExpression()), !dbg !6146
  %0 = load ptr, ptr %from.addr, align 8, !dbg !6147
  %1 = load i64, ptr %n.addr, align 8, !dbg !6149
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #23, !dbg !6150
  br i1 %call, label %if.then, label %if.end, !dbg !6151

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6152
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6153
  %4 = load i64, ptr %n.addr, align 8, !dbg !6154
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #23, !dbg !6155
  store i64 %call1, ptr %n.addr, align 8, !dbg !6156
  br label %if.end, !dbg !6157

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6158
  ret i64 %5, !dbg !6159
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #10 align 16 !dbg !6160 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6164, metadata !DIExpression()), !dbg !6174
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6165, metadata !DIExpression()), !dbg !6175
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6166, metadata !DIExpression()), !dbg !6176
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #21, !dbg !6177
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6167, metadata !DIExpression()), !dbg !6178
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6179
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6180
  %conv = trunc i64 %1 to i32, !dbg !6180
  store i32 %conv, ptr %sz, align 4, !dbg !6178
  %2 = load i32, ptr %sz, align 4, !dbg !6181
  %cmp = icmp sge i32 %2, 0, !dbg !6181
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6181

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6181
  %conv2 = sext i32 %3 to i64, !dbg !6181
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6181
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6181
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6183
  %lnot = xor i1 %5, true, !dbg !6181
  %lnot5 = xor i1 %lnot, true, !dbg !6181
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6181
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6181
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6181
  %tobool = icmp ne i64 %expval, 0, !dbg !6181
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6184

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6185
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6188
  br i1 %7, label %if.else, label %if.then7, !dbg !6189

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6190
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6191
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #23, !dbg !6192
  br label %if.end11, !dbg !6192

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6193, !range !5329, !noundef !575
  %tobool8 = trunc i8 %10 to i1, !dbg !6193
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6195

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #23, !dbg !6196, !srcloc !6197
  br label %if.end, !dbg !6196

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #23, !dbg !6198, !srcloc !6199
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6200

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !6201
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6168, metadata !DIExpression()), !dbg !6201
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6201
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6201
  %lnot15 = xor i1 %cmp13, true, !dbg !6201
  %lnot17 = xor i1 %lnot15, true, !dbg !6201
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6201
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6201
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6202
  %tobool19 = icmp ne i32 %12, 0, !dbg !6202
  %lnot20 = xor i1 %tobool19, true, !dbg !6202
  %lnot22 = xor i1 %lnot20, true, !dbg !6202
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6202
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6202
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6202
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6202
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6201

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6202

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #21, !dbg !6203
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6171, metadata !DIExpression()), !dbg !6203
  store i32 2307, ptr %__flags, align 4, !dbg !6203
  br label %do.body28, !dbg !6203

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6204

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6204

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6203

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6206
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 249, i32 %13, i64 12) #21, !dbg !6206, !srcloc !6208
  br label %do.cond30, !dbg !6206

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6206

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6203

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6209

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6209

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #21, !dbg !6202
  br label %do.cond35, !dbg !6203

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6203

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6203

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6201
  %tobool38 = icmp ne i32 %14, 0, !dbg !6201
  %lnot39 = xor i1 %tobool38, true, !dbg !6201
  %lnot41 = xor i1 %lnot39, true, !dbg !6201
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6201
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6201
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6201
  store i64 %expval44, ptr %tmp, align 8, !dbg !6202
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !6211
  %15 = load i64, ptr %tmp, align 8, !dbg !6201
  %tobool45 = icmp ne i64 %15, 0, !dbg !6211
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6212

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6213

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6214
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6215
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6216, !range !5329, !noundef !575
  %tobool48 = trunc i8 %18 to i1, !dbg !6216
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #23, !dbg !6217
  store i1 true, ptr %retval, align 1, !dbg !6218
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6218

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #21, !dbg !6219
  %19 = load i1, ptr %retval, align 1, !dbg !6219
  ret i1 %19, !dbg !6219
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6220 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #13 align 16 !dbg !6221 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6225, metadata !DIExpression()), !dbg !6227
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6226, metadata !DIExpression()), !dbg !6228
  %0 = load i32, ptr %size.addr, align 4, !dbg !6229
  %1 = load i64, ptr %count.addr, align 8, !dbg !6231
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #23, !dbg !6232
  ret void, !dbg !6233
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6234 dso_local void @__bad_copy_from() #18

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6235 dso_local void @__bad_copy_to() #19

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #13 align 16 !dbg !6236 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6240, metadata !DIExpression()), !dbg !6243
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6241, metadata !DIExpression()), !dbg !6244
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6242, metadata !DIExpression()), !dbg !6245
  ret void, !dbg !6246
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6247 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #10 align 16 !dbg !6248 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6250, metadata !DIExpression()), !dbg !6253
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6251, metadata !DIExpression()), !dbg !6254
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6252, metadata !DIExpression()), !dbg !6255
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6256
  %1 = load i64, ptr %n.addr, align 8, !dbg !6258
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #23, !dbg !6259
  br i1 %call, label %if.then, label %if.end, !dbg !6260

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6261
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6262
  %4 = load i64, ptr %n.addr, align 8, !dbg !6263
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #23, !dbg !6264
  store i64 %call1, ptr %n.addr, align 8, !dbg !6265
  br label %if.end, !dbg !6266

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6267
  ret i64 %5, !dbg !6268
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_hwdep_dsp_load(ptr noundef %hw, ptr noundef %info) #0 align 16 !dbg !6269 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hw, ptr %hw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hw.addr, metadata !6271, metadata !DIExpression()), !dbg !6274
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6272, metadata !DIExpression()), !dbg !6275
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #21, !dbg !6276
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6273, metadata !DIExpression()), !dbg !6277
  %0 = load ptr, ptr %hw.addr, align 8, !dbg !6278
  %ops = getelementptr inbounds %struct.snd_hwdep, ptr %0, i32 0, i32 6, !dbg !6280
  %dsp_load = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops, i32 0, i32 10, !dbg !6281
  %1 = load ptr, ptr %dsp_load, align 8, !dbg !6281
  %tobool = icmp ne ptr %1, null, !dbg !6278
  br i1 %tobool, label %if.end, label %if.then, !dbg !6282

if.then:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4, !dbg !6283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6283

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %info.addr, align 8, !dbg !6284
  %index = getelementptr inbounds %struct.snd_hwdep_dsp_image, ptr %2, i32 0, i32 0, !dbg !6286
  %3 = load i32, ptr %index, align 8, !dbg !6286
  %cmp = icmp uge i32 %3, 32, !dbg !6287
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6288

if.then1:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6289

if.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr %hw.addr, align 8, !dbg !6290
  %dsp_loaded = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 13, !dbg !6292
  %5 = load i32, ptr %dsp_loaded, align 4, !dbg !6292
  %6 = load ptr, ptr %info.addr, align 8, !dbg !6293
  %index3 = getelementptr inbounds %struct.snd_hwdep_dsp_image, ptr %6, i32 0, i32 0, !dbg !6294
  %7 = load i32, ptr %index3, align 8, !dbg !6294
  %shl = shl i32 1, %7, !dbg !6295
  %and = and i32 %5, %shl, !dbg !6296
  %tobool4 = icmp ne i32 %and, 0, !dbg !6296
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !6297

if.then5:                                         ; preds = %if.end2
  store i32 -16, ptr %retval, align 4, !dbg !6298
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6298

if.end6:                                          ; preds = %if.end2
  %8 = load ptr, ptr %hw.addr, align 8, !dbg !6299
  %ops7 = getelementptr inbounds %struct.snd_hwdep, ptr %8, i32 0, i32 6, !dbg !6300
  %dsp_load8 = getelementptr inbounds %struct.snd_hwdep_ops, ptr %ops7, i32 0, i32 10, !dbg !6301
  %9 = load ptr, ptr %dsp_load8, align 8, !dbg !6301
  %10 = load ptr, ptr %hw.addr, align 8, !dbg !6302
  %11 = load ptr, ptr %info.addr, align 8, !dbg !6303
  %call = call i32 %9(ptr noundef %10, ptr noundef %11) #23, !dbg !6299
  store i32 %call, ptr %err, align 4, !dbg !6304
  %12 = load i32, ptr %err, align 4, !dbg !6305
  %cmp9 = icmp slt i32 %12, 0, !dbg !6307
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6308

if.then10:                                        ; preds = %if.end6
  %13 = load i32, ptr %err, align 4, !dbg !6309
  store i32 %13, ptr %retval, align 4, !dbg !6310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6310

if.end11:                                         ; preds = %if.end6
  %14 = load ptr, ptr %info.addr, align 8, !dbg !6311
  %index12 = getelementptr inbounds %struct.snd_hwdep_dsp_image, ptr %14, i32 0, i32 0, !dbg !6312
  %15 = load i32, ptr %index12, align 8, !dbg !6312
  %shl13 = shl i32 1, %15, !dbg !6313
  %16 = load ptr, ptr %hw.addr, align 8, !dbg !6314
  %dsp_loaded14 = getelementptr inbounds %struct.snd_hwdep, ptr %16, i32 0, i32 13, !dbg !6315
  %17 = load i32, ptr %dsp_loaded14, align 4, !dbg !6316
  %or = or i32 %17, %shl13, !dbg !6316
  store i32 %or, ptr %dsp_loaded14, align 4, !dbg !6316
  store i32 0, ptr %retval, align 4, !dbg !6317
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6317

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then5, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #21, !dbg !6318
  %18 = load i32, ptr %retval, align 4, !dbg !6318
  ret i32 %18, !dbg !6318
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6319 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @compat_ptr(i32 noundef %uptr) #13 align 16 !dbg !6320 {
entry:
  %uptr.addr = alloca i32, align 4
  store i32 %uptr, ptr %uptr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uptr.addr, metadata !6324, metadata !DIExpression()), !dbg !6325
  %0 = load i32, ptr %uptr.addr, align 4, !dbg !6326
  %conv = zext i32 %0 to i64, !dbg !6327
  %1 = inttoptr i64 %conv to ptr, !dbg !6328
  ret ptr %1, !dbg !6329
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_hwdep_dsp_load_compat(ptr noundef %hw, ptr noundef %src) #0 align 16 !dbg !6330 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %info = alloca %struct.snd_hwdep_dsp_image, align 8
  %ptr = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %tmp5 = alloca i64, align 8
  %tmp9 = alloca i64, align 8
  %__ret_gu10 = alloca i32, align 4
  %__val_gu11 = alloca i32, align 4
  %__tmp15 = alloca i64, align 8
  %tmp17 = alloca i32, align 4
  %tmp21 = alloca i64, align 8
  %tmp26 = alloca i64, align 8
  %__ret_gu27 = alloca i32, align 4
  %__val_gu28 = alloca i32, align 4
  %__tmp32 = alloca i64, align 8
  %tmp34 = alloca i32, align 4
  %tmp38 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hw, ptr %hw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hw.addr, metadata !6342, metadata !DIExpression()), !dbg !6366
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !6343, metadata !DIExpression()), !dbg !6367
  call void @llvm.lifetime.start.p0(i64 96, ptr %info) #21, !dbg !6368
  call void @llvm.dbg.declare(metadata ptr %info, metadata !6344, metadata !DIExpression()), !dbg !6369
  call void @llvm.memset.p0.i64(ptr align 8 %info, i8 0, i64 96, i1 false), !dbg !6369
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptr) #21, !dbg !6370
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !6345, metadata !DIExpression()), !dbg !6371
  %0 = load ptr, ptr %src.addr, align 8, !dbg !6372
  %call = call i64 @copy_from_user(ptr noundef %info, ptr noundef %0, i64 noundef 68) #23, !dbg !6373
  %tobool = icmp ne i64 %call, 0, !dbg !6373
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !6374

lor.lhs.false:                                    ; preds = %entry
  call void @might_fault() #23, !dbg !6375
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #21, !dbg !6376
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !6347, metadata !DIExpression()), !dbg !6376
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #21, !dbg !6376
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !6351, metadata !DIExpression()), !dbg !6376
  %1 = call i64 @llvm.read_register.i64(metadata !4719), !dbg !6376
  %2 = load ptr, ptr %src.addr, align 8, !dbg !6376
  %image = getelementptr inbounds %struct.snd_hwdep_dsp_image32, ptr %2, i32 0, i32 2, !dbg !6376
  %3 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %image, i64 4, i64 %1) #21, !dbg !6376, !srcloc !6377
  %asmresult = extractvalue { ptr, i32, i64 } %3, 0, !dbg !6376
  %asmresult1 = extractvalue { ptr, i32, i64 } %3, 1, !dbg !6376
  %asmresult2 = extractvalue { ptr, i32, i64 } %3, 2, !dbg !6376
  %4 = ptrtoint ptr %asmresult to i64, !dbg !6376
  %5 = trunc i64 %4 to i32, !dbg !6376
  store i32 %5, ptr %__ret_gu, align 4, !dbg !6376
  store i32 %asmresult1, ptr %__val_gu, align 4, !dbg !6376
  call void @llvm.write_register.i64(metadata !4719, i64 %asmresult2), !dbg !6376
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #21, !dbg !6378
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !6352, metadata !DIExpression()), !dbg !6378
  %6 = load i32, ptr %__val_gu, align 4, !dbg !6378
  %conv = zext i32 %6 to i64, !dbg !6378
  store i64 %conv, ptr %__tmp, align 8, !dbg !6378
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #23, !dbg !6378
  %7 = load i64, ptr %__tmp, align 8, !dbg !6378
  %conv4 = trunc i64 %7 to i32, !dbg !6378
  store i32 %conv4, ptr %__val_gu, align 4, !dbg !6378
  store i32 %conv4, ptr %tmp3, align 4, !dbg !6378
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #21, !dbg !6376
  %8 = load i32, ptr %tmp3, align 4, !dbg !6378
  %9 = load i32, ptr %__val_gu, align 4, !dbg !6376
  store i32 %9, ptr %ptr, align 4, !dbg !6376
  %10 = load i32, ptr %__ret_gu, align 4, !dbg !6376
  %conv6 = sext i32 %10 to i64, !dbg !6376
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6376
  store i64 %expval, ptr %tmp5, align 8, !dbg !6376
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #21, !dbg !6375
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #21, !dbg !6375
  %11 = load i64, ptr %tmp5, align 8, !dbg !6376
  store i64 %11, ptr %tmp, align 8, !dbg !6375
  %12 = load i64, ptr %tmp, align 8, !dbg !6375
  %tobool7 = icmp ne i64 %12, 0, !dbg !6379
  br i1 %tobool7, label %if.then, label %lor.lhs.false8, !dbg !6380

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  call void @might_fault() #23, !dbg !6381
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu10) #21, !dbg !6382
  call void @llvm.dbg.declare(metadata ptr %__ret_gu10, metadata !6354, metadata !DIExpression()), !dbg !6382
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu11) #21, !dbg !6382
  call void @llvm.dbg.declare(metadata ptr %__val_gu11, metadata !6357, metadata !DIExpression()), !dbg !6382
  %13 = call i64 @llvm.read_register.i64(metadata !4719), !dbg !6382
  %14 = load ptr, ptr %src.addr, align 8, !dbg !6382
  %length = getelementptr inbounds %struct.snd_hwdep_dsp_image32, ptr %14, i32 0, i32 3, !dbg !6382
  %15 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %length, i64 4, i64 %13) #21, !dbg !6382, !srcloc !6383
  %asmresult12 = extractvalue { ptr, i32, i64 } %15, 0, !dbg !6382
  %asmresult13 = extractvalue { ptr, i32, i64 } %15, 1, !dbg !6382
  %asmresult14 = extractvalue { ptr, i32, i64 } %15, 2, !dbg !6382
  %16 = ptrtoint ptr %asmresult12 to i64, !dbg !6382
  %17 = trunc i64 %16 to i32, !dbg !6382
  store i32 %17, ptr %__ret_gu10, align 4, !dbg !6382
  store i32 %asmresult13, ptr %__val_gu11, align 4, !dbg !6382
  call void @llvm.write_register.i64(metadata !4719, i64 %asmresult14), !dbg !6382
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp15) #21, !dbg !6384
  call void @llvm.dbg.declare(metadata ptr %__tmp15, metadata !6358, metadata !DIExpression()), !dbg !6384
  %18 = load i32, ptr %__val_gu11, align 4, !dbg !6384
  %conv16 = zext i32 %18 to i64, !dbg !6384
  store i64 %conv16, ptr %__tmp15, align 8, !dbg !6384
  call void @kmsan_unpoison_memory(ptr noundef %__tmp15, i64 noundef 8) #23, !dbg !6384
  %19 = load i64, ptr %__tmp15, align 8, !dbg !6384
  %conv18 = trunc i64 %19 to i32, !dbg !6384
  store i32 %conv18, ptr %__val_gu11, align 4, !dbg !6384
  store i32 %conv18, ptr %tmp17, align 4, !dbg !6384
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp15) #21, !dbg !6382
  %20 = load i32, ptr %tmp17, align 4, !dbg !6384
  %21 = load i32, ptr %__val_gu11, align 4, !dbg !6382
  %conv19 = zext i32 %21 to i64, !dbg !6382
  %length20 = getelementptr inbounds %struct.snd_hwdep_dsp_image, ptr %info, i32 0, i32 3, !dbg !6382
  store i64 %conv19, ptr %length20, align 8, !dbg !6382
  %22 = load i32, ptr %__ret_gu10, align 4, !dbg !6382
  %conv22 = sext i32 %22 to i64, !dbg !6382
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !6382
  store i64 %expval23, ptr %tmp21, align 8, !dbg !6382
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu11) #21, !dbg !6381
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu10) #21, !dbg !6381
  %23 = load i64, ptr %tmp21, align 8, !dbg !6382
  store i64 %23, ptr %tmp9, align 8, !dbg !6381
  %24 = load i64, ptr %tmp9, align 8, !dbg !6381
  %tobool24 = icmp ne i64 %24, 0, !dbg !6385
  br i1 %tobool24, label %if.then, label %lor.lhs.false25, !dbg !6386

lor.lhs.false25:                                  ; preds = %lor.lhs.false8
  call void @might_fault() #23, !dbg !6387
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu27) #21, !dbg !6388
  call void @llvm.dbg.declare(metadata ptr %__ret_gu27, metadata !6360, metadata !DIExpression()), !dbg !6388
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu28) #21, !dbg !6388
  call void @llvm.dbg.declare(metadata ptr %__val_gu28, metadata !6363, metadata !DIExpression()), !dbg !6388
  %25 = call i64 @llvm.read_register.i64(metadata !4719), !dbg !6388
  %26 = load ptr, ptr %src.addr, align 8, !dbg !6388
  %driver_data = getelementptr inbounds %struct.snd_hwdep_dsp_image32, ptr %26, i32 0, i32 4, !dbg !6388
  %27 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %driver_data, i64 4, i64 %25) #21, !dbg !6388, !srcloc !6389
  %asmresult29 = extractvalue { ptr, i32, i64 } %27, 0, !dbg !6388
  %asmresult30 = extractvalue { ptr, i32, i64 } %27, 1, !dbg !6388
  %asmresult31 = extractvalue { ptr, i32, i64 } %27, 2, !dbg !6388
  %28 = ptrtoint ptr %asmresult29 to i64, !dbg !6388
  %29 = trunc i64 %28 to i32, !dbg !6388
  store i32 %29, ptr %__ret_gu27, align 4, !dbg !6388
  store i32 %asmresult30, ptr %__val_gu28, align 4, !dbg !6388
  call void @llvm.write_register.i64(metadata !4719, i64 %asmresult31), !dbg !6388
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp32) #21, !dbg !6390
  call void @llvm.dbg.declare(metadata ptr %__tmp32, metadata !6364, metadata !DIExpression()), !dbg !6390
  %30 = load i32, ptr %__val_gu28, align 4, !dbg !6390
  %conv33 = zext i32 %30 to i64, !dbg !6390
  store i64 %conv33, ptr %__tmp32, align 8, !dbg !6390
  call void @kmsan_unpoison_memory(ptr noundef %__tmp32, i64 noundef 8) #23, !dbg !6390
  %31 = load i64, ptr %__tmp32, align 8, !dbg !6390
  %conv35 = trunc i64 %31 to i32, !dbg !6390
  store i32 %conv35, ptr %__val_gu28, align 4, !dbg !6390
  store i32 %conv35, ptr %tmp34, align 4, !dbg !6390
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp32) #21, !dbg !6388
  %32 = load i32, ptr %tmp34, align 4, !dbg !6390
  %33 = load i32, ptr %__val_gu28, align 4, !dbg !6388
  %conv36 = zext i32 %33 to i64, !dbg !6388
  %driver_data37 = getelementptr inbounds %struct.snd_hwdep_dsp_image, ptr %info, i32 0, i32 4, !dbg !6388
  store i64 %conv36, ptr %driver_data37, align 8, !dbg !6388
  %34 = load i32, ptr %__ret_gu27, align 4, !dbg !6388
  %conv39 = sext i32 %34 to i64, !dbg !6388
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !6388
  store i64 %expval40, ptr %tmp38, align 8, !dbg !6388
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu28) #21, !dbg !6387
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu27) #21, !dbg !6387
  %35 = load i64, ptr %tmp38, align 8, !dbg !6388
  store i64 %35, ptr %tmp26, align 8, !dbg !6387
  %36 = load i64, ptr %tmp26, align 8, !dbg !6387
  %tobool41 = icmp ne i64 %36, 0, !dbg !6391
  br i1 %tobool41, label %if.then, label %if.end, !dbg !6392

if.then:                                          ; preds = %lor.lhs.false25, %lor.lhs.false8, %lor.lhs.false, %entry
  store i32 -14, ptr %retval, align 4, !dbg !6393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6393

if.end:                                           ; preds = %lor.lhs.false25
  %37 = load i32, ptr %ptr, align 4, !dbg !6394
  %call42 = call ptr @compat_ptr(i32 noundef %37) #23, !dbg !6395
  %image43 = getelementptr inbounds %struct.snd_hwdep_dsp_image, ptr %info, i32 0, i32 2, !dbg !6396
  store ptr %call42, ptr %image43, align 8, !dbg !6397
  %38 = load ptr, ptr %hw.addr, align 8, !dbg !6398
  %call44 = call i32 @snd_hwdep_dsp_load(ptr noundef %38, ptr noundef %info) #23, !dbg !6399
  store i32 %call44, ptr %retval, align 4, !dbg !6400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6400

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptr) #21, !dbg !6401
  call void @llvm.lifetime.end.p0(i64 96, ptr %info) #21, !dbg !6401
  %39 = load i32, ptr %retval, align 4, !dbg !6401
  ret i32 %39, !dbg !6401
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #13 align 16 !dbg !6402 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6406, metadata !DIExpression()), !dbg !6408
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6407, metadata !DIExpression()), !dbg !6409
  ret void, !dbg !6410
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @imajor(ptr noundef %inode) #13 align 16 !dbg !6411 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6415, metadata !DIExpression()), !dbg !6416
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6417
  %i_rdev = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14, !dbg !6417
  %1 = load i32, ptr %i_rdev, align 4, !dbg !6417
  %shr = lshr i32 %1, 20, !dbg !6417
  ret i32 %shr, !dbg !6418
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6419 dso_local ptr @snd_lookup_minor_data(i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @iminor(ptr noundef %inode) #13 align 16 !dbg !6422 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6424, metadata !DIExpression()), !dbg !6425
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6426
  %i_rdev = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14, !dbg !6426
  %1 = load i32, ptr %i_rdev, align 4, !dbg !6426
  %and = and i32 %1, 1048575, !dbg !6426
  ret i32 %and, !dbg !6427
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6428 dso_local zeroext i1 @try_module_get(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_card_unref(ptr noundef %card) #13 align 16 !dbg !6431 {
entry:
  %card.addr = alloca ptr, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !6433, metadata !DIExpression()), !dbg !6434
  %0 = load ptr, ptr %card.addr, align 8, !dbg !6435
  %card_dev = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 31, !dbg !6436
  call void @put_device(ptr noundef %card_dev) #23, !dbg !6437
  ret void, !dbg !6438
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_waitqueue_entry(ptr noundef %wq_entry, ptr noundef %p) #13 align 16 !dbg !6439 {
entry:
  %wq_entry.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %wq_entry, ptr %wq_entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq_entry.addr, metadata !6443, metadata !DIExpression()), !dbg !6445
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6444, metadata !DIExpression()), !dbg !6446
  %0 = load ptr, ptr %wq_entry.addr, align 8, !dbg !6447
  %flags = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 0, !dbg !6448
  store i32 0, ptr %flags, align 8, !dbg !6449
  %1 = load ptr, ptr %p.addr, align 8, !dbg !6450
  %2 = load ptr, ptr %wq_entry.addr, align 8, !dbg !6451
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 1, !dbg !6452
  store ptr %1, ptr %private, align 8, !dbg !6453
  %3 = load ptr, ptr %wq_entry.addr, align 8, !dbg !6454
  %func = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2, !dbg !6455
  store ptr @default_wake_function, ptr %func, align 8, !dbg !6456
  ret void, !dbg !6457
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #10 align 16 !dbg !6458 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #21, !dbg !6469
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6463, metadata !DIExpression()), !dbg !6469
  br label %do.body, !dbg !6469

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #21, !dbg !6470
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6465, metadata !DIExpression()), !dbg !6470
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6470
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6470
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #21, !dbg !6469
  br label %do.cond, !dbg !6470

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6470

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #21, !dbg !6471
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6467, metadata !DIExpression()), !dbg !6471
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #27, !dbg !6471, !srcloc !6472
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6471
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6471
  %3 = inttoptr i64 %2 to ptr, !dbg !6471
  store ptr %3, ptr %tmp, align 8, !dbg !6471
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #21, !dbg !6469
  %4 = load ptr, ptr %tmp, align 8, !dbg !6471
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6469
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6469
  store ptr %5, ptr %tmp1, align 8, !dbg !6469
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #21, !dbg !6473
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6469
  ret ptr %6, !dbg !6474
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6475 dso_local void @add_wait_queue(ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #10 align 16 !dbg !6478 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6486, metadata !DIExpression()), !dbg !6488
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6487, metadata !DIExpression()), !dbg !6489
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6490
  %1 = load i64, ptr %size.addr, align 8, !dbg !6491
  %conv = trunc i64 %1 to i32, !dbg !6491
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #23, !dbg !6492
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6493
  %3 = load i64, ptr %size.addr, align 8, !dbg !6493
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #23, !dbg !6493
  ret void, !dbg !6494
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6495 dso_local void @schedule() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signal_pending(ptr noundef %p) #13 align 16 !dbg !6496 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6500, metadata !DIExpression()), !dbg !6501
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6502
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 17) #23, !dbg !6502
  %tobool = icmp ne i32 %call, 0, !dbg !6502
  %lnot = xor i1 %tobool, true, !dbg !6502
  %lnot1 = xor i1 %lnot, true, !dbg !6502
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6502
  %conv = sext i32 %lnot.ext to i64, !dbg !6502
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6502
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6502
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6504

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !6505
  br label %return, !dbg !6505

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !6506
  %call3 = call i32 @task_sigpending(ptr noundef %1) #23, !dbg !6507
  store i32 %call3, ptr %retval, align 4, !dbg !6508
  br label %return, !dbg !6508

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6509
  ret i32 %2, !dbg !6509
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6510 dso_local void @remove_wait_queue(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6511 dso_local i32 @snd_card_file_add(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6514 dso_local void @module_put(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #13 align 16 !dbg !6515 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6520, metadata !DIExpression()), !dbg !6522
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6521, metadata !DIExpression()), !dbg !6523
  ret i1 true, !dbg !6524
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #13 align 16 !dbg !6525 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6530, metadata !DIExpression()), !dbg !6533
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6531, metadata !DIExpression()), !dbg !6534
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6532, metadata !DIExpression()), !dbg !6535
  ret void, !dbg !6536
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #13 align 16 !dbg !6537 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !6541, metadata !DIExpression()), !dbg !6543
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6542, metadata !DIExpression()), !dbg !6544
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !6545
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !6545
  %1 = load i32, ptr %flag.addr, align 4, !dbg !6546
  %call = call i32 @test_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #23, !dbg !6547
  ret i32 %call, !dbg !6548
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_sigpending(ptr noundef %p) #13 align 16 !dbg !6549 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6551, metadata !DIExpression()), !dbg !6552
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6553
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 2) #23, !dbg !6553
  %tobool = icmp ne i32 %call, 0, !dbg !6553
  %lnot = xor i1 %tobool, true, !dbg !6553
  %lnot1 = xor i1 %lnot, true, !dbg !6553
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6553
  %conv = sext i32 %lnot.ext to i64, !dbg !6553
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6553
  %conv2 = trunc i64 %expval to i32, !dbg !6553
  ret i32 %conv2, !dbg !6554
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #13 align 16 !dbg !6555 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !6560, metadata !DIExpression()), !dbg !6562
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6561, metadata !DIExpression()), !dbg !6563
  %0 = load i32, ptr %flag.addr, align 4, !dbg !6564
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6564
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6564

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !6564
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !6564
  %3 = ptrtoint ptr %flags to i64, !dbg !6564
  %cmp = icmp ne i64 %3, 0, !dbg !6564
  %conv = zext i1 %cmp to i32, !dbg !6564
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6564
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !6564

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !6564
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !6564
  %6 = ptrtoint ptr %flags2 to i64, !dbg !6564
  %cmp3 = icmp ne i64 %6, 0, !dbg !6564
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !6564

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !6564
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !6564
  %8 = load i64, ptr %flags6, align 8, !dbg !6564
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !6564
  br i1 %9, label %cond.true, label %cond.false, !dbg !6564

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !6564
  %conv7 = sext i32 %10 to i64, !dbg !6564
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !6564
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !6564
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #23, !dbg !6564
  %conv9 = zext i1 %call to i32, !dbg !6564
  br label %cond.end, !dbg !6564

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !6564
  %conv10 = sext i32 %12 to i64, !dbg !6564
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !6564
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !6564
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #23, !dbg !6564
  %conv13 = zext i1 %call12 to i32, !dbg !6564
  br label %cond.end, !dbg !6564

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !6564
  ret i32 %cond, !dbg !6565
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !6566 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6574, metadata !DIExpression()), !dbg !6579
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6575, metadata !DIExpression()), !dbg !6580
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #21, !dbg !6581
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6576, metadata !DIExpression()), !dbg !6582
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6583
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6584
  %div = udiv i64 %1, 64, !dbg !6584
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6585
  store ptr %add.ptr, ptr %p, align 8, !dbg !6582
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #21, !dbg !6586
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6577, metadata !DIExpression()), !dbg !6587
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6588
  %rem = urem i64 %2, 64, !dbg !6588
  %shl = shl i64 1, %rem, !dbg !6588
  store i64 %shl, ptr %mask, align 8, !dbg !6587
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #21, !dbg !6589
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6578, metadata !DIExpression()), !dbg !6590
  %3 = load ptr, ptr %p, align 8, !dbg !6591
  %4 = load i64, ptr %3, align 8, !dbg !6592
  store i64 %4, ptr %val, align 8, !dbg !6590
  %5 = load i64, ptr %val, align 8, !dbg !6593
  %6 = load i64, ptr %mask, align 8, !dbg !6594
  %and = and i64 %5, %6, !dbg !6595
  %tobool = icmp ne i64 %and, 0, !dbg !6596
  %lnot = xor i1 %tobool, true, !dbg !6596
  %lnot1 = xor i1 %lnot, true, !dbg !6597
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #21, !dbg !6598
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #21, !dbg !6598
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #21, !dbg !6598
  ret i1 %lnot1, !dbg !6599
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !6600 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6603, metadata !DIExpression()), !dbg !6605
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6604, metadata !DIExpression()), !dbg !6606
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6607
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6608
  %div = udiv i64 %1, 64, !dbg !6608
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6609
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #23, !dbg !6610
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6611
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6612
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #23, !dbg !6613
  ret i1 %call, !dbg !6614
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #10 align 16 !dbg !6615 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6617, metadata !DIExpression()), !dbg !6619
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6618, metadata !DIExpression()), !dbg !6620
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6621
  %1 = load i64, ptr %size.addr, align 8, !dbg !6622
  %conv = trunc i64 %1 to i32, !dbg !6622
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #23, !dbg !6623
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6624
  %3 = load i64, ptr %size.addr, align 8, !dbg !6624
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #23, !dbg !6624
  ret void, !dbg !6625
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !6626 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6629, metadata !DIExpression()), !dbg !6631
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6630, metadata !DIExpression()), !dbg !6632
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6633
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6634
  br i1 %1, label %cond.true, label %cond.false, !dbg !6634

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6635
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6636
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #23, !dbg !6637
  %conv = zext i1 %call to i32, !dbg !6637
  br label %cond.end, !dbg !6634

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6638
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6639
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #23, !dbg !6640
  %conv2 = zext i1 %call1 to i32, !dbg !6640
  br label %cond.end, !dbg !6634

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6634
  %tobool = icmp ne i32 %cond, 0, !dbg !6634
  ret i1 %tobool, !dbg !6641
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #13 align 16 !dbg !6642 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6644, metadata !DIExpression()), !dbg !6646
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6645, metadata !DIExpression()), !dbg !6647
  ret i1 true, !dbg !6648
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !6649 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6653, metadata !DIExpression()), !dbg !6655
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6654, metadata !DIExpression()), !dbg !6656
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6657
  %and = and i64 %0, 63, !dbg !6658
  %shl = shl i64 1, %and, !dbg !6659
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6660
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6661
  %shr = ashr i64 %2, 6, !dbg !6662
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6660
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6660
  %and1 = and i64 %shl, %3, !dbg !6663
  %cmp = icmp ne i64 %and1, 0, !dbg !6664
  ret i1 %cmp, !dbg !6665
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !6666 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6668, metadata !DIExpression()), !dbg !6671
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6669, metadata !DIExpression()), !dbg !6672
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #21, !dbg !6673
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6670, metadata !DIExpression()), !dbg !6674
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6675
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6676
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #21, !dbg !6677, !srcloc !6678
  %3 = icmp ult i8 %2, 2, !dbg !6677
  call void @llvm.assume(i1 %3), !dbg !6677
  store i8 %2, ptr %oldbit, align 1, !dbg !6677
  %4 = load i8, ptr %oldbit, align 1, !dbg !6679, !range !5329, !noundef !575
  %tobool = trunc i8 %4 to i1, !dbg !6679
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #21, !dbg !6680
  ret i1 %tobool, !dbg !6681
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6682 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6685 dso_local i32 @snd_card_file_remove(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #13 align 16 !dbg !6686 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6688, metadata !DIExpression()), !dbg !6689
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6690
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #23, !dbg !6692
  br i1 %call, label %if.end, label %if.then, !dbg !6693

if.then:                                          ; preds = %entry
  br label %return, !dbg !6694

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6695
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6696
  %2 = load ptr, ptr %prev, align 8, !dbg !6696
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6697
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6698
  %4 = load ptr, ptr %next, align 8, !dbg !6698
  call void @__list_del(ptr noundef %2, ptr noundef %4) #23, !dbg !6699
  br label %return, !dbg !6700

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6700
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #13 align 16 !dbg !6701 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6705, metadata !DIExpression()), !dbg !6706
  ret i1 true, !dbg !6707
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #13 align 16 !dbg !6708 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6710, metadata !DIExpression()), !dbg !6712
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6711, metadata !DIExpression()), !dbg !6713
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6714
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6715
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6716
  store ptr %0, ptr %prev1, align 8, !dbg !6717
  br label %do.body, !dbg !6718

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6719

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6721

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6719

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6723
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6723
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6723
  store volatile ptr %2, ptr %next4, align 8, !dbg !6723
  br label %do.end5, !dbg !6723

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6719

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6725
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6726 dso_local i32 @snd_unregister_device(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #13 align 16 !dbg !6727 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6729, metadata !DIExpression()), !dbg !6730
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6731
  call void @__list_del_entry(ptr noundef %0) #23, !dbg !6732
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6733
  call void @INIT_LIST_HEAD(ptr noundef %1) #23, !dbg !6734
  ret void, !dbg !6735
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #13 align 16 !dbg !6736 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6738, metadata !DIExpression()), !dbg !6739
  br label %do.body, !dbg !6740

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6741

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6743

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6741

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6745
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6745
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6745
  store volatile ptr %0, ptr %next, align 8, !dbg !6745
  br label %do.end3, !dbg !6745

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6741

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6747

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6748

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6750

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6748

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6752
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6752
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6752
  store volatile ptr %2, ptr %prev, align 8, !dbg !6752
  br label %do.end9, !dbg !6752

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6748

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6754
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @snd_hwdep_proc_init() #6 section ".init.text" align 16 !dbg !6755 {
entry:
  %entry1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #21, !dbg !6758
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6757, metadata !DIExpression()), !dbg !6759
  %call = call ptr @snd_info_create_module_entry(ptr noundef null, ptr noundef @.str.7, ptr noundef null) #23, !dbg !6760
  store ptr %call, ptr %entry1, align 8, !dbg !6761
  %0 = load ptr, ptr %entry1, align 8, !dbg !6762
  %tobool = icmp ne ptr %0, null, !dbg !6762
  br i1 %tobool, label %if.then, label %if.end4, !dbg !6764

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %entry1, align 8, !dbg !6765
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %1, i32 0, i32 4, !dbg !6767
  %read = getelementptr inbounds %struct.snd_info_entry_text, ptr %c, i32 0, i32 0, !dbg !6768
  store ptr @snd_hwdep_proc_read, ptr %read, align 8, !dbg !6769
  %2 = load ptr, ptr %entry1, align 8, !dbg !6770
  %call2 = call i32 @snd_info_register(ptr noundef %2) #23, !dbg !6772
  %cmp = icmp slt i32 %call2, 0, !dbg !6773
  br i1 %cmp, label %if.then3, label %if.end, !dbg !6774

if.then3:                                         ; preds = %if.then
  %3 = load ptr, ptr %entry1, align 8, !dbg !6775
  call void @snd_info_free_entry(ptr noundef %3) #23, !dbg !6777
  store ptr null, ptr %entry1, align 8, !dbg !6778
  br label %if.end, !dbg !6779

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end4, !dbg !6780

if.end4:                                          ; preds = %if.end, %entry
  %4 = load ptr, ptr %entry1, align 8, !dbg !6781
  store ptr %4, ptr @snd_hwdep_proc_entry, align 8, !dbg !6782
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #21, !dbg !6783
  ret void, !dbg !6783
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6784 dso_local i32 @snd_ctl_register_ioctl(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6785 dso_local i32 @snd_ctl_register_ioctl_compat(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6786 dso_local ptr @snd_info_create_module_entry(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_hwdep_proc_read(ptr noundef %entry1, ptr noundef %buffer) #0 align 16 !dbg !6789 {
entry:
  %entry.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %hwdep = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6791, metadata !DIExpression()), !dbg !6800
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !6792, metadata !DIExpression()), !dbg !6801
  call void @llvm.lifetime.start.p0(i64 8, ptr %hwdep) #21, !dbg !6802
  call void @llvm.dbg.declare(metadata ptr %hwdep, metadata !6793, metadata !DIExpression()), !dbg !6803
  call void @mutex_lock(ptr noundef @register_mutex) #23, !dbg !6804
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #21, !dbg !6805
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6794, metadata !DIExpression()), !dbg !6805
  %0 = load ptr, ptr @snd_hwdep_devices, align 8, !dbg !6805
  store ptr %0, ptr %__mptr, align 8, !dbg !6805
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6805
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !6805
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6805
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #21, !dbg !6806
  %2 = load ptr, ptr %tmp, align 8, !dbg !6805
  store ptr %2, ptr %hwdep, align 8, !dbg !6806
  br label %for.cond, !dbg !6806

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %hwdep, align 8, !dbg !6807
  %list = getelementptr inbounds %struct.snd_hwdep, ptr %3, i32 0, i32 1, !dbg !6807
  %cmp = icmp eq ptr %list, @snd_hwdep_devices, !dbg !6807
  %lnot = xor i1 %cmp, true, !dbg !6807
  br i1 %lnot, label %for.body, label %for.end, !dbg !6806

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %buffer.addr, align 8, !dbg !6808
  %buffer2 = getelementptr inbounds %struct.snd_info_buffer, ptr %4, i32 0, i32 0, !dbg !6808
  %5 = load ptr, ptr %buffer2, align 8, !dbg !6808
  %6 = load ptr, ptr %hwdep, align 8, !dbg !6808
  %card = getelementptr inbounds %struct.snd_hwdep, ptr %6, i32 0, i32 0, !dbg !6808
  %7 = load ptr, ptr %card, align 8, !dbg !6808
  %number = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 0, !dbg !6808
  %8 = load i32, ptr %number, align 8, !dbg !6808
  %9 = load ptr, ptr %hwdep, align 8, !dbg !6808
  %device = getelementptr inbounds %struct.snd_hwdep, ptr %9, i32 0, i32 2, !dbg !6808
  %10 = load i32, ptr %device, align 8, !dbg !6808
  %11 = load ptr, ptr %hwdep, align 8, !dbg !6808
  %name = getelementptr inbounds %struct.snd_hwdep, ptr %11, i32 0, i32 4, !dbg !6808
  %arraydecay = getelementptr inbounds [80 x i8], ptr %name, i64 0, i64 0, !dbg !6808
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef @.str.8, i32 noundef %8, i32 noundef %10, ptr noundef %arraydecay) #23, !dbg !6808
  br label %for.inc, !dbg !6808

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #21, !dbg !6809
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !6797, metadata !DIExpression()), !dbg !6809
  %12 = load ptr, ptr %hwdep, align 8, !dbg !6809
  %list4 = getelementptr inbounds %struct.snd_hwdep, ptr %12, i32 0, i32 1, !dbg !6809
  %next = getelementptr inbounds %struct.list_head, ptr %list4, i32 0, i32 0, !dbg !6809
  %13 = load ptr, ptr %next, align 8, !dbg !6809
  store ptr %13, ptr %__mptr3, align 8, !dbg !6809
  %14 = load ptr, ptr %__mptr3, align 8, !dbg !6809
  %add.ptr6 = getelementptr i8, ptr %14, i64 -8, !dbg !6809
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !6809
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #21, !dbg !6807
  %15 = load ptr, ptr %tmp5, align 8, !dbg !6809
  store ptr %15, ptr %hwdep, align 8, !dbg !6807
  br label %for.cond, !dbg !6807, !llvm.loop !6810

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @register_mutex) #23, !dbg !6812
  call void @llvm.lifetime.end.p0(i64 8, ptr %hwdep) #21, !dbg !6813
  ret void, !dbg !6813
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6814 dso_local i32 @snd_info_register(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6817 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #16 = { nocallback nounwind }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #19 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { noredzone allocsize(0) }
attributes #23 = { noredzone }
attributes #24 = { cold noredzone }
attributes #25 = { noredzone allocsize(2) }
attributes #26 = { noredzone noreturn }
attributes #27 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4719}
!llvm.module.flags = !{!4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727}
!llvm.ident = !{!4728}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author273", scope: !2, file: !3, line: 20, type: !4716, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/core/.hwdep.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/core/snd-hwdep\22 -D KBUILD_BASENAME=\22hwdep\22 -D KBUILD_MODNAME=\22snd_hwdep\22 -D __KBUILD_MODNAME=kmod_snd_hwdep -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/core/hwdep.ll sound/core/hwdep.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !156, globals: !4609, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "sound/core/hwdep.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7d687e0574e92f5806b9255e7973c64a")
!4 = !{!5, !13, !18, !26, !32, !37, !43, !50, !57, !63, !69, !76, !84, !92, !101, !106, !111, !117, !123, !137, !142, !152}
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
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !27, line: 54, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "USRQUOTA", value: 0)
!30 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!31 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !38, line: 16, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "TT_NONE", value: 0)
!41 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!42 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !44, line: 51, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!47 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!48 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!49 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
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
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !64, line: 45, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!67 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!68 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !70, line: 487, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!73 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!74 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!75 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !77, line: 620, baseType: !7, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!78 = !{!79, !80, !81, !82, !83}
!79 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!80 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!81 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!82 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!83 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !77, line: 597, baseType: !85, size: 32, elements: !86)
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !{!87, !88, !89, !90, !91}
!87 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!88 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!89 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!90 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!91 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !70, line: 547, baseType: !7, size: 32, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !100}
!94 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!95 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!96 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!97 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!98 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!99 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!100 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !70, line: 564, baseType: !7, size: 32, elements: !102)
!102 = !{!103, !104, !105}
!103 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!104 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!105 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !70, line: 577, baseType: !7, size: 32, elements: !107)
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!109 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!110 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !70, line: 503, baseType: !7, size: 32, elements: !112)
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!114 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!115 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!116 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "snd_device_state", file: !118, line: 53, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/sound/core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a50d220b71ed843af7ad75eb7639e6e")
!119 = !{!120, !121, !122}
!120 = !DIEnumerator(name: "SNDRV_DEV_BUILD", value: 0)
!121 = !DIEnumerator(name: "SNDRV_DEV_REGISTERED", value: 1)
!122 = !DIEnumerator(name: "SNDRV_DEV_DISCONNECTED", value: 2)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "snd_device_type", file: !118, line: 38, baseType: !7, size: 32, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!125 = !DIEnumerator(name: "SNDRV_DEV_LOWLEVEL", value: 0)
!126 = !DIEnumerator(name: "SNDRV_DEV_INFO", value: 1)
!127 = !DIEnumerator(name: "SNDRV_DEV_BUS", value: 2)
!128 = !DIEnumerator(name: "SNDRV_DEV_CODEC", value: 3)
!129 = !DIEnumerator(name: "SNDRV_DEV_PCM", value: 4)
!130 = !DIEnumerator(name: "SNDRV_DEV_COMPRESS", value: 5)
!131 = !DIEnumerator(name: "SNDRV_DEV_RAWMIDI", value: 6)
!132 = !DIEnumerator(name: "SNDRV_DEV_TIMER", value: 7)
!133 = !DIEnumerator(name: "SNDRV_DEV_SEQUENCER", value: 8)
!134 = !DIEnumerator(name: "SNDRV_DEV_HWDEP", value: 9)
!135 = !DIEnumerator(name: "SNDRV_DEV_JACK", value: 10)
!136 = !DIEnumerator(name: "SNDRV_DEV_CONTROL", value: 11)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !138, line: 10, baseType: !7, size: 32, elements: !139)
!138 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!139 = !{!140, !141}
!140 = !DIEnumerator(name: "false", value: 0)
!141 = !DIEnumerator(name: "true", value: 1)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !143, line: 364, baseType: !7, size: 32, elements: !144)
!143 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!144 = !{!145, !146, !147, !148, !149, !150, !151}
!145 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!146 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!147 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!148 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!149 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!150 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!151 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !153, line: 35, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "sound/core/hwdep_compat.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c62ea5258fe830b76a058d364c213def")
!154 = !{!155}
!155 = !DIEnumerator(name: "SNDRV_HWDEP_IOCTL_DSP_LOAD32", value: 1079003139)
!156 = !{!157, !159, !160, !161, !4593, !191, !638, !85, !446, !442, !7, !4595, !1785, !4596, !4030, !4597, !4599, !644}
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !158, line: 154, baseType: !7)
!158 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!160 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_hwdep", file: !163, line: 39, size: 2624, elements: !164)
!163 = !DIFile(filename: "./include/sound/hwdep.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5d0b643f2784f70b2018e2d3b18caeb6")
!164 = !{!165, !4515, !4516, !4517, !4518, !4519, !4520, !4582, !4583, !4584, !4588, !4589, !4590, !4591, !4592}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !162, file: !163, line: 40, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_card", file: !118, line: 80, size: 12288, elements: !168)
!168 = !{!169, !170, !175, !176, !180, !184, !185, !186, !190, !4045, !4046, !4050, !4051, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4492, !4493, !4494, !4497, !4498, !4499, !4500, !4501, !4502, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !167, file: !118, line: 81, baseType: !85, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !167, file: !118, line: 84, baseType: !171, size: 128, offset: 32)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 128, elements: !173)
!172 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!173 = !{!174}
!174 = !DISubrange(count: 16)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !167, file: !118, line: 85, baseType: !171, size: 128, offset: 160)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "shortname", scope: !167, file: !118, line: 86, baseType: !177, size: 256, offset: 288)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 256, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "longname", scope: !167, file: !118, line: 87, baseType: !181, size: 640, offset: 544)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 640, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 80)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !167, file: !118, line: 88, baseType: !177, size: 256, offset: 1184)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "mixername", scope: !167, file: !118, line: 89, baseType: !181, size: 640, offset: 1440)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "components", scope: !167, file: !118, line: 90, baseType: !187, size: 1024, offset: 2080)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 1024, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !167, file: !118, line: 92, baseType: !191, size: 64, offset: 3136)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !193)
!193 = !{!194, !195, !201, !205, !3721, !3747, !3748, !3749, !3750, !3754, !3757, !3758, !3759, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3826, !3830, !3848, !3865, !3866, !3867, !3868, !3877, !3900, !3901, !3904, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3918, !3919, !4005, !4013, !4014, !4015, !4017, !4021, !4022, !4026, !4027, !4028, !4029, !4031, !4032, !4033, !4040, !4041, !4042, !4044}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !192, file: !6, line: 403, baseType: !5, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !192, file: !6, line: 406, baseType: !196, size: 128, offset: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !158, line: 190, size: 128, elements: !197)
!197 = !{!198, !200}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !196, file: !158, line: 191, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !196, file: !158, line: 191, baseType: !199, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !192, file: !6, line: 409, baseType: !202, size: 448, offset: 192)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 448, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 56)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !192, file: !6, line: 417, baseType: !206, size: 768, offset: 640)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !207)
!207 = !{!208, !3715, !3716, !3717, !3720}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !206, file: !6, line: 46, baseType: !209, size: 512)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !210, line: 64, size: 512, elements: !211)
!210 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!211 = !{!212, !215, !216, !218, !307, !3614, !3705, !3710, !3711, !3712, !3713, !3714}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !210, line: 65, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !209, file: !210, line: 66, baseType: !196, size: 128, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !209, file: !210, line: 67, baseType: !217, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !209, file: !210, line: 68, baseType: !219, size: 64, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !210, line: 168, size: 768, elements: !221)
!221 = !{!222, !223, !266, !267}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !220, file: !210, line: 169, baseType: !196, size: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !220, file: !210, line: 170, baseType: !224, size: 32, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !225, line: 29, baseType: !226)
!225 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !225, line: 17, size: 32, elements: !227)
!227 = !{!228}
!228 = !DIDerivedType(tag: DW_TAG_member, scope: !226, file: !225, line: 18, baseType: !229, size: 32)
!229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !226, file: !225, line: 18, size: 32, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !229, file: !225, line: 19, baseType: !232, size: 32)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !233, line: 14, size: 32, elements: !234)
!233 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!234 = !{!235}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !232, file: !233, line: 15, baseType: !236, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !237, line: 44, baseType: !238)
!237 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !237, line: 14, size: 32, elements: !239)
!239 = !{!240}
!240 = !DIDerivedType(tag: DW_TAG_member, scope: !238, file: !237, line: 15, baseType: !241, size: 32)
!241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !238, file: !237, line: 15, size: 32, elements: !242)
!242 = !{!243, !248, !258}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !241, file: !237, line: 16, baseType: !244, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !158, line: 174, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 172, size: 32, elements: !246)
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !245, file: !158, line: 173, baseType: !85, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !237, line: 24, baseType: !249, size: 16)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !241, file: !237, line: 24, size: 16, elements: !250)
!250 = !{!251, !257}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !249, file: !237, line: 25, baseType: !252, size: 8)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !253, line: 17, baseType: !254)
!253 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !255, line: 21, baseType: !256)
!255 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!256 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !249, file: !237, line: 26, baseType: !252, size: 8, offset: 8)
!258 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !237, line: 28, baseType: !259, size: 32)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !241, file: !237, line: 28, size: 32, elements: !260)
!260 = !{!261, !265}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !259, file: !237, line: 29, baseType: !262, size: 16)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !253, line: 19, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !255, line: 24, baseType: !264)
!264 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !259, file: !237, line: 30, baseType: !262, size: 16, offset: 16)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !220, file: !210, line: 171, baseType: !209, size: 512, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !220, file: !210, line: 172, baseType: !268, size: 64, offset: 704)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !210, line: 133, size: 192, elements: !271)
!271 = !{!272, !279, !284}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !270, file: !210, line: 134, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!85, !277}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !270, file: !210, line: 135, baseType: !280, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!213, !277}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !270, file: !210, line: 136, baseType: !285, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!85, !277, !289}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !210, line: 125, size: 20736, elements: !291)
!291 = !{!292, !297, !301, !302, !306}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !290, file: !210, line: 126, baseType: !293, size: 192)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 192, elements: !295)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!295 = !{!296}
!296 = !DISubrange(count: 3)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !290, file: !210, line: 127, baseType: !298, size: 4096, offset: 192)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 4096, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !290, file: !210, line: 128, baseType: !85, size: 32, offset: 4288)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !290, file: !210, line: 129, baseType: !303, size: 16384, offset: 4320)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 16384, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 2048)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !290, file: !210, line: 130, baseType: !85, size: 32, offset: 20704)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !209, file: !210, line: 69, baseType: !308, size: 64, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !210, line: 116, size: 384, elements: !311)
!311 = !{!312, !316, !344, !3576, !3604, !3608}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !310, file: !210, line: 117, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !217}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !310, file: !210, line: 118, baseType: !317, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !320, line: 254, size: 128, elements: !321)
!320 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!321 = !{!322, !337}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !319, file: !320, line: 255, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!326, !217, !331, !294}
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !158, line: 66, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !328, line: 73, baseType: !329)
!328 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !328, line: 15, baseType: !330)
!330 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !320, line: 30, size: 128, elements: !333)
!333 = !{!334, !335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !332, file: !320, line: 31, baseType: !213, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !332, file: !320, line: 32, baseType: !336, size: 16, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !158, line: 24, baseType: !264)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !319, file: !320, line: 256, baseType: !338, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!326, !217, !331, !213, !341}
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !158, line: 61, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !328, line: 72, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !328, line: 16, baseType: !160)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !310, file: !210, line: 119, baseType: !345, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !320, line: 84, size: 320, elements: !349)
!349 = !{!350, !351, !355, !3572, !3574}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !348, file: !320, line: 85, baseType: !213, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !348, file: !320, line: 86, baseType: !352, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!336, !217, !331, !85}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !348, file: !320, line: 88, baseType: !356, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!336, !217, !359, !85}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !320, line: 175, size: 512, elements: !361)
!361 = !{!362, !363, !364, !365, !3563, !3567, !3568}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !360, file: !320, line: 176, baseType: !332, size: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !360, file: !320, line: 177, baseType: !341, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !360, file: !320, line: 178, baseType: !159, size: 64, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !360, file: !320, line: 179, baseType: !366, size: 64, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !371)
!371 = !{!372, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3557, !3558, !3559, !3560, !3561, !3562}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !370, file: !14, line: 473, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !375)
!375 = !{!376, !377, !378, !386, !387, !394, !395, !398, !399, !3335, !3336, !3337, !3338, !3339, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3379, !3382, !3383, !3384, !3393, !3394, !3395, !3396}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !374, file: !14, line: 642, baseType: !336, size: 16)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !374, file: !14, line: 643, baseType: !264, size: 16, offset: 16)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !374, file: !14, line: 644, baseType: !379, size: 32, offset: 32)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !380, line: 23, baseType: !381)
!380 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !380, line: 21, size: 32, elements: !382)
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !381, file: !380, line: 22, baseType: !384, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !158, line: 37, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !328, line: 49, baseType: !7)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !374, file: !14, line: 645, baseType: !196, size: 128, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !374, file: !14, line: 646, baseType: !388, size: 32, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !380, line: 28, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !380, line: 26, size: 32, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !389, file: !380, line: 27, baseType: !392, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !158, line: 38, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !328, line: 50, baseType: !7)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !374, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !374, file: !14, line: 650, baseType: !396, size: 64, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !374, file: !14, line: 651, baseType: !396, size: 64, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !374, file: !14, line: 654, baseType: !400, size: 64, offset: 384)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !403)
!403 = !{!404, !3166, !3179, !3183, !3187, !3191, !3195, !3199, !3203, !3207, !3211, !3212, !3216, !3220, !3257, !3286, !3290, !3296, !3300, !3304, !3308, !3312, !3316, !3322, !3326}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !402, file: !14, line: 1967, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!408, !373, !408, !7}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !410, line: 82, size: 1536, elements: !411)
!410 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!411 = !{!412, !413, !423, !431, !432, !452, !453, !455, !468, !3150, !3151, !3152, !3153, !3158, !3159, !3160}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !409, file: !410, line: 84, baseType: !7, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !409, file: !410, line: 85, baseType: !414, size: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !415, line: 275, baseType: !416)
!415 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !415, line: 275, size: 32, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !416, file: !415, line: 275, baseType: !419, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !415, line: 69, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !415, line: 64, size: 32, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !420, file: !415, line: 65, baseType: !7, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !409, file: !410, line: 86, baseType: !424, size: 128, offset: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !425, line: 38, size: 128, elements: !426)
!425 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!426 = !{!427, !429}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !424, file: !425, line: 39, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !424, file: !425, line: 39, baseType: !430, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !409, file: !410, line: 87, baseType: !408, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !409, file: !410, line: 88, baseType: !433, size: 128, offset: 256)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !410, line: 49, size: 128, elements: !434)
!434 = !{!435, !449}
!435 = !DIDerivedType(tag: DW_TAG_member, scope: !433, file: !410, line: 50, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !433, file: !410, line: 50, size: 64, elements: !437)
!437 = !{!438, !445}
!438 = !DIDerivedType(tag: DW_TAG_member, scope: !436, file: !410, line: 51, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !436, file: !410, line: 51, size: 64, elements: !440)
!440 = !{!441, !444}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !439, file: !410, line: 52, baseType: !442, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !253, line: 21, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !255, line: 27, baseType: !7)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !439, file: !410, line: 52, baseType: !442, size: 32, offset: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !436, file: !410, line: 54, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !253, line: 23, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !255, line: 31, baseType: !448)
!448 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !433, file: !410, line: 56, baseType: !450, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !409, file: !410, line: 89, baseType: !373, size: 64, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !409, file: !410, line: 91, baseType: !454, size: 256, offset: 448)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 256, elements: !178)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !409, file: !410, line: 94, baseType: !456, size: 64, offset: 704)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !457, line: 25, size: 64, elements: !458)
!457 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!458 = !{!459}
!459 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !457, line: 26, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !457, line: 26, size: 64, elements: !461)
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !460, file: !457, line: 28, baseType: !447, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, scope: !460, file: !457, line: 30, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !460, file: !457, line: 30, size: 64, elements: !465)
!465 = !{!466, !467}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !464, file: !457, line: 31, baseType: !224, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !464, file: !457, line: 32, baseType: !85, size: 32, offset: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !409, file: !410, line: 95, baseType: !469, size: 64, offset: 768)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !410, line: 128, size: 1024, align: 512, elements: !472)
!472 = !{!473, !477, !478, !485, !491, !495, !499, !503, !504, !508, !512, !3140, !3144}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !471, file: !410, line: 129, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!85, !408, !7}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !471, file: !410, line: 130, baseType: !474, size: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !471, file: !410, line: 131, baseType: !479, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!85, !482, !484}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !471, file: !410, line: 132, baseType: !486, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!85, !482, !7, !213, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !471, file: !410, line: 134, baseType: !492, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!85, !482}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !471, file: !410, line: 135, baseType: !496, size: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!85, !408}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !471, file: !410, line: 136, baseType: !500, size: 64, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !408}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !471, file: !410, line: 137, baseType: !500, size: 64, offset: 448)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !471, file: !410, line: 138, baseType: !505, size: 64, offset: 512)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !408, !373}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !471, file: !410, line: 139, baseType: !509, size: 64, offset: 576)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!294, !408, !294, !85}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !471, file: !410, line: 140, baseType: !513, size: 64, offset: 640)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!516, !3139}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !518, line: 70, size: 256, elements: !519)
!518 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!519 = !{!520, !521, !3135, !3136}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !517, file: !518, line: 71, baseType: !408, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !517, file: !518, line: 72, baseType: !522, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !524)
!524 = !{!525, !526, !529, !530, !531, !535, !584, !1558, !1598, !1683, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1700, !1704, !1705, !1708, !1711, !1714, !1717, !1718, !1719, !1760, !3067, !3068, !3069, !3070, !3071, !3072, !3075, !3076, !3083, !3084, !3085, !3086, !3087, !3102, !3103, !3104, !3105, !3106, !3109, !3110, !3111, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !523, file: !14, line: 1191, baseType: !196, size: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !523, file: !14, line: 1192, baseType: !527, size: 32, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !158, line: 21, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !158, line: 18, baseType: !442)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !523, file: !14, line: 1193, baseType: !256, size: 8, offset: 160)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !523, file: !14, line: 1194, baseType: !160, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !523, file: !14, line: 1195, baseType: !532, size: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !158, line: 52, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !328, line: 88, baseType: !534)
!534 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !523, file: !14, line: 1196, baseType: !536, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !538)
!538 = !{!539, !540, !541, !548, !552, !556, !560, !561, !562, !572, !576, !577, !578, !580, !581, !582, !583}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !537, file: !14, line: 2367, baseType: !213, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !537, file: !14, line: 2368, baseType: !85, size: 32, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !537, file: !14, line: 2376, baseType: !542, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!85, !545}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !547, line: 32, flags: DIFlagFwdDecl)
!547 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!548 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !537, file: !14, line: 2377, baseType: !549, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !537, file: !14, line: 2378, baseType: !553, size: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!408, !536, !85, !213, !159}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !537, file: !14, line: 2380, baseType: !557, size: 64, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !522}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !537, file: !14, line: 2381, baseType: !191, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !537, file: !14, line: 2382, baseType: !536, size: 64, offset: 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !537, file: !14, line: 2383, baseType: !563, size: 64, offset: 512)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !158, line: 194, size: 64, elements: !564)
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !563, file: !158, line: 195, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !158, line: 198, size: 128, elements: !568)
!568 = !{!569, !570}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !567, file: !158, line: 199, baseType: !566, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !567, file: !158, line: 199, baseType: !571, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !537, file: !14, line: 2385, baseType: !573, offset: 576)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !574, line: 206, elements: !575)
!574 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!575 = !{}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !537, file: !14, line: 2386, baseType: !573, offset: 576)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !537, file: !14, line: 2387, baseType: !573, offset: 576)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !537, file: !14, line: 2388, baseType: !579, offset: 576)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, elements: !295)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !537, file: !14, line: 2390, baseType: !573, offset: 576)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !537, file: !14, line: 2391, baseType: !573, offset: 576)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !537, file: !14, line: 2392, baseType: !573, offset: 576)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !537, file: !14, line: 2393, baseType: !573, offset: 576)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !523, file: !14, line: 1197, baseType: !585, size: 64, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !588)
!588 = !{!589, !593, !597, !598, !602, !608, !612, !613, !614, !618, !622, !626, !627, !628, !634, !639, !640, !1483, !1484, !1485, !1486, !1490, !1494, !1541, !1556, !1557}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !587, file: !14, line: 2058, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!373, !522}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !587, file: !14, line: 2059, baseType: !594, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !373}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !587, file: !14, line: 2060, baseType: !594, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !587, file: !14, line: 2062, baseType: !599, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !373, !85}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !587, file: !14, line: 2063, baseType: !603, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!85, !373, !606}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !587, file: !14, line: 2064, baseType: !609, size: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!85, !373}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !587, file: !14, line: 2065, baseType: !594, size: 64, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !587, file: !14, line: 2066, baseType: !557, size: 64, offset: 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !587, file: !14, line: 2067, baseType: !615, size: 64, offset: 512)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!85, !522, !85}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !587, file: !14, line: 2068, baseType: !619, size: 64, offset: 576)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!85, !522, !13}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !587, file: !14, line: 2069, baseType: !623, size: 64, offset: 640)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!85, !522}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !587, file: !14, line: 2070, baseType: !619, size: 64, offset: 704)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !587, file: !14, line: 2071, baseType: !623, size: 64, offset: 768)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !587, file: !14, line: 2072, baseType: !629, size: 64, offset: 832)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!85, !408, !632}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !587, file: !14, line: 2073, baseType: !635, size: 64, offset: 896)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!85, !522, !638, !294}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !587, file: !14, line: 2074, baseType: !557, size: 64, offset: 960)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !587, file: !14, line: 2076, baseType: !641, size: 64, offset: 1024)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!85, !644, !408}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !646, line: 17, size: 960, elements: !647)
!646 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!647 = !{!648, !649, !650, !651, !652, !653, !654, !655, !676, !698, !699, !1482}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !645, file: !646, line: 18, baseType: !294, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !645, file: !646, line: 19, baseType: !341, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !645, file: !646, line: 20, baseType: !341, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !645, file: !646, line: 21, baseType: !341, size: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !645, file: !646, line: 22, baseType: !341, size: 64, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !645, file: !646, line: 23, baseType: !532, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !645, file: !646, line: 24, baseType: !532, size: 64, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !645, file: !646, line: 25, baseType: !656, size: 256, offset: 448)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !657, line: 66, size: 256, elements: !658)
!657 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!658 = !{!659, !668, !670, !675}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !656, file: !657, line: 67, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !661, line: 13, baseType: !662)
!661 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !158, line: 181, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 179, size: 64, elements: !664)
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !663, file: !158, line: 180, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !253, line: 22, baseType: !667)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !255, line: 30, baseType: !534)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !656, file: !657, line: 68, baseType: !669, size: 32, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !233, line: 23, baseType: !232)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !656, file: !657, line: 70, baseType: !671, size: 32, offset: 96)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !672, line: 15, size: 32, elements: !673)
!672 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!673 = !{!674}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !671, file: !672, line: 20, baseType: !244, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !656, file: !657, line: 72, baseType: !196, size: 128, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !645, file: !646, line: 26, baseType: !677, size: 64, offset: 704)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !679)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !646, line: 32, size: 256, elements: !680)
!680 = !{!681, !686, !690, !694}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !679, file: !646, line: 33, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!159, !644, !685}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !679, file: !646, line: 34, baseType: !687, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !644, !159}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !679, file: !646, line: 35, baseType: !691, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!159, !644, !159, !685}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !679, file: !646, line: 36, baseType: !695, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!85, !644, !159}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !645, file: !646, line: 27, baseType: !85, size: 32, offset: 768)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !645, file: !646, line: 28, baseType: !700, size: 64, offset: 832)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !703)
!703 = !{!704, !723, !724, !726, !727, !728, !729, !730, !793, !1006, !1015, !1021, !1022, !1472, !1473, !1474, !1475, !1477, !1478, !1481}
!704 = !DIDerivedType(tag: DW_TAG_member, scope: !702, file: !14, line: 995, baseType: !705, size: 128)
!705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !702, file: !14, line: 995, size: 128, elements: !706)
!706 = !{!707, !713, !722}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !705, file: !14, line: 996, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !709, line: 60, size: 64, elements: !710)
!709 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!710 = !{!711}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !708, file: !709, line: 61, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !705, file: !14, line: 997, baseType: !714, size: 128, align: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !158, line: 232, size: 128, align: 64, elements: !715)
!715 = !{!716, !718}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !714, file: !158, line: 233, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !714, file: !158, line: 234, baseType: !719, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !717}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !705, file: !14, line: 998, baseType: !7, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !702, file: !14, line: 1005, baseType: !224, size: 32, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !702, file: !14, line: 1006, baseType: !725, size: 32, offset: 160)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !158, line: 156, baseType: !7)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !702, file: !14, line: 1007, baseType: !660, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !702, file: !14, line: 1008, baseType: !656, size: 256, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !702, file: !14, line: 1009, baseType: !532, size: 64, offset: 512)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !702, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !702, file: !14, line: 1011, baseType: !731, size: 256, offset: 640)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !732)
!732 = !{!733, !754, !789, !790, !791, !792}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !731, file: !14, line: 949, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !735, line: 34, baseType: !736)
!735 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !735, line: 25, size: 64, elements: !737)
!737 = !{!738}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !736, file: !735, line: 26, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !740, line: 27, baseType: !741)
!740 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !740, line: 13, size: 64, elements: !742)
!742 = !{!743, !753}
!743 = !DIDerivedType(tag: DW_TAG_member, scope: !741, file: !740, line: 14, baseType: !744, size: 32)
!744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !741, file: !740, line: 14, size: 32, elements: !745)
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !744, file: !740, line: 15, baseType: !244, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, scope: !744, file: !740, line: 16, baseType: !748, size: 32)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !744, file: !740, line: 16, size: 32, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !748, file: !740, line: 18, baseType: !252, size: 8)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !748, file: !740, line: 19, baseType: !752, size: 24, offset: 8)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 24, elements: !295)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !741, file: !740, line: 26, baseType: !236, size: 32, offset: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !731, file: !14, line: 950, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !757)
!757 = !{!758, !764, !765, !766, !770, !771, !778, !779}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !756, file: !19, line: 61, baseType: !759, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !760, line: 113, baseType: !761)
!760 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !760, line: 111, size: 32, elements: !762)
!762 = !{!763}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !761, file: !760, line: 112, baseType: !244, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !756, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !756, file: !19, line: 63, baseType: !224, size: 32, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !756, file: !19, line: 65, baseType: !767, size: 256, offset: 128)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 256, elements: !768)
!768 = !{!769}
!769 = !DISubrange(count: 4)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !756, file: !19, line: 66, baseType: !563, size: 64, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !756, file: !19, line: 68, baseType: !772, size: 192, offset: 448)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !773, line: 41, baseType: !774)
!773 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !773, line: 37, size: 192, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !774, file: !773, line: 38, baseType: !224, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !774, file: !773, line: 39, baseType: !196, size: 128, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !756, file: !19, line: 69, baseType: !714, size: 128, align: 64, offset: 640)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !756, file: !19, line: 70, baseType: !780, offset: 768)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !781, elements: !787)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !782)
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !781, file: !19, line: 55, baseType: !85, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !781, file: !19, line: 56, baseType: !785, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!787 = !{!788}
!788 = !DISubrange(count: -1)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !731, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !731, file: !14, line: 952, baseType: !379, size: 32, offset: 160)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !731, file: !14, line: 952, baseType: !379, size: 32, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !731, file: !14, line: 953, baseType: !85, size: 32, offset: 224)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !702, file: !14, line: 1012, baseType: !794, size: 64, offset: 896)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !797, line: 110, size: 1472, elements: !798)
!797 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!798 = !{!799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !815, !816, !817, !818, !819, !820, !950, !951, !952, !953, !954, !985, !989, !993, !1001}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !796, file: !797, line: 111, baseType: !660, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !796, file: !797, line: 112, baseType: !379, size: 32, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !796, file: !797, line: 113, baseType: !388, size: 32, offset: 96)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !796, file: !797, line: 114, baseType: !379, size: 32, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !796, file: !797, line: 115, baseType: !388, size: 32, offset: 160)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !796, file: !797, line: 116, baseType: !379, size: 32, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !796, file: !797, line: 117, baseType: !388, size: 32, offset: 224)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !796, file: !797, line: 118, baseType: !379, size: 32, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !796, file: !797, line: 119, baseType: !388, size: 32, offset: 288)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !796, file: !797, line: 120, baseType: !7, size: 32, offset: 320)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !796, file: !797, line: 121, baseType: !810, size: 64, offset: 384)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !811, line: 24, baseType: !812)
!811 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !811, line: 24, size: 64, elements: !813)
!813 = !{!814}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !812, file: !811, line: 24, baseType: !446, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !796, file: !797, line: 122, baseType: !810, size: 64, offset: 448)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !796, file: !797, line: 123, baseType: !810, size: 64, offset: 512)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !796, file: !797, line: 124, baseType: !810, size: 64, offset: 576)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !796, file: !797, line: 125, baseType: !810, size: 64, offset: 640)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !796, file: !797, line: 127, baseType: !256, size: 8, offset: 704)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !796, file: !797, line: 129, baseType: !821, size: 64, offset: 768)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !823, line: 195, size: 1728, elements: !824)
!823 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!824 = !{!825, !826, !831, !843, !852, !855, !856, !863, !864, !865, !866, !869, !870, !871, !873, !874, !914, !935}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !822, file: !823, line: 196, baseType: !759, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !822, file: !823, line: 197, baseType: !827, size: 32, offset: 32)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !823, line: 28, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !158, line: 104, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !253, line: 20, baseType: !830)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !255, line: 26, baseType: !85)
!831 = !DIDerivedType(tag: DW_TAG_member, scope: !822, file: !823, line: 198, baseType: !832, size: 192, offset: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !822, file: !823, line: 198, size: 192, elements: !833)
!833 = !{!834, !835}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !832, file: !823, line: 199, baseType: !196, size: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !832, file: !823, line: 200, baseType: !836, size: 192, align: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !837, line: 5, size: 192, align: 64, elements: !838)
!837 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!838 = !{!839, !840, !842}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !836, file: !837, line: 6, baseType: !160, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !836, file: !837, line: 7, baseType: !841, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !836, file: !837, line: 8, baseType: !841, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !822, file: !823, line: 205, baseType: !844, size: 320, offset: 256)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !845, line: 48, size: 320, elements: !846)
!845 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!846 = !{!847, !848, !849, !850, !851}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !844, file: !845, line: 49, baseType: !660, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !844, file: !845, line: 55, baseType: !660, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !844, file: !845, line: 57, baseType: !671, size: 32, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !844, file: !845, line: 59, baseType: !669, size: 32, offset: 160)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !844, file: !845, line: 60, baseType: !196, size: 128, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !822, file: !823, line: 206, baseType: !853, size: 64, offset: 576)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !823, line: 206, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !822, file: !823, line: 207, baseType: !159, size: 64, offset: 640)
!856 = !DIDerivedType(tag: DW_TAG_member, scope: !822, file: !823, line: 208, baseType: !857, size: 64, offset: 704)
!857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !822, file: !823, line: 208, size: 64, elements: !858)
!858 = !{!859, !862}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !857, file: !823, line: 209, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !861, line: 8, baseType: !667)
!861 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!862 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !857, file: !823, line: 210, baseType: !860, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !822, file: !823, line: 212, baseType: !860, size: 64, offset: 768)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !822, file: !823, line: 213, baseType: !379, size: 32, offset: 832)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !822, file: !823, line: 214, baseType: !388, size: 32, offset: 864)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !822, file: !823, line: 215, baseType: !867, size: 32, offset: 896)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !823, line: 31, baseType: !868)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !158, line: 110, baseType: !442)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !822, file: !823, line: 216, baseType: !264, size: 16, offset: 928)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !822, file: !823, line: 217, baseType: !264, size: 16, offset: 944)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !822, file: !823, line: 221, baseType: !872, size: 16, offset: 960)
!872 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !822, file: !823, line: 228, baseType: !160, size: 64, offset: 1024)
!874 = !DIDerivedType(tag: DW_TAG_member, scope: !822, file: !823, line: 245, baseType: !875, size: 320, offset: 1088)
!875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !822, file: !823, line: 245, size: 320, elements: !876)
!876 = !{!877, !906}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !875, file: !823, line: 246, baseType: !878, size: 320)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !823, line: 114, size: 320, elements: !879)
!879 = !{!880, !881, !893, !896, !905}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !878, file: !823, line: 116, baseType: !160, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !823, line: 117, baseType: !882, size: 64, offset: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !878, file: !823, line: 117, size: 64, elements: !883)
!883 = !{!884, !892}
!884 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !823, line: 118, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !823, line: 118, size: 64, elements: !886)
!886 = !{!887, !888}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !885, file: !823, line: 120, baseType: !262, size: 16)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !885, file: !823, line: 121, baseType: !889, size: 48, offset: 16)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 48, elements: !890)
!890 = !{!891}
!891 = !DISubrange(count: 6)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !882, file: !823, line: 127, baseType: !160, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !878, file: !823, line: 129, baseType: !894, size: 64, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !823, line: 102, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !878, file: !823, line: 130, baseType: !897, size: 64, offset: 192)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !823, line: 108, size: 192, elements: !899)
!899 = !{!900, !901, !902}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !898, file: !823, line: 109, baseType: !714, size: 128, align: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !898, file: !823, line: 110, baseType: !759, size: 32, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !898, file: !823, line: 111, baseType: !903, size: 8, offset: 160)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !158, line: 35, baseType: !904)
!904 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !878, file: !823, line: 131, baseType: !213, size: 64, offset: 256)
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !875, file: !823, line: 247, baseType: !907, size: 320)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !875, file: !823, line: 247, size: 320, elements: !908)
!908 = !{!909, !910, !911, !912, !913}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !907, file: !823, line: 248, baseType: !160, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !907, file: !823, line: 249, baseType: !160, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !907, file: !823, line: 250, baseType: !894, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !907, file: !823, line: 251, baseType: !897, size: 64, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !907, file: !823, line: 252, baseType: !294, size: 64, offset: 256)
!914 = !DIDerivedType(tag: DW_TAG_member, scope: !822, file: !823, line: 260, baseType: !915, size: 256, offset: 1408)
!915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !822, file: !823, line: 260, size: 256, elements: !916)
!916 = !{!917, !923}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !915, file: !823, line: 261, baseType: !918, size: 256)
!918 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !823, line: 134, size: 256, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !918, file: !823, line: 135, baseType: !159, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !918, file: !823, line: 136, baseType: !922, size: 256)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 256, elements: !768)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !915, file: !823, line: 262, baseType: !924, size: 256)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !915, file: !823, line: 262, size: 256, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !924, file: !823, line: 264, baseType: !196, size: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !924, file: !823, line: 265, baseType: !928, size: 128, offset: 128)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !929, line: 22, size: 128, elements: !930)
!929 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!930 = !{!931, !934}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !928, file: !929, line: 23, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !929, line: 23, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !928, file: !929, line: 24, baseType: !160, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !822, file: !823, line: 280, baseType: !936, size: 64, offset: 1664)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !823, line: 176, size: 192, elements: !938)
!938 = !{!939, !948, !949}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !937, file: !823, line: 177, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !823, line: 171, baseType: !941)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!85, !821, !944, !946, !821}
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !895)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !918)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !937, file: !823, line: 178, baseType: !821, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !937, file: !823, line: 179, baseType: !894, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !796, file: !797, line: 130, baseType: !821, size: 64, offset: 832)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !796, file: !797, line: 131, baseType: !821, size: 64, offset: 896)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !796, file: !797, line: 132, baseType: !821, size: 64, offset: 960)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !796, file: !797, line: 135, baseType: !159, size: 64, offset: 1024)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !796, file: !797, line: 137, baseType: !955, size: 64, offset: 1088)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !957, line: 14, size: 1088, elements: !958)
!957 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!958 = !{!959, !960, !969, !970, !971, !972, !973, !974}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !956, file: !957, line: 15, baseType: !759, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !956, file: !957, line: 17, baseType: !961, size: 320, offset: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !962, line: 22, size: 320, elements: !963)
!962 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!963 = !{!964, !965, !966, !967}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !961, file: !962, line: 23, baseType: !669, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !961, file: !962, line: 24, baseType: !666, size: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !961, file: !962, line: 26, baseType: !196, size: 128, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !961, file: !962, line: 28, baseType: !968, size: 64, offset: 256)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !956, file: !957, line: 19, baseType: !160, size: 64, offset: 384)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !956, file: !957, line: 20, baseType: !660, size: 64, offset: 448)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !956, file: !957, line: 23, baseType: !567, size: 128, offset: 512)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !956, file: !957, line: 24, baseType: !379, size: 32, offset: 640)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !956, file: !957, line: 29, baseType: !660, size: 64, offset: 704)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !956, file: !957, line: 36, baseType: !975, size: 320, offset: 768)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !976, line: 15, size: 320, elements: !977)
!976 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!977 = !{!978, !979, !980, !981, !982, !983, !984}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !975, file: !976, line: 16, baseType: !669, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !975, file: !976, line: 18, baseType: !85, size: 32, offset: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !975, file: !976, line: 19, baseType: !85, size: 32, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !975, file: !976, line: 20, baseType: !85, size: 32, offset: 96)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !975, file: !976, line: 21, baseType: !85, size: 32, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !975, file: !976, line: 22, baseType: !160, size: 64, offset: 192)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !975, file: !976, line: 23, baseType: !160, size: 64, offset: 256)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !796, file: !797, line: 138, baseType: !986, size: 64, offset: 1152)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !988, line: 901, flags: DIFlagFwdDecl)
!988 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!989 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !796, file: !797, line: 139, baseType: !990, size: 64, offset: 1216)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !992, line: 16, flags: DIFlagFwdDecl)
!992 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!993 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !796, file: !797, line: 140, baseType: !994, size: 64, offset: 1280)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !797, line: 25, size: 64, elements: !996)
!996 = !{!997, !998, !999}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !995, file: !797, line: 26, baseType: !244, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !995, file: !797, line: 27, baseType: !85, size: 32, offset: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !995, file: !797, line: 28, baseType: !1000, offset: 64)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, elements: !787)
!1001 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !797, line: 142, baseType: !1002, size: 128, offset: 1344)
!1002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !796, file: !797, line: 142, size: 128, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1002, file: !797, line: 143, baseType: !85, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1002, file: !797, line: 144, baseType: !714, size: 128, align: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !702, file: !14, line: 1013, baseType: !1007, size: 256, offset: 960)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1008)
!1008 = !{!1009, !1010, !1011, !1012, !1013, !1014}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1007, file: !14, line: 971, baseType: !160, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1007, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1007, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1007, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1007, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1007, file: !14, line: 976, baseType: !532, size: 64, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !702, file: !14, line: 1014, baseType: !1016, size: 128, offset: 1216)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1017, line: 8, size: 128, elements: !1018)
!1017 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1016, file: !1017, line: 9, baseType: !516, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1016, file: !1017, line: 10, baseType: !408, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !702, file: !14, line: 1015, baseType: !373, size: 64, offset: 1344)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !702, file: !14, line: 1016, baseType: !1023, size: 64, offset: 1408)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1025)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1026)
!1026 = !{!1027, !1028, !1033, !1037, !1041, !1125, !1126, !1132, !1145, !1162, !1166, !1167, !1393, !1394, !1398, !1403, !1404, !1408, !1412, !1418, !1419, !1423, !1424, !1431, !1435, !1439, !1445, !1449, !1453, !1457, !1461, !1462, !1468}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1025, file: !14, line: 1915, baseType: !191, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1025, file: !14, line: 1916, baseType: !1029, size: 64, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!532, !1032, !532, !85}
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1025, file: !14, line: 1917, baseType: !1034, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!326, !1032, !294, !341, !685}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1025, file: !14, line: 1918, baseType: !1038, size: 64, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!326, !1032, !213, !341, !685}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1025, file: !14, line: 1919, baseType: !1042, size: 64, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!326, !1045, !1067}
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1047)
!1047 = !{!1048, !1049, !1050, !1054, !1055, !1056, !1057}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1046, file: !14, line: 374, baseType: !1032, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1046, file: !14, line: 375, baseType: !532, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1046, file: !14, line: 376, baseType: !1051, size: 64, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{null, !1045, !330}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1046, file: !14, line: 377, baseType: !159, size: 64, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1046, file: !14, line: 378, baseType: !85, size: 32, offset: 256)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1046, file: !14, line: 379, baseType: !262, size: 16, offset: 288)
!1057 = !DIDerivedType(tag: DW_TAG_member, scope: !1046, file: !14, line: 380, baseType: !1058, size: 64, offset: 320)
!1058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1046, file: !14, line: 380, size: 64, elements: !1059)
!1059 = !{!1060, !1063}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1058, file: !14, line: 386, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1058, file: !14, line: 395, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!326, !159}
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1069, line: 41, size: 320, elements: !1070)
!1069 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1070 = !{!1071, !1072, !1073, !1074, !1075, !1076, !1081, !1120}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1068, file: !1069, line: 42, baseType: !252, size: 8)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1068, file: !1069, line: 43, baseType: !903, size: 8, offset: 8)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1068, file: !1069, line: 44, baseType: !903, size: 8, offset: 16)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1068, file: !1069, line: 45, baseType: !903, size: 8, offset: 24)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1068, file: !1069, line: 46, baseType: !903, size: 8, offset: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !1069, line: 47, baseType: !1077, size: 64, offset: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1068, file: !1069, line: 47, size: 64, elements: !1078)
!1078 = !{!1079, !1080}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1077, file: !1069, line: 48, baseType: !341, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1077, file: !1069, line: 49, baseType: !85, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !1069, line: 61, baseType: !1082, size: 128, offset: 128)
!1082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1068, file: !1069, line: 61, size: 128, elements: !1083)
!1083 = !{!1084, !1090}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1082, file: !1069, line: 67, baseType: !1085, size: 128)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1086, line: 17, size: 128, elements: !1087)
!1086 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1087 = !{!1088, !1089}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1085, file: !1086, line: 19, baseType: !159, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1085, file: !1086, line: 20, baseType: !342, size: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1082, file: !1069, line: 68, baseType: !1091, size: 128)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1082, file: !1069, line: 68, size: 128, elements: !1092)
!1092 = !{!1093, !1119}
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !1069, line: 69, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1091, file: !1069, line: 69, size: 64, elements: !1095)
!1095 = !{!1096, !1099, !1106, !1110, !1118}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1094, file: !1069, line: 71, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1085)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1094, file: !1069, line: 72, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1102)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1069, line: 17, size: 128, elements: !1103)
!1103 = !{!1104, !1105}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1102, file: !1069, line: 18, baseType: !159, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1102, file: !1069, line: 19, baseType: !341, size: 64, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1094, file: !1069, line: 73, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1109)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1069, line: 73, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1094, file: !1069, line: 74, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1113, line: 296, size: 128, elements: !1114)
!1113 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1114 = !{!1115, !1116, !1117}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1112, file: !1113, line: 297, baseType: !224, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1112, file: !1113, line: 299, baseType: !157, size: 32, offset: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1112, file: !1113, line: 300, baseType: !159, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1094, file: !1069, line: 75, baseType: !159, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1091, file: !1069, line: 77, baseType: !341, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !1069, line: 80, baseType: !1121, size: 64, offset: 256)
!1121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1068, file: !1069, line: 80, size: 64, elements: !1122)
!1122 = !{!1123, !1124}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1121, file: !1069, line: 81, baseType: !160, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1121, file: !1069, line: 82, baseType: !532, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1025, file: !14, line: 1920, baseType: !1042, size: 64, offset: 320)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1025, file: !14, line: 1921, baseType: !1127, size: 64, offset: 384)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!85, !1045, !1130, !7}
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1025, file: !14, line: 1923, baseType: !1133, size: 64, offset: 448)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!85, !1032, !1136}
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1138)
!1138 = !{!1139, !1144}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1137, file: !14, line: 1859, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1141)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!903, !1136, !213, !85, !532, !446, !7}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1137, file: !14, line: 1860, baseType: !532, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1025, file: !14, line: 1924, baseType: !1146, size: 64, offset: 512)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!1149, !1032, !1151}
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1150, line: 59, baseType: !7)
!1150 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1153, line: 37, size: 128, elements: !1154)
!1153 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1154 = !{!1155, !1161}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1152, file: !1153, line: 38, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1153, line: 31, baseType: !1157)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{null, !1032, !1160, !1151}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1152, file: !1153, line: 39, baseType: !1149, size: 32, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1025, file: !14, line: 1925, baseType: !1163, size: 64, offset: 576)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!330, !1032, !7, !160}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1025, file: !14, line: 1926, baseType: !1163, size: 64, offset: 640)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1025, file: !14, line: 1927, baseType: !1168, size: 64, offset: 704)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!85, !1032, !1171}
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !988, line: 625, size: 1344, elements: !1173)
!1173 = !{!1174, !1183, !1351, !1357, !1364, !1365, !1370, !1371, !1376, !1377, !1380, !1384, !1385, !1386, !1387, !1388, !1391}
!1174 = !DIDerivedType(tag: DW_TAG_member, scope: !1172, file: !988, line: 628, baseType: !1175, size: 128)
!1175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1172, file: !988, line: 628, size: 128, elements: !1176)
!1176 = !{!1177, !1182}
!1177 = !DIDerivedType(tag: DW_TAG_member, scope: !1175, file: !988, line: 629, baseType: !1178, size: 128)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1175, file: !988, line: 629, size: 128, elements: !1179)
!1179 = !{!1180, !1181}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1178, file: !988, line: 631, baseType: !160, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1178, file: !988, line: 632, baseType: !160, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1175, file: !988, line: 635, baseType: !714, size: 128, align: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1172, file: !988, line: 639, baseType: !1184, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !988, line: 733, size: 10240, elements: !1186)
!1186 = !{!1187, !1349}
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1185, file: !988, line: 734, baseType: !1188, size: 10240)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1185, file: !988, line: 734, size: 10240, elements: !1189)
!1189 = !{!1190, !1194, !1207, !1211, !1212, !1213, !1214, !1215, !1216, !1225, !1226, !1227, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1266, !1268, !1271, !1318, !1319, !1320, !1323, !1324, !1325, !1328, !1329, !1330, !1336, !1337}
!1190 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !988, line: 739, baseType: !1191, size: 512, align: 512)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1188, file: !988, line: 739, size: 512, align: 512, elements: !1192)
!1192 = !{!1193}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1191, file: !988, line: 747, baseType: !244, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1188, file: !988, line: 750, baseType: !1195, size: 128, offset: 512)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1196, line: 218, size: 128, elements: !1197)
!1196 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1197 = !{!1198, !1205, !1206}
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1195, file: !1196, line: 219, baseType: !1199, size: 32)
!1199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1195, file: !1196, line: 219, size: 32, elements: !1200)
!1200 = !{!1201, !1202}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1199, file: !1196, line: 220, baseType: !224, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1199, file: !1196, line: 221, baseType: !1203)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1196, line: 197, baseType: !1204)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1196, line: 197, elements: !575)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1195, file: !1196, line: 223, baseType: !7, size: 32, offset: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1195, file: !1196, line: 224, baseType: !159, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1188, file: !988, line: 752, baseType: !1208, size: 64, offset: 640)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!160, !1032, !160, !160, !160, !160}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1188, file: !988, line: 756, baseType: !160, size: 64, offset: 704)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1188, file: !988, line: 757, baseType: !160, size: 64, offset: 768)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1188, file: !988, line: 760, baseType: !160, size: 64, offset: 832)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1188, file: !988, line: 761, baseType: !160, size: 64, offset: 896)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1188, file: !988, line: 763, baseType: !160, size: 64, offset: 960)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1188, file: !988, line: 764, baseType: !1217, size: 64, offset: 1024)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1219, line: 299, baseType: !1220)
!1219 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1219, line: 299, size: 64, elements: !1221)
!1221 = !{!1222}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1220, file: !1219, line: 299, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1224, line: 18, baseType: !160)
!1224 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1188, file: !988, line: 773, baseType: !244, size: 32, offset: 1088)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1188, file: !988, line: 785, baseType: !244, size: 32, offset: 1120)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1188, file: !988, line: 795, baseType: !1228, size: 64, offset: 1152)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !988, line: 726, size: 128, elements: !1230)
!1230 = !{!1231, !1232}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1229, file: !988, line: 727, baseType: !446, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1229, file: !988, line: 728, baseType: !85, size: 32, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1188, file: !988, line: 801, baseType: !160, size: 64, offset: 1216)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1188, file: !988, line: 804, baseType: !660, size: 64, offset: 1280)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1188, file: !988, line: 806, baseType: !85, size: 32, offset: 1344)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1188, file: !988, line: 808, baseType: !224, size: 32, offset: 1376)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1188, file: !988, line: 823, baseType: !844, size: 320, offset: 1408)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1188, file: !988, line: 825, baseType: !196, size: 128, offset: 1728)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1188, file: !988, line: 845, baseType: !85, size: 32, offset: 1856)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1188, file: !988, line: 849, baseType: !160, size: 64, offset: 1920)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1188, file: !988, line: 850, baseType: !160, size: 64, offset: 1984)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1188, file: !988, line: 852, baseType: !160, size: 64, offset: 2048)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1188, file: !988, line: 853, baseType: !160, size: 64, offset: 2112)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1188, file: !988, line: 854, baseType: !662, size: 64, offset: 2176)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1188, file: !988, line: 855, baseType: !160, size: 64, offset: 2240)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1188, file: !988, line: 856, baseType: !160, size: 64, offset: 2304)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1188, file: !988, line: 857, baseType: !160, size: 64, offset: 2368)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1188, file: !988, line: 858, baseType: !160, size: 64, offset: 2432)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1188, file: !988, line: 865, baseType: !419, size: 32, offset: 2496)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1188, file: !988, line: 867, baseType: !224, size: 32, offset: 2528)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1188, file: !988, line: 869, baseType: !160, size: 64, offset: 2560)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1188, file: !988, line: 869, baseType: !160, size: 64, offset: 2624)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1188, file: !988, line: 869, baseType: !160, size: 64, offset: 2688)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1188, file: !988, line: 869, baseType: !160, size: 64, offset: 2752)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1188, file: !988, line: 870, baseType: !160, size: 64, offset: 2816)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1188, file: !988, line: 870, baseType: !160, size: 64, offset: 2880)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1188, file: !988, line: 870, baseType: !160, size: 64, offset: 2944)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1188, file: !988, line: 871, baseType: !160, size: 64, offset: 3008)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1188, file: !988, line: 871, baseType: !160, size: 64, offset: 3072)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1188, file: !988, line: 871, baseType: !160, size: 64, offset: 3136)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1188, file: !988, line: 871, baseType: !160, size: 64, offset: 3200)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1188, file: !988, line: 873, baseType: !1263, size: 3328, offset: 3264)
!1263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 3328, elements: !1264)
!1264 = !{!1265}
!1265 = !DISubrange(count: 52)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1188, file: !988, line: 875, baseType: !1267, size: 1280, offset: 6592)
!1267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !961, size: 1280, elements: !768)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1188, file: !988, line: 877, baseType: !1269, size: 64, offset: 7872)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !988, line: 877, flags: DIFlagFwdDecl)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1188, file: !988, line: 880, baseType: !1272, size: 1088, offset: 7936)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1273, line: 72, baseType: !1274)
!1273 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1273, line: 23, size: 1088, elements: !1275)
!1275 = !{!1276, !1277, !1278, !1279, !1280, !1283, !1284, !1285, !1286, !1313, !1314, !1315}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1274, file: !1273, line: 28, baseType: !446, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1274, file: !1273, line: 38, baseType: !662, size: 64, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1274, file: !1273, line: 40, baseType: !160, size: 64, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1274, file: !1273, line: 43, baseType: !844, size: 320, offset: 192)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1274, file: !1273, line: 44, baseType: !1281, size: 64, offset: 512)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1273, line: 44, flags: DIFlagFwdDecl)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1274, file: !1273, line: 48, baseType: !160, size: 64, offset: 576)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1274, file: !1273, line: 59, baseType: !656, size: 256, offset: 640)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1274, file: !1273, line: 60, baseType: !159, size: 64, offset: 896)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1274, file: !1273, line: 61, baseType: !1287, size: 64, offset: 960)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1289)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1290, line: 13, size: 1216, elements: !1291)
!1290 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1291 = !{!1292, !1293, !1294, !1295, !1296, !1297, !1298, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1289, file: !1290, line: 14, baseType: !159, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1289, file: !1290, line: 15, baseType: !160, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1289, file: !1290, line: 17, baseType: !160, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1289, file: !1290, line: 17, baseType: !160, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1289, file: !1290, line: 18, baseType: !160, size: 64, offset: 256)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1289, file: !1290, line: 18, baseType: !160, size: 64, offset: 320)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1289, file: !1290, line: 19, baseType: !1299, size: 64, offset: 384)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1289, file: !1290, line: 21, baseType: !330, size: 64, offset: 448)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1289, file: !1290, line: 23, baseType: !330, size: 64, offset: 512)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1289, file: !1290, line: 24, baseType: !330, size: 64, offset: 576)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1289, file: !1290, line: 25, baseType: !330, size: 64, offset: 640)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1289, file: !1290, line: 26, baseType: !330, size: 64, offset: 704)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1289, file: !1290, line: 27, baseType: !330, size: 64, offset: 768)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1289, file: !1290, line: 28, baseType: !330, size: 64, offset: 832)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1289, file: !1290, line: 29, baseType: !330, size: 64, offset: 896)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1289, file: !1290, line: 30, baseType: !330, size: 64, offset: 960)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1289, file: !1290, line: 31, baseType: !330, size: 64, offset: 1024)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1289, file: !1290, line: 32, baseType: !330, size: 64, offset: 1088)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1289, file: !1290, line: 33, baseType: !330, size: 64, offset: 1152)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1274, file: !1273, line: 63, baseType: !244, size: 32, offset: 1024)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1274, file: !1273, line: 69, baseType: !262, size: 16, offset: 1056)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1274, file: !1273, line: 70, baseType: !1316, size: 16, offset: 1072)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !253, line: 18, baseType: !1317)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !255, line: 23, baseType: !872)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1188, file: !988, line: 882, baseType: !160, size: 64, offset: 9024)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1188, file: !988, line: 885, baseType: !224, size: 32, offset: 9088)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1188, file: !988, line: 886, baseType: !1321, size: 64, offset: 9152)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !988, line: 732, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1188, file: !988, line: 901, baseType: !986, size: 64, offset: 9216)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1188, file: !988, line: 904, baseType: !1032, size: 64, offset: 9280)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1188, file: !988, line: 906, baseType: !1326, size: 64, offset: 9344)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !988, line: 906, flags: DIFlagFwdDecl)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1188, file: !988, line: 930, baseType: !244, size: 32, offset: 9408)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1188, file: !988, line: 933, baseType: !244, size: 32, offset: 9440)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1188, file: !988, line: 935, baseType: !1331, size: 64, offset: 9472)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !1332)
!1332 = !{!1333}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1331, file: !44, line: 104, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1188, file: !988, line: 940, baseType: !660, size: 64, offset: 9536)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1188, file: !988, line: 942, baseType: !1338, size: 256, offset: 9600)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1339, line: 98, size: 256, elements: !1340)
!1339 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1340 = !{!1341, !1342, !1343}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1338, file: !1339, line: 99, baseType: !660, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1338, file: !1339, line: 100, baseType: !196, size: 128, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1338, file: !1339, line: 101, baseType: !1344, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1339, line: 21, baseType: !1345)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{null, !1348}
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1185, file: !988, line: 986, baseType: !1350, offset: 10240)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, elements: !787)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1172, file: !988, line: 640, baseType: !1352, size: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1219, line: 297, baseType: !1353)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1219, line: 297, size: 64, elements: !1354)
!1354 = !{!1355}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1353, file: !1219, line: 297, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1224, line: 19, baseType: !160)
!1357 = !DIDerivedType(tag: DW_TAG_member, scope: !1172, file: !988, line: 646, baseType: !1358, size: 64, offset: 256)
!1358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1172, file: !988, line: 646, size: 64, elements: !1359)
!1359 = !{!1360, !1363}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1358, file: !988, line: 647, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !988, line: 542, baseType: !160)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1358, file: !988, line: 648, baseType: !1362, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1172, file: !988, line: 666, baseType: !85, size: 32, offset: 320)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1172, file: !988, line: 667, baseType: !1366, size: 64, offset: 384)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !988, line: 579, size: 320, elements: !1368)
!1368 = !{!1369}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1367, file: !988, line: 580, baseType: !844, size: 320)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1172, file: !988, line: 670, baseType: !903, size: 8, offset: 448)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1172, file: !988, line: 681, baseType: !1372, size: 256, offset: 512)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1172, file: !988, line: 678, size: 256, elements: !1373)
!1373 = !{!1374, !1375}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1372, file: !988, line: 679, baseType: !836, size: 192, align: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1372, file: !988, line: 680, baseType: !160, size: 64, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1172, file: !988, line: 689, baseType: !196, size: 128, offset: 768)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1172, file: !988, line: 691, baseType: !1378, size: 64, offset: 896)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !988, line: 691, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1172, file: !988, line: 694, baseType: !1381, size: 64, offset: 960)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1383)
!1383 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !988, line: 694, flags: DIFlagFwdDecl)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1172, file: !988, line: 697, baseType: !160, size: 64, offset: 1024)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1172, file: !988, line: 699, baseType: !1032, size: 64, offset: 1088)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1172, file: !988, line: 700, baseType: !159, size: 64, offset: 1152)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1172, file: !988, line: 711, baseType: !660, size: 64, offset: 1216)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1172, file: !988, line: 717, baseType: !1389, size: 64, offset: 1280)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !988, line: 717, flags: DIFlagFwdDecl)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1172, file: !988, line: 722, baseType: !1392, offset: 1344)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !988, line: 570, elements: !575)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1025, file: !14, line: 1928, baseType: !160, size: 64, offset: 768)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1025, file: !14, line: 1929, baseType: !1395, size: 64, offset: 832)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!85, !373, !1032}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1025, file: !14, line: 1930, baseType: !1399, size: 64, offset: 896)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!85, !1032, !1402}
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !159)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1025, file: !14, line: 1931, baseType: !1395, size: 64, offset: 960)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1025, file: !14, line: 1932, baseType: !1405, size: 64, offset: 1024)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!85, !1032, !532, !532, !85}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1025, file: !14, line: 1933, baseType: !1409, size: 64, offset: 1088)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!85, !85, !1032, !85}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1025, file: !14, line: 1934, baseType: !1413, size: 64, offset: 1152)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!85, !1032, !85, !1416}
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1025, file: !14, line: 1935, baseType: !1208, size: 64, offset: 1216)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1025, file: !14, line: 1936, baseType: !1420, size: 64, offset: 1280)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!85, !85}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1025, file: !14, line: 1937, baseType: !1413, size: 64, offset: 1344)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1025, file: !14, line: 1938, baseType: !1425, size: 64, offset: 1408)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!326, !1428, !1032, !685, !341, !7}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1430, line: 59, flags: DIFlagFwdDecl)
!1430 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1025, file: !14, line: 1939, baseType: !1432, size: 64, offset: 1472)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!326, !1032, !685, !1428, !341, !7}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1025, file: !14, line: 1940, baseType: !1436, size: 64, offset: 1536)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{null, !1032}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1025, file: !14, line: 1941, baseType: !1440, size: 64, offset: 1600)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!85, !1032, !85, !1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1025, file: !14, line: 1942, baseType: !1446, size: 64, offset: 1664)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!330, !1032, !85, !532, !532}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1025, file: !14, line: 1944, baseType: !1450, size: 64, offset: 1728)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{null, !644, !1032}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1025, file: !14, line: 1948, baseType: !1454, size: 64, offset: 1792)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!326, !1032, !532, !1032, !532, !341, !7}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1025, file: !14, line: 1950, baseType: !1458, size: 64, offset: 1856)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!532, !1032, !532, !1032, !532, !532, !7}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1025, file: !14, line: 1953, baseType: !1405, size: 64, offset: 1920)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1025, file: !14, line: 1954, baseType: !1463, size: 64, offset: 1984)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!85, !1466, !7}
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1025, file: !14, line: 1955, baseType: !1469, size: 64, offset: 2048)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!85, !1466, !1130, !7}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !702, file: !14, line: 1018, baseType: !446, size: 64, offset: 1472)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !702, file: !14, line: 1020, baseType: !159, size: 64, offset: 1536)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !702, file: !14, line: 1023, baseType: !159, size: 64, offset: 1600)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !702, file: !14, line: 1027, baseType: !1476, size: 64, offset: 1664)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !702, file: !14, line: 1029, baseType: !369, size: 64, offset: 1728)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !702, file: !14, line: 1030, baseType: !1479, size: 32, offset: 1792)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1480, line: 8, baseType: !442)
!1480 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !702, file: !14, line: 1031, baseType: !1479, size: 32, offset: 1824)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !645, file: !646, line: 29, baseType: !159, size: 64, offset: 896)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !587, file: !14, line: 2077, baseType: !641, size: 64, offset: 1088)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !587, file: !14, line: 2078, baseType: !641, size: 64, offset: 1152)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !587, file: !14, line: 2079, baseType: !641, size: 64, offset: 1216)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !587, file: !14, line: 2081, baseType: !1487, size: 64, offset: 1280)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!326, !522, !85, !294, !341, !532}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !587, file: !14, line: 2082, baseType: !1491, size: 64, offset: 1344)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!326, !522, !85, !213, !341, !532}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !587, file: !14, line: 2083, baseType: !1495, size: 64, offset: 1408)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!1498, !373}
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !27, line: 296, size: 1664, elements: !1501)
!1501 = !{!1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1526, !1527, !1528}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1500, file: !27, line: 297, baseType: !567, size: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1500, file: !27, line: 298, baseType: !196, size: 128, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1500, file: !27, line: 299, baseType: !196, size: 128, offset: 256)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1500, file: !27, line: 300, baseType: !196, size: 128, offset: 384)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1500, file: !27, line: 301, baseType: !656, size: 256, offset: 512)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1500, file: !27, line: 302, baseType: !224, size: 32, offset: 768)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1500, file: !27, line: 303, baseType: !244, size: 32, offset: 800)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1500, file: !27, line: 304, baseType: !522, size: 64, offset: 832)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1500, file: !27, line: 305, baseType: !1511, size: 64, offset: 896)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !27, line: 68, size: 64, elements: !1512)
!1512 = !{!1513, !1525}
!1513 = !DIDerivedType(tag: DW_TAG_member, scope: !1511, file: !27, line: 69, baseType: !1514, size: 32)
!1514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1511, file: !27, line: 69, size: 32, elements: !1515)
!1515 = !{!1516, !1517, !1518}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1514, file: !27, line: 70, baseType: !379, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1514, file: !27, line: 71, baseType: !388, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1514, file: !27, line: 72, baseType: !1519, size: 32)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1520, line: 24, baseType: !1521)
!1520 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1520, line: 22, size: 32, elements: !1522)
!1522 = !{!1523}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1521, file: !1520, line: 23, baseType: !1524, size: 32)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1520, line: 20, baseType: !385)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1511, file: !27, line: 74, baseType: !26, size: 32, offset: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1500, file: !27, line: 306, baseType: !532, size: 64, offset: 960)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1500, file: !27, line: 307, baseType: !160, size: 64, offset: 1024)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1500, file: !27, line: 308, baseType: !1529, size: 576, offset: 1088)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !27, line: 205, size: 576, elements: !1530)
!1530 = !{!1531, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1529, file: !27, line: 206, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !27, line: 66, baseType: !534)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1529, file: !27, line: 207, baseType: !1532, size: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1529, file: !27, line: 208, baseType: !1532, size: 64, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1529, file: !27, line: 209, baseType: !1532, size: 64, offset: 192)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1529, file: !27, line: 210, baseType: !1532, size: 64, offset: 256)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1529, file: !27, line: 211, baseType: !1532, size: 64, offset: 320)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1529, file: !27, line: 212, baseType: !1532, size: 64, offset: 384)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1529, file: !27, line: 213, baseType: !860, size: 64, offset: 448)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1529, file: !27, line: 214, baseType: !860, size: 64, offset: 512)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !587, file: !14, line: 2085, baseType: !1542, size: 64, offset: 1472)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!330, !522, !1545}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1547, line: 15, size: 256, elements: !1548)
!1547 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1548 = !{!1549, !1550, !1551, !1552, !1553}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1546, file: !1547, line: 16, baseType: !157, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1546, file: !1547, line: 19, baseType: !85, size: 32, offset: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1546, file: !1547, line: 26, baseType: !160, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1546, file: !1547, line: 33, baseType: !160, size: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1546, file: !1547, line: 36, baseType: !1554, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !988, line: 33, flags: DIFlagFwdDecl)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !587, file: !14, line: 2087, baseType: !1542, size: 64, offset: 1536)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !587, file: !14, line: 2089, baseType: !557, size: 64, offset: 1600)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !523, file: !14, line: 1198, baseType: !1559, size: 64, offset: 448)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1561)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !27, line: 324, size: 704, elements: !1562)
!1562 = !{!1563, !1567, !1571, !1575, !1576, !1577, !1578, !1579, !1584, !1589, !1593}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1561, file: !27, line: 325, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!85, !1499}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1561, file: !27, line: 326, baseType: !1568, size: 64, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!1499, !522, !85}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1561, file: !27, line: 327, baseType: !1572, size: 64, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !1499}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1561, file: !27, line: 328, baseType: !1564, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1561, file: !27, line: 329, baseType: !1564, size: 64, offset: 256)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1561, file: !27, line: 330, baseType: !1564, size: 64, offset: 320)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1561, file: !27, line: 331, baseType: !615, size: 64, offset: 384)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1561, file: !27, line: 334, baseType: !1580, size: 64, offset: 448)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!1583, !373}
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1561, file: !27, line: 335, baseType: !1585, size: 64, offset: 512)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!85, !373, !1588}
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1561, file: !27, line: 337, baseType: !1590, size: 64, offset: 576)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!85, !373, !1583}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1561, file: !27, line: 339, baseType: !1594, size: 64, offset: 640)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!85, !522, !1597}
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !523, file: !14, line: 1199, baseType: !1599, size: 64, offset: 512)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1601)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !27, line: 430, size: 704, elements: !1602)
!1602 = !{!1603, !1609, !1610, !1614, !1615, !1616, !1631, !1654, !1658, !1659, !1682}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1601, file: !27, line: 431, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!85, !522, !85, !85, !1607}
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1016)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1601, file: !27, line: 432, baseType: !615, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1601, file: !27, line: 433, baseType: !1611, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!85, !522, !7}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1601, file: !27, line: 434, baseType: !1611, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1601, file: !27, line: 435, baseType: !615, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1601, file: !27, line: 436, baseType: !1617, size: 64, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!85, !522, !85, !1620}
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !27, line: 417, size: 256, elements: !1622)
!1622 = !{!1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1621, file: !27, line: 418, baseType: !85, size: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1621, file: !27, line: 419, baseType: !7, size: 32, offset: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1621, file: !27, line: 420, baseType: !7, size: 32, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1621, file: !27, line: 422, baseType: !7, size: 32, offset: 96)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1621, file: !27, line: 423, baseType: !7, size: 32, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1621, file: !27, line: 424, baseType: !7, size: 32, offset: 160)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1621, file: !27, line: 425, baseType: !7, size: 32, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1621, file: !27, line: 426, baseType: !7, size: 32, offset: 224)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1601, file: !27, line: 437, baseType: !1632, size: 64, offset: 384)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!85, !522, !1511, !1635}
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !27, line: 345, size: 960, elements: !1637)
!1637 = !{!1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1636, file: !27, line: 346, baseType: !85, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1636, file: !27, line: 347, baseType: !446, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1636, file: !27, line: 348, baseType: !446, size: 64, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1636, file: !27, line: 349, baseType: !446, size: 64, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1636, file: !27, line: 350, baseType: !446, size: 64, offset: 256)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1636, file: !27, line: 351, baseType: !446, size: 64, offset: 320)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1636, file: !27, line: 352, baseType: !446, size: 64, offset: 384)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1636, file: !27, line: 353, baseType: !666, size: 64, offset: 448)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1636, file: !27, line: 355, baseType: !666, size: 64, offset: 512)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1636, file: !27, line: 356, baseType: !85, size: 32, offset: 576)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1636, file: !27, line: 357, baseType: !85, size: 32, offset: 608)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1636, file: !27, line: 358, baseType: !446, size: 64, offset: 640)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1636, file: !27, line: 359, baseType: !446, size: 64, offset: 704)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1636, file: !27, line: 360, baseType: !446, size: 64, offset: 768)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1636, file: !27, line: 361, baseType: !666, size: 64, offset: 832)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1636, file: !27, line: 362, baseType: !85, size: 32, offset: 896)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1601, file: !27, line: 438, baseType: !1655, size: 64, offset: 448)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!85, !522, !1597, !1635}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1601, file: !27, line: 440, baseType: !1632, size: 64, offset: 512)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1601, file: !27, line: 441, baseType: !1660, size: 64, offset: 576)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!85, !522, !1663}
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !27, line: 411, size: 1408, elements: !1665)
!1665 = !{!1666, !1667}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1664, file: !27, line: 412, baseType: !7, size: 32)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1664, file: !27, line: 413, baseType: !1668, size: 1344, offset: 64)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1669, size: 1344, elements: !295)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !27, line: 397, size: 448, elements: !1670)
!1670 = !{!1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1681}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1669, file: !27, line: 398, baseType: !7, size: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1669, file: !27, line: 399, baseType: !7, size: 32, offset: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1669, file: !27, line: 401, baseType: !7, size: 32, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1669, file: !27, line: 402, baseType: !7, size: 32, offset: 96)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1669, file: !27, line: 403, baseType: !7, size: 32, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1669, file: !27, line: 404, baseType: !7, size: 32, offset: 160)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1669, file: !27, line: 405, baseType: !7, size: 32, offset: 192)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1669, file: !27, line: 406, baseType: !448, size: 64, offset: 256)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1669, file: !27, line: 407, baseType: !1680, size: 64, offset: 320)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !158, line: 132, baseType: !446)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1669, file: !27, line: 408, baseType: !1680, size: 64, offset: 384)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1601, file: !27, line: 442, baseType: !1611, size: 64, offset: 640)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !523, file: !14, line: 1200, baseType: !1684, size: 64, offset: 576)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1686)
!1686 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !523, file: !14, line: 1201, baseType: !160, size: 64, offset: 640)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !523, file: !14, line: 1202, baseType: !160, size: 64, offset: 704)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !523, file: !14, line: 1203, baseType: !160, size: 64, offset: 768)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !523, file: !14, line: 1204, baseType: !408, size: 64, offset: 832)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !523, file: !14, line: 1205, baseType: !844, size: 320, offset: 896)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !523, file: !14, line: 1206, baseType: !85, size: 32, offset: 1216)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !523, file: !14, line: 1207, baseType: !244, size: 32, offset: 1248)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !523, file: !14, line: 1209, baseType: !159, size: 64, offset: 1280)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !523, file: !14, line: 1211, baseType: !1696, size: 64, offset: 1344)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1699)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !523, file: !14, line: 1223, baseType: !1701, size: 64, offset: 1408)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !425, line: 34, size: 64, elements: !1702)
!1702 = !{!1703}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1701, file: !425, line: 35, baseType: !428, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !523, file: !14, line: 1224, baseType: !196, size: 128, offset: 1472)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !523, file: !14, line: 1225, baseType: !1706, size: 64, offset: 1600)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !523, file: !14, line: 1226, baseType: !1709, size: 64, offset: 1664)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !523, file: !14, line: 1227, baseType: !1712, size: 64, offset: 1728)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !523, file: !14, line: 1228, baseType: !1715, size: 64, offset: 1792)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !523, file: !14, line: 1229, baseType: !567, size: 128, offset: 1856)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !523, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !523, file: !14, line: 1231, baseType: !1720, size: 2496, offset: 2048)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !27, line: 521, size: 2496, elements: !1721)
!1721 = !{!1722, !1723, !1724, !1726, !1758}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1720, file: !27, line: 522, baseType: !7, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1720, file: !27, line: 523, baseType: !844, size: 320, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1720, file: !27, line: 524, baseType: !1725, size: 192, offset: 384)
!1725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 192, elements: !295)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1720, file: !27, line: 525, baseType: !1727, size: 1728, offset: 576)
!1727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1728, size: 1728, elements: !295)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !27, line: 222, size: 576, elements: !1729)
!1729 = !{!1730, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1728, file: !27, line: 223, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !27, line: 445, size: 256, elements: !1733)
!1733 = !{!1734, !1735, !1748, !1749}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1732, file: !27, line: 446, baseType: !85, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1732, file: !27, line: 447, baseType: !1736, size: 64, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1738)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !27, line: 312, size: 512, elements: !1739)
!1739 = !{!1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1738, file: !27, line: 313, baseType: !615, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1738, file: !27, line: 314, baseType: !615, size: 64, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1738, file: !27, line: 315, baseType: !615, size: 64, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1738, file: !27, line: 316, baseType: !615, size: 64, offset: 192)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1738, file: !27, line: 317, baseType: !1564, size: 64, offset: 256)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1738, file: !27, line: 318, baseType: !1564, size: 64, offset: 320)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1738, file: !27, line: 319, baseType: !1564, size: 64, offset: 384)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1738, file: !27, line: 320, baseType: !1594, size: 64, offset: 448)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1732, file: !27, line: 448, baseType: !191, size: 64, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1732, file: !27, line: 449, baseType: !1731, size: 64, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1728, file: !27, line: 224, baseType: !85, size: 32, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1728, file: !27, line: 226, baseType: !196, size: 128, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1728, file: !27, line: 227, baseType: !160, size: 64, offset: 256)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1728, file: !27, line: 228, baseType: !7, size: 32, offset: 320)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1728, file: !27, line: 229, baseType: !7, size: 32, offset: 352)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1728, file: !27, line: 230, baseType: !1532, size: 64, offset: 384)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1728, file: !27, line: 231, baseType: !1532, size: 64, offset: 448)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1728, file: !27, line: 232, baseType: !159, size: 64, offset: 512)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1720, file: !27, line: 526, baseType: !1759, size: 192, offset: 2304)
!1759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1736, size: 192, elements: !295)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !523, file: !14, line: 1233, baseType: !1761, size: 2368, offset: 4544)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1762)
!1762 = !{!1763, !1764, !1765}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1761, file: !14, line: 1185, baseType: !264, size: 16)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1761, file: !14, line: 1186, baseType: !264, size: 16, offset: 16)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1761, file: !14, line: 1187, baseType: !1766, size: 2304, offset: 64)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1767, size: 2304, elements: !295)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1768, line: 12, size: 768, elements: !1769)
!1768 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1769 = !{!1770, !1778, !1780, !3065, !3066}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1767, file: !1768, line: 13, baseType: !1771, size: 384)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1772, line: 17, size: 384, elements: !1773)
!1772 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1773 = !{!1774, !1775, !1776, !1777}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1771, file: !1772, line: 18, baseType: !85, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1771, file: !1772, line: 19, baseType: !85, size: 32, offset: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1771, file: !1772, line: 20, baseType: !772, size: 192, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1771, file: !1772, line: 22, baseType: !714, size: 128, align: 64, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1767, file: !1768, line: 14, baseType: !1779, size: 64, offset: 384)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1767, file: !1768, line: 15, baseType: !1781, size: 64, offset: 448)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1782, line: 16, size: 64, elements: !1783)
!1782 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1783 = !{!1784}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1781, file: !1782, line: 17, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1430, line: 746, size: 58368, elements: !1787)
!1787 = !{!1788, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1868, !1879, !1974, !1978, !1981, !2012, !2013, !2014, !2015, !2026, !2028, !2029, !2030, !2031, !2032, !2033, !2044, !2045, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2062, !2063, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2156, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2171, !2172, !2173, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2215, !2221, !2222, !2223, !2224, !2225, !2226, !2229, !2236, !2241, !2244, !2247, !2250, !2254, !2394, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2434, !2435, !2436, !2445, !2453, !2454, !2455, !2456, !2457, !2462, !2463, !2464, !2467, !2468, !2471, !2474, !2477, !2485, !2488, !2489, !2575, !2576, !2577, !2578, !2579, !2585, !2586, !2587, !2588, !2591, !2592, !2595, !2609, !2610, !2613, !2614, !2615, !2618, !2619, !2620, !2621, !2622, !2623, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2655, !2656, !2722, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2734, !2806, !2808, !2809, !2810, !2811, !2812, !2824, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2842, !2843, !2844}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1786, file: !1430, line: 752, baseType: !1789, size: 192)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1790, line: 56, size: 192, elements: !1791)
!1790 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1791 = !{!1792, !1793, !1794, !1795}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1789, file: !1790, line: 57, baseType: !160, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1789, file: !1790, line: 58, baseType: !160, size: 64, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1789, file: !1790, line: 59, baseType: !442, size: 32, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1789, file: !1790, line: 61, baseType: !442, size: 32, offset: 160)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1786, file: !1430, line: 754, baseType: !7, size: 32, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1786, file: !1430, line: 767, baseType: !159, size: 64, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1786, file: !1430, line: 768, baseType: !759, size: 32, offset: 320)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1786, file: !1430, line: 770, baseType: !7, size: 32, offset: 352)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1786, file: !1430, line: 771, baseType: !7, size: 32, offset: 384)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1786, file: !1430, line: 774, baseType: !85, size: 32, offset: 416)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1786, file: !1430, line: 775, baseType: !1803, size: 128, offset: 448)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1804, line: 58, size: 128, elements: !1805)
!1804 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1805 = !{!1806, !1807, !1812, !1813}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1803, file: !1804, line: 59, baseType: !708, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, scope: !1803, file: !1804, line: 60, baseType: !1808, size: 32, offset: 64)
!1808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1803, file: !1804, line: 60, size: 32, elements: !1809)
!1809 = !{!1810, !1811}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1808, file: !1804, line: 61, baseType: !7, size: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1808, file: !1804, line: 62, baseType: !244, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1803, file: !1804, line: 65, baseType: !262, size: 16, offset: 96)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1803, file: !1804, line: 65, baseType: !262, size: 16, offset: 112)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1786, file: !1430, line: 776, baseType: !7, size: 32, offset: 576)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1786, file: !1430, line: 777, baseType: !160, size: 64, offset: 640)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1786, file: !1430, line: 778, baseType: !1785, size: 64, offset: 704)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1786, file: !1430, line: 787, baseType: !85, size: 32, offset: 768)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1786, file: !1430, line: 788, baseType: !85, size: 32, offset: 800)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1786, file: !1430, line: 790, baseType: !85, size: 32, offset: 832)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1786, file: !1430, line: 792, baseType: !85, size: 32, offset: 864)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1786, file: !1430, line: 793, baseType: !85, size: 32, offset: 896)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1786, file: !1430, line: 794, baseType: !85, size: 32, offset: 928)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1786, file: !1430, line: 795, baseType: !7, size: 32, offset: 960)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1786, file: !1430, line: 797, baseType: !1825, size: 2048, offset: 1024)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1430, line: 551, size: 2048, elements: !1826)
!1826 = !{!1827, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1847, !1850, !1851, !1852}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1825, file: !1430, line: 553, baseType: !1828, size: 128)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1430, line: 411, size: 128, elements: !1829)
!1829 = !{!1830, !1831}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1828, file: !1430, line: 412, baseType: !160, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1828, file: !1430, line: 413, baseType: !442, size: 32, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1825, file: !1430, line: 554, baseType: !836, size: 192, align: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1825, file: !1430, line: 555, baseType: !446, size: 64, offset: 320)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1825, file: !1430, line: 556, baseType: !446, size: 64, offset: 384)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1825, file: !1430, line: 558, baseType: !196, size: 128, offset: 448)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1825, file: !1430, line: 559, baseType: !7, size: 32, offset: 576)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1825, file: !1430, line: 561, baseType: !446, size: 64, offset: 640)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1825, file: !1430, line: 562, baseType: !446, size: 64, offset: 704)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1825, file: !1430, line: 563, baseType: !446, size: 64, offset: 768)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1825, file: !1430, line: 564, baseType: !446, size: 64, offset: 832)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1825, file: !1430, line: 565, baseType: !666, size: 64, offset: 896)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1825, file: !1430, line: 566, baseType: !446, size: 64, offset: 960)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1825, file: !1430, line: 568, baseType: !446, size: 64, offset: 1024)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1825, file: !1430, line: 571, baseType: !85, size: 32, offset: 1088)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1825, file: !1430, line: 572, baseType: !1846, size: 64, offset: 1152)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1825, file: !1430, line: 574, baseType: !1848, size: 64, offset: 1216)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1430, line: 49, flags: DIFlagFwdDecl)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1825, file: !1430, line: 576, baseType: !1848, size: 64, offset: 1280)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1825, file: !1430, line: 578, baseType: !160, size: 64, offset: 1344)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1825, file: !1430, line: 588, baseType: !1853, size: 512, align: 512, offset: 1536)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1430, line: 497, size: 512, align: 512, elements: !1854)
!1854 = !{!1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1853, file: !1430, line: 498, baseType: !446, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1853, file: !1430, line: 499, baseType: !446, size: 64, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1853, file: !1430, line: 500, baseType: !446, size: 64, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1853, file: !1430, line: 501, baseType: !442, size: 32, offset: 192)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1853, file: !1430, line: 502, baseType: !442, size: 32, offset: 224)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1853, file: !1430, line: 503, baseType: !160, size: 64, offset: 256)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1853, file: !1430, line: 504, baseType: !160, size: 64, offset: 320)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1853, file: !1430, line: 505, baseType: !160, size: 64, offset: 384)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1853, file: !1430, line: 506, baseType: !1864, size: 64, align: 64, offset: 448)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1430, line: 445, size: 64, align: 64, elements: !1865)
!1865 = !{!1866, !1867}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1864, file: !1430, line: 446, baseType: !7, size: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1864, file: !1430, line: 447, baseType: !7, size: 32, offset: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1786, file: !1430, line: 798, baseType: !1869, size: 384, offset: 3072)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1430, line: 592, size: 384, elements: !1870)
!1870 = !{!1871, !1872, !1873, !1874, !1875, !1876, !1877}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1869, file: !1430, line: 593, baseType: !196, size: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1869, file: !1430, line: 594, baseType: !160, size: 64, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1869, file: !1430, line: 595, baseType: !160, size: 64, offset: 192)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1869, file: !1430, line: 596, baseType: !7, size: 32, offset: 256)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1869, file: !1430, line: 597, baseType: !264, size: 16, offset: 288)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1869, file: !1430, line: 598, baseType: !264, size: 16, offset: 304)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1869, file: !1430, line: 600, baseType: !1878, size: 64, offset: 320)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1786, file: !1430, line: 799, baseType: !1880, size: 1792, offset: 3456)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1430, line: 610, size: 1792, elements: !1881)
!1881 = !{!1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1971, !1972}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1880, file: !1430, line: 611, baseType: !836, size: 192, align: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1880, file: !1430, line: 618, baseType: !446, size: 64, offset: 192)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1880, file: !1430, line: 619, baseType: !446, size: 64, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1880, file: !1430, line: 620, baseType: !446, size: 64, offset: 320)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1880, file: !1430, line: 621, baseType: !446, size: 64, offset: 384)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1880, file: !1430, line: 622, baseType: !446, size: 64, offset: 448)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1880, file: !1430, line: 629, baseType: !666, size: 64, offset: 512)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1880, file: !1430, line: 630, baseType: !446, size: 64, offset: 576)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1880, file: !1430, line: 631, baseType: !7, size: 32, offset: 640)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1880, file: !1430, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1880, file: !1430, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1880, file: !1430, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1880, file: !1430, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1880, file: !1430, line: 662, baseType: !1896, size: 512, offset: 704)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1897)
!1897 = !{!1898, !1906, !1907, !1912, !1967, !1968, !1969, !1970}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1896, file: !33, line: 119, baseType: !1899, size: 256)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1900, line: 9, size: 256, elements: !1901)
!1900 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1901 = !{!1902, !1903}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1899, file: !1900, line: 10, baseType: !836, size: 192, align: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1899, file: !1900, line: 11, baseType: !1904, size: 64, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1905, line: 29, baseType: !666)
!1905 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1896, file: !33, line: 120, baseType: !1904, size: 64, offset: 256)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1896, file: !33, line: 121, baseType: !1908, size: 64, offset: 320)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!32, !1911}
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1896, file: !33, line: 122, baseType: !1913, size: 64, offset: 384)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1915)
!1915 = !{!1916, !1941, !1942, !1945, !1950, !1951, !1962, !1966}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1914, file: !33, line: 160, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1919)
!1919 = !{!1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1918, file: !33, line: 216, baseType: !669, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1918, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1918, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1918, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1918, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1918, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1918, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1918, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1918, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1918, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1918, file: !33, line: 227, baseType: !264, size: 16, offset: 192)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1918, file: !33, line: 228, baseType: !264, size: 16, offset: 208)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1918, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1918, file: !33, line: 235, baseType: !1904, size: 64, offset: 256)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1918, file: !33, line: 236, baseType: !1911, size: 64, offset: 320)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1918, file: !33, line: 237, baseType: !1904, size: 64, offset: 384)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1918, file: !33, line: 238, baseType: !1911, size: 64, offset: 448)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1918, file: !33, line: 239, baseType: !1938, size: 4096, align: 512, offset: 512)
!1938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1914, size: 4096, align: 512, elements: !1939)
!1939 = !{!1940}
!1940 = !DISubrange(count: 8)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1914, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1914, file: !33, line: 162, baseType: !1943, size: 32, offset: 96)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !158, line: 32, baseType: !1944)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !328, line: 96, baseType: !85)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1914, file: !33, line: 163, baseType: !1946, size: 32, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !415, line: 274, baseType: !1947)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !415, line: 274, size: 32, elements: !1948)
!1948 = !{!1949}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1947, file: !415, line: 274, baseType: !419, size: 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1914, file: !33, line: 164, baseType: !1911, size: 64, offset: 192)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1914, file: !33, line: 165, baseType: !1952, size: 128, offset: 256)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1900, line: 14, size: 128, elements: !1953)
!1953 = !{!1954}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1952, file: !1900, line: 15, baseType: !1955, size: 128)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !837, line: 26, size: 128, elements: !1956)
!1956 = !{!1957, !1961}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1955, file: !837, line: 27, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !837, line: 12, size: 64, elements: !1959)
!1959 = !{!1960}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1958, file: !837, line: 13, baseType: !841, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1955, file: !837, line: 28, baseType: !841, size: 64, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1914, file: !33, line: 166, baseType: !1963, size: 64, offset: 384)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!1904}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1914, file: !33, line: 167, baseType: !1904, size: 64, offset: 448)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1896, file: !33, line: 123, baseType: !252, size: 8, offset: 448)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1896, file: !33, line: 124, baseType: !252, size: 8, offset: 456)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1896, file: !33, line: 125, baseType: !252, size: 8, offset: 464)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1896, file: !33, line: 126, baseType: !252, size: 8, offset: 472)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1880, file: !1430, line: 671, baseType: !1896, size: 512, offset: 1216)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1880, file: !1430, line: 679, baseType: !1973, size: 64, offset: 1728)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1786, file: !1430, line: 800, baseType: !1975, size: 64, offset: 5248)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1977)
!1977 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1430, line: 800, flags: DIFlagFwdDecl)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1786, file: !1430, line: 809, baseType: !1979, size: 64, offset: 5312)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1430, line: 70, flags: DIFlagFwdDecl)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1786, file: !1430, line: 825, baseType: !1982, size: 2048, align: 512, offset: 5632)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1430, line: 509, size: 2048, align: 512, elements: !1983)
!1983 = !{!1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1982, file: !1430, line: 511, baseType: !446, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1982, file: !1430, line: 512, baseType: !446, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1982, file: !1430, line: 513, baseType: !446, size: 64, offset: 128)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1982, file: !1430, line: 514, baseType: !446, size: 64, offset: 192)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1982, file: !1430, line: 515, baseType: !446, size: 64, offset: 256)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1982, file: !1430, line: 516, baseType: !446, size: 64, offset: 320)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1982, file: !1430, line: 518, baseType: !446, size: 64, offset: 384)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1982, file: !1430, line: 519, baseType: !446, size: 64, offset: 448)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1982, file: !1430, line: 520, baseType: !666, size: 64, offset: 512)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1982, file: !1430, line: 522, baseType: !446, size: 64, offset: 576)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1982, file: !1430, line: 523, baseType: !446, size: 64, offset: 640)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1982, file: !1430, line: 524, baseType: !666, size: 64, offset: 704)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1982, file: !1430, line: 526, baseType: !666, size: 64, offset: 768)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1982, file: !1430, line: 527, baseType: !446, size: 64, offset: 832)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1982, file: !1430, line: 529, baseType: !446, size: 64, offset: 896)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1982, file: !1430, line: 530, baseType: !446, size: 64, offset: 960)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1982, file: !1430, line: 531, baseType: !446, size: 64, offset: 1024)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1982, file: !1430, line: 532, baseType: !446, size: 64, offset: 1088)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1982, file: !1430, line: 533, baseType: !446, size: 64, offset: 1152)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1982, file: !1430, line: 535, baseType: !446, size: 64, offset: 1216)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1982, file: !1430, line: 536, baseType: !446, size: 64, offset: 1280)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1982, file: !1430, line: 537, baseType: !446, size: 64, offset: 1344)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1982, file: !1430, line: 538, baseType: !446, size: 64, offset: 1408)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1982, file: !1430, line: 539, baseType: !446, size: 64, offset: 1472)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1982, file: !1430, line: 540, baseType: !446, size: 64, offset: 1536)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1982, file: !1430, line: 541, baseType: !446, size: 64, offset: 1600)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1982, file: !1430, line: 542, baseType: !446, size: 64, offset: 1664)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1982, file: !1430, line: 543, baseType: !446, size: 64, offset: 1728)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1786, file: !1430, line: 833, baseType: !7, size: 32, offset: 7680)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1786, file: !1430, line: 836, baseType: !7, size: 32, offset: 7712)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1786, file: !1430, line: 837, baseType: !85, size: 32, offset: 7744)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1786, file: !1430, line: 838, baseType: !2016, size: 64, offset: 7808)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2018)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2019, line: 19, baseType: !2020)
!2019 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2019, line: 19, size: 64, elements: !2021)
!2021 = !{!2022}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2020, file: !2019, line: 19, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 64, elements: !2024)
!2024 = !{!2025}
!2025 = !DISubrange(count: 1)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1786, file: !1430, line: 839, baseType: !2027, size: 64, offset: 7872)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1786, file: !1430, line: 840, baseType: !2018, size: 64, offset: 7936)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1786, file: !1430, line: 841, baseType: !159, size: 64, offset: 8000)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1786, file: !1430, line: 843, baseType: !264, size: 16, offset: 8064)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1786, file: !1430, line: 845, baseType: !264, size: 16, offset: 8080)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1786, file: !1430, line: 848, baseType: !85, size: 32, offset: 8096)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1786, file: !1430, line: 849, baseType: !2034, size: 32, offset: 8128)
!2034 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1430, line: 718, size: 32, elements: !2035)
!2035 = !{!2036, !2043}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2034, file: !1430, line: 724, baseType: !2037, size: 32)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2034, file: !1430, line: 719, size: 32, elements: !2038)
!2038 = !{!2039, !2040, !2041, !2042}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2037, file: !1430, line: 720, baseType: !252, size: 8)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2037, file: !1430, line: 721, baseType: !252, size: 8, offset: 8)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2037, file: !1430, line: 722, baseType: !252, size: 8, offset: 16)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2037, file: !1430, line: 723, baseType: !252, size: 8, offset: 24)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2034, file: !1430, line: 725, baseType: !442, size: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1786, file: !1430, line: 850, baseType: !196, size: 128, offset: 8192)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1786, file: !1430, line: 851, baseType: !2046, size: 64, offset: 8320)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1430, line: 60, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1786, file: !1430, line: 855, baseType: !160, size: 64, offset: 8384)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1786, file: !1430, line: 856, baseType: !252, size: 8, offset: 8448)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1786, file: !1430, line: 857, baseType: !252, size: 8, offset: 8456)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1786, file: !1430, line: 858, baseType: !85, size: 32, offset: 8480)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1786, file: !1430, line: 859, baseType: !196, size: 128, offset: 8512)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1786, file: !1430, line: 860, baseType: !85, size: 32, offset: 8640)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1786, file: !1430, line: 861, baseType: !196, size: 128, offset: 8704)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1786, file: !1430, line: 873, baseType: !2056, size: 256, offset: 8832)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1430, line: 376, size: 256, elements: !2057)
!2057 = !{!2058, !2059, !2060, !2061}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2056, file: !1430, line: 381, baseType: !160, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2056, file: !1430, line: 384, baseType: !448, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2056, file: !1430, line: 389, baseType: !448, size: 64, offset: 128)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2056, file: !1430, line: 392, baseType: !448, size: 64, offset: 192)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1786, file: !1430, line: 875, baseType: !196, size: 128, offset: 9088)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1786, file: !1430, line: 877, baseType: !2064, size: 320, offset: 9216)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2065, line: 86, size: 320, elements: !2066)
!2065 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2066 = !{!2067, !2068, !2069}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2064, file: !2065, line: 87, baseType: !85, size: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2064, file: !2065, line: 88, baseType: !196, size: 128, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2064, file: !2065, line: 89, baseType: !196, size: 128, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1786, file: !1430, line: 878, baseType: !836, size: 192, align: 64, offset: 9536)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1786, file: !1430, line: 881, baseType: !1184, size: 64, offset: 9728)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1786, file: !1430, line: 882, baseType: !1184, size: 64, offset: 9792)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1786, file: !1430, line: 884, baseType: !85, size: 32, offset: 9856)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1786, file: !1430, line: 885, baseType: !85, size: 32, offset: 9888)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1786, file: !1430, line: 886, baseType: !85, size: 32, offset: 9920)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1786, file: !1430, line: 888, baseType: !85, size: 32, offset: 9952)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1786, file: !1430, line: 890, baseType: !160, size: 64, offset: 9984)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1786, file: !1430, line: 893, baseType: !7, size: 32, offset: 10048)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1786, file: !1430, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1786, file: !1430, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1786, file: !1430, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1786, file: !1430, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1786, file: !1430, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1786, file: !1430, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1786, file: !1430, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1786, file: !1430, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1786, file: !1430, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1786, file: !1430, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1786, file: !1430, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1786, file: !1430, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1786, file: !1430, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1786, file: !1430, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1786, file: !1430, line: 969, baseType: !160, size: 64, offset: 10176)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1786, file: !1430, line: 971, baseType: !2095, size: 448, offset: 10240)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !38, line: 25, size: 448, elements: !2096)
!2096 = !{!2097, !2098, !2103}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2095, file: !38, line: 26, baseType: !160, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2095, file: !38, line: 27, baseType: !2099, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!330, !2102}
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, scope: !2095, file: !38, line: 28, baseType: !2104, size: 320, offset: 128)
!2104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2095, file: !38, line: 28, size: 320, elements: !2105)
!2105 = !{!2106, !2116, !2141}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2104, file: !38, line: 37, baseType: !2107, size: 320)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2104, file: !38, line: 30, size: 320, elements: !2108)
!2108 = !{!2109, !2111, !2112, !2113, !2114, !2115}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2107, file: !38, line: 31, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2107, file: !38, line: 32, baseType: !442, size: 32, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2107, file: !38, line: 33, baseType: !442, size: 32, offset: 96)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2107, file: !38, line: 34, baseType: !442, size: 32, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2107, file: !38, line: 35, baseType: !446, size: 64, offset: 192)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2107, file: !38, line: 36, baseType: !2110, size: 64, offset: 256)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2104, file: !38, line: 47, baseType: !2117, size: 192)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2104, file: !38, line: 39, size: 192, elements: !2118)
!2118 = !{!2119, !2120, !2121, !2140}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2117, file: !38, line: 40, baseType: !1943, size: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2117, file: !38, line: 41, baseType: !37, size: 32, offset: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, scope: !2117, file: !38, line: 42, baseType: !2122, size: 64, offset: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2117, file: !38, line: 42, size: 64, elements: !2123)
!2123 = !{!2124, !2132}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2122, file: !38, line: 43, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2127, line: 7, size: 128, elements: !2128)
!2127 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2128 = !{!2129, !2131}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2126, file: !2127, line: 8, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !328, line: 93, baseType: !534)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2126, file: !2127, line: 9, baseType: !534, size: 64, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2122, file: !38, line: 44, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2135, line: 7, size: 64, elements: !2136)
!2135 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2136 = !{!2137, !2139}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2134, file: !2135, line: 8, baseType: !2138, size: 32)
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2135, line: 5, baseType: !829)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2134, file: !2135, line: 9, baseType: !829, size: 32, offset: 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2117, file: !38, line: 46, baseType: !446, size: 64, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2104, file: !38, line: 55, baseType: !2142, size: 256)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2104, file: !38, line: 49, size: 256, elements: !2143)
!2143 = !{!2144, !2152, !2153, !2154, !2155}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2142, file: !38, line: 50, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2147, line: 36, size: 64, elements: !2148)
!2147 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2148 = !{!2149, !2150, !2151}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2146, file: !2147, line: 37, baseType: !85, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2146, file: !2147, line: 38, baseType: !872, size: 16, offset: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2146, file: !2147, line: 39, baseType: !872, size: 16, offset: 48)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2142, file: !38, line: 51, baseType: !85, size: 32, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2142, file: !38, line: 52, baseType: !85, size: 32, offset: 96)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2142, file: !38, line: 53, baseType: !160, size: 64, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2142, file: !38, line: 54, baseType: !160, size: 64, offset: 192)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1786, file: !1430, line: 973, baseType: !2157, size: 32, offset: 10688)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !158, line: 27, baseType: !2158)
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !328, line: 28, baseType: !85)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1786, file: !1430, line: 974, baseType: !2157, size: 32, offset: 10720)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1786, file: !1430, line: 978, baseType: !160, size: 64, offset: 10752)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1786, file: !1430, line: 987, baseType: !1785, size: 64, offset: 10816)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1786, file: !1430, line: 990, baseType: !1785, size: 64, offset: 10880)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1786, file: !1430, line: 995, baseType: !196, size: 128, offset: 10944)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1786, file: !1430, line: 996, baseType: !196, size: 128, offset: 11072)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1786, file: !1430, line: 997, baseType: !1785, size: 64, offset: 11200)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1786, file: !1430, line: 1005, baseType: !196, size: 128, offset: 11264)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1786, file: !1430, line: 1006, baseType: !196, size: 128, offset: 11392)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1786, file: !1430, line: 1009, baseType: !755, size: 64, offset: 11520)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1786, file: !1430, line: 1010, baseType: !2170, size: 512, offset: 11584)
!2170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 512, elements: !768)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1786, file: !1430, line: 1011, baseType: !196, size: 128, offset: 12096)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1786, file: !1430, line: 1012, baseType: !196, size: 128, offset: 12224)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1786, file: !1430, line: 1014, baseType: !2174, size: 64, offset: 12352)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2176, line: 26, size: 256, elements: !2177)
!2176 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2177 = !{!2178, !2179}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2175, file: !2176, line: 27, baseType: !7, size: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2175, file: !2176, line: 28, baseType: !2180, size: 192, offset: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2181, line: 43, size: 192, elements: !2182)
!2181 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2182 = !{!2183, !2184}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2180, file: !2181, line: 44, baseType: !669, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2180, file: !2181, line: 45, baseType: !196, size: 128, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1786, file: !1430, line: 1017, baseType: !638, size: 64, offset: 12416)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1786, file: !1430, line: 1020, baseType: !638, size: 64, offset: 12480)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1786, file: !1430, line: 1023, baseType: !159, size: 64, offset: 12544)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1786, file: !1430, line: 1025, baseType: !446, size: 64, offset: 12608)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1786, file: !1430, line: 1026, baseType: !446, size: 64, offset: 12672)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1786, file: !1430, line: 1031, baseType: !446, size: 64, offset: 12736)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1786, file: !1430, line: 1032, baseType: !2192, size: 192, offset: 12800)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1430, line: 324, size: 192, elements: !2193)
!2193 = !{!2194, !2195, !2196}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2192, file: !1430, line: 326, baseType: !446, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2192, file: !1430, line: 327, baseType: !446, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2192, file: !1430, line: 328, baseType: !669, size: 32, offset: 128)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1786, file: !1430, line: 1041, baseType: !160, size: 64, offset: 12992)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1786, file: !1430, line: 1042, baseType: !160, size: 64, offset: 13056)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1786, file: !1430, line: 1045, baseType: !446, size: 64, offset: 13120)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1786, file: !1430, line: 1048, baseType: !446, size: 64, offset: 13184)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1786, file: !1430, line: 1051, baseType: !160, size: 64, offset: 13248)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1786, file: !1430, line: 1052, baseType: !160, size: 64, offset: 13312)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1786, file: !1430, line: 1055, baseType: !2204, size: 640, offset: 13376)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2205, line: 132, size: 640, elements: !2206)
!2205 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2206 = !{!2207, !2213, !2214}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2204, file: !2205, line: 133, baseType: !2208, size: 576)
!2208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2209, size: 576, elements: !295)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2205, line: 117, size: 192, elements: !2210)
!2210 = !{!2211, !2212}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2209, file: !2205, line: 118, baseType: !446, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2209, file: !2205, line: 119, baseType: !1952, size: 128, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2204, file: !2205, line: 134, baseType: !7, size: 32, offset: 576)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2204, file: !2205, line: 135, baseType: !7, size: 32, offset: 608)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1786, file: !1430, line: 1058, baseType: !2216, size: 448, offset: 14016)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2205, line: 144, size: 448, elements: !2217)
!2217 = !{!2218, !2219, !2220}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2216, file: !2205, line: 145, baseType: !714, size: 128, align: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2216, file: !2205, line: 146, baseType: !656, size: 256, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2216, file: !2205, line: 147, baseType: !7, size: 32, offset: 384)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1786, file: !1430, line: 1064, baseType: !794, size: 64, offset: 14464)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1786, file: !1430, line: 1067, baseType: !794, size: 64, offset: 14528)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1786, file: !1430, line: 1070, baseType: !794, size: 64, offset: 14592)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1786, file: !1430, line: 1074, baseType: !821, size: 64, offset: 14656)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1786, file: !1430, line: 1084, baseType: !171, size: 128, offset: 14720)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1786, file: !1430, line: 1086, baseType: !2227, size: 64, offset: 14848)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1430, line: 55, flags: DIFlagFwdDecl)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1786, file: !1430, line: 1089, baseType: !2230, size: 64, offset: 14912)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2231, line: 12, size: 64, elements: !2232)
!2231 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2232 = !{!2233}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2230, file: !2231, line: 13, baseType: !2234, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2231, line: 8, flags: DIFlagFwdDecl)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1786, file: !1430, line: 1090, baseType: !2237, size: 128, offset: 14976)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2238, line: 13, size: 128, elements: !2239)
!2238 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2239 = !{!2240}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2237, file: !2238, line: 14, baseType: !196, size: 128)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1786, file: !1430, line: 1097, baseType: !2242, size: 64, offset: 15104)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1430, line: 50, flags: DIFlagFwdDecl)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1786, file: !1430, line: 1100, baseType: !2245, size: 64, offset: 15168)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1430, line: 1100, flags: DIFlagFwdDecl)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1786, file: !1430, line: 1103, baseType: !2248, size: 64, offset: 15232)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1430, line: 53, flags: DIFlagFwdDecl)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1786, file: !1430, line: 1107, baseType: !2251, size: 64, offset: 15296)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2253, line: 35, flags: DIFlagFwdDecl)
!2253 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1786, file: !1430, line: 1110, baseType: !2255, size: 64, offset: 15360)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2257, line: 93, size: 8768, elements: !2258)
!2257 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2258 = !{!2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2308, !2317, !2318, !2320, !2321, !2322, !2325, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2363, !2364, !2371, !2381, !2384, !2385, !2388, !2389, !2390, !2391, !2392, !2393}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2256, file: !2257, line: 94, baseType: !759, size: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2256, file: !2257, line: 95, baseType: !244, size: 32, offset: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2256, file: !2257, line: 96, baseType: !85, size: 32, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2256, file: !2257, line: 97, baseType: !85, size: 32, offset: 96)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2256, file: !2257, line: 98, baseType: !196, size: 128, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2256, file: !2257, line: 100, baseType: !772, size: 192, offset: 256)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2256, file: !2257, line: 103, baseType: !1785, size: 64, offset: 448)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2256, file: !2257, line: 106, baseType: !2267, size: 192, offset: 512)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !992, line: 32, size: 192, elements: !2268)
!2268 = !{!2269, !2270}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2267, file: !992, line: 33, baseType: !196, size: 128)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2267, file: !992, line: 34, baseType: !2271, size: 64, offset: 128)
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2272, line: 25, baseType: !2273)
!2272 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2272, line: 23, size: 64, elements: !2274)
!2274 = !{!2275}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2273, file: !2272, line: 24, baseType: !2023, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2256, file: !2257, line: 109, baseType: !563, size: 64, offset: 704)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2256, file: !2257, line: 112, baseType: !85, size: 32, offset: 768)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2256, file: !2257, line: 114, baseType: !85, size: 32, offset: 800)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2256, file: !2257, line: 115, baseType: !1785, size: 64, offset: 832)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2256, file: !2257, line: 118, baseType: !85, size: 32, offset: 896)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2256, file: !2257, line: 119, baseType: !7, size: 32, offset: 928)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2256, file: !2257, line: 121, baseType: !2283, size: 64, offset: 960)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2257, line: 80, size: 448, elements: !2285)
!2285 = !{!2286, !2287, !2293}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2284, file: !2257, line: 81, baseType: !244, size: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2284, file: !2257, line: 82, baseType: !2288, size: 128, offset: 64)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2257, line: 75, size: 128, elements: !2289)
!2289 = !{!2290, !2291}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2288, file: !2257, line: 76, baseType: !1785, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2288, file: !2257, line: 77, baseType: !2292, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2284, file: !2257, line: 83, baseType: !2175, size: 256, offset: 192)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2256, file: !2257, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2256, file: !2257, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2256, file: !2257, line: 138, baseType: !7, size: 32, offset: 1056)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2256, file: !2257, line: 139, baseType: !196, size: 128, offset: 1088)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2256, file: !2257, line: 142, baseType: !1896, size: 512, offset: 1216)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2256, file: !2257, line: 143, baseType: !1904, size: 64, offset: 1728)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2256, file: !2257, line: 150, baseType: !2301, size: 256, offset: 1792)
!2301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2302, size: 256, elements: !2306)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2257, line: 38, size: 128, elements: !2303)
!2303 = !{!2304, !2305}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2302, file: !2257, line: 39, baseType: !446, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2302, file: !2257, line: 40, baseType: !446, size: 64, offset: 64)
!2306 = !{!2307}
!2307 = !DISubrange(count: 2)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2256, file: !2257, line: 156, baseType: !2309, size: 192, offset: 2048)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2257, line: 66, size: 192, elements: !2310)
!2310 = !{!2311}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2309, file: !2257, line: 67, baseType: !2312, size: 192)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2257, line: 47, size: 192, elements: !2313)
!2313 = !{!2314, !2315, !2316}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2312, file: !2257, line: 48, baseType: !662, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2312, file: !2257, line: 49, baseType: !662, size: 64, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2312, file: !2257, line: 50, baseType: !662, size: 64, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2256, file: !2257, line: 160, baseType: !2204, size: 640, offset: 2240)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2256, file: !2257, line: 163, baseType: !2319, size: 256, offset: 2880)
!2319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, size: 256, elements: !768)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2256, file: !2257, line: 169, baseType: !755, size: 64, offset: 3136)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2256, file: !2257, line: 172, baseType: !85, size: 32, offset: 3200)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2256, file: !2257, line: 174, baseType: !2323, size: 64, offset: 3264)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2257, line: 174, flags: DIFlagFwdDecl)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2256, file: !2257, line: 185, baseType: !2326, size: 64, offset: 3328)
!2326 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !415, line: 860, baseType: !2327)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !415, line: 853, size: 64, elements: !2328)
!2328 = !{!2329, !2330}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2327, file: !415, line: 858, baseType: !414, size: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2327, file: !415, line: 859, baseType: !224, size: 32, offset: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2256, file: !2257, line: 186, baseType: !446, size: 64, offset: 3392)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2256, file: !2257, line: 186, baseType: !446, size: 64, offset: 3456)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2256, file: !2257, line: 186, baseType: !446, size: 64, offset: 3520)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2256, file: !2257, line: 186, baseType: !446, size: 64, offset: 3584)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2256, file: !2257, line: 187, baseType: !446, size: 64, offset: 3648)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2256, file: !2257, line: 188, baseType: !446, size: 64, offset: 3712)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2256, file: !2257, line: 189, baseType: !2192, size: 192, offset: 3776)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2256, file: !2257, line: 190, baseType: !160, size: 64, offset: 3968)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2256, file: !2257, line: 190, baseType: !160, size: 64, offset: 4032)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2256, file: !2257, line: 190, baseType: !160, size: 64, offset: 4096)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2256, file: !2257, line: 190, baseType: !160, size: 64, offset: 4160)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2256, file: !2257, line: 191, baseType: !160, size: 64, offset: 4224)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2256, file: !2257, line: 191, baseType: !160, size: 64, offset: 4288)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2256, file: !2257, line: 191, baseType: !160, size: 64, offset: 4352)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2256, file: !2257, line: 191, baseType: !160, size: 64, offset: 4416)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2256, file: !2257, line: 192, baseType: !160, size: 64, offset: 4480)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2256, file: !2257, line: 192, baseType: !160, size: 64, offset: 4544)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2256, file: !2257, line: 192, baseType: !160, size: 64, offset: 4608)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2256, file: !2257, line: 192, baseType: !160, size: 64, offset: 4672)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2256, file: !2257, line: 193, baseType: !160, size: 64, offset: 4736)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2256, file: !2257, line: 193, baseType: !160, size: 64, offset: 4800)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2256, file: !2257, line: 194, baseType: !2353, size: 448, offset: 4864)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2354, line: 12, size: 448, elements: !2355)
!2354 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2355 = !{!2356, !2357, !2358, !2359, !2360, !2361, !2362}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2353, file: !2354, line: 15, baseType: !446, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2353, file: !2354, line: 17, baseType: !446, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2353, file: !2354, line: 19, baseType: !446, size: 64, offset: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2353, file: !2354, line: 21, baseType: !446, size: 64, offset: 192)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2353, file: !2354, line: 29, baseType: !446, size: 64, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2353, file: !2354, line: 35, baseType: !446, size: 64, offset: 320)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2353, file: !2354, line: 44, baseType: !446, size: 64, offset: 384)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2256, file: !2257, line: 202, baseType: !448, size: 64, offset: 5312)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2256, file: !2257, line: 213, baseType: !2365, size: 2048, offset: 5376)
!2365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2366, size: 2048, elements: !173)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2367, line: 43, size: 128, elements: !2368)
!2367 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2368 = !{!2369, !2370}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2366, file: !2367, line: 44, baseType: !343, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2366, file: !2367, line: 45, baseType: !343, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2256, file: !2257, line: 216, baseType: !2372, size: 448, offset: 7424)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2257, line: 30, size: 448, elements: !2373)
!2373 = !{!2374, !2375, !2376, !2377, !2378, !2379, !2380}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2372, file: !2257, line: 31, baseType: !85, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2372, file: !2257, line: 32, baseType: !330, size: 64, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2372, file: !2257, line: 33, baseType: !160, size: 64, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2372, file: !2257, line: 34, baseType: !446, size: 64, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2372, file: !2257, line: 34, baseType: !446, size: 64, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2372, file: !2257, line: 35, baseType: !160, size: 64, offset: 320)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2372, file: !2257, line: 35, baseType: !160, size: 64, offset: 384)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2256, file: !2257, line: 219, baseType: !2382, size: 64, offset: 7872)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2257, line: 219, flags: DIFlagFwdDecl)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2256, file: !2257, line: 222, baseType: !7, size: 32, offset: 7936)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2256, file: !2257, line: 223, baseType: !2386, size: 64, offset: 8000)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2257, line: 223, flags: DIFlagFwdDecl)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2256, file: !2257, line: 230, baseType: !903, size: 8, offset: 8064)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2256, file: !2257, line: 231, baseType: !872, size: 16, offset: 8080)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2256, file: !2257, line: 232, baseType: !872, size: 16, offset: 8096)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2256, file: !2257, line: 234, baseType: !1184, size: 64, offset: 8128)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2256, file: !2257, line: 237, baseType: !656, size: 256, offset: 8192)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2256, file: !2257, line: 243, baseType: !844, size: 320, offset: 8448)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1786, file: !1430, line: 1111, baseType: !2395, size: 64, offset: 15424)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2257, line: 20, size: 16640, elements: !2397)
!2397 = !{!2398, !2399, !2400, !2401}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2396, file: !2257, line: 21, baseType: !224, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2396, file: !2257, line: 22, baseType: !759, size: 32, offset: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2396, file: !2257, line: 23, baseType: !772, size: 192, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2396, file: !2257, line: 24, baseType: !2402, size: 16384, offset: 256)
!2402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2403, size: 16384, elements: !299)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !992, line: 51, size: 256, elements: !2404)
!2404 = !{!2405}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2403, file: !992, line: 52, baseType: !2406, size: 256)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !992, line: 37, size: 256, elements: !2407)
!2407 = !{!2408, !2415, !2416, !2422}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2406, file: !992, line: 39, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2410, line: 83, baseType: !2411)
!2410 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2410, line: 82, baseType: !2413)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{null, !85}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2406, file: !992, line: 40, baseType: !160, size: 64, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2406, file: !992, line: 46, baseType: !2417, size: 64, offset: 128)
!2417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2410, line: 86, baseType: !2418)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2410, line: 85, baseType: !2420)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{null}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2406, file: !992, line: 48, baseType: !2271, size: 64, offset: 192)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1786, file: !1430, line: 1112, baseType: !2271, size: 64, offset: 15488)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1786, file: !1430, line: 1113, baseType: !2271, size: 64, offset: 15552)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1786, file: !1430, line: 1115, baseType: !2271, size: 64, offset: 15616)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1786, file: !1430, line: 1116, baseType: !2267, size: 192, offset: 15680)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1786, file: !1430, line: 1117, baseType: !160, size: 64, offset: 15872)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1786, file: !1430, line: 1118, baseType: !341, size: 64, offset: 15936)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1786, file: !1430, line: 1119, baseType: !7, size: 32, offset: 16000)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1786, file: !1430, line: 1121, baseType: !717, size: 64, offset: 16064)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1786, file: !1430, line: 1125, baseType: !2432, size: 64, offset: 16128)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1430, line: 43, flags: DIFlagFwdDecl)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1786, file: !1430, line: 1127, baseType: !379, size: 32, offset: 16192)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1786, file: !1430, line: 1128, baseType: !7, size: 32, offset: 16224)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1786, file: !1430, line: 1130, baseType: !2437, size: 128, offset: 16256)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2438, line: 37, size: 128, elements: !2439)
!2438 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2439 = !{!2440, !2441, !2442}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2437, file: !2438, line: 38, baseType: !85, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2437, file: !2438, line: 39, baseType: !244, size: 32, offset: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2437, file: !2438, line: 40, baseType: !2443, size: 64, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2438, line: 24, flags: DIFlagFwdDecl)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1786, file: !1430, line: 1131, baseType: !2446, size: 256, offset: 16384)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2447, line: 12, size: 256, elements: !2448)
!2447 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2448 = !{!2449, !2450, !2451, !2452}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2446, file: !2447, line: 13, baseType: !294, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2446, file: !2447, line: 14, baseType: !160, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2446, file: !2447, line: 15, baseType: !160, size: 64, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2446, file: !2447, line: 16, baseType: !903, size: 8, offset: 192)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1786, file: !1430, line: 1134, baseType: !446, size: 64, offset: 16640)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1786, file: !1430, line: 1135, baseType: !446, size: 64, offset: 16704)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1786, file: !1430, line: 1138, baseType: !224, size: 32, offset: 16768)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1786, file: !1430, line: 1141, baseType: !669, size: 32, offset: 16800)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1786, file: !1430, line: 1143, baseType: !2458, size: 64, offset: 16832)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1430, line: 735, size: 64, elements: !2459)
!2459 = !{!2460}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2458, file: !1430, line: 736, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1786, file: !1430, line: 1147, baseType: !1955, size: 128, offset: 16896)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1786, file: !1430, line: 1149, baseType: !1785, size: 64, offset: 17024)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1786, file: !1430, line: 1151, baseType: !2465, size: 64, offset: 17088)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1430, line: 1151, flags: DIFlagFwdDecl)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1786, file: !1430, line: 1188, baseType: !159, size: 64, offset: 17152)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1786, file: !1430, line: 1191, baseType: !2469, size: 64, offset: 17216)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1430, line: 44, flags: DIFlagFwdDecl)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1786, file: !1430, line: 1194, baseType: !2472, size: 64, offset: 17280)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1430, line: 45, flags: DIFlagFwdDecl)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1786, file: !1430, line: 1197, baseType: !2475, size: 64, offset: 17344)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1430, line: 61, flags: DIFlagFwdDecl)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1786, file: !1430, line: 1199, baseType: !2478, size: 64, offset: 17408)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2480, line: 99, size: 128, elements: !2481)
!2480 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2481 = !{!2482, !2483, !2484}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2479, file: !2480, line: 100, baseType: !660, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2479, file: !2480, line: 101, baseType: !244, size: 32, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2479, file: !2480, line: 103, baseType: !264, size: 16, offset: 96)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1786, file: !1430, line: 1202, baseType: !2486, size: 64, offset: 17472)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1430, line: 48, flags: DIFlagFwdDecl)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1786, file: !1430, line: 1205, baseType: !160, size: 64, offset: 17536)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1786, file: !1430, line: 1206, baseType: !2490, size: 64, offset: 17600)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !992, line: 14, baseType: !2492)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !992, line: 12, size: 384, elements: !2493)
!2493 = !{!2494}
!2494 = !DIDerivedType(tag: DW_TAG_member, scope: !2492, file: !992, line: 13, baseType: !2495, size: 384)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2492, file: !992, line: 13, size: 384, elements: !2496)
!2496 = !{!2497, !2498, !2499, !2500}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2495, file: !992, line: 13, baseType: !85, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2495, file: !992, line: 13, baseType: !85, size: 32, offset: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2495, file: !992, line: 13, baseType: !85, size: 32, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2495, file: !992, line: 13, baseType: !2501, size: 256, offset: 128)
!2501 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2502, line: 37, size: 256, elements: !2503)
!2502 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2503 = !{!2504, !2509, !2522, !2528, !2537, !2564, !2569}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2501, file: !2502, line: 42, baseType: !2505, size: 64)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2501, file: !2502, line: 39, size: 64, elements: !2506)
!2506 = !{!2507, !2508}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2505, file: !2502, line: 40, baseType: !2158, size: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2505, file: !2502, line: 41, baseType: !385, size: 32, offset: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2501, file: !2502, line: 50, baseType: !2510, size: 192)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2501, file: !2502, line: 45, size: 192, elements: !2511)
!2511 = !{!2512, !2514, !2515, !2521}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2510, file: !2502, line: 46, baseType: !2513, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !328, line: 95, baseType: !85)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2510, file: !2502, line: 47, baseType: !85, size: 32, offset: 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2510, file: !2502, line: 48, baseType: !2516, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2502, line: 11, baseType: !2517)
!2517 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2502, line: 8, size: 64, elements: !2518)
!2518 = !{!2519, !2520}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2517, file: !2502, line: 9, baseType: !85, size: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2517, file: !2502, line: 10, baseType: !159, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2510, file: !2502, line: 49, baseType: !85, size: 32, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2501, file: !2502, line: 57, baseType: !2523, size: 128)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2501, file: !2502, line: 53, size: 128, elements: !2524)
!2524 = !{!2525, !2526, !2527}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2523, file: !2502, line: 54, baseType: !2158, size: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2523, file: !2502, line: 55, baseType: !385, size: 32, offset: 32)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2523, file: !2502, line: 56, baseType: !2516, size: 64, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2501, file: !2502, line: 66, baseType: !2529, size: 256)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2501, file: !2502, line: 60, size: 256, elements: !2530)
!2530 = !{!2531, !2532, !2533, !2534, !2536}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2529, file: !2502, line: 61, baseType: !2158, size: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2529, file: !2502, line: 62, baseType: !385, size: 32, offset: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2529, file: !2502, line: 63, baseType: !85, size: 32, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2529, file: !2502, line: 64, baseType: !2535, size: 64, offset: 128)
!2535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !328, line: 94, baseType: !329)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2529, file: !2502, line: 65, baseType: !2535, size: 64, offset: 192)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2501, file: !2502, line: 105, baseType: !2538, size: 256)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2501, file: !2502, line: 69, size: 256, elements: !2539)
!2539 = !{!2540, !2541}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2538, file: !2502, line: 70, baseType: !159, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, scope: !2538, file: !2502, line: 79, baseType: !2542, size: 192, offset: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2538, file: !2502, line: 79, size: 192, elements: !2543)
!2543 = !{!2544, !2545, !2546, !2553, !2558}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2542, file: !2502, line: 81, baseType: !85, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2542, file: !2502, line: 86, baseType: !872, size: 16)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2542, file: !2502, line: 92, baseType: !2547, size: 192)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2542, file: !2502, line: 88, size: 192, elements: !2548)
!2548 = !{!2549, !2551, !2552}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2547, file: !2502, line: 89, baseType: !2550, size: 64)
!2550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 64, elements: !1939)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2547, file: !2502, line: 90, baseType: !159, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2547, file: !2502, line: 91, baseType: !159, size: 64, offset: 128)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2542, file: !2502, line: 97, baseType: !2554, size: 96)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2542, file: !2502, line: 94, size: 96, elements: !2555)
!2555 = !{!2556, !2557}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2554, file: !2502, line: 95, baseType: !2550, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2554, file: !2502, line: 96, baseType: !443, size: 32, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2542, file: !2502, line: 103, baseType: !2559, size: 128)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2542, file: !2502, line: 99, size: 128, elements: !2560)
!2560 = !{!2561, !2562, !2563}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2559, file: !2502, line: 100, baseType: !160, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2559, file: !2502, line: 101, baseType: !443, size: 32, offset: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2559, file: !2502, line: 102, baseType: !443, size: 32, offset: 96)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2501, file: !2502, line: 111, baseType: !2565, size: 128)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2501, file: !2502, line: 108, size: 128, elements: !2566)
!2566 = !{!2567, !2568}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2565, file: !2502, line: 109, baseType: !330, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2565, file: !2502, line: 110, baseType: !85, size: 32, offset: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2501, file: !2502, line: 118, baseType: !2570, size: 128)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2501, file: !2502, line: 114, size: 128, elements: !2571)
!2571 = !{!2572, !2573, !2574}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2570, file: !2502, line: 115, baseType: !159, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2570, file: !2502, line: 116, baseType: !85, size: 32, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2570, file: !2502, line: 117, baseType: !7, size: 32, offset: 96)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1786, file: !1430, line: 1208, baseType: !2353, size: 448, offset: 17664)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1786, file: !1430, line: 1215, baseType: !446, size: 64, offset: 18112)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1786, file: !1430, line: 1217, baseType: !446, size: 64, offset: 18176)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1786, file: !1430, line: 1219, baseType: !446, size: 64, offset: 18240)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1786, file: !1430, line: 1223, baseType: !2580, size: 64, offset: 18304)
!2580 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2581, line: 99, baseType: !2582)
!2581 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2581, line: 99, size: 64, elements: !2583)
!2583 = !{!2584}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2582, file: !2581, line: 99, baseType: !2023, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1786, file: !1430, line: 1225, baseType: !414, size: 32, offset: 18368)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1786, file: !1430, line: 1226, baseType: !85, size: 32, offset: 18400)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1786, file: !1430, line: 1227, baseType: !85, size: 32, offset: 18432)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1786, file: !1430, line: 1231, baseType: !2589, size: 64, offset: 18496)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1430, line: 1231, flags: DIFlagFwdDecl)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1786, file: !1430, line: 1233, baseType: !196, size: 128, offset: 18560)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1786, file: !1430, line: 1240, baseType: !2593, size: 64, offset: 18688)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1430, line: 62, flags: DIFlagFwdDecl)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1786, file: !1430, line: 1242, baseType: !2596, size: 64, offset: 18752)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2598, line: 392, size: 96, elements: !2599)
!2598 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!2599 = !{!2600, !2606, !2608}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2597, file: !2598, line: 393, baseType: !2601, size: 32)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !2598, line: 388, size: 32, elements: !2602)
!2602 = !{!2603}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2601, file: !2598, line: 389, baseType: !2604, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !2605, line: 46, baseType: !442)
!2605 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !2597, file: !2598, line: 394, baseType: !2607, size: 32, offset: 32)
!2607 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !2605, line: 42, baseType: !829)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !2597, file: !2598, line: 395, baseType: !2604, size: 32, offset: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1786, file: !1430, line: 1244, baseType: !196, size: 128, offset: 18816)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1786, file: !1430, line: 1245, baseType: !2611, size: 64, offset: 18944)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1430, line: 51, flags: DIFlagFwdDecl)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1786, file: !1430, line: 1246, baseType: !656, size: 256, offset: 19008)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1786, file: !1430, line: 1247, baseType: !7, size: 32, offset: 19264)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1786, file: !1430, line: 1250, baseType: !2616, size: 64, offset: 19328)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1430, line: 57, flags: DIFlagFwdDecl)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1786, file: !1430, line: 1251, baseType: !656, size: 256, offset: 19392)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1786, file: !1430, line: 1252, baseType: !196, size: 128, offset: 19648)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1786, file: !1430, line: 1259, baseType: !1389, size: 64, offset: 19776)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1786, file: !1430, line: 1260, baseType: !872, size: 16, offset: 19840)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1786, file: !1430, line: 1261, baseType: !872, size: 16, offset: 19856)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1786, file: !1430, line: 1314, baseType: !2624, size: 64, offset: 19904)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2626, line: 62, size: 256, align: 256, elements: !2627)
!2626 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2627 = !{!2628, !2629, !2630, !2631, !2632, !2633, !2634}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2625, file: !2626, line: 75, baseType: !443, size: 32)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2625, file: !2626, line: 90, baseType: !443, size: 32, offset: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2625, file: !2626, line: 112, baseType: !447, size: 64, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2625, file: !2626, line: 132, baseType: !443, size: 32, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2625, file: !2626, line: 140, baseType: !443, size: 32, offset: 160)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2625, file: !2626, line: 149, baseType: !443, size: 32, offset: 192)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2625, file: !2626, line: 154, baseType: !2635, offset: 224)
!2635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, elements: !787)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1786, file: !1430, line: 1315, baseType: !442, size: 32, offset: 19968)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1786, file: !1430, line: 1316, baseType: !442, size: 32, offset: 20000)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1786, file: !1430, line: 1321, baseType: !160, size: 64, offset: 20032)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1786, file: !1430, line: 1325, baseType: !85, size: 32, offset: 20096)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1786, file: !1430, line: 1326, baseType: !85, size: 32, offset: 20128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1786, file: !1430, line: 1327, baseType: !85, size: 32, offset: 20160)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1786, file: !1430, line: 1328, baseType: !85, size: 32, offset: 20192)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1786, file: !1430, line: 1329, baseType: !714, size: 128, align: 64, offset: 20224)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1786, file: !1430, line: 1332, baseType: !2645, size: 128, offset: 20352)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2646, line: 51, size: 128, elements: !2647)
!2646 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2647 = !{!2648, !2653, !2654}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2645, file: !2646, line: 60, baseType: !2649, size: 64)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2650, line: 7, size: 64, elements: !2651)
!2650 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2651 = !{!2652}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2649, file: !2650, line: 12, baseType: !2020, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2645, file: !2646, line: 63, baseType: !903, size: 8, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2645, file: !2646, line: 70, baseType: !903, size: 8, offset: 72)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1786, file: !1430, line: 1335, baseType: !1428, size: 64, offset: 20480)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1786, file: !1430, line: 1337, baseType: !2657, size: 128, offset: 20544)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2646, line: 39, size: 128, elements: !2658)
!2658 = !{!2659, !2720, !2721}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2657, file: !2646, line: 40, baseType: !2660, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !988, line: 74, size: 512, align: 128, elements: !2662)
!2662 = !{!2663, !2664, !2714, !2719}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2661, file: !988, line: 75, baseType: !160, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, scope: !2661, file: !988, line: 83, baseType: !2665, size: 320, offset: 64)
!2665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2661, file: !988, line: 83, size: 320, elements: !2666)
!2666 = !{!2667, !2688, !2702, !2706, !2713}
!2667 = !DIDerivedType(tag: DW_TAG_member, scope: !2665, file: !988, line: 84, baseType: !2668, size: 320)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2665, file: !988, line: 84, size: 320, elements: !2669)
!2669 = !{!2670, !2681, !2682, !2687}
!2670 = !DIDerivedType(tag: DW_TAG_member, scope: !2668, file: !988, line: 90, baseType: !2671, size: 128)
!2671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2668, file: !988, line: 90, size: 128, elements: !2672)
!2672 = !{!2673, !2674, !2679, !2680}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2671, file: !988, line: 91, baseType: !196, size: 128)
!2674 = !DIDerivedType(tag: DW_TAG_member, scope: !2671, file: !988, line: 94, baseType: !2675, size: 128)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2671, file: !988, line: 94, size: 128, elements: !2676)
!2676 = !{!2677, !2678}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2675, file: !988, line: 96, baseType: !159, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2675, file: !988, line: 98, baseType: !7, size: 32, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2671, file: !988, line: 102, baseType: !196, size: 128)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2671, file: !988, line: 103, baseType: !196, size: 128)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2668, file: !988, line: 106, baseType: !369, size: 64, offset: 128)
!2682 = !DIDerivedType(tag: DW_TAG_member, scope: !2668, file: !988, line: 107, baseType: !2683, size: 64, offset: 192)
!2683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2668, file: !988, line: 107, size: 64, elements: !2684)
!2684 = !{!2685, !2686}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2683, file: !988, line: 108, baseType: !160, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2683, file: !988, line: 109, baseType: !160, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2668, file: !988, line: 117, baseType: !160, size: 64, offset: 256)
!2688 = !DIDerivedType(tag: DW_TAG_member, scope: !2665, file: !988, line: 119, baseType: !2689, size: 320)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2665, file: !988, line: 119, size: 320, elements: !2690)
!2690 = !{!2691, !2692, !2695, !2696, !2697}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2689, file: !988, line: 124, baseType: !160, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2689, file: !988, line: 125, baseType: !2693, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !988, line: 125, flags: DIFlagFwdDecl)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2689, file: !988, line: 126, baseType: !160, size: 64, offset: 128)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2689, file: !988, line: 127, baseType: !160, size: 64, offset: 192)
!2697 = !DIDerivedType(tag: DW_TAG_member, scope: !2689, file: !988, line: 128, baseType: !2698, size: 64, offset: 256)
!2698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2689, file: !988, line: 128, size: 64, elements: !2699)
!2699 = !{!2700, !2701}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2698, file: !988, line: 133, baseType: !160, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2698, file: !988, line: 138, baseType: !660, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, scope: !2665, file: !988, line: 141, baseType: !2703, size: 64)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2665, file: !988, line: 141, size: 64, elements: !2704)
!2704 = !{!2705}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2703, file: !988, line: 142, baseType: !160, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, scope: !2665, file: !988, line: 144, baseType: !2707, size: 128)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2665, file: !988, line: 144, size: 128, elements: !2708)
!2708 = !{!2709, !2712}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2707, file: !988, line: 146, baseType: !2710, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !988, line: 146, flags: DIFlagFwdDecl)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2707, file: !988, line: 147, baseType: !159, size: 64, offset: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2665, file: !988, line: 161, baseType: !714, size: 128, align: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, scope: !2661, file: !988, line: 164, baseType: !2715, size: 32, offset: 384)
!2715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2661, file: !988, line: 164, size: 32, elements: !2716)
!2716 = !{!2717, !2718}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2715, file: !988, line: 169, baseType: !244, size: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2715, file: !988, line: 177, baseType: !7, size: 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2661, file: !988, line: 181, baseType: !244, size: 32, offset: 416)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2657, file: !2646, line: 42, baseType: !443, size: 32, offset: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2657, file: !2646, line: 43, baseType: !443, size: 32, offset: 96)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1786, file: !1430, line: 1340, baseType: !2723, size: 64, offset: 20672)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1430, line: 69, flags: DIFlagFwdDecl)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1786, file: !1430, line: 1351, baseType: !85, size: 32, offset: 20736)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1786, file: !1430, line: 1352, baseType: !85, size: 32, offset: 20768)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1786, file: !1430, line: 1354, baseType: !160, size: 64, offset: 20800)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1786, file: !1430, line: 1364, baseType: !446, size: 64, offset: 20864)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1786, file: !1430, line: 1365, baseType: !446, size: 64, offset: 20928)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1786, file: !1430, line: 1412, baseType: !160, size: 64, offset: 20992)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1786, file: !1430, line: 1453, baseType: !2732, size: 64, offset: 21056)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1430, line: 1453, flags: DIFlagFwdDecl)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1786, file: !1430, line: 1457, baseType: !2735, size: 64, offset: 21120)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !2737)
!2737 = !{!2738, !2739, !2758, !2761, !2762, !2795, !2805}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2736, file: !44, line: 62, baseType: !43, size: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, scope: !2736, file: !44, line: 64, baseType: !2740, size: 192, offset: 64)
!2740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2736, file: !44, line: 64, size: 192, elements: !2741)
!2741 = !{!2742, !2753}
!2742 = !DIDerivedType(tag: DW_TAG_member, scope: !2740, file: !44, line: 65, baseType: !2743, size: 192)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2740, file: !44, line: 65, size: 192, elements: !2744)
!2744 = !{!2745, !2752}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2743, file: !44, line: 66, baseType: !2746, size: 128)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2747, line: 50, size: 128, elements: !2748)
!2747 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2748 = !{!2749, !2750, !2751}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2746, file: !2747, line: 52, baseType: !160, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2746, file: !2747, line: 54, baseType: !7, size: 32, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2746, file: !2747, line: 55, baseType: !7, size: 32, offset: 96)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2743, file: !44, line: 67, baseType: !160, size: 64, offset: 128)
!2753 = !DIDerivedType(tag: DW_TAG_member, scope: !2740, file: !44, line: 70, baseType: !2754, size: 192)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2740, file: !44, line: 70, size: 192, elements: !2755)
!2755 = !{!2756, !2757}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2754, file: !44, line: 71, baseType: !714, size: 128, align: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2754, file: !44, line: 72, baseType: !160, size: 64, offset: 128)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2736, file: !44, line: 76, baseType: !2759, size: 64, offset: 256)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2736, file: !44, line: 77, baseType: !160, size: 64, offset: 320)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2736, file: !44, line: 79, baseType: !2763, size: 64, offset: 384)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2747, line: 25, size: 256, elements: !2765)
!2765 = !{!2766, !2772, !2776}
!2766 = !DIDerivedType(tag: DW_TAG_member, scope: !2764, file: !2747, line: 26, baseType: !2767, size: 128)
!2767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2764, file: !2747, line: 26, size: 128, elements: !2768)
!2768 = !{!2769, !2771}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2767, file: !2747, line: 27, baseType: !2770, size: 128)
!2770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 128, elements: !173)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2767, file: !2747, line: 28, baseType: !2770, size: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2764, file: !2747, line: 31, baseType: !2773, size: 64, offset: 128)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2775)
!2775 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2747, line: 23, flags: DIFlagFwdDecl)
!2776 = !DIDerivedType(tag: DW_TAG_member, scope: !2764, file: !2747, line: 33, baseType: !2777, size: 64, offset: 192)
!2777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2764, file: !2747, line: 33, size: 64, elements: !2778)
!2778 = !{!2779, !2785, !2790}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2777, file: !2747, line: 38, baseType: !2780, size: 64)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2777, file: !2747, line: 34, size: 64, elements: !2781)
!2781 = !{!2782, !2783, !2784}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2780, file: !2747, line: 35, baseType: !829, size: 32)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2780, file: !2747, line: 36, baseType: !252, size: 8, offset: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2780, file: !2747, line: 37, baseType: !252, size: 8, offset: 40)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2777, file: !2747, line: 42, baseType: !2786, size: 16)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2777, file: !2747, line: 39, size: 16, elements: !2787)
!2787 = !{!2788, !2789}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2786, file: !2747, line: 40, baseType: !252, size: 8)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2786, file: !2747, line: 41, baseType: !252, size: 8, offset: 8)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2777, file: !2747, line: 46, baseType: !2791, size: 16)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2777, file: !2747, line: 43, size: 16, elements: !2792)
!2792 = !{!2793, !2794}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2791, file: !2747, line: 44, baseType: !252, size: 8)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2791, file: !2747, line: 45, baseType: !252, size: 8, offset: 8)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2736, file: !44, line: 81, baseType: !2796, size: 64, offset: 448)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !2798)
!2798 = !{!2799, !2800, !2801, !2802, !2803, !2804}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2797, file: !44, line: 86, baseType: !2759, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2797, file: !44, line: 87, baseType: !160, size: 64, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2797, file: !44, line: 88, baseType: !160, size: 64, offset: 128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2797, file: !44, line: 89, baseType: !160, size: 64, offset: 192)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2797, file: !44, line: 90, baseType: !903, size: 8, offset: 256)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2797, file: !44, line: 92, baseType: !2796, size: 64, offset: 320)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2736, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1786, file: !1430, line: 1463, baseType: !2807, offset: 21184)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1430, line: 739, elements: !575)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1786, file: !1430, line: 1470, baseType: !714, size: 128, align: 64, offset: 21184)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1786, file: !1430, line: 1471, baseType: !759, size: 32, offset: 21312)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1786, file: !1430, line: 1472, baseType: !85, size: 32, offset: 21344)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1786, file: !1430, line: 1474, baseType: !1785, size: 64, offset: 21376)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1786, file: !1430, line: 1475, baseType: !2813, size: 320, offset: 21440)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2814, line: 11, size: 320, elements: !2815)
!2814 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2815 = !{!2816, !2817, !2818, !2823}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2813, file: !2814, line: 16, baseType: !567, size: 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2813, file: !2814, line: 17, baseType: !160, size: 64, offset: 128)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2813, file: !2814, line: 18, baseType: !2819, size: 64, offset: 192)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{null, !2822}
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2813, file: !2814, line: 19, baseType: !442, size: 32, offset: 256)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1786, file: !1430, line: 1478, baseType: !2825, size: 64, offset: 21760)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2827, line: 14, flags: DIFlagFwdDecl)
!2827 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1786, file: !1430, line: 1482, baseType: !759, size: 32, offset: 21824)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1786, file: !1430, line: 1489, baseType: !159, size: 64, offset: 21888)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1786, file: !1430, line: 1504, baseType: !159, size: 64, offset: 21952)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1786, file: !1430, line: 1505, baseType: !447, size: 64, offset: 22016)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1786, file: !1430, line: 1506, baseType: !446, size: 64, offset: 22080)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1786, file: !1430, line: 1507, baseType: !447, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1786, file: !1430, line: 1508, baseType: !447, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1786, file: !1430, line: 1509, baseType: !447, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1786, file: !1430, line: 1510, baseType: !714, size: 128, align: 64, offset: 22208)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1786, file: !1430, line: 1511, baseType: !85, size: 32, offset: 22336)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1786, file: !1430, line: 1515, baseType: !2839, size: 64, offset: 22400)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !709, line: 56, size: 64, elements: !2840)
!2840 = !{!2841}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2839, file: !709, line: 57, baseType: !712, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1786, file: !1430, line: 1518, baseType: !2839, size: 64, offset: 22464)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1786, file: !1430, line: 1528, baseType: !714, size: 128, align: 64, offset: 22528)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1786, file: !1430, line: 1552, baseType: !2845, size: 35328, offset: 23040)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2846, line: 430, size: 35328, elements: !2847)
!2846 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2847 = !{!2848, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2877, !2878, !2879, !2880, !2881, !2882, !2885, !2886, !2887, !2888}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2845, file: !2846, line: 432, baseType: !2849, size: 192)
!2849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2850, size: 192, elements: !295)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2851, line: 16, size: 64, elements: !2852)
!2851 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2852 = !{!2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2850, file: !2851, line: 17, baseType: !262, size: 16)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2850, file: !2851, line: 18, baseType: !262, size: 16, offset: 16)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2850, file: !2851, line: 19, baseType: !262, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2850, file: !2851, line: 19, baseType: !262, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2850, file: !2851, line: 19, baseType: !262, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2850, file: !2851, line: 19, baseType: !262, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2850, file: !2851, line: 19, baseType: !262, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2850, file: !2851, line: 20, baseType: !262, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2850, file: !2851, line: 20, baseType: !262, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2850, file: !2851, line: 20, baseType: !262, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2850, file: !2851, line: 20, baseType: !262, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2850, file: !2851, line: 20, baseType: !262, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2850, file: !2851, line: 20, baseType: !262, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2845, file: !2846, line: 436, baseType: !160, size: 64, offset: 192)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2845, file: !2846, line: 440, baseType: !264, size: 16, offset: 256)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2845, file: !2846, line: 441, baseType: !264, size: 16, offset: 272)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2845, file: !2846, line: 442, baseType: !264, size: 16, offset: 288)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2845, file: !2846, line: 443, baseType: !264, size: 16, offset: 304)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2845, file: !2846, line: 447, baseType: !160, size: 64, offset: 320)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2845, file: !2846, line: 448, baseType: !160, size: 64, offset: 384)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2845, file: !2846, line: 459, baseType: !2874, size: 256, offset: 448)
!2874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2875, size: 256, elements: !768)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2846, line: 428, flags: DIFlagFwdDecl)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2845, file: !2846, line: 461, baseType: !160, size: 64, offset: 704)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2845, file: !2846, line: 463, baseType: !160, size: 64, offset: 768)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2845, file: !2846, line: 465, baseType: !160, size: 64, offset: 832)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2845, file: !2846, line: 466, baseType: !160, size: 64, offset: 896)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2845, file: !2846, line: 467, baseType: !160, size: 64, offset: 960)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2845, file: !2846, line: 473, baseType: !2883, size: 64, offset: 1024)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2846, line: 10, flags: DIFlagFwdDecl)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2845, file: !2846, line: 480, baseType: !160, size: 64, offset: 1088)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2845, file: !2846, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2845, file: !2846, line: 491, baseType: !442, size: 32, offset: 1184)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2845, file: !2846, line: 501, baseType: !2889, size: 33792, offset: 1536)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2890, line: 448, size: 33792, elements: !2891)
!2890 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2891 = !{!2892, !2893, !2894, !3056, !3057, !3063, !3064}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2889, file: !2890, line: 461, baseType: !7, size: 32)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2889, file: !2890, line: 468, baseType: !160, size: 64, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2889, file: !2890, line: 476, baseType: !2895, size: 64, offset: 128)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2890, line: 356, size: 33280, align: 512, elements: !2897)
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2896, file: !2890, line: 358, baseType: !7, size: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2896, file: !2890, line: 361, baseType: !7, size: 32, offset: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2896, file: !2890, line: 364, baseType: !446, size: 64, offset: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2896, file: !2890, line: 367, baseType: !446, size: 64, offset: 128)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2896, file: !2890, line: 370, baseType: !446, size: 64, offset: 192)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2896, file: !2890, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2896, file: !2890, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2896, file: !2890, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2896, file: !2890, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2896, file: !2890, line: 397, baseType: !2908, size: 32768, offset: 512)
!2908 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2890, line: 348, size: 32768, elements: !2909)
!2909 = !{!2910, !2925, !2962, !3039, !3052}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2908, file: !2890, line: 349, baseType: !2911, size: 896)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2890, line: 12, size: 896, elements: !2912)
!2912 = !{!2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2924}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2911, file: !2890, line: 13, baseType: !442, size: 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2911, file: !2890, line: 14, baseType: !442, size: 32, offset: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2911, file: !2890, line: 15, baseType: !442, size: 32, offset: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2911, file: !2890, line: 16, baseType: !442, size: 32, offset: 96)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2911, file: !2890, line: 17, baseType: !442, size: 32, offset: 128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2911, file: !2890, line: 18, baseType: !442, size: 32, offset: 160)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2911, file: !2890, line: 19, baseType: !442, size: 32, offset: 192)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2911, file: !2890, line: 22, baseType: !2921, size: 640, offset: 224)
!2921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 640, elements: !2922)
!2922 = !{!2923}
!2923 = !DISubrange(count: 20)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2911, file: !2890, line: 25, baseType: !442, size: 32, offset: 864)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2908, file: !2890, line: 350, baseType: !2926, size: 4096, align: 128)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2890, line: 34, size: 4096, align: 128, elements: !2927)
!2927 = !{!2928, !2929, !2930, !2931, !2932, !2947, !2948, !2949, !2951, !2953, !2957}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2926, file: !2890, line: 35, baseType: !262, size: 16)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2926, file: !2890, line: 36, baseType: !262, size: 16, offset: 16)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2926, file: !2890, line: 37, baseType: !262, size: 16, offset: 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2926, file: !2890, line: 38, baseType: !262, size: 16, offset: 48)
!2932 = !DIDerivedType(tag: DW_TAG_member, scope: !2926, file: !2890, line: 39, baseType: !2933, size: 128, offset: 64)
!2933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2926, file: !2890, line: 39, size: 128, elements: !2934)
!2934 = !{!2935, !2940}
!2935 = !DIDerivedType(tag: DW_TAG_member, scope: !2933, file: !2890, line: 40, baseType: !2936, size: 128)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2933, file: !2890, line: 40, size: 128, elements: !2937)
!2937 = !{!2938, !2939}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2936, file: !2890, line: 41, baseType: !446, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2936, file: !2890, line: 42, baseType: !446, size: 64, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, scope: !2933, file: !2890, line: 44, baseType: !2941, size: 128)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2933, file: !2890, line: 44, size: 128, elements: !2942)
!2942 = !{!2943, !2944, !2945, !2946}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2941, file: !2890, line: 45, baseType: !442, size: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2941, file: !2890, line: 46, baseType: !442, size: 32, offset: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2941, file: !2890, line: 47, baseType: !442, size: 32, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2941, file: !2890, line: 48, baseType: !442, size: 32, offset: 96)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2926, file: !2890, line: 51, baseType: !442, size: 32, offset: 192)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2926, file: !2890, line: 52, baseType: !442, size: 32, offset: 224)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2926, file: !2890, line: 55, baseType: !2950, size: 1024, offset: 256)
!2950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 1024, elements: !178)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2926, file: !2890, line: 58, baseType: !2952, size: 2048, offset: 1280)
!2952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 2048, elements: !299)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2926, file: !2890, line: 60, baseType: !2954, size: 384, offset: 3328)
!2954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 384, elements: !2955)
!2955 = !{!2956}
!2956 = !DISubrange(count: 12)
!2957 = !DIDerivedType(tag: DW_TAG_member, scope: !2926, file: !2890, line: 62, baseType: !2958, size: 384, offset: 3712)
!2958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2926, file: !2890, line: 62, size: 384, elements: !2959)
!2959 = !{!2960, !2961}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2958, file: !2890, line: 63, baseType: !2954, size: 384)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2958, file: !2890, line: 64, baseType: !2954, size: 384)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2908, file: !2890, line: 351, baseType: !2963, size: 1088)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2890, line: 79, size: 1088, elements: !2964)
!2964 = !{!2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !3038}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2963, file: !2890, line: 80, baseType: !442, size: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2963, file: !2890, line: 81, baseType: !442, size: 32, offset: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2963, file: !2890, line: 82, baseType: !442, size: 32, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2963, file: !2890, line: 83, baseType: !442, size: 32, offset: 96)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2963, file: !2890, line: 84, baseType: !442, size: 32, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2963, file: !2890, line: 85, baseType: !442, size: 32, offset: 160)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2963, file: !2890, line: 86, baseType: !442, size: 32, offset: 192)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2963, file: !2890, line: 88, baseType: !2921, size: 640, offset: 224)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2963, file: !2890, line: 89, baseType: !252, size: 8, offset: 864)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2963, file: !2890, line: 90, baseType: !252, size: 8, offset: 872)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2963, file: !2890, line: 91, baseType: !252, size: 8, offset: 880)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2963, file: !2890, line: 92, baseType: !252, size: 8, offset: 888)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2963, file: !2890, line: 93, baseType: !252, size: 8, offset: 896)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2963, file: !2890, line: 94, baseType: !252, size: 8, offset: 904)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2963, file: !2890, line: 95, baseType: !2980, size: 64, offset: 960)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2982, line: 11, size: 128, elements: !2983)
!2982 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2983 = !{!2984, !2985}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2981, file: !2982, line: 12, baseType: !330, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2981, file: !2982, line: 13, baseType: !2986, size: 64, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2988, line: 103, size: 1344, elements: !2989)
!2988 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2989 = !{!2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3018, !3019, !3020}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2987, file: !2988, line: 109, baseType: !160, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2987, file: !2988, line: 110, baseType: !160, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2987, file: !2988, line: 111, baseType: !160, size: 64, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2987, file: !2988, line: 112, baseType: !160, size: 64, offset: 192)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2987, file: !2988, line: 113, baseType: !160, size: 64, offset: 256)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2987, file: !2988, line: 114, baseType: !160, size: 64, offset: 320)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2987, file: !2988, line: 117, baseType: !160, size: 64, offset: 384)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2987, file: !2988, line: 118, baseType: !160, size: 64, offset: 448)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2987, file: !2988, line: 119, baseType: !160, size: 64, offset: 512)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2987, file: !2988, line: 120, baseType: !160, size: 64, offset: 576)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2987, file: !2988, line: 121, baseType: !160, size: 64, offset: 640)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2987, file: !2988, line: 122, baseType: !160, size: 64, offset: 704)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2987, file: !2988, line: 123, baseType: !160, size: 64, offset: 768)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2987, file: !2988, line: 124, baseType: !160, size: 64, offset: 832)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2987, file: !2988, line: 125, baseType: !160, size: 64, offset: 896)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2987, file: !2988, line: 139, baseType: !160, size: 64, offset: 960)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2987, file: !2988, line: 142, baseType: !160, size: 64, offset: 1024)
!3007 = !DIDerivedType(tag: DW_TAG_member, scope: !2987, file: !2988, line: 144, baseType: !3008, size: 64, offset: 1088)
!3008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2987, file: !2988, line: 144, size: 64, elements: !3009)
!3009 = !{!3010, !3011, !3012}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3008, file: !2988, line: 146, baseType: !262, size: 16)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3008, file: !2988, line: 148, baseType: !446, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3008, file: !2988, line: 150, baseType: !3013, size: 64)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2988, line: 59, size: 64, elements: !3014)
!3014 = !{!3015, !3016, !3017}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3013, file: !2988, line: 61, baseType: !446, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3013, file: !2988, line: 63, baseType: !446, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3013, file: !2988, line: 65, baseType: !446, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2987, file: !2988, line: 153, baseType: !160, size: 64, offset: 1152)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2987, file: !2988, line: 154, baseType: !160, size: 64, offset: 1216)
!3020 = !DIDerivedType(tag: DW_TAG_member, scope: !2987, file: !2988, line: 156, baseType: !3021, size: 64, offset: 1280)
!3021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2987, file: !2988, line: 156, size: 64, elements: !3022)
!3022 = !{!3023, !3024, !3025}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3021, file: !2988, line: 158, baseType: !262, size: 16)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3021, file: !2988, line: 160, baseType: !446, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3021, file: !2988, line: 162, baseType: !3026, size: 64)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2988, line: 69, size: 64, elements: !3027)
!3027 = !{!3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3026, file: !2988, line: 71, baseType: !446, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3026, file: !2988, line: 73, baseType: !446, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3026, file: !2988, line: 75, baseType: !446, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3026, file: !2988, line: 77, baseType: !446, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3026, file: !2988, line: 80, baseType: !446, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3026, file: !2988, line: 83, baseType: !446, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3026, file: !2988, line: 86, baseType: !446, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3026, file: !2988, line: 88, baseType: !446, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3026, file: !2988, line: 93, baseType: !446, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3026, file: !2988, line: 100, baseType: !446, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2963, file: !2890, line: 96, baseType: !442, size: 32, offset: 1024)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2908, file: !2890, line: 352, baseType: !3040, size: 4608, align: 512)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2890, line: 333, size: 4608, align: 512, elements: !3041)
!3041 = !{!3042, !3043, !3050}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3040, file: !2890, line: 334, baseType: !2926, size: 4096, align: 128)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3040, file: !2890, line: 335, baseType: !3044, size: 512, offset: 4096)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2890, line: 312, size: 512, elements: !3045)
!3045 = !{!3046, !3047, !3048}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3044, file: !2890, line: 313, baseType: !446, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3044, file: !2890, line: 314, baseType: !446, size: 64, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3044, file: !2890, line: 315, baseType: !3049, size: 384, offset: 128)
!3049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 384, elements: !890)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3040, file: !2890, line: 336, baseType: !3051, offset: 4608)
!3051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, elements: !787)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2908, file: !2890, line: 353, baseType: !3053, size: 32768)
!3053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 32768, elements: !3054)
!3054 = !{!3055}
!3055 = !DISubrange(count: 4096)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2889, file: !2890, line: 484, baseType: !2895, size: 64, offset: 192)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2889, file: !2890, line: 491, baseType: !3058, size: 128, offset: 256)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2890, line: 404, size: 128, elements: !3059)
!3059 = !{!3060, !3061, !3062}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3058, file: !2890, line: 424, baseType: !446, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3058, file: !2890, line: 432, baseType: !7, size: 32, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3058, file: !2890, line: 440, baseType: !7, size: 32, offset: 96)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2889, file: !2890, line: 498, baseType: !3058, size: 128, offset: 384)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2889, file: !2890, line: 508, baseType: !2896, size: 33280, align: 512, offset: 512)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1767, file: !1768, line: 16, baseType: !772, size: 192, offset: 512)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1767, file: !1768, line: 17, baseType: !244, size: 32, offset: 704)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !523, file: !14, line: 1240, baseType: !159, size: 64, offset: 6912)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !523, file: !14, line: 1243, baseType: !442, size: 32, offset: 6976)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !523, file: !14, line: 1245, baseType: !860, size: 64, offset: 7040)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !523, file: !14, line: 1246, baseType: !860, size: 64, offset: 7104)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !523, file: !14, line: 1248, baseType: !443, size: 32, offset: 7168)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !523, file: !14, line: 1249, baseType: !3073, size: 64, offset: 7232)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !523, file: !14, line: 1252, baseType: !177, size: 256, offset: 7296)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !523, file: !14, line: 1253, baseType: !3077, size: 128, offset: 7552)
!3077 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3078, line: 21, baseType: !3079)
!3078 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3078, line: 19, size: 128, elements: !3080)
!3080 = !{!3081}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3079, file: !3078, line: 20, baseType: !3082, size: 128)
!3082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 128, elements: !173)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !523, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !523, file: !14, line: 1261, baseType: !656, size: 256, offset: 7744)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !523, file: !14, line: 1267, baseType: !213, size: 64, offset: 8000)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !523, file: !14, line: 1269, baseType: !469, size: 64, offset: 8064)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !523, file: !14, line: 1271, baseType: !3088, size: 448, offset: 8128)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1547, line: 63, size: 448, elements: !3089)
!3089 = !{!3090, !3095, !3096, !3097, !3098, !3099, !3100}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3088, file: !1547, line: 64, baseType: !3091, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!160, !3094, !1545}
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3088, file: !1547, line: 66, baseType: !3091, size: 64, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3088, file: !1547, line: 69, baseType: !330, size: 64, offset: 128)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3088, file: !1547, line: 70, baseType: !85, size: 32, offset: 192)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3088, file: !1547, line: 71, baseType: !7, size: 32, offset: 224)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3088, file: !1547, line: 74, baseType: !196, size: 128, offset: 256)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3088, file: !1547, line: 85, baseType: !3101, size: 64, offset: 384)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !523, file: !14, line: 1274, baseType: !660, size: 64, offset: 8576)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !523, file: !14, line: 1280, baseType: !660, size: 64, offset: 8640)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !523, file: !14, line: 1283, baseType: !85, size: 32, offset: 8704)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !523, file: !14, line: 1286, baseType: !1479, size: 32, offset: 8736)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !523, file: !14, line: 1289, baseType: !3107, size: 64, offset: 8768)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1339, line: 18, flags: DIFlagFwdDecl)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !523, file: !14, line: 1290, baseType: !563, size: 64, offset: 8832)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !523, file: !14, line: 1297, baseType: !986, size: 64, offset: 8896)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !523, file: !14, line: 1304, baseType: !3112, size: 64, offset: 8960)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3113, line: 49, size: 64, elements: !3114)
!3113 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3114 = !{!3115}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3112, file: !3113, line: 50, baseType: !3116, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3113, line: 41, size: 512, align: 512, elements: !3118)
!3118 = !{!3119, !3120, !3125}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3117, file: !3113, line: 43, baseType: !224, size: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3117, file: !3113, line: 45, baseType: !3121, size: 192, offset: 64)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3113, line: 29, size: 192, elements: !3122)
!3122 = !{!3123, !3124}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3121, file: !3113, line: 30, baseType: !196, size: 128)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3121, file: !3113, line: 32, baseType: !330, size: 64, offset: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3117, file: !3113, line: 46, baseType: !330, size: 64, offset: 256)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !523, file: !14, line: 1305, baseType: !3112, size: 64, offset: 9024)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !523, file: !14, line: 1306, baseType: !714, size: 128, align: 64, offset: 9088)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !523, file: !14, line: 1307, baseType: !1338, size: 256, offset: 9216)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !523, file: !14, line: 1309, baseType: !656, size: 256, offset: 9472)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !523, file: !14, line: 1314, baseType: !85, size: 32, offset: 9728)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !523, file: !14, line: 1317, baseType: !224, size: 32, align: 512, offset: 10240)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !523, file: !14, line: 1318, baseType: !196, size: 128, offset: 10304)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !523, file: !14, line: 1320, baseType: !224, size: 32, offset: 10432)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !523, file: !14, line: 1321, baseType: !196, size: 128, offset: 10496)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !517, file: !518, line: 73, baseType: !85, size: 32, offset: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !517, file: !518, line: 74, baseType: !3137, size: 64, offset: 192)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !811, line: 42, flags: DIFlagFwdDecl)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !471, file: !410, line: 141, baseType: !3141, size: 64, offset: 704)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!85, !1607, !903}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !471, file: !410, line: 142, baseType: !3145, size: 64, offset: 768)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!408, !408, !3148}
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !409, file: !410, line: 96, baseType: !522, size: 64, offset: 832)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !409, file: !410, line: 97, baseType: !160, size: 64, offset: 896)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !409, file: !410, line: 98, baseType: !159, size: 64, offset: 960)
!3153 = !DIDerivedType(tag: DW_TAG_member, scope: !409, file: !410, line: 100, baseType: !3154, size: 128, offset: 1024)
!3154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !409, file: !410, line: 100, size: 128, elements: !3155)
!3155 = !{!3156, !3157}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3154, file: !410, line: 101, baseType: !196, size: 128)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3154, file: !410, line: 102, baseType: !1160, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !409, file: !410, line: 104, baseType: !196, size: 128, offset: 1152)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !409, file: !410, line: 105, baseType: !196, size: 128, offset: 1280)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !409, file: !410, line: 113, baseType: !3161, size: 128, offset: 1408)
!3161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !409, file: !410, line: 109, size: 128, elements: !3162)
!3162 = !{!3163, !3164, !3165}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3161, file: !410, line: 110, baseType: !567, size: 128)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3161, file: !410, line: 111, baseType: !424, size: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3161, file: !410, line: 112, baseType: !714, size: 128, align: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !402, file: !14, line: 1968, baseType: !3167, size: 64, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!213, !408, !373, !3170}
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3172, line: 10, size: 128, elements: !3173)
!3172 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3173 = !{!3174, !3178}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3171, file: !3172, line: 11, baseType: !3175, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{null, !159}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3171, file: !3172, line: 12, baseType: !159, size: 64, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !402, file: !14, line: 1969, baseType: !3180, size: 64, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!85, !3137, !373, !85}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !402, file: !14, line: 1970, baseType: !3184, size: 64, offset: 192)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!396, !373, !85, !903}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !402, file: !14, line: 1972, baseType: !3188, size: 64, offset: 256)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!85, !408, !294, !85}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !402, file: !14, line: 1974, baseType: !3192, size: 64, offset: 320)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!85, !3137, !373, !408, !336, !903}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !402, file: !14, line: 1976, baseType: !3196, size: 64, offset: 384)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!85, !408, !373, !408}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !402, file: !14, line: 1977, baseType: !3200, size: 64, offset: 448)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!85, !373, !408}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !402, file: !14, line: 1978, baseType: !3204, size: 64, offset: 512)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!85, !3137, !373, !408, !213}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !402, file: !14, line: 1980, baseType: !3208, size: 64, offset: 576)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!85, !3137, !373, !408, !336}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !402, file: !14, line: 1982, baseType: !3200, size: 64, offset: 640)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !402, file: !14, line: 1983, baseType: !3213, size: 64, offset: 704)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!85, !3137, !373, !408, !336, !527}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !402, file: !14, line: 1985, baseType: !3217, size: 64, offset: 768)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!85, !3137, !373, !408, !373, !408, !7}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !402, file: !14, line: 1987, baseType: !3221, size: 64, offset: 832)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!85, !3137, !408, !3224}
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3226)
!3226 = !{!3227, !3228, !3229, !3239, !3248, !3249, !3254, !3255, !3256}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3225, file: !14, line: 227, baseType: !7, size: 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3225, file: !14, line: 228, baseType: !336, size: 16, offset: 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, scope: !3225, file: !14, line: 241, baseType: !3230, size: 32, offset: 64)
!3230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3225, file: !14, line: 241, size: 32, elements: !3231)
!3231 = !{!3232, !3233}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3230, file: !14, line: 242, baseType: !379, size: 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3230, file: !14, line: 243, baseType: !3234, size: 32)
!3234 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3235, line: 16, baseType: !3236)
!3235 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3235, line: 14, size: 32, elements: !3237)
!3237 = !{!3238}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3236, file: !3235, line: 15, baseType: !384, size: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, scope: !3225, file: !14, line: 245, baseType: !3240, size: 32, offset: 96)
!3240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3225, file: !14, line: 245, size: 32, elements: !3241)
!3241 = !{!3242, !3243}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3240, file: !14, line: 246, baseType: !388, size: 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3240, file: !14, line: 247, baseType: !3244, size: 32)
!3244 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3235, line: 20, baseType: !3245)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3235, line: 18, size: 32, elements: !3246)
!3246 = !{!3247}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3245, file: !3235, line: 19, baseType: !392, size: 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3225, file: !14, line: 249, baseType: !532, size: 64, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3225, file: !14, line: 250, baseType: !3250, size: 128, offset: 192)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !861, line: 13, size: 128, elements: !3251)
!3251 = !{!3252, !3253}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3250, file: !861, line: 14, baseType: !860, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3250, file: !861, line: 15, baseType: !330, size: 64, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3225, file: !14, line: 251, baseType: !3250, size: 128, offset: 320)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3225, file: !14, line: 252, baseType: !3250, size: 128, offset: 448)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3225, file: !14, line: 259, baseType: !1032, size: 64, offset: 576)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !402, file: !14, line: 1988, baseType: !3258, size: 64, offset: 896)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!85, !3137, !1607, !3261, !442, !7}
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3263, line: 22, size: 1280, elements: !3264)
!3263 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3264 = !{!3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3262, file: !3263, line: 23, baseType: !442, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3262, file: !3263, line: 24, baseType: !336, size: 16, offset: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3262, file: !3263, line: 25, baseType: !7, size: 32, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3262, file: !3263, line: 26, baseType: !868, size: 32, offset: 96)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3262, file: !3263, line: 27, baseType: !446, size: 64, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3262, file: !3263, line: 28, baseType: !446, size: 64, offset: 192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3262, file: !3263, line: 41, baseType: !446, size: 64, offset: 256)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3262, file: !3263, line: 42, baseType: !527, size: 32, offset: 320)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3262, file: !3263, line: 43, baseType: !527, size: 32, offset: 352)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3262, file: !3263, line: 44, baseType: !379, size: 32, offset: 384)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3262, file: !3263, line: 45, baseType: !388, size: 32, offset: 416)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3262, file: !3263, line: 46, baseType: !532, size: 64, offset: 448)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3262, file: !3263, line: 47, baseType: !3250, size: 128, offset: 512)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3262, file: !3263, line: 48, baseType: !3250, size: 128, offset: 640)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3262, file: !3263, line: 49, baseType: !3250, size: 128, offset: 768)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3262, file: !3263, line: 50, baseType: !3250, size: 128, offset: 896)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3262, file: !3263, line: 51, baseType: !446, size: 64, offset: 1024)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3262, file: !3263, line: 52, baseType: !446, size: 64, offset: 1088)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3262, file: !3263, line: 53, baseType: !442, size: 32, offset: 1152)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3262, file: !3263, line: 54, baseType: !442, size: 32, offset: 1184)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3262, file: !3263, line: 55, baseType: !446, size: 64, offset: 1216)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !402, file: !14, line: 1990, baseType: !3287, size: 64, offset: 960)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!326, !408, !294, !341}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !402, file: !14, line: 1991, baseType: !3291, size: 64, offset: 1024)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!85, !373, !3294, !446, !446}
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !402, file: !14, line: 1993, baseType: !3297, size: 64, offset: 1088)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!85, !373, !85}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !402, file: !14, line: 1994, baseType: !3301, size: 64, offset: 1152)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!85, !373, !408, !1032, !7, !336}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !402, file: !14, line: 1997, baseType: !3305, size: 64, offset: 1216)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!85, !3137, !373, !1032, !336}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !402, file: !14, line: 1999, baseType: !3309, size: 64, offset: 1280)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!396, !3137, !408, !85}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !402, file: !14, line: 2001, baseType: !3313, size: 64, offset: 1344)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!85, !3137, !408, !396, !85}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !402, file: !14, line: 2003, baseType: !3317, size: 64, offset: 1408)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!85, !3137, !408, !3320}
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !402, file: !14, line: 2005, baseType: !3323, size: 64, offset: 1472)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!85, !408, !3320}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !402, file: !14, line: 2006, baseType: !3327, size: 64, offset: 1536)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!3330, !373}
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3332)
!3332 = !{!3333, !3334}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3331, file: !14, line: 3193, baseType: !1112, size: 128)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3331, file: !14, line: 3194, baseType: !442, size: 32, offset: 128)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !374, file: !14, line: 655, baseType: !522, size: 64, offset: 448)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !374, file: !14, line: 656, baseType: !369, size: 64, offset: 512)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !374, file: !14, line: 659, baseType: !159, size: 64, offset: 576)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !374, file: !14, line: 663, baseType: !160, size: 64, offset: 640)
!3339 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !14, line: 671, baseType: !3340, size: 32, offset: 704)
!3340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !14, line: 671, size: 32, elements: !3341)
!3341 = !{!3342, !3344}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3340, file: !14, line: 672, baseType: !3343, size: 32)
!3343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3340, file: !14, line: 673, baseType: !7, size: 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !374, file: !14, line: 675, baseType: !527, size: 32, offset: 736)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !374, file: !14, line: 676, baseType: !532, size: 64, offset: 768)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !374, file: !14, line: 677, baseType: !3250, size: 128, offset: 832)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !374, file: !14, line: 678, baseType: !3250, size: 128, offset: 960)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !374, file: !14, line: 679, baseType: !3250, size: 128, offset: 1088)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !374, file: !14, line: 680, baseType: !224, size: 32, offset: 1216)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !374, file: !14, line: 681, baseType: !264, size: 16, offset: 1248)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !374, file: !14, line: 682, baseType: !252, size: 8, offset: 1264)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !374, file: !14, line: 683, baseType: !252, size: 8, offset: 1272)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !374, file: !14, line: 684, baseType: !1680, size: 64, offset: 1280)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !374, file: !14, line: 691, baseType: !160, size: 64, offset: 1344)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !374, file: !14, line: 692, baseType: !844, size: 320, offset: 1408)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !374, file: !14, line: 694, baseType: !160, size: 64, offset: 1728)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !374, file: !14, line: 695, baseType: !160, size: 64, offset: 1792)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !374, file: !14, line: 697, baseType: !567, size: 128, offset: 1856)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !374, file: !14, line: 698, baseType: !196, size: 128, offset: 1984)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !374, file: !14, line: 707, baseType: !196, size: 128, offset: 2112)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !374, file: !14, line: 708, baseType: !196, size: 128, offset: 2240)
!3363 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !14, line: 709, baseType: !3364, size: 128, offset: 2368)
!3364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !14, line: 709, size: 128, elements: !3365)
!3365 = !{!3366, !3367}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3364, file: !14, line: 710, baseType: !563, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3364, file: !14, line: 711, baseType: !714, size: 128, align: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !374, file: !14, line: 713, baseType: !662, size: 64, offset: 2496)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !374, file: !14, line: 714, baseType: !662, size: 64, offset: 2560)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !374, file: !14, line: 715, baseType: !244, size: 32, offset: 2624)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !374, file: !14, line: 716, baseType: !244, size: 32, offset: 2656)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !374, file: !14, line: 717, baseType: !244, size: 32, offset: 2688)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !374, file: !14, line: 719, baseType: !244, size: 32, offset: 2720)
!3374 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !14, line: 721, baseType: !3375, size: 64, offset: 2752)
!3375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !14, line: 721, size: 64, elements: !3376)
!3376 = !{!3377, !3378}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3375, file: !14, line: 722, baseType: !1023, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3375, file: !14, line: 723, baseType: !594, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !374, file: !14, line: 725, baseType: !3380, size: 64, offset: 2816)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !374, file: !14, line: 726, baseType: !370, size: 1536, align: 64, offset: 2880)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !374, file: !14, line: 727, baseType: !196, size: 128, offset: 4416)
!3384 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !14, line: 728, baseType: !3385, size: 64, offset: 4544)
!3385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !14, line: 728, size: 64, elements: !3386)
!3386 = !{!3387, !3388, !3391, !3392}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3385, file: !14, line: 729, baseType: !1428, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3385, file: !14, line: 730, baseType: !3389, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3385, file: !14, line: 731, baseType: !294, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3385, file: !14, line: 732, baseType: !7, size: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !374, file: !14, line: 735, baseType: !443, size: 32, offset: 4608)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !374, file: !14, line: 738, baseType: !443, size: 32, offset: 4640)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !374, file: !14, line: 739, baseType: !3073, size: 64, offset: 4672)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !374, file: !14, line: 750, baseType: !159, size: 64, offset: 4736)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !370, file: !14, line: 474, baseType: !1112, size: 128, offset: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !370, file: !14, line: 475, baseType: !844, size: 320, offset: 192)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !370, file: !14, line: 476, baseType: !157, size: 32, offset: 512)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !370, file: !14, line: 477, baseType: !244, size: 32, offset: 544)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !370, file: !14, line: 482, baseType: !1955, size: 128, offset: 576)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !370, file: !14, line: 483, baseType: !160, size: 64, offset: 704)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !370, file: !14, line: 484, baseType: !160, size: 64, offset: 768)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !370, file: !14, line: 485, baseType: !3405, size: 64, offset: 832)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3407)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3408)
!3408 = !{!3409, !3413, !3483, !3487, !3491, !3497, !3502, !3506, !3511, !3515, !3519, !3523, !3524, !3528, !3532, !3536, !3541, !3545, !3552, !3553}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3407, file: !14, line: 405, baseType: !3410, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!85, !2660, !606}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3407, file: !14, line: 406, baseType: !3414, size: 64, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!85, !1032, !3417}
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !988, line: 293, size: 1536, elements: !3419)
!3419 = !{!3420, !3450, !3464}
!3420 = !DIDerivedType(tag: DW_TAG_member, scope: !3418, file: !988, line: 295, baseType: !3421, size: 512)
!3421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3418, file: !988, line: 295, size: 512, elements: !3422)
!3422 = !{!3423, !3449}
!3423 = !DIDerivedType(tag: DW_TAG_member, scope: !3421, file: !988, line: 296, baseType: !3424, size: 448)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3421, file: !988, line: 296, size: 448, elements: !3425)
!3425 = !{!3426, !3427, !3436, !3437, !3438, !3447, !3448}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3424, file: !988, line: 298, baseType: !160, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, scope: !3424, file: !988, line: 299, baseType: !3428, size: 128, offset: 64)
!3428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3424, file: !988, line: 299, size: 128, elements: !3429)
!3429 = !{!3430, !3431}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3428, file: !988, line: 300, baseType: !196, size: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, scope: !3428, file: !988, line: 302, baseType: !3432, size: 128)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3428, file: !988, line: 302, size: 128, elements: !3433)
!3433 = !{!3434, !3435}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3432, file: !988, line: 303, baseType: !159, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3432, file: !988, line: 305, baseType: !7, size: 32, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3424, file: !988, line: 310, baseType: !369, size: 64, offset: 192)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3424, file: !988, line: 311, baseType: !160, size: 64, offset: 256)
!3438 = !DIDerivedType(tag: DW_TAG_member, scope: !3424, file: !988, line: 312, baseType: !3439, size: 64, offset: 320)
!3439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3424, file: !988, line: 312, size: 64, elements: !3440)
!3440 = !{!3441, !3442}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3439, file: !988, line: 313, baseType: !159, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3439, file: !988, line: 314, baseType: !3443, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !988, line: 257, baseType: !3444)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !988, line: 255, size: 64, elements: !3445)
!3445 = !{!3446}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3444, file: !988, line: 256, baseType: !160, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3424, file: !988, line: 316, baseType: !244, size: 32, offset: 384)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3424, file: !988, line: 317, baseType: !244, size: 32, offset: 416)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3421, file: !988, line: 323, baseType: !2661, size: 512, align: 128)
!3450 = !DIDerivedType(tag: DW_TAG_member, scope: !3418, file: !988, line: 325, baseType: !3451, size: 512, offset: 512)
!3451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3418, file: !988, line: 325, size: 512, elements: !3452)
!3452 = !{!3453, !3463}
!3453 = !DIDerivedType(tag: DW_TAG_member, scope: !3451, file: !988, line: 326, baseType: !3454, size: 320)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3451, file: !988, line: 326, size: 320, elements: !3455)
!3455 = !{!3456, !3457, !3458, !3459, !3460, !3461, !3462}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3454, file: !988, line: 327, baseType: !160, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3454, file: !988, line: 328, baseType: !160, size: 64, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3454, file: !988, line: 329, baseType: !160, size: 64, offset: 128)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3454, file: !988, line: 331, baseType: !244, size: 32, offset: 192)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3454, file: !988, line: 332, baseType: !244, size: 32, offset: 224)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3454, file: !988, line: 333, baseType: !244, size: 32, offset: 256)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3454, file: !988, line: 335, baseType: !7, size: 32, offset: 288)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3451, file: !988, line: 339, baseType: !2661, size: 512, align: 128)
!3464 = !DIDerivedType(tag: DW_TAG_member, scope: !3418, file: !988, line: 341, baseType: !3465, size: 512, offset: 1024)
!3465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3418, file: !988, line: 341, size: 512, elements: !3466)
!3466 = !{!3467, !3476, !3482}
!3467 = !DIDerivedType(tag: DW_TAG_member, scope: !3465, file: !988, line: 342, baseType: !3468, size: 384)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3465, file: !988, line: 342, size: 384, elements: !3469)
!3469 = !{!3470, !3471, !3472, !3473, !3474, !3475}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3468, file: !988, line: 343, baseType: !160, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3468, file: !988, line: 344, baseType: !160, size: 64, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3468, file: !988, line: 346, baseType: !159, size: 64, offset: 128)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3468, file: !988, line: 347, baseType: !159, size: 64, offset: 192)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3468, file: !988, line: 348, baseType: !159, size: 64, offset: 256)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3468, file: !988, line: 349, baseType: !159, size: 64, offset: 320)
!3476 = !DIDerivedType(tag: DW_TAG_member, scope: !3465, file: !988, line: 352, baseType: !3477, size: 256)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3465, file: !988, line: 352, size: 256, elements: !3478)
!3478 = !{!3479, !3480, !3481}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3477, file: !988, line: 353, baseType: !160, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3477, file: !988, line: 354, baseType: !160, size: 64, offset: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3477, file: !988, line: 356, baseType: !196, size: 128, offset: 128)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3465, file: !988, line: 359, baseType: !2661, size: 512, align: 128)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3407, file: !14, line: 409, baseType: !3484, size: 64, offset: 128)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!85, !369, !606}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3407, file: !14, line: 412, baseType: !3488, size: 64, offset: 192)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!903, !369, !3417}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3407, file: !14, line: 414, baseType: !3492, size: 64, offset: 256)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{null, !3495}
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3407, file: !14, line: 416, baseType: !3498, size: 64, offset: 320)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!85, !1032, !369, !532, !7, !3501, !1444}
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3407, file: !14, line: 419, baseType: !3503, size: 64, offset: 384)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!85, !1032, !369, !532, !7, !7, !2660, !159}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3407, file: !14, line: 424, baseType: !3507, size: 64, offset: 448)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!3510, !369, !3510}
!3510 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !158, line: 131, baseType: !446)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3407, file: !14, line: 425, baseType: !3512, size: 64, offset: 512)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{null, !3417, !341, !341}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3407, file: !14, line: 426, baseType: !3516, size: 64, offset: 576)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!903, !3417, !157}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3407, file: !14, line: 427, baseType: !3520, size: 64, offset: 640)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{null, !3417}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3407, file: !14, line: 428, baseType: !1042, size: 64, offset: 704)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3407, file: !14, line: 433, baseType: !3525, size: 64, offset: 768)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!85, !369, !3417, !3417, !50}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3407, file: !14, line: 435, baseType: !3529, size: 64, offset: 832)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!85, !3417}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3407, file: !14, line: 436, baseType: !3533, size: 64, offset: 896)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!903, !3417, !341, !341}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3407, file: !14, line: 438, baseType: !3537, size: 64, offset: 960)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{null, !3417, !3540, !3540}
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3407, file: !14, line: 439, baseType: !3542, size: 64, offset: 1024)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!85, !369, !2660}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3407, file: !14, line: 442, baseType: !3546, size: 64, offset: 1088)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!85, !3549, !1032, !3551}
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3407, file: !14, line: 444, baseType: !1436, size: 64, offset: 1152)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3407, file: !14, line: 445, baseType: !3554, size: 64, offset: 1216)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!85, !1045, !1067}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !370, file: !14, line: 486, baseType: !160, size: 64, offset: 896)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !370, file: !14, line: 487, baseType: !844, size: 320, offset: 960)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !370, file: !14, line: 488, baseType: !1479, size: 32, offset: 1280)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !370, file: !14, line: 489, baseType: !224, size: 32, offset: 1312)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !370, file: !14, line: 490, baseType: !196, size: 128, offset: 1344)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !370, file: !14, line: 491, baseType: !159, size: 64, offset: 1472)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !360, file: !320, line: 180, baseType: !3564, size: 64, offset: 320)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!326, !1032, !217, !359, !294, !532, !341}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !360, file: !320, line: 182, baseType: !3564, size: 64, offset: 384)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !360, file: !320, line: 184, baseType: !3569, size: 64, offset: 448)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!85, !1032, !217, !359, !1171}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !348, file: !320, line: 90, baseType: !3573, size: 64, offset: 192)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !348, file: !320, line: 91, baseType: !3575, size: 64, offset: 256)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !310, file: !210, line: 120, baseType: !3577, size: 64, offset: 192)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!3580, !277}
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3582)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !3583)
!3583 = !{!3584, !3585, !3589, !3593, !3599, !3603}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3582, file: !58, line: 40, baseType: !57, size: 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3582, file: !58, line: 41, baseType: !3586, size: 64, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!903}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3582, file: !58, line: 42, baseType: !3590, size: 64, offset: 128)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!159}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3582, file: !58, line: 43, baseType: !3594, size: 64, offset: 192)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!1299, !3597}
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3582, file: !58, line: 44, baseType: !3600, size: 64, offset: 256)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!1299}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3582, file: !58, line: 45, baseType: !3175, size: 64, offset: 320)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !310, file: !210, line: 121, baseType: !3605, size: 64, offset: 256)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!1299, !277}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !310, file: !210, line: 122, baseType: !3609, size: 64, offset: 320)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{null, !277, !3612, !3613}
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !209, file: !210, line: 70, baseType: !3615, size: 64, offset: 384)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !547, line: 190, size: 1152, elements: !3617)
!3617 = !{!3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3697, !3698, !3699, !3700, !3701, !3704}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3616, file: !547, line: 191, baseType: !244, size: 32)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3616, file: !547, line: 192, baseType: !244, size: 32, offset: 32)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3616, file: !547, line: 202, baseType: !3615, size: 64, offset: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3616, file: !547, line: 203, baseType: !213, size: 64, offset: 128)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3616, file: !547, line: 205, baseType: !836, size: 192, align: 64, offset: 192)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3616, file: !547, line: 207, baseType: !1299, size: 64, offset: 384)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3616, file: !547, line: 208, baseType: !7, size: 32, offset: 448)
!3625 = !DIDerivedType(tag: DW_TAG_member, scope: !3616, file: !547, line: 209, baseType: !3626, size: 256, offset: 512)
!3626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3616, file: !547, line: 209, size: 256, elements: !3627)
!3627 = !{!3628, !3637, !3641}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3626, file: !547, line: 210, baseType: !3629, size: 256)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !547, line: 153, size: 256, elements: !3630)
!3630 = !{!3631, !3632, !3633, !3636}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3629, file: !547, line: 154, baseType: !160, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3629, file: !547, line: 156, baseType: !1958, size: 64, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3629, file: !547, line: 162, baseType: !3634, size: 64, offset: 128)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !547, line: 162, flags: DIFlagFwdDecl)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3629, file: !547, line: 167, baseType: !160, size: 64, offset: 192)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3626, file: !547, line: 211, baseType: !3638, size: 64)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !547, line: 170, size: 64, elements: !3639)
!3639 = !{!3640}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3638, file: !547, line: 171, baseType: !3615, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3626, file: !547, line: 212, baseType: !3642, size: 256)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !547, line: 174, size: 256, elements: !3643)
!3643 = !{!3644, !3692, !3695, !3696}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3642, file: !547, line: 175, baseType: !3645, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3647)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !547, line: 271, size: 768, elements: !3648)
!3648 = !{!3649, !3669, !3673, !3674, !3675, !3676, !3677, !3681, !3682, !3683, !3684, !3688}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3647, file: !547, line: 276, baseType: !3650, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!85, !3653}
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !547, line: 251, size: 1216, elements: !3655)
!3655 = !{!3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3654, file: !547, line: 253, baseType: !3615, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3654, file: !547, line: 254, baseType: !1032, size: 64, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3654, file: !547, line: 255, baseType: !644, size: 64, offset: 128)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3654, file: !547, line: 256, baseType: !159, size: 64, offset: 192)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3654, file: !547, line: 259, baseType: !656, size: 256, offset: 256)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3654, file: !547, line: 260, baseType: !656, size: 256, offset: 512)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3654, file: !547, line: 261, baseType: !85, size: 32, offset: 768)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3654, file: !547, line: 262, baseType: !196, size: 128, offset: 832)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3654, file: !547, line: 263, baseType: !294, size: 64, offset: 960)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3654, file: !547, line: 265, baseType: !341, size: 64, offset: 1024)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3654, file: !547, line: 266, baseType: !903, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3654, file: !547, line: 267, baseType: !903, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3654, file: !547, line: 268, baseType: !1381, size: 64, offset: 1152)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3647, file: !547, line: 277, baseType: !3670, size: 64, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{null, !3653}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3647, file: !547, line: 290, baseType: !695, size: 64, offset: 128)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3647, file: !547, line: 292, baseType: !682, size: 64, offset: 192)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3647, file: !547, line: 293, baseType: !691, size: 64, offset: 256)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3647, file: !547, line: 294, baseType: !687, size: 64, offset: 320)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3647, file: !547, line: 296, baseType: !3678, size: 64, offset: 384)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!326, !3653, !294, !341, !532}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3647, file: !547, line: 306, baseType: !341, size: 64, offset: 448)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3647, file: !547, line: 313, baseType: !903, size: 8, offset: 512)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3647, file: !547, line: 314, baseType: !3678, size: 64, offset: 576)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3647, file: !547, line: 317, baseType: !3685, size: 64, offset: 640)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!1149, !3653, !1151}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3647, file: !547, line: 320, baseType: !3689, size: 64, offset: 704)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!85, !3653, !1171}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3642, file: !547, line: 176, baseType: !3693, size: 64, offset: 64)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !547, line: 35, flags: DIFlagFwdDecl)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3642, file: !547, line: 177, baseType: !532, size: 64, offset: 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3642, file: !547, line: 178, baseType: !3615, size: 64, offset: 192)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3616, file: !547, line: 215, baseType: !159, size: 64, offset: 768)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3616, file: !547, line: 221, baseType: !446, size: 64, offset: 832)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3616, file: !547, line: 223, baseType: !264, size: 16, offset: 896)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3616, file: !547, line: 224, baseType: !336, size: 16, offset: 912)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3616, file: !547, line: 225, baseType: !3702, size: 64, offset: 960)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !547, line: 36, flags: DIFlagFwdDecl)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3616, file: !547, line: 227, baseType: !714, size: 128, align: 64, offset: 1024)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !209, file: !210, line: 71, baseType: !3706, size: 32, offset: 448)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3707, line: 19, size: 32, elements: !3708)
!3707 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3708 = !{!3709}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3706, file: !3707, line: 20, baseType: !759, size: 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !209, file: !210, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !209, file: !210, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !209, file: !210, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !209, file: !210, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !209, file: !210, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !206, file: !6, line: 47, baseType: !191, size: 64, offset: 512)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !206, file: !6, line: 48, baseType: !217, size: 64, offset: 576)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !206, file: !6, line: 49, baseType: !3718, size: 64, offset: 640)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !206, file: !6, line: 50, baseType: !2174, size: 64, offset: 704)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !192, file: !6, line: 418, baseType: !3722, size: 64, offset: 1408)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3724)
!3724 = !{!3725, !3726, !3731, !3735, !3739, !3743}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3723, file: !6, line: 54, baseType: !332, size: 128)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3723, file: !6, line: 55, baseType: !3727, size: 64, offset: 128)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!326, !3722, !3730, !294}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3723, file: !6, line: 57, baseType: !3732, size: 64, offset: 192)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!326, !3722, !3730, !213, !341}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3723, file: !6, line: 59, baseType: !3736, size: 64, offset: 256)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{null, !191, !213}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3723, file: !6, line: 60, baseType: !3740, size: 64, offset: 320)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!85, !191}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3723, file: !6, line: 61, baseType: !3744, size: 64, offset: 384)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{null, !191}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !192, file: !6, line: 419, baseType: !213, size: 64, offset: 1472)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !192, file: !6, line: 420, baseType: !213, size: 64, offset: 1536)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !192, file: !6, line: 421, baseType: !217, size: 64, offset: 1600)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !192, file: !6, line: 424, baseType: !3751, size: 64, offset: 1664)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3753)
!3753 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !192, file: !6, line: 425, baseType: !3755, size: 64, offset: 1728)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !829)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !192, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !192, file: !6, line: 435, baseType: !656, size: 256, offset: 1856)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !192, file: !6, line: 437, baseType: !3760, size: 64, offset: 2112)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3762, line: 69, size: 320, elements: !3763)
!3762 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3763 = !{!3764, !3765, !3766, !3783, !3785, !3789, !3790}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3761, file: !3762, line: 70, baseType: !213, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3761, file: !3762, line: 71, baseType: !191, size: 64, offset: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3761, file: !3762, line: 72, baseType: !3767, size: 64, offset: 128)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3769)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3762, line: 47, size: 256, elements: !3770)
!3770 = !{!3771, !3772, !3778, !3782}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3769, file: !3762, line: 49, baseType: !7, size: 32)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3769, file: !3762, line: 51, baseType: !3773, size: 64, offset: 64)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!85, !213, !3776}
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3761)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3769, file: !3762, line: 53, baseType: !3779, size: 64, offset: 128)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!85, !294, !3776}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3769, file: !3762, line: 55, baseType: !3175, size: 64, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3761, file: !3762, line: 73, baseType: !3784, size: 16, offset: 192)
!3784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3761, file: !3762, line: 74, baseType: !3786, size: 8, offset: 208)
!3786 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !253, line: 16, baseType: !3787)
!3787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !255, line: 20, baseType: !3788)
!3788 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3761, file: !3762, line: 75, baseType: !252, size: 8, offset: 216)
!3790 = !DIDerivedType(tag: DW_TAG_member, scope: !3761, file: !3762, line: 76, baseType: !3791, size: 64, offset: 256)
!3791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3761, file: !3762, line: 76, size: 64, elements: !3792)
!3792 = !{!3793, !3794, !3801}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3791, file: !3762, line: 77, baseType: !159, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3791, file: !3762, line: 78, baseType: !3795, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3797)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3762, line: 86, size: 128, elements: !3798)
!3798 = !{!3799, !3800}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3797, file: !3762, line: 87, baseType: !7, size: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3797, file: !3762, line: 88, baseType: !294, size: 64, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3791, file: !3762, line: 79, baseType: !3802, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3804)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3762, line: 92, size: 256, elements: !3805)
!3805 = !{!3806, !3807, !3808, !3809, !3810}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3804, file: !3762, line: 94, baseType: !7, size: 32)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3804, file: !3762, line: 95, baseType: !7, size: 32, offset: 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3804, file: !3762, line: 96, baseType: !1779, size: 64, offset: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3804, file: !3762, line: 97, baseType: !3767, size: 64, offset: 128)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3804, file: !3762, line: 98, baseType: !159, size: 64, offset: 192)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !192, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !192, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !192, file: !6, line: 442, baseType: !3751, size: 64, offset: 2240)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !192, file: !6, line: 443, baseType: !3755, size: 64, offset: 2304)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !192, file: !6, line: 444, baseType: !903, size: 8, offset: 2368)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !192, file: !6, line: 451, baseType: !903, size: 8, offset: 2376)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !192, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !192, file: !6, line: 455, baseType: !3819, size: 64, offset: 2432)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3821, line: 23, size: 96, elements: !3822)
!3821 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3822 = !{!3823, !3824, !3825}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3820, file: !3821, line: 24, baseType: !85, size: 32)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3820, file: !3821, line: 24, baseType: !85, size: 32, offset: 32)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3820, file: !3821, line: 24, baseType: !85, size: 32, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !192, file: !6, line: 458, baseType: !3827, size: 64, offset: 2496)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!85}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !192, file: !6, line: 460, baseType: !3831, size: 4032, align: 512, offset: 2560)
!3831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3832, size: 4032, elements: !3846)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3833)
!3833 = !{!3834, !3835, !3836}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3832, file: !6, line: 363, baseType: !159, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3832, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3832, file: !6, line: 367, baseType: !3837, size: 448, offset: 128)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3838)
!3838 = !{!3839, !3840}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3837, file: !6, line: 320, baseType: !191, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3837, file: !6, line: 321, baseType: !3841, size: 384, offset: 64)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3842, line: 40, size: 384, elements: !3843)
!3842 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3843 = !{!3844}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3841, file: !3842, line: 41, baseType: !3845, size: 384, align: 64)
!3845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !836, size: 384, align: 64, elements: !2306)
!3846 = !{!3847}
!3847 = !DISubrange(count: 7)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !192, file: !6, line: 463, baseType: !3849, size: 192, offset: 6592)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3850, line: 8, size: 192, elements: !3851)
!3850 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3851 = !{!3852, !3853, !3854}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3849, file: !3850, line: 10, baseType: !7, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3849, file: !3850, line: 11, baseType: !638, size: 64, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3849, file: !3850, line: 12, baseType: !3855, size: 64, offset: 128)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3857, line: 59, size: 48, elements: !3858)
!3857 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3858 = !{!3859, !3860, !3861, !3862, !3863, !3864}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3856, file: !3857, line: 60, baseType: !1316, size: 16)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3856, file: !3857, line: 61, baseType: !1316, size: 16, offset: 16)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3856, file: !3857, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3856, file: !3857, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3856, file: !3857, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3856, file: !3857, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !192, file: !6, line: 465, baseType: !160, size: 64, offset: 6784)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !192, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !192, file: !6, line: 470, baseType: !196, size: 128, offset: 6912)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !192, file: !6, line: 471, baseType: !3869, size: 64, offset: 7040)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3871, line: 33, size: 96, elements: !3872)
!3871 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3872 = !{!3873, !3874, !3875, !3876}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3870, file: !3871, line: 37, baseType: !85, size: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3870, file: !3871, line: 43, baseType: !85, size: 32, offset: 32)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3870, file: !3871, line: 45, baseType: !264, size: 16, offset: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3870, file: !3871, line: 47, baseType: !264, size: 16, offset: 80)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !192, file: !6, line: 476, baseType: !3878, size: 64, offset: 7104)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !3880)
!3880 = !{!3881, !3897, !3898, !3899}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3879, file: !6, line: 379, baseType: !3882, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3884, line: 204, baseType: !3885)
!3884 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3884, line: 197, size: 192, elements: !3886)
!3886 = !{!3887, !3889, !3890, !3891, !3893, !3895}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3885, file: !3884, line: 198, baseType: !3888, size: 32)
!3888 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3884, line: 21, baseType: !443)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3885, file: !3884, line: 199, baseType: !256, size: 8, offset: 32)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3885, file: !3884, line: 200, baseType: !256, size: 8, offset: 40)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3885, file: !3884, line: 201, baseType: !3892, size: 16, offset: 48)
!3892 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3884, line: 17, baseType: !263)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3885, file: !3884, line: 202, baseType: !3894, size: 64, offset: 64)
!3894 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3884, line: 16, baseType: !447)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3885, file: !3884, line: 203, baseType: !3896, size: 64, offset: 128)
!3896 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3884, line: 22, baseType: !447)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3879, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3879, file: !6, line: 381, baseType: !294, size: 64, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3879, file: !6, line: 382, baseType: !294, size: 64, offset: 192)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !192, file: !6, line: 477, baseType: !3879, size: 256, offset: 7168)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !192, file: !6, line: 480, baseType: !3902, size: 64, offset: 7424)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !192, file: !6, line: 483, baseType: !3905, size: 64, offset: 7488)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !192, file: !6, line: 488, baseType: !294, size: 64, offset: 7552)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !192, file: !6, line: 492, baseType: !159, size: 64, offset: 7616)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !192, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !192, file: !6, line: 495, baseType: !159, size: 64, offset: 7744)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !192, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !192, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !192, file: !6, line: 500, baseType: !3914, size: 64, offset: 7872)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3916, line: 45, baseType: !3917)
!3916 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !192, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !192, file: !6, line: 504, baseType: !3920, size: 64, offset: 8000)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3923, line: 96, size: 192, elements: !3924)
!3923 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3924 = !{!3925, !3926, !3969, !3971}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3922, file: !3923, line: 97, baseType: !7, size: 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3922, file: !3923, line: 98, baseType: !3927, size: 64, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3923, line: 24, size: 3072, elements: !3929)
!3929 = !{!3930, !3932, !3933, !3934, !3935, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3966, !3967, !3968}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3928, file: !3923, line: 26, baseType: !3931, size: 128)
!3931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 128, elements: !2306)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3928, file: !3923, line: 27, baseType: !3931, size: 128, offset: 128)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3928, file: !3923, line: 28, baseType: !85, size: 32, offset: 256)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3928, file: !3923, line: 31, baseType: !224, size: 32, align: 512, offset: 512)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3928, file: !3923, line: 32, baseType: !3936, size: 960, offset: 576)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3937, line: 206, size: 960, elements: !3938)
!3937 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3938 = !{!3939, !3940, !3943, !3945, !3946, !3948}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3936, file: !3937, line: 207, baseType: !717, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3936, file: !3937, line: 208, baseType: !3941, size: 256, offset: 64)
!3941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3942, size: 256, elements: !768)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3936, file: !3937, line: 209, baseType: !3944, size: 256, offset: 320)
!3944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 256, elements: !768)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3936, file: !3937, line: 213, baseType: !330, size: 64, offset: 576)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3936, file: !3937, line: 215, baseType: !3947, size: 256, offset: 640)
!3947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 256, elements: !768)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3936, file: !3937, line: 216, baseType: !252, size: 8, offset: 896)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3928, file: !3923, line: 33, baseType: !160, size: 64, offset: 1536)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3928, file: !3923, line: 34, baseType: !160, size: 64, offset: 1600)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3928, file: !3923, line: 35, baseType: !903, size: 8, offset: 1664)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3928, file: !3923, line: 36, baseType: !2813, size: 320, offset: 1728)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3928, file: !3923, line: 37, baseType: !1338, size: 256, offset: 2048)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3928, file: !3923, line: 38, baseType: !714, size: 128, align: 64, offset: 2304)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3928, file: !3923, line: 39, baseType: !3956, size: 64, offset: 2432)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3923, line: 49, size: 768, elements: !3958)
!3958 = !{!3959, !3960, !3961, !3962, !3963, !3964, !3965}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3957, file: !3923, line: 50, baseType: !224, size: 32)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3957, file: !3923, line: 51, baseType: !3944, size: 256, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3957, file: !3923, line: 53, baseType: !3944, size: 256, offset: 320)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3957, file: !3923, line: 54, baseType: !160, size: 64, offset: 576)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3957, file: !3923, line: 55, baseType: !3956, size: 64, offset: 640)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3957, file: !3923, line: 56, baseType: !85, size: 32, offset: 704)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3957, file: !3923, line: 57, baseType: !85, size: 32, offset: 736)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3928, file: !3923, line: 40, baseType: !160, size: 64, offset: 2496)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3928, file: !3923, line: 42, baseType: !85, size: 32, offset: 2560)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3928, file: !3923, line: 43, baseType: !3921, size: 64, offset: 2624)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3922, file: !3923, line: 99, baseType: !3970, offset: 128)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !574, line: 211, elements: !575)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3922, file: !3923, line: 100, baseType: !3972, size: 64, offset: 128)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3923, line: 63, size: 3008, elements: !3974)
!3974 = !{!3975, !3976, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !4004}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3973, file: !3923, line: 64, baseType: !3956, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3973, file: !3923, line: 65, baseType: !3977, size: 192, offset: 64)
!3977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3956, size: 192, elements: !295)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3973, file: !3923, line: 67, baseType: !85, size: 32, offset: 256)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3973, file: !3923, line: 68, baseType: !656, size: 256, offset: 320)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3973, file: !3923, line: 69, baseType: !224, size: 32, offset: 576)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3973, file: !3923, line: 70, baseType: !656, size: 256, offset: 640)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3973, file: !3923, line: 71, baseType: !160, size: 64, offset: 896)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3973, file: !3923, line: 72, baseType: !160, size: 64, offset: 960)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3973, file: !3923, line: 73, baseType: !160, size: 64, offset: 1024)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3973, file: !3923, line: 74, baseType: !160, size: 64, offset: 1088)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3973, file: !3923, line: 75, baseType: !160, size: 64, offset: 1152)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3973, file: !3923, line: 76, baseType: !160, size: 64, offset: 1216)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3973, file: !3923, line: 77, baseType: !160, size: 64, offset: 1280)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3973, file: !3923, line: 78, baseType: !160, size: 64, offset: 1344)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3973, file: !3923, line: 79, baseType: !903, size: 8, offset: 1408)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3973, file: !3923, line: 80, baseType: !160, size: 64, offset: 1472)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3973, file: !3923, line: 81, baseType: !656, size: 256, offset: 1536)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3973, file: !3923, line: 82, baseType: !2175, size: 256, offset: 1792)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3973, file: !3923, line: 84, baseType: !244, size: 32, offset: 2048)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3973, file: !3923, line: 87, baseType: !160, size: 64, offset: 2112)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3973, file: !3923, line: 88, baseType: !160, size: 64, offset: 2176)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3973, file: !3923, line: 89, baseType: !3998, size: 704, offset: 2240)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1339, line: 111, size: 704, elements: !3999)
!3999 = !{!4000, !4001, !4002, !4003}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3998, file: !1339, line: 112, baseType: !1338, size: 256)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3998, file: !1339, line: 113, baseType: !2813, size: 320, offset: 256)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3998, file: !1339, line: 116, baseType: !3107, size: 64, offset: 576)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3998, file: !1339, line: 117, baseType: !85, size: 32, offset: 640)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3973, file: !3923, line: 90, baseType: !3921, size: 64, offset: 2944)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !192, file: !6, line: 515, baseType: !4006, size: 64, offset: 8064)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4008, line: 117, size: 128, elements: !4009)
!4008 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4009 = !{!4010, !4011, !4012}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4007, file: !4008, line: 118, baseType: !829, size: 32)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4007, file: !4008, line: 119, baseType: !829, size: 32, offset: 32)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4007, file: !4008, line: 120, baseType: !330, size: 64, offset: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !192, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !192, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !192, file: !6, line: 520, baseType: !4016, size: 64, offset: 8192)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !192, file: !6, line: 523, baseType: !4018, size: 64, offset: 8256)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !192, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !192, file: !6, line: 525, baseType: !4023, size: 64, offset: 8384)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !192, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !192, file: !6, line: 533, baseType: !159, size: 64, offset: 8512)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !192, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !192, file: !6, line: 535, baseType: !4030, size: 64, offset: 8640)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !192, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !192, file: !6, line: 539, baseType: !85, size: 32, offset: 8736)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !192, file: !6, line: 540, baseType: !4034, size: 64, offset: 8768)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4036, line: 32, size: 64, elements: !4037)
!4036 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4037 = !{!4038, !4039}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4035, file: !4036, line: 33, baseType: !829, size: 32)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4035, file: !4036, line: 34, baseType: !829, size: 32, offset: 32)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !192, file: !6, line: 563, baseType: !196, size: 128, offset: 8832)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !192, file: !6, line: 565, baseType: !196, size: 128, offset: 8960)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !192, file: !6, line: 568, baseType: !4043, size: 64, offset: 9088)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !192, file: !6, line: 570, baseType: !244, size: 32, offset: 9152)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !167, file: !118, line: 94, baseType: !159, size: 64, offset: 3200)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !167, file: !118, line: 95, baseType: !4047, size: 64, offset: 3264)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{null, !166}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !167, file: !118, line: 97, baseType: !196, size: 128, offset: 3328)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_dev", scope: !167, file: !118, line: 99, baseType: !4052, size: 64, offset: 3456)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !4054)
!4054 = !{!4055, !4056, !4057, !4060, !4061, !4114, !4184, !4185, !4186, !4187, !4188, !4195, !4287, !4300, !4310, !4314, !4316, !4317, !4318, !4322, !4329, !4330, !4333, !4336, !4340, !4343, !4344, !4345, !4346, !4347, !4348, !4378, !4379, !4380, !4383, !4386, !4395, !4396, !4397, !4398, !4399, !4400}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4053, file: !70, line: 706, baseType: !209, size: 512)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4053, file: !70, line: 707, baseType: !4052, size: 64, offset: 512)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4053, file: !70, line: 709, baseType: !4058, size: 64, offset: 576)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4053, file: !70, line: 711, baseType: !213, size: 64, offset: 640)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4053, file: !70, line: 712, baseType: !4062, size: 64, offset: 704)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4064)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !4065)
!4065 = !{!4066, !4067, !4068, !4074, !4079, !4083}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4064, file: !70, line: 90, baseType: !213, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4064, file: !70, line: 91, baseType: !345, size: 64, offset: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4064, file: !70, line: 92, baseType: !4069, size: 64, offset: 128)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!85, !4072, !289}
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4053)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4064, file: !70, line: 93, baseType: !4075, size: 64, offset: 192)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!294, !4072, !4078, !3612, !3613}
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4064, file: !70, line: 95, baseType: !4080, size: 64, offset: 256)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{null, !4052}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4064, file: !70, line: 97, baseType: !4084, size: 64, offset: 320)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4086)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !4087)
!4087 = !{!4088, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4086, file: !77, line: 287, baseType: !4089, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!85, !4052}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4086, file: !77, line: 288, baseType: !4080, size: 64, offset: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4086, file: !77, line: 289, baseType: !4089, size: 64, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4086, file: !77, line: 290, baseType: !4089, size: 64, offset: 192)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4086, file: !77, line: 291, baseType: !4089, size: 64, offset: 256)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4086, file: !77, line: 292, baseType: !4089, size: 64, offset: 320)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4086, file: !77, line: 293, baseType: !4089, size: 64, offset: 384)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4086, file: !77, line: 294, baseType: !4089, size: 64, offset: 448)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4086, file: !77, line: 295, baseType: !4089, size: 64, offset: 512)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4086, file: !77, line: 296, baseType: !4089, size: 64, offset: 576)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4086, file: !77, line: 297, baseType: !4089, size: 64, offset: 640)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4086, file: !77, line: 298, baseType: !4089, size: 64, offset: 704)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4086, file: !77, line: 299, baseType: !4089, size: 64, offset: 768)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4086, file: !77, line: 300, baseType: !4089, size: 64, offset: 832)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4086, file: !77, line: 301, baseType: !4089, size: 64, offset: 896)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4086, file: !77, line: 302, baseType: !4089, size: 64, offset: 960)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4086, file: !77, line: 303, baseType: !4089, size: 64, offset: 1024)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4086, file: !77, line: 304, baseType: !4089, size: 64, offset: 1088)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4086, file: !77, line: 305, baseType: !4089, size: 64, offset: 1152)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4086, file: !77, line: 306, baseType: !4089, size: 64, offset: 1216)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4086, file: !77, line: 307, baseType: !4089, size: 64, offset: 1280)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4086, file: !77, line: 308, baseType: !4089, size: 64, offset: 1344)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4086, file: !77, line: 309, baseType: !4089, size: 64, offset: 1408)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4053, file: !70, line: 714, baseType: !4115, size: 64, offset: 768)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4117)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4118, line: 80, size: 1344, elements: !4119)
!4118 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4119 = !{!4120, !4121, !4122, !4123, !4124, !4125, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4183}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4117, file: !4118, line: 81, baseType: !213, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4117, file: !4118, line: 82, baseType: !213, size: 64, offset: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4117, file: !4118, line: 83, baseType: !345, size: 64, offset: 128)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4117, file: !4118, line: 84, baseType: !345, size: 64, offset: 192)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4117, file: !4118, line: 85, baseType: !345, size: 64, offset: 256)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4117, file: !4118, line: 87, baseType: !4126, size: 64, offset: 320)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!85, !4052, !4129}
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !64, line: 96, size: 1152, elements: !4131)
!4131 = !{!4132, !4133, !4134, !4135, !4136, !4137, !4138, !4142, !4146, !4147, !4148, !4149, !4150, !4158, !4159, !4160, !4161, !4162, !4163}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4130, file: !64, line: 97, baseType: !213, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4130, file: !64, line: 98, baseType: !4115, size: 64, offset: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4130, file: !64, line: 100, baseType: !191, size: 64, offset: 128)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4130, file: !64, line: 101, baseType: !213, size: 64, offset: 192)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4130, file: !64, line: 103, baseType: !903, size: 8, offset: 256)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4130, file: !64, line: 104, baseType: !63, size: 32, offset: 288)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4130, file: !64, line: 106, baseType: !4139, size: 64, offset: 320)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4141)
!4141 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !64, line: 106, flags: DIFlagFwdDecl)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4130, file: !64, line: 107, baseType: !4143, size: 64, offset: 384)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4145)
!4145 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !64, line: 107, flags: DIFlagFwdDecl)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4130, file: !64, line: 109, baseType: !4089, size: 64, offset: 448)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4130, file: !64, line: 110, baseType: !4080, size: 64, offset: 512)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4130, file: !64, line: 111, baseType: !4089, size: 64, offset: 576)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4130, file: !64, line: 112, baseType: !4080, size: 64, offset: 640)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4130, file: !64, line: 113, baseType: !4151, size: 64, offset: 704)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!85, !4052, !4154}
!4154 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4155)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4156)
!4156 = !{!4157}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4155, file: !77, line: 59, baseType: !85, size: 32)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4130, file: !64, line: 114, baseType: !4089, size: 64, offset: 768)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4130, file: !64, line: 115, baseType: !345, size: 64, offset: 832)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4130, file: !64, line: 116, baseType: !345, size: 64, offset: 896)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4130, file: !64, line: 118, baseType: !4084, size: 64, offset: 960)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4130, file: !64, line: 119, baseType: !4080, size: 64, offset: 1024)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4130, file: !64, line: 121, baseType: !4164, size: 64, offset: 1088)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !64, line: 121, flags: DIFlagFwdDecl)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4117, file: !4118, line: 88, baseType: !4069, size: 64, offset: 384)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4117, file: !4118, line: 89, baseType: !4089, size: 64, offset: 448)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4117, file: !4118, line: 90, baseType: !4080, size: 64, offset: 512)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4117, file: !4118, line: 91, baseType: !4080, size: 64, offset: 576)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4117, file: !4118, line: 92, baseType: !4080, size: 64, offset: 640)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4117, file: !4118, line: 94, baseType: !4089, size: 64, offset: 704)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4117, file: !4118, line: 95, baseType: !4089, size: 64, offset: 768)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4117, file: !4118, line: 97, baseType: !4151, size: 64, offset: 832)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4117, file: !4118, line: 98, baseType: !4089, size: 64, offset: 896)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4117, file: !4118, line: 100, baseType: !4089, size: 64, offset: 960)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4117, file: !4118, line: 102, baseType: !4089, size: 64, offset: 1024)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4117, file: !4118, line: 103, baseType: !4080, size: 64, offset: 1088)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4117, file: !4118, line: 105, baseType: !4084, size: 64, offset: 1152)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4117, file: !4118, line: 107, baseType: !4180, size: 64, offset: 1216)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4182)
!4182 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4118, line: 107, flags: DIFlagFwdDecl)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4117, file: !4118, line: 109, baseType: !903, size: 8, offset: 1280)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4053, file: !70, line: 715, baseType: !4129, size: 64, offset: 832)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4053, file: !70, line: 717, baseType: !159, size: 64, offset: 896)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4053, file: !70, line: 719, baseType: !159, size: 64, offset: 960)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4053, file: !70, line: 721, baseType: !656, size: 256, offset: 1024)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4053, file: !70, line: 725, baseType: !4189, size: 448, offset: 1280)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4190)
!4190 = !{!4191, !4192, !4193, !4194}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4189, file: !70, line: 518, baseType: !196, size: 128)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4189, file: !70, line: 519, baseType: !196, size: 128, offset: 128)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4189, file: !70, line: 520, baseType: !196, size: 128, offset: 256)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4189, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4053, file: !70, line: 726, baseType: !4196, size: 2496, offset: 1728)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4197)
!4197 = !{!4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4280, !4284}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4196, file: !77, line: 664, baseType: !4154, size: 32)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4196, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4196, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4196, file: !77, line: 667, baseType: !903, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4196, file: !77, line: 668, baseType: !903, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4196, file: !77, line: 669, baseType: !903, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4196, file: !77, line: 670, baseType: !903, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4196, file: !77, line: 671, baseType: !903, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4196, file: !77, line: 672, baseType: !903, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4196, file: !77, line: 673, baseType: !903, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4196, file: !77, line: 674, baseType: !903, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4196, file: !77, line: 675, baseType: !442, size: 32, offset: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4196, file: !77, line: 676, baseType: !224, size: 32, offset: 96)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4196, file: !77, line: 678, baseType: !196, size: 128, offset: 128)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4196, file: !77, line: 679, baseType: !2175, size: 256, offset: 256)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4196, file: !77, line: 680, baseType: !4214, size: 64, offset: 512)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4216, line: 43, size: 1536, elements: !4217)
!4216 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4217 = !{!4218, !4219, !4220, !4221, !4222, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4215, file: !4216, line: 44, baseType: !213, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4215, file: !4216, line: 45, baseType: !85, size: 32, offset: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4215, file: !4216, line: 46, baseType: !196, size: 128, offset: 128)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4215, file: !4216, line: 47, baseType: !224, size: 32, offset: 256)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4215, file: !4216, line: 48, baseType: !4223, size: 64, offset: 320)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4215, file: !4216, line: 49, baseType: !2813, size: 320, offset: 384)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4215, file: !4216, line: 50, baseType: !160, size: 64, offset: 704)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4215, file: !4216, line: 51, baseType: !1904, size: 64, offset: 768)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4215, file: !4216, line: 52, baseType: !1904, size: 64, offset: 832)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4215, file: !4216, line: 53, baseType: !1904, size: 64, offset: 896)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4215, file: !4216, line: 54, baseType: !1904, size: 64, offset: 960)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4215, file: !4216, line: 55, baseType: !1904, size: 64, offset: 1024)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4215, file: !4216, line: 56, baseType: !160, size: 64, offset: 1088)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4215, file: !4216, line: 57, baseType: !160, size: 64, offset: 1152)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4215, file: !4216, line: 58, baseType: !160, size: 64, offset: 1216)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4215, file: !4216, line: 59, baseType: !160, size: 64, offset: 1280)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4215, file: !4216, line: 60, baseType: !160, size: 64, offset: 1344)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4215, file: !4216, line: 61, baseType: !4052, size: 64, offset: 1408)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4215, file: !4216, line: 62, baseType: !903, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4215, file: !4216, line: 63, baseType: !903, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4196, file: !77, line: 681, baseType: !903, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4196, file: !77, line: 682, baseType: !903, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4196, file: !77, line: 683, baseType: !903, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4196, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4196, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4196, file: !77, line: 690, baseType: !1896, size: 512, offset: 640)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4196, file: !77, line: 691, baseType: !446, size: 64, offset: 1152)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4196, file: !77, line: 692, baseType: !1338, size: 256, offset: 1216)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4196, file: !77, line: 693, baseType: !772, size: 192, offset: 1472)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4196, file: !77, line: 694, baseType: !4223, size: 64, offset: 1664)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4196, file: !77, line: 695, baseType: !244, size: 32, offset: 1728)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4196, file: !77, line: 696, baseType: !244, size: 32, offset: 1760)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4196, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4196, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4196, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4196, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4196, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4196, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4196, file: !77, line: 703, baseType: !903, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4196, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4196, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4196, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4196, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4196, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4196, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4196, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4196, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4196, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4196, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4196, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4196, file: !77, line: 715, baseType: !446, size: 64, offset: 2048)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4196, file: !77, line: 716, baseType: !446, size: 64, offset: 2112)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4196, file: !77, line: 717, baseType: !446, size: 64, offset: 2176)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4196, file: !77, line: 718, baseType: !446, size: 64, offset: 2240)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4196, file: !77, line: 720, baseType: !4275, size: 64, offset: 2304)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4277)
!4277 = !{!4278, !4279}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4276, file: !77, line: 633, baseType: !224, size: 32)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4276, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4196, file: !77, line: 721, baseType: !4281, size: 64, offset: 2368)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{null, !4052, !829}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4196, file: !77, line: 722, baseType: !4285, size: 64, offset: 2432)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4053, file: !70, line: 727, baseType: !4288, size: 64, offset: 4224)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4290)
!4290 = !{!4291, !4292, !4293, !4297, !4298, !4299}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4289, file: !77, line: 743, baseType: !4086, size: 1472)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4289, file: !77, line: 744, baseType: !4089, size: 64, offset: 1472)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4289, file: !77, line: 745, baseType: !4294, size: 64, offset: 1536)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{null, !4052, !903}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4289, file: !77, line: 746, baseType: !4089, size: 64, offset: 1600)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4289, file: !77, line: 747, baseType: !4080, size: 64, offset: 1664)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4289, file: !77, line: 748, baseType: !4080, size: 64, offset: 1728)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4053, file: !70, line: 736, baseType: !4301, size: 128, offset: 4288)
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4302)
!4302 = !{!4303, !4307}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4301, file: !70, line: 531, baseType: !4304, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4306, line: 13, flags: DIFlagFwdDecl)
!4306 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4301, file: !70, line: 532, baseType: !4308, size: 64, offset: 64)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4053, file: !70, line: 738, baseType: !4311, size: 64, offset: 4416)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4313)
!4313 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4053, file: !70, line: 740, baseType: !4315, size: 64, offset: 4480)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4053, file: !70, line: 741, baseType: !446, size: 64, offset: 4544)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4053, file: !70, line: 746, baseType: !446, size: 64, offset: 4608)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4053, file: !70, line: 747, baseType: !4319, size: 64, offset: 4672)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4321)
!4321 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4053, file: !70, line: 749, baseType: !4323, size: 64, offset: 4736)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4325)
!4325 = !{!4326, !4327, !4328}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4324, file: !70, line: 433, baseType: !7, size: 32)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4324, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4324, file: !70, line: 435, baseType: !160, size: 64, offset: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4053, file: !70, line: 751, baseType: !196, size: 128, offset: 4800)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4053, file: !70, line: 762, baseType: !4331, size: 64, offset: 4928)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4053, file: !70, line: 770, baseType: !4334, offset: 4992)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4335, line: 5, elements: !575)
!4335 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4053, file: !70, line: 772, baseType: !4337, size: 64, offset: 4992)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4339, line: 18, flags: DIFlagFwdDecl)
!4339 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4053, file: !70, line: 773, baseType: !4341, size: 64, offset: 5056)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4118, line: 22, flags: DIFlagFwdDecl)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4053, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4053, file: !70, line: 778, baseType: !527, size: 32, offset: 5152)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4053, file: !70, line: 779, baseType: !442, size: 32, offset: 5184)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4053, file: !70, line: 781, baseType: !224, size: 32, offset: 5216)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4053, file: !70, line: 782, baseType: !196, size: 128, offset: 5248)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4053, file: !70, line: 784, baseType: !4349, size: 64, offset: 5376)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4351)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4352, line: 52, size: 768, elements: !4353)
!4352 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4353 = !{!4354, !4355, !4356, !4357, !4358, !4362, !4366, !4367, !4368, !4369, !4373, !4377}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4351, file: !4352, line: 53, baseType: !213, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4351, file: !4352, line: 55, baseType: !345, size: 64, offset: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4351, file: !4352, line: 56, baseType: !345, size: 64, offset: 128)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4351, file: !4352, line: 58, baseType: !4069, size: 64, offset: 192)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4351, file: !4352, line: 59, baseType: !4359, size: 64, offset: 256)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!294, !4072, !4078}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4351, file: !4352, line: 61, baseType: !4363, size: 64, offset: 320)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{null, !4349}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4351, file: !4352, line: 62, baseType: !4080, size: 64, offset: 384)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4351, file: !4352, line: 64, baseType: !4089, size: 64, offset: 448)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4351, file: !4352, line: 66, baseType: !3580, size: 64, offset: 512)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4351, file: !4352, line: 67, baseType: !4370, size: 64, offset: 576)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!1299, !4072}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4351, file: !4352, line: 69, baseType: !4374, size: 64, offset: 640)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{null, !4072, !3612, !3613}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4351, file: !4352, line: 71, baseType: !4084, size: 64, offset: 704)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4053, file: !70, line: 785, baseType: !345, size: 64, offset: 5440)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4053, file: !70, line: 787, baseType: !4080, size: 64, offset: 5504)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4053, file: !70, line: 788, baseType: !4381, size: 64, offset: 5568)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4053, file: !70, line: 789, baseType: !4384, size: 64, offset: 5632)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4053, file: !70, line: 791, baseType: !4387, size: 64, offset: 5696)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4389)
!4389 = !{!4390, !4391, !4392, !4393, !4394}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4388, file: !70, line: 598, baseType: !92, size: 32)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4388, file: !70, line: 599, baseType: !101, size: 32, offset: 32)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4388, file: !70, line: 600, baseType: !106, size: 32, offset: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4388, file: !70, line: 601, baseType: !903, size: 8, offset: 96)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4388, file: !70, line: 602, baseType: !903, size: 8, offset: 104)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4053, file: !70, line: 793, baseType: !111, size: 32, offset: 5760)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4053, file: !70, line: 795, baseType: !903, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4053, file: !70, line: 796, baseType: !903, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4053, file: !70, line: 797, baseType: !903, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4053, file: !70, line: 798, baseType: !903, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4053, file: !70, line: 799, baseType: !903, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "last_numid", scope: !167, file: !118, line: 100, baseType: !7, size: 32, offset: 3520)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "controls_rwsem", scope: !167, file: !118, line: 101, baseType: !844, size: 320, offset: 3584)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files_rwlock", scope: !167, file: !118, line: 102, baseType: !734, size: 64, offset: 3904)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "controls_count", scope: !167, file: !118, line: 103, baseType: !85, size: 32, offset: 3968)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "user_ctl_alloc_size", scope: !167, file: !118, line: 104, baseType: !341, size: 64, offset: 4032)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "controls", scope: !167, file: !118, line: 105, baseType: !196, size: 128, offset: 4096)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files", scope: !167, file: !118, line: 106, baseType: !196, size: 128, offset: 4224)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_numids", scope: !167, file: !118, line: 108, baseType: !1112, size: 128, offset: 4352)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash", scope: !167, file: !118, line: 109, baseType: !1112, size: 128, offset: 4480)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash_collision", scope: !167, file: !118, line: 110, baseType: !903, size: 8, offset: 4608)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root", scope: !167, file: !118, line: 113, baseType: !4412, size: 64, offset: 4672)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry", file: !4414, line: 60, size: 1216, elements: !4415)
!4414 = !DIFile(filename: "./include/sound/info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "060f8a4a29808d9f7cc7b628d26ba172")
!4415 = !{!4416, !4417, !4418, !4419, !4420, !4479, !4480, !4481, !4482, !4486, !4489, !4490, !4491}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4413, file: !4414, line: 61, baseType: !213, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4413, file: !4414, line: 62, baseType: !336, size: 16, offset: 64)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4413, file: !4414, line: 63, baseType: !330, size: 64, offset: 128)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !4413, file: !4414, line: 64, baseType: !264, size: 16, offset: 192)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !4413, file: !4414, line: 68, baseType: !4421, size: 128, offset: 256)
!4421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4413, file: !4414, line: 65, size: 128, elements: !4422)
!4422 = !{!4423, !4440}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !4421, file: !4414, line: 66, baseType: !4424, size: 128)
!4424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry_text", file: !4414, line: 29, size: 128, elements: !4425)
!4425 = !{!4426, !4439}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4424, file: !4414, line: 30, baseType: !4427, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{null, !4412, !4430}
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_buffer", file: !4414, line: 15, size: 256, elements: !4432)
!4432 = !{!4433, !4434, !4435, !4436, !4437, !4438}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4431, file: !4414, line: 16, baseType: !294, size: 64)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !4431, file: !4414, line: 17, baseType: !7, size: 32, offset: 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4431, file: !4414, line: 18, baseType: !7, size: 32, offset: 96)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4431, file: !4414, line: 19, baseType: !7, size: 32, offset: 128)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4431, file: !4414, line: 20, baseType: !85, size: 32, offset: 160)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4431, file: !4414, line: 21, baseType: !85, size: 32, offset: 192)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4424, file: !4414, line: 32, baseType: !4427, size: 64, offset: 64)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4421, file: !4414, line: 67, baseType: !4441, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4443)
!4443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry_ops", file: !4414, line: 36, size: 512, elements: !4444)
!4444 = !{!4445, !4449, !4453, !4457, !4461, !4465, !4471, !4475}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4443, file: !4414, line: 37, baseType: !4446, size: 64)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!85, !4412, !264, !1444}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4443, file: !4414, line: 39, baseType: !4450, size: 64, offset: 64)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!85, !4412, !264, !159}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4443, file: !4414, line: 41, baseType: !4454, size: 64, offset: 128)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{!326, !4412, !159, !1032, !294, !341, !532}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4443, file: !4414, line: 44, baseType: !4458, size: 64, offset: 192)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!326, !4412, !159, !1032, !213, !341, !532}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4443, file: !4414, line: 47, baseType: !4462, size: 64, offset: 256)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!532, !4412, !159, !1032, !532, !85}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4443, file: !4414, line: 50, baseType: !4466, size: 64, offset: 320)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!1149, !4412, !159, !1032, !4469}
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !1153, line: 40, baseType: !1152)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4443, file: !4414, line: 53, baseType: !4472, size: 64, offset: 384)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!85, !4412, !159, !1032, !7, !160}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4443, file: !4414, line: 55, baseType: !4476, size: 64, offset: 448)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!85, !4412, !159, !373, !1032, !1171}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4413, file: !4414, line: 69, baseType: !4412, size: 64, offset: 384)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4413, file: !4414, line: 70, baseType: !191, size: 64, offset: 448)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4413, file: !4414, line: 71, baseType: !159, size: 64, offset: 512)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !4413, file: !4414, line: 72, baseType: !4483, size: 64, offset: 576)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{null, !4412}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4413, file: !4414, line: 73, baseType: !4487, size: 64, offset: 640)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !118, line: 114, flags: DIFlagFwdDecl)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !4413, file: !4414, line: 74, baseType: !656, size: 256, offset: 704)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4413, file: !4414, line: 75, baseType: !196, size: 128, offset: 960)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4413, file: !4414, line: 76, baseType: !196, size: 128, offset: 1088)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root_link", scope: !167, file: !118, line: 114, baseType: !4487, size: 64, offset: 4736)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "files_list", scope: !167, file: !118, line: 116, baseType: !196, size: 128, offset: 4800)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "s_f_ops", scope: !167, file: !118, line: 117, baseType: !4495, size: 64, offset: 4928)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_shutdown_f_ops", file: !118, line: 117, flags: DIFlagFwdDecl)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !167, file: !118, line: 119, baseType: !224, size: 32, offset: 4992)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !167, file: !118, line: 120, baseType: !85, size: 32, offset: 5024)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "release_completion", scope: !167, file: !118, line: 121, baseType: !2174, size: 64, offset: 5056)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !167, file: !118, line: 122, baseType: !4052, size: 64, offset: 5120)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "card_dev", scope: !167, file: !118, line: 123, baseType: !4053, size: 5824, offset: 5184)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !167, file: !118, line: 124, baseType: !4503, size: 256, offset: 11008)
!4503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 256, elements: !768)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !167, file: !118, line: 125, baseType: !903, size: 8, offset: 11264)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !167, file: !118, line: 126, baseType: !903, size: 8, offset: 11272)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "releasing", scope: !167, file: !118, line: 127, baseType: !903, size: 8, offset: 11280)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "sync_irq", scope: !167, file: !118, line: 128, baseType: !85, size: 32, offset: 11296)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "remove_sleep", scope: !167, file: !118, line: 129, baseType: !772, size: 192, offset: 11328)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "total_pcm_alloc_bytes", scope: !167, file: !118, line: 131, baseType: !341, size: 64, offset: 11520)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "memory_mutex", scope: !167, file: !118, line: 132, baseType: !656, size: 256, offset: 11584)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !167, file: !118, line: 138, baseType: !7, size: 32, offset: 11840)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref", scope: !167, file: !118, line: 139, baseType: !244, size: 32, offset: 11872)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "power_sleep", scope: !167, file: !118, line: 140, baseType: !772, size: 192, offset: 11904)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref_sleep", scope: !167, file: !118, line: 141, baseType: !772, size: 192, offset: 12096)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !162, file: !163, line: 41, baseType: !196, size: 128, offset: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !162, file: !163, line: 42, baseType: !85, size: 32, offset: 192)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !162, file: !163, line: 43, baseType: !177, size: 256, offset: 224)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !162, file: !163, line: 44, baseType: !181, size: 640, offset: 480)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "iface", scope: !162, file: !163, line: 45, baseType: !85, size: 32, offset: 1120)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !162, file: !163, line: 52, baseType: !4521, size: 704, offset: 1152)
!4521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_hwdep_ops", file: !163, line: 16, size: 704, elements: !4522)
!4522 = !{!4523, !4527, !4531, !4535, !4539, !4540, !4544, !4548, !4549, !4553, !4568}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4521, file: !163, line: 17, baseType: !4524, size: 64)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{!534, !161, !1032, !534, !85}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4521, file: !163, line: 19, baseType: !4528, size: 64, offset: 64)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!330, !161, !294, !330, !685}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4521, file: !163, line: 21, baseType: !4532, size: 64, offset: 128)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!330, !161, !213, !330, !685}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4521, file: !163, line: 23, baseType: !4536, size: 64, offset: 192)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!85, !161, !1032}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4521, file: !163, line: 24, baseType: !4536, size: 64, offset: 256)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4521, file: !163, line: 25, baseType: !4541, size: 64, offset: 320)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{!1149, !161, !1032, !4469}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4521, file: !163, line: 27, baseType: !4545, size: 64, offset: 384)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!85, !161, !1032, !7, !160}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl_compat", scope: !4521, file: !163, line: 29, baseType: !4545, size: 64, offset: 448)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4521, file: !163, line: 31, baseType: !4550, size: 64, offset: 512)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!85, !161, !1032, !1171}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "dsp_status", scope: !4521, file: !163, line: 33, baseType: !4554, size: 64, offset: 576)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!85, !161, !4557}
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_hwdep_dsp_status", file: !4559, line: 117, size: 512, elements: !4560)
!4559 = !DIFile(filename: "./include/uapi/sound/asound.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f6c7c1b6718812fde08ec0a715510ddd")
!4560 = !{!4561, !4562, !4563, !4564, !4565, !4566}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4558, file: !4559, line: 118, baseType: !7, size: 32)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4558, file: !4559, line: 119, baseType: !454, size: 256, offset: 32)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "num_dsps", scope: !4558, file: !4559, line: 120, baseType: !7, size: 32, offset: 288)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "dsp_loaded", scope: !4558, file: !4559, line: 121, baseType: !7, size: 32, offset: 320)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "chip_ready", scope: !4558, file: !4559, line: 122, baseType: !7, size: 32, offset: 352)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4558, file: !4559, line: 123, baseType: !4567, size: 128, offset: 384)
!4567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 128, elements: !173)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "dsp_load", scope: !4521, file: !163, line: 35, baseType: !4569, size: 64, offset: 640)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!85, !161, !4572}
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_hwdep_dsp_image", file: !4559, line: 126, size: 768, elements: !4574)
!4574 = !{!4575, !4576, !4578, !4580, !4581}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4573, file: !4559, line: 127, baseType: !7, size: 32)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4573, file: !4559, line: 128, baseType: !4577, size: 512, offset: 32)
!4577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 512, elements: !299)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "image", scope: !4573, file: !4559, line: 129, baseType: !4579, size: 64, offset: 576)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4573, file: !4559, line: 130, baseType: !341, size: 64, offset: 640)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4573, file: !4559, line: 131, baseType: !160, size: 64, offset: 704)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !162, file: !163, line: 53, baseType: !772, size: 192, offset: 1856)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !162, file: !163, line: 54, baseType: !159, size: 64, offset: 2048)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !162, file: !163, line: 55, baseType: !4585, size: 64, offset: 2112)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{null, !161}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !162, file: !163, line: 56, baseType: !4052, size: 64, offset: 2176)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !162, file: !163, line: 58, baseType: !656, size: 256, offset: 2240)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !162, file: !163, line: 59, baseType: !85, size: 32, offset: 2496)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "dsp_loaded", scope: !162, file: !163, line: 60, baseType: !7, size: 32, offset: 2528)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !162, file: !163, line: 61, baseType: !7, size: 1, offset: 2560, flags: DIFlagBitField, extraData: i64 2560)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !199)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!4596 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !158, line: 42, baseType: !160)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_hwdep_info", file: !4559, line: 107, size: 1760, elements: !4601)
!4601 = !{!4602, !4603, !4604, !4605, !4607, !4608}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4600, file: !4559, line: 108, baseType: !7, size: 32)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !4600, file: !4559, line: 109, baseType: !85, size: 32, offset: 32)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4600, file: !4559, line: 110, baseType: !4577, size: 512, offset: 64)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4600, file: !4559, line: 111, baseType: !4606, size: 640, offset: 576)
!4606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 640, elements: !182)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "iface", scope: !4600, file: !4559, line: 112, baseType: !85, size: 32, offset: 1216)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4600, file: !4559, line: 113, baseType: !4577, size: 512, offset: 1248)
!4609 = !{!0, !4610, !4615, !4620, !4625, !4660, !4662, !4667, !4669, !4674, !4679, !4681, !4683, !4687, !4689, !4694, !4697, !4699, !4701, !4703, !4709, !4711}
!4610 = !DIGlobalVariableExpression(var: !4611, expr: !DIExpression())
!4611 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description274", scope: !2, file: !3, line: 21, type: !4612, isLocal: true, isDefinition: true, align: 8)
!4612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 376, elements: !4613)
!4613 = !{!4614}
!4614 = !DISubrange(count: 47)
!4615 = !DIGlobalVariableExpression(var: !4616, expr: !DIExpression())
!4616 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file275", scope: !2, file: !3, line: 22, type: !4617, isLocal: true, isDefinition: true, align: 8)
!4617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 288, elements: !4618)
!4618 = !{!4619}
!4619 = !DISubrange(count: 36)
!4620 = !DIGlobalVariableExpression(var: !4621, expr: !DIExpression())
!4621 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license276", scope: !2, file: !3, line: 22, type: !4622, isLocal: true, isDefinition: true, align: 8)
!4622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 176, elements: !4623)
!4623 = !{!4624}
!4624 = !DISubrange(count: 22)
!4625 = !DIGlobalVariableExpression(var: !4626, expr: !DIExpression())
!4626 = distinct !DIGlobalVariable(name: "ops", scope: !4627, file: !3, line: 369, type: !4641, isLocal: true, isDefinition: true)
!4627 = distinct !DISubprogram(name: "snd_hwdep_new", scope: !3, file: !3, line: 364, type: !4628, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4631)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!85, !166, !294, !85, !4630}
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!4631 = !{!4632, !4633, !4634, !4635, !4636, !4637, !4638}
!4632 = !DILocalVariable(name: "card", arg: 1, scope: !4627, file: !3, line: 364, type: !166)
!4633 = !DILocalVariable(name: "id", arg: 2, scope: !4627, file: !3, line: 364, type: !294)
!4634 = !DILocalVariable(name: "device", arg: 3, scope: !4627, file: !3, line: 364, type: !85)
!4635 = !DILocalVariable(name: "rhwdep", arg: 4, scope: !4627, file: !3, line: 365, type: !4630)
!4636 = !DILocalVariable(name: "hwdep", scope: !4627, file: !3, line: 367, type: !161)
!4637 = !DILocalVariable(name: "err", scope: !4627, file: !3, line: 368, type: !85)
!4638 = !DILocalVariable(name: "__ret_warn_on", scope: !4639, file: !3, line: 375, type: !85)
!4639 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 375, column: 6)
!4640 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 375, column: 6)
!4641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4642)
!4642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_device_ops", file: !118, line: 61, size: 192, elements: !4643)
!4643 = !{!4644, !4658, !4659}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "dev_free", scope: !4642, file: !118, line: 62, baseType: !4645, size: 64)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{!85, !4648}
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_device", file: !118, line: 67, size: 384, elements: !4650)
!4650 = !{!4651, !4652, !4653, !4654, !4655, !4656}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4649, file: !118, line: 68, baseType: !196, size: 128)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !4649, file: !118, line: 69, baseType: !166, size: 64, offset: 128)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4649, file: !118, line: 70, baseType: !117, size: 32, offset: 192)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4649, file: !118, line: 71, baseType: !123, size: 32, offset: 224)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "device_data", scope: !4649, file: !118, line: 72, baseType: !159, size: 64, offset: 256)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4649, file: !118, line: 73, baseType: !4657, size: 64, offset: 320)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "dev_register", scope: !4642, file: !118, line: 63, baseType: !4645, size: 64, offset: 64)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "dev_disconnect", scope: !4642, file: !118, line: 64, baseType: !4645, size: 64, offset: 128)
!4660 = !DIGlobalVariableExpression(var: !4661, expr: !DIExpression())
!4661 = distinct !DIGlobalVariable(name: "__key", scope: !4627, file: !3, line: 383, type: !573, isLocal: true, isDefinition: true)
!4662 = !DIGlobalVariableExpression(var: !4663, expr: !DIExpression())
!4663 = distinct !DIGlobalVariable(scope: null, file: !3, line: 383, type: !4664, isLocal: true, isDefinition: true)
!4664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 144, elements: !4665)
!4665 = !{!4666}
!4666 = !DISubrange(count: 18)
!4667 = !DIGlobalVariableExpression(var: !4668, expr: !DIExpression())
!4668 = distinct !DIGlobalVariable(name: "__key", scope: !4627, file: !3, line: 384, type: !573, isLocal: true, isDefinition: true)
!4669 = !DIGlobalVariableExpression(var: !4670, expr: !DIExpression())
!4670 = distinct !DIGlobalVariable(scope: null, file: !3, line: 384, type: !4671, isLocal: true, isDefinition: true)
!4671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 152, elements: !4672)
!4672 = !{!4673}
!4673 = !DISubrange(count: 19)
!4674 = !DIGlobalVariableExpression(var: !4675, expr: !DIExpression())
!4675 = distinct !DIGlobalVariable(scope: null, file: !3, line: 396, type: !4676, isLocal: true, isDefinition: true)
!4676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 72, elements: !4677)
!4677 = !{!4678}
!4678 = !DISubrange(count: 9)
!4679 = !DIGlobalVariableExpression(var: !4680, expr: !DIExpression())
!4680 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hwdep_new277", scope: !2, file: !3, line: 411, type: !159, isLocal: true, isDefinition: true)
!4681 = !DIGlobalVariableExpression(var: !4682, expr: !DIExpression())
!4682 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_snd_hwdep__278_548_alsa_hwdep_init6279", scope: !2, file: !3, line: 548, type: !159, isLocal: true, isDefinition: true)
!4683 = !DIGlobalVariableExpression(var: !4684, expr: !DIExpression())
!4684 = distinct !DIGlobalVariable(name: "__exitcall_alsa_hwdep_exit", scope: !2, file: !3, line: 549, type: !4685, isLocal: true, isDefinition: true)
!4685 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4686, line: 120, baseType: !4043)
!4686 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4687 = !DIGlobalVariableExpression(var: !4688, expr: !DIExpression())
!4688 = distinct !DIGlobalVariable(name: "snd_hwdep_proc_entry", scope: !2, file: !3, line: 502, type: !4412, isLocal: true, isDefinition: true)
!4689 = !DIGlobalVariableExpression(var: !4690, expr: !DIExpression())
!4690 = distinct !DIGlobalVariable(scope: null, file: !143, line: 480, type: !4691, isLocal: true, isDefinition: true)
!4691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 168, elements: !4692)
!4692 = !{!4693}
!4693 = !DISubrange(count: 21)
!4694 = !DIGlobalVariableExpression(var: !4695, expr: !DIExpression())
!4695 = distinct !DIGlobalVariable(scope: null, file: !3, line: 435, type: !4696, isLocal: true, isDefinition: true)
!4696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 160, elements: !2922)
!4697 = !DIGlobalVariableExpression(var: !4698, expr: !DIExpression())
!4698 = distinct !DIGlobalVariable(name: "register_mutex", scope: !2, file: !3, line: 25, type: !656, isLocal: true, isDefinition: true)
!4699 = !DIGlobalVariableExpression(var: !4700, expr: !DIExpression())
!4700 = distinct !DIGlobalVariable(name: "snd_hwdep_devices", scope: !2, file: !3, line: 24, type: !196, isLocal: true, isDefinition: true)
!4701 = !DIGlobalVariableExpression(var: !4702, expr: !DIExpression())
!4702 = distinct !DIGlobalVariable(name: "snd_hwdep_f_ops", scope: !2, file: !3, line: 327, type: !1024, isLocal: true, isDefinition: true)
!4703 = !DIGlobalVariableExpression(var: !4704, expr: !DIExpression())
!4704 = distinct !DIGlobalVariable(scope: null, file: !4705, line: 249, type: !4706, isLocal: true, isDefinition: true)
!4705 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!4706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 224, elements: !4707)
!4707 = !{!4708}
!4708 = !DISubrange(count: 28)
!4709 = !DIGlobalVariableExpression(var: !4710, expr: !DIExpression())
!4710 = distinct !DIGlobalVariable(scope: null, file: !3, line: 508, type: !889, isLocal: true, isDefinition: true)
!4711 = !DIGlobalVariableExpression(var: !4712, expr: !DIExpression())
!4712 = distinct !DIGlobalVariable(scope: null, file: !3, line: 497, type: !4713, isLocal: true, isDefinition: true)
!4713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 120, elements: !4714)
!4714 = !{!4715}
!4715 = !DISubrange(count: 15)
!4716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 400, elements: !4717)
!4717 = !{!4718}
!4718 = !DISubrange(count: 50)
!4719 = !{!"rsp"}
!4720 = !{i32 7, !"Dwarf Version", i32 5}
!4721 = !{i32 2, !"Debug Info Version", i32 3}
!4722 = !{i32 1, !"wchar_size", i32 2}
!4723 = !{i32 8, !"cf-protection-branch", i32 1}
!4724 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4725 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4726 = !{i32 1, !"Code Model", i32 2}
!4727 = !{i32 1, !"override-stack-alignment", i32 8}
!4728 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4729 = !DILocation(line: 364, column: 36, scope: !4627)
!4730 = !DILocation(line: 364, column: 48, scope: !4627)
!4731 = !DILocation(line: 364, column: 56, scope: !4627)
!4732 = !DILocation(line: 365, column: 24, scope: !4627)
!4733 = !DILocation(line: 367, column: 2, scope: !4627)
!4734 = !DILocation(line: 367, column: 20, scope: !4627)
!4735 = !DILocation(line: 368, column: 2, scope: !4627)
!4736 = !DILocation(line: 368, column: 6, scope: !4627)
!4737 = !DILocation(line: 375, column: 6, scope: !4639)
!4738 = !DILocation(line: 375, column: 6, scope: !4640)
!4739 = !DILocation(line: 375, column: 6, scope: !4627)
!4740 = !DILocation(line: 376, column: 3, scope: !4640)
!4741 = !DILocation(line: 377, column: 6, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 377, column: 6)
!4743 = !DILocation(line: 377, column: 6, scope: !4627)
!4744 = !DILocation(line: 378, column: 4, scope: !4742)
!4745 = !DILocation(line: 378, column: 11, scope: !4742)
!4746 = !DILocation(line: 378, column: 3, scope: !4742)
!4747 = !DILocation(line: 379, column: 10, scope: !4627)
!4748 = !DILocation(line: 379, column: 8, scope: !4627)
!4749 = !DILocation(line: 380, column: 7, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 380, column: 6)
!4751 = !DILocation(line: 380, column: 6, scope: !4627)
!4752 = !DILocation(line: 381, column: 3, scope: !4750)
!4753 = !DILocation(line: 383, column: 2, scope: !4627)
!4754 = !DILocation(line: 383, column: 2, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 383, column: 2)
!4756 = !DILocation(line: 384, column: 2, scope: !4627)
!4757 = !DILocation(line: 384, column: 2, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 384, column: 2)
!4759 = !DILocation(line: 385, column: 16, scope: !4627)
!4760 = !DILocation(line: 385, column: 2, scope: !4627)
!4761 = !DILocation(line: 385, column: 9, scope: !4627)
!4762 = !DILocation(line: 385, column: 14, scope: !4627)
!4763 = !DILocation(line: 386, column: 18, scope: !4627)
!4764 = !DILocation(line: 386, column: 2, scope: !4627)
!4765 = !DILocation(line: 386, column: 9, scope: !4627)
!4766 = !DILocation(line: 386, column: 16, scope: !4627)
!4767 = !DILocation(line: 387, column: 6, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 387, column: 6)
!4769 = !DILocation(line: 387, column: 6, scope: !4627)
!4770 = !DILocation(line: 388, column: 11, scope: !4768)
!4771 = !DILocation(line: 388, column: 18, scope: !4768)
!4772 = !DILocation(line: 388, column: 22, scope: !4768)
!4773 = !DILocation(line: 388, column: 3, scope: !4768)
!4774 = !DILocation(line: 390, column: 26, scope: !4627)
!4775 = !DILocation(line: 390, column: 33, scope: !4627)
!4776 = !DILocation(line: 390, column: 38, scope: !4627)
!4777 = !DILocation(line: 390, column: 8, scope: !4627)
!4778 = !DILocation(line: 390, column: 6, scope: !4627)
!4779 = !DILocation(line: 391, column: 6, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 391, column: 6)
!4781 = !DILocation(line: 391, column: 10, scope: !4780)
!4782 = !DILocation(line: 391, column: 6, scope: !4627)
!4783 = !DILocation(line: 392, column: 18, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 391, column: 15)
!4785 = !DILocation(line: 392, column: 3, scope: !4784)
!4786 = !DILocation(line: 393, column: 10, scope: !4784)
!4787 = !DILocation(line: 393, column: 3, scope: !4784)
!4788 = !DILocation(line: 396, column: 15, scope: !4627)
!4789 = !DILocation(line: 396, column: 22, scope: !4627)
!4790 = !DILocation(line: 396, column: 39, scope: !4627)
!4791 = !DILocation(line: 396, column: 45, scope: !4627)
!4792 = !DILocation(line: 396, column: 53, scope: !4627)
!4793 = !DILocation(line: 396, column: 2, scope: !4627)
!4794 = !DILocation(line: 401, column: 23, scope: !4627)
!4795 = !DILocation(line: 401, column: 46, scope: !4627)
!4796 = !DILocation(line: 401, column: 8, scope: !4627)
!4797 = !DILocation(line: 401, column: 6, scope: !4627)
!4798 = !DILocation(line: 402, column: 6, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 402, column: 6)
!4800 = !DILocation(line: 402, column: 10, scope: !4799)
!4801 = !DILocation(line: 402, column: 6, scope: !4627)
!4802 = !DILocation(line: 403, column: 18, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4799, file: !3, line: 402, column: 15)
!4804 = !DILocation(line: 403, column: 3, scope: !4803)
!4805 = !DILocation(line: 404, column: 10, scope: !4803)
!4806 = !DILocation(line: 404, column: 3, scope: !4803)
!4807 = !DILocation(line: 407, column: 6, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 407, column: 6)
!4809 = !DILocation(line: 407, column: 6, scope: !4627)
!4810 = !DILocation(line: 408, column: 13, scope: !4808)
!4811 = !DILocation(line: 408, column: 4, scope: !4808)
!4812 = !DILocation(line: 408, column: 11, scope: !4808)
!4813 = !DILocation(line: 408, column: 3, scope: !4808)
!4814 = !DILocation(line: 409, column: 2, scope: !4627)
!4815 = !DILocation(line: 410, column: 1, scope: !4627)
!4816 = distinct !DISubprogram(name: "snd_hwdep_dev_free", scope: !3, file: !3, line: 413, type: !4646, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4817)
!4817 = !{!4818}
!4818 = !DILocalVariable(name: "device", arg: 1, scope: !4816, file: !3, line: 413, type: !4648)
!4819 = !DILocation(line: 413, column: 50, scope: !4816)
!4820 = !DILocation(line: 415, column: 17, scope: !4816)
!4821 = !DILocation(line: 415, column: 25, scope: !4816)
!4822 = !DILocation(line: 415, column: 2, scope: !4816)
!4823 = !DILocation(line: 416, column: 2, scope: !4816)
!4824 = distinct !DISubprogram(name: "snd_hwdep_dev_register", scope: !3, file: !3, line: 419, type: !4646, scopeLine: 420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4825)
!4825 = !{!4826, !4827, !4828, !4829}
!4826 = !DILocalVariable(name: "device", arg: 1, scope: !4824, file: !3, line: 419, type: !4648)
!4827 = !DILocalVariable(name: "hwdep", scope: !4824, file: !3, line: 421, type: !161)
!4828 = !DILocalVariable(name: "card", scope: !4824, file: !3, line: 422, type: !166)
!4829 = !DILocalVariable(name: "err", scope: !4824, file: !3, line: 423, type: !85)
!4830 = !DILocation(line: 419, column: 54, scope: !4824)
!4831 = !DILocation(line: 421, column: 2, scope: !4824)
!4832 = !DILocation(line: 421, column: 20, scope: !4824)
!4833 = !DILocation(line: 421, column: 28, scope: !4824)
!4834 = !DILocation(line: 421, column: 36, scope: !4824)
!4835 = !DILocation(line: 422, column: 2, scope: !4824)
!4836 = !DILocation(line: 422, column: 19, scope: !4824)
!4837 = !DILocation(line: 422, column: 26, scope: !4824)
!4838 = !DILocation(line: 422, column: 33, scope: !4824)
!4839 = !DILocation(line: 423, column: 2, scope: !4824)
!4840 = !DILocation(line: 423, column: 6, scope: !4824)
!4841 = !DILocation(line: 425, column: 2, scope: !4824)
!4842 = !DILocation(line: 426, column: 23, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4824, file: !3, line: 426, column: 6)
!4844 = !DILocation(line: 426, column: 29, scope: !4843)
!4845 = !DILocation(line: 426, column: 36, scope: !4843)
!4846 = !DILocation(line: 426, column: 6, scope: !4843)
!4847 = !DILocation(line: 426, column: 6, scope: !4824)
!4848 = !DILocation(line: 427, column: 3, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4843, file: !3, line: 426, column: 45)
!4850 = !DILocation(line: 428, column: 3, scope: !4849)
!4851 = !DILocation(line: 430, column: 17, scope: !4824)
!4852 = !DILocation(line: 430, column: 24, scope: !4824)
!4853 = !DILocation(line: 430, column: 2, scope: !4824)
!4854 = !DILocation(line: 432, column: 7, scope: !4824)
!4855 = !DILocation(line: 432, column: 14, scope: !4824)
!4856 = !DILocation(line: 432, column: 20, scope: !4824)
!4857 = !DILocation(line: 432, column: 27, scope: !4824)
!4858 = !DILocation(line: 433, column: 25, scope: !4824)
!4859 = !DILocation(line: 433, column: 32, scope: !4824)
!4860 = !DILocation(line: 433, column: 39, scope: !4824)
!4861 = !DILocation(line: 431, column: 8, scope: !4824)
!4862 = !DILocation(line: 431, column: 6, scope: !4824)
!4863 = !DILocation(line: 434, column: 6, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4824, file: !3, line: 434, column: 6)
!4865 = !DILocation(line: 434, column: 10, scope: !4864)
!4866 = !DILocation(line: 434, column: 6, scope: !4824)
!4867 = !DILocation(line: 435, column: 3, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4869, file: !3, line: 435, column: 3)
!4869 = distinct !DILexicalBlock(scope: !4864, file: !3, line: 434, column: 15)
!4870 = !DILocation(line: 435, column: 3, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4868, file: !3, line: 435, column: 3)
!4872 = !DILocation(line: 436, column: 13, scope: !4869)
!4873 = !DILocation(line: 436, column: 20, scope: !4869)
!4874 = !DILocation(line: 436, column: 3, scope: !4869)
!4875 = !DILocation(line: 437, column: 3, scope: !4869)
!4876 = !DILocation(line: 438, column: 10, scope: !4869)
!4877 = !DILocation(line: 438, column: 3, scope: !4869)
!4878 = !DILocation(line: 457, column: 2, scope: !4824)
!4879 = !DILocation(line: 458, column: 2, scope: !4824)
!4880 = !DILocation(line: 459, column: 1, scope: !4824)
!4881 = distinct !DISubprogram(name: "snd_hwdep_dev_disconnect", scope: !3, file: !3, line: 461, type: !4646, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4882)
!4882 = !{!4883, !4884, !4885}
!4883 = !DILocalVariable(name: "device", arg: 1, scope: !4881, file: !3, line: 461, type: !4648)
!4884 = !DILocalVariable(name: "hwdep", scope: !4881, file: !3, line: 463, type: !161)
!4885 = !DILocalVariable(name: "__ret_warn_on", scope: !4886, file: !3, line: 465, type: !85)
!4886 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 465, column: 6)
!4887 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 465, column: 6)
!4888 = !DILocation(line: 461, column: 56, scope: !4881)
!4889 = !DILocation(line: 463, column: 2, scope: !4881)
!4890 = !DILocation(line: 463, column: 20, scope: !4881)
!4891 = !DILocation(line: 463, column: 28, scope: !4881)
!4892 = !DILocation(line: 463, column: 36, scope: !4881)
!4893 = !DILocation(line: 465, column: 6, scope: !4886)
!4894 = !DILocation(line: 465, column: 6, scope: !4887)
!4895 = !DILocation(line: 465, column: 6, scope: !4881)
!4896 = !DILocation(line: 466, column: 3, scope: !4887)
!4897 = !DILocation(line: 467, column: 2, scope: !4881)
!4898 = !DILocation(line: 468, column: 23, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 468, column: 6)
!4900 = !DILocation(line: 468, column: 30, scope: !4899)
!4901 = !DILocation(line: 468, column: 36, scope: !4899)
!4902 = !DILocation(line: 468, column: 43, scope: !4899)
!4903 = !DILocation(line: 468, column: 6, scope: !4899)
!4904 = !DILocation(line: 468, column: 54, scope: !4899)
!4905 = !DILocation(line: 468, column: 51, scope: !4899)
!4906 = !DILocation(line: 468, column: 6, scope: !4881)
!4907 = !DILocation(line: 469, column: 3, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 468, column: 61)
!4909 = !DILocation(line: 470, column: 3, scope: !4908)
!4910 = !DILocation(line: 472, column: 14, scope: !4881)
!4911 = !DILocation(line: 472, column: 21, scope: !4881)
!4912 = !DILocation(line: 472, column: 2, scope: !4881)
!4913 = !DILocation(line: 473, column: 2, scope: !4881)
!4914 = !DILocation(line: 478, column: 24, scope: !4881)
!4915 = !DILocation(line: 478, column: 31, scope: !4881)
!4916 = !DILocation(line: 478, column: 2, scope: !4881)
!4917 = !DILocation(line: 479, column: 17, scope: !4881)
!4918 = !DILocation(line: 479, column: 24, scope: !4881)
!4919 = !DILocation(line: 479, column: 2, scope: !4881)
!4920 = !DILocation(line: 480, column: 16, scope: !4881)
!4921 = !DILocation(line: 480, column: 23, scope: !4881)
!4922 = !DILocation(line: 480, column: 2, scope: !4881)
!4923 = !DILocation(line: 481, column: 2, scope: !4881)
!4924 = !DILocation(line: 482, column: 2, scope: !4881)
!4925 = !DILocation(line: 483, column: 1, scope: !4881)
!4926 = distinct !DISubprogram(name: "kzalloc", scope: !143, file: !143, line: 719, type: !4927, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4929)
!4927 = !DISubroutineType(types: !4928)
!4928 = !{!159, !341, !157}
!4929 = !{!4930, !4931}
!4930 = !DILocalVariable(name: "size", arg: 1, scope: !4926, file: !143, line: 719, type: !341)
!4931 = !DILocalVariable(name: "flags", arg: 2, scope: !4926, file: !143, line: 719, type: !157)
!4932 = !DILocation(line: 719, column: 52, scope: !4926)
!4933 = !DILocation(line: 719, column: 64, scope: !4926)
!4934 = !DILocation(line: 721, column: 17, scope: !4926)
!4935 = !DILocation(line: 721, column: 23, scope: !4926)
!4936 = !DILocation(line: 721, column: 29, scope: !4926)
!4937 = !DILocation(line: 721, column: 9, scope: !4926)
!4938 = !DILocation(line: 721, column: 2, scope: !4926)
!4939 = !DISubprogram(name: "__init_waitqueue_head", scope: !773, file: !773, line: 64, type: !4940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{null, !4942, !213, !4943}
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!4944 = !DISubprogram(name: "__mutex_init", scope: !657, file: !657, line: 121, type: !4945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{null, !4947, !213, !4943}
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!4948 = !DISubprogram(name: "strscpy", scope: !4949, file: !4949, line: 72, type: !4950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4949 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4950 = !DISubroutineType(types: !4951)
!4951 = !{!326, !294, !213, !341}
!4952 = !DISubprogram(name: "snd_device_alloc", scope: !118, file: !118, line: 242, type: !4953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!85, !4955, !166}
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4956 = distinct !DISubprogram(name: "snd_hwdep_free", scope: !3, file: !3, line: 341, type: !4586, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4957)
!4957 = !{!4958}
!4958 = !DILocalVariable(name: "hwdep", arg: 1, scope: !4956, file: !3, line: 341, type: !161)
!4959 = !DILocation(line: 341, column: 46, scope: !4956)
!4960 = !DILocation(line: 343, column: 7, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 343, column: 6)
!4962 = !DILocation(line: 343, column: 6, scope: !4956)
!4963 = !DILocation(line: 344, column: 3, scope: !4961)
!4964 = !DILocation(line: 345, column: 6, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 345, column: 6)
!4966 = !DILocation(line: 345, column: 13, scope: !4965)
!4967 = !DILocation(line: 345, column: 6, scope: !4956)
!4968 = !DILocation(line: 346, column: 3, scope: !4965)
!4969 = !DILocation(line: 346, column: 10, scope: !4965)
!4970 = !DILocation(line: 346, column: 23, scope: !4965)
!4971 = !DILocation(line: 347, column: 13, scope: !4956)
!4972 = !DILocation(line: 347, column: 20, scope: !4956)
!4973 = !DILocation(line: 347, column: 2, scope: !4956)
!4974 = !DILocation(line: 348, column: 8, scope: !4956)
!4975 = !DILocation(line: 348, column: 2, scope: !4956)
!4976 = !DILocation(line: 349, column: 1, scope: !4956)
!4977 = !DISubprogram(name: "dev_set_name", scope: !70, file: !70, line: 879, type: !4978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4978 = !DISubroutineType(types: !4979)
!4979 = !{!85, !4052, !213, null}
!4980 = !DISubprogram(name: "snd_device_new", scope: !118, file: !118, line: 321, type: !4981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!85, !166, !123, !159, !4657}
!4983 = distinct !DISubprogram(name: "snd_hwdep_proc_done", scope: !3, file: !3, line: 519, type: !2420, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4984 = !DILocation(line: 521, column: 22, scope: !4983)
!4985 = !DILocation(line: 521, column: 2, scope: !4983)
!4986 = !DILocation(line: 522, column: 1, scope: !4983)
!4987 = !DISubprogram(name: "snd_info_free_entry", scope: !4414, file: !4414, line: 120, type: !4484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4988 = distinct !DISubprogram(name: "alsa_hwdep_exit", scope: !3, file: !3, line: 541, type: !2420, scopeLine: 542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4989 = !DILocation(line: 543, column: 2, scope: !4988)
!4990 = !DILocation(line: 544, column: 2, scope: !4988)
!4991 = !DILocation(line: 545, column: 2, scope: !4988)
!4992 = !DILocation(line: 546, column: 1, scope: !4988)
!4993 = !DISubprogram(name: "snd_ctl_unregister_ioctl", scope: !4994, file: !4994, line: 173, type: !4995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4994 = !DIFile(filename: "./include/sound/control.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f703a7092b118ff56838453fb210fcb6")
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!85, !4997}
!4997 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_kctl_ioctl_func_t", file: !4994, line: 127, baseType: !4998)
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!85, !166, !5001, !7, !160}
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_ctl_file", file: !4994, line: 105, size: 832, elements: !5003)
!5003 = !{!5004, !5005, !5006, !5007, !5009, !5010, !5011, !5014, !5015}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5002, file: !4994, line: 106, baseType: !196, size: 128)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !5002, file: !4994, line: 107, baseType: !166, size: 64, offset: 128)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !5002, file: !4994, line: 108, baseType: !755, size: 64, offset: 192)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_subdevice", scope: !5002, file: !4994, line: 109, baseType: !5008, size: 64, offset: 256)
!5008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !2306)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "change_sleep", scope: !5002, file: !4994, line: 110, baseType: !772, size: 192, offset: 320)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "read_lock", scope: !5002, file: !4994, line: 111, baseType: !224, size: 32, offset: 512)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !5002, file: !4994, line: 112, baseType: !5012, size: 64, offset: 576)
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5013 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_fasync", file: !118, line: 511, flags: DIFlagFwdDecl)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "subscribed", scope: !5002, file: !4994, line: 113, baseType: !85, size: 32, offset: 640)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5002, file: !4994, line: 114, baseType: !196, size: 128, offset: 704)
!5016 = distinct !DISubprogram(name: "snd_hwdep_control_ioctl", scope: !3, file: !3, line: 264, type: !4999, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5017)
!5017 = !{!5018, !5019, !5020, !5021, !5022, !5025, !5029, !5030, !5032, !5036, !5037, !5038, !5039, !5040, !5042, !5043, !5044, !5045, !5049, !5050}
!5018 = !DILocalVariable(name: "card", arg: 1, scope: !5016, file: !3, line: 264, type: !166)
!5019 = !DILocalVariable(name: "control", arg: 2, scope: !5016, file: !3, line: 265, type: !5001)
!5020 = !DILocalVariable(name: "cmd", arg: 3, scope: !5016, file: !3, line: 266, type: !7)
!5021 = !DILocalVariable(name: "arg", arg: 4, scope: !5016, file: !3, line: 266, type: !160)
!5022 = !DILocalVariable(name: "device", scope: !5023, file: !3, line: 271, type: !85)
!5023 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 270, column: 3)
!5024 = distinct !DILexicalBlock(scope: !5016, file: !3, line: 268, column: 15)
!5025 = !DILocalVariable(name: "__ret_gu", scope: !5026, file: !3, line: 273, type: !85)
!5026 = distinct !DILexicalBlock(scope: !5027, file: !3, line: 273, column: 8)
!5027 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 273, column: 8)
!5028 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 273, column: 8)
!5029 = !DILocalVariable(name: "__val_gu", scope: !5026, file: !3, line: 273, type: !7)
!5030 = !DILocalVariable(name: "__tmp", scope: !5031, file: !3, line: 273, type: !446)
!5031 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 273, column: 8)
!5032 = !DILocalVariable(name: "__ret_pu", scope: !5033, file: !3, line: 292, type: !85)
!5033 = distinct !DILexicalBlock(scope: !5034, file: !3, line: 292, column: 8)
!5034 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 292, column: 8)
!5035 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 292, column: 8)
!5036 = !DILocalVariable(name: "__ptr_pu", scope: !5033, file: !3, line: 292, type: !159)
!5037 = !DILocalVariable(name: "__val_pu", scope: !5033, file: !3, line: 292, type: !85)
!5038 = !DILocalVariable(name: "__x", scope: !5033, file: !3, line: 292, type: !85)
!5039 = !DILocalVariable(name: "__ptr", scope: !5033, file: !3, line: 292, type: !638)
!5040 = !DILocalVariable(name: "info", scope: !5041, file: !3, line: 298, type: !4599)
!5041 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 297, column: 3)
!5042 = !DILocalVariable(name: "device", scope: !5041, file: !3, line: 299, type: !85)
!5043 = !DILocalVariable(name: "err", scope: !5041, file: !3, line: 299, type: !85)
!5044 = !DILocalVariable(name: "hwdep", scope: !5041, file: !3, line: 300, type: !161)
!5045 = !DILocalVariable(name: "__ret_gu", scope: !5046, file: !3, line: 302, type: !85)
!5046 = distinct !DILexicalBlock(scope: !5047, file: !3, line: 302, column: 8)
!5047 = distinct !DILexicalBlock(scope: !5048, file: !3, line: 302, column: 8)
!5048 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 302, column: 8)
!5049 = !DILocalVariable(name: "__val_gu", scope: !5046, file: !3, line: 302, type: !7)
!5050 = !DILocalVariable(name: "__tmp", scope: !5051, file: !3, line: 302, type: !446)
!5051 = distinct !DILexicalBlock(scope: !5046, file: !3, line: 302, column: 8)
!5052 = !DILocation(line: 264, column: 53, scope: !5016)
!5053 = !DILocation(line: 265, column: 30, scope: !5016)
!5054 = !DILocation(line: 266, column: 21, scope: !5016)
!5055 = !DILocation(line: 266, column: 40, scope: !5016)
!5056 = !DILocation(line: 268, column: 10, scope: !5016)
!5057 = !DILocation(line: 268, column: 2, scope: !5016)
!5058 = !DILocation(line: 271, column: 4, scope: !5023)
!5059 = !DILocation(line: 271, column: 8, scope: !5023)
!5060 = !DILocation(line: 273, column: 8, scope: !5027)
!5061 = !DILocation(line: 273, column: 8, scope: !5026)
!5062 = !{i64 2154069312}
!5063 = !DILocation(line: 273, column: 8, scope: !5031)
!5064 = !DILocation(line: 273, column: 8, scope: !5028)
!5065 = !DILocation(line: 273, column: 8, scope: !5023)
!5066 = !DILocation(line: 274, column: 5, scope: !5028)
!5067 = !DILocation(line: 275, column: 4, scope: !5023)
!5068 = !DILocation(line: 277, column: 8, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 277, column: 8)
!5070 = !DILocation(line: 277, column: 15, scope: !5069)
!5071 = !DILocation(line: 277, column: 8, scope: !5023)
!5072 = !DILocation(line: 278, column: 12, scope: !5069)
!5073 = !DILocation(line: 278, column: 5, scope: !5069)
!5074 = !DILocation(line: 279, column: 13, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 279, column: 13)
!5076 = !DILocation(line: 279, column: 20, scope: !5075)
!5077 = !DILocation(line: 279, column: 13, scope: !5069)
!5078 = !DILocation(line: 280, column: 11, scope: !5075)
!5079 = !DILocation(line: 280, column: 5, scope: !5075)
!5080 = !DILocation(line: 282, column: 12, scope: !5075)
!5081 = !DILocation(line: 284, column: 4, scope: !5023)
!5082 = !DILocation(line: 284, column: 11, scope: !5023)
!5083 = !DILocation(line: 284, column: 18, scope: !5023)
!5084 = !DILocation(line: 285, column: 26, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5086, file: !3, line: 285, column: 9)
!5086 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 284, column: 40)
!5087 = !DILocation(line: 285, column: 32, scope: !5085)
!5088 = !DILocation(line: 285, column: 9, scope: !5085)
!5089 = !DILocation(line: 285, column: 9, scope: !5086)
!5090 = !DILocation(line: 286, column: 6, scope: !5085)
!5091 = !DILocation(line: 287, column: 11, scope: !5086)
!5092 = distinct !{!5092, !5081, !5093, !5094, !5095}
!5093 = !DILocation(line: 288, column: 4, scope: !5023)
!5094 = !{!"llvm.loop.mustprogress"}
!5095 = !{!"llvm.loop.unroll.disable"}
!5096 = !DILocation(line: 289, column: 8, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 289, column: 8)
!5098 = !DILocation(line: 289, column: 15, scope: !5097)
!5099 = !DILocation(line: 289, column: 8, scope: !5023)
!5100 = !DILocation(line: 290, column: 12, scope: !5097)
!5101 = !DILocation(line: 290, column: 5, scope: !5097)
!5102 = !DILocation(line: 291, column: 4, scope: !5023)
!5103 = !DILocation(line: 292, column: 8, scope: !5034)
!5104 = !DILocation(line: 292, column: 8, scope: !5033)
!5105 = !{i64 2154071653}
!5106 = !DILocation(line: 292, column: 8, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 292, column: 8)
!5108 = !DILocation(line: 292, column: 8, scope: !5035)
!5109 = !DILocation(line: 292, column: 8, scope: !5023)
!5110 = !DILocation(line: 293, column: 5, scope: !5035)
!5111 = !DILocation(line: 294, column: 4, scope: !5023)
!5112 = !DILocation(line: 295, column: 3, scope: !5024)
!5113 = !DILocation(line: 298, column: 4, scope: !5041)
!5114 = !DILocation(line: 298, column: 34, scope: !5041)
!5115 = !DILocation(line: 298, column: 73, scope: !5041)
!5116 = !DILocation(line: 298, column: 41, scope: !5041)
!5117 = !DILocation(line: 299, column: 4, scope: !5041)
!5118 = !DILocation(line: 299, column: 8, scope: !5041)
!5119 = !DILocation(line: 299, column: 16, scope: !5041)
!5120 = !DILocation(line: 300, column: 4, scope: !5041)
!5121 = !DILocation(line: 300, column: 22, scope: !5041)
!5122 = !DILocation(line: 302, column: 8, scope: !5047)
!5123 = !DILocation(line: 302, column: 8, scope: !5046)
!5124 = !{i64 2154073508}
!5125 = !DILocation(line: 302, column: 8, scope: !5051)
!5126 = !DILocation(line: 302, column: 8, scope: !5048)
!5127 = !DILocation(line: 302, column: 8, scope: !5041)
!5128 = !DILocation(line: 303, column: 5, scope: !5048)
!5129 = !DILocation(line: 304, column: 4, scope: !5041)
!5130 = !DILocation(line: 305, column: 29, scope: !5041)
!5131 = !DILocation(line: 305, column: 35, scope: !5041)
!5132 = !DILocation(line: 305, column: 12, scope: !5041)
!5133 = !DILocation(line: 305, column: 10, scope: !5041)
!5134 = !DILocation(line: 306, column: 8, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 306, column: 8)
!5136 = !DILocation(line: 306, column: 8, scope: !5041)
!5137 = !DILocation(line: 307, column: 26, scope: !5135)
!5138 = !DILocation(line: 307, column: 33, scope: !5135)
!5139 = !DILocation(line: 307, column: 11, scope: !5135)
!5140 = !DILocation(line: 307, column: 9, scope: !5135)
!5141 = !DILocation(line: 307, column: 5, scope: !5135)
!5142 = !DILocation(line: 309, column: 9, scope: !5135)
!5143 = !DILocation(line: 310, column: 4, scope: !5041)
!5144 = !DILocation(line: 311, column: 11, scope: !5041)
!5145 = !DILocation(line: 311, column: 4, scope: !5041)
!5146 = !DILocation(line: 312, column: 3, scope: !5024)
!5147 = !DILocation(line: 314, column: 2, scope: !5016)
!5148 = !DILocation(line: 315, column: 1, scope: !5016)
!5149 = !DISubprogram(name: "snd_ctl_unregister_ioctl_compat", scope: !4994, file: !4994, line: 176, type: !4995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5150 = distinct !DISubprogram(name: "__initstub__kmod_snd_hwdep__278_548_alsa_hwdep_init6", scope: !3, file: !3, line: 548, type: !3828, scopeLine: 548, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5151 = !DILocation(line: 548, column: 1, scope: !5150)
!5152 = distinct !DISubprogram(name: "alsa_hwdep_init", scope: !3, file: !3, line: 533, type: !3828, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5153 = !DILocation(line: 535, column: 2, scope: !5152)
!5154 = !DILocation(line: 536, column: 2, scope: !5152)
!5155 = !DILocation(line: 537, column: 2, scope: !5152)
!5156 = !DILocation(line: 538, column: 2, scope: !5152)
!5157 = distinct !DISubprogram(name: "kmalloc", scope: !143, file: !143, line: 591, type: !4927, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5158)
!5158 = !{!5159, !5160, !5161}
!5159 = !DILocalVariable(name: "size", arg: 1, scope: !5157, file: !143, line: 591, type: !341)
!5160 = !DILocalVariable(name: "flags", arg: 2, scope: !5157, file: !143, line: 591, type: !157)
!5161 = !DILocalVariable(name: "index", scope: !5162, file: !143, line: 594, type: !7)
!5162 = distinct !DILexicalBlock(scope: !5163, file: !143, line: 593, column: 42)
!5163 = distinct !DILexicalBlock(scope: !5157, file: !143, line: 593, column: 6)
!5164 = !DILocation(line: 591, column: 61, scope: !5157)
!5165 = !DILocation(line: 591, column: 73, scope: !5157)
!5166 = !DILocation(line: 593, column: 27, scope: !5163)
!5167 = !DILocation(line: 593, column: 6, scope: !5163)
!5168 = !DILocation(line: 593, column: 33, scope: !5163)
!5169 = !DILocation(line: 593, column: 36, scope: !5163)
!5170 = !DILocation(line: 593, column: 6, scope: !5157)
!5171 = !DILocation(line: 594, column: 3, scope: !5162)
!5172 = !DILocation(line: 594, column: 16, scope: !5162)
!5173 = !DILocation(line: 596, column: 7, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5162, file: !143, line: 596, column: 7)
!5175 = !DILocation(line: 596, column: 12, scope: !5174)
!5176 = !DILocation(line: 596, column: 7, scope: !5162)
!5177 = !DILocation(line: 597, column: 25, scope: !5174)
!5178 = !DILocation(line: 597, column: 31, scope: !5174)
!5179 = !DILocation(line: 597, column: 11, scope: !5174)
!5180 = !DILocation(line: 597, column: 4, scope: !5174)
!5181 = !DILocation(line: 599, column: 11, scope: !5162)
!5182 = !DILocation(line: 599, column: 9, scope: !5162)
!5183 = !DILocation(line: 601, column: 33, scope: !5162)
!5184 = !DILocation(line: 601, column: 40, scope: !5162)
!5185 = !DILocation(line: 601, column: 20, scope: !5162)
!5186 = !DILocation(line: 601, column: 5, scope: !5162)
!5187 = !DILocation(line: 601, column: 51, scope: !5162)
!5188 = !DILocation(line: 602, column: 5, scope: !5162)
!5189 = !DILocation(line: 602, column: 12, scope: !5162)
!5190 = !DILocation(line: 600, column: 10, scope: !5162)
!5191 = !DILocation(line: 600, column: 3, scope: !5162)
!5192 = !DILocation(line: 603, column: 2, scope: !5163)
!5193 = !DILocation(line: 604, column: 19, scope: !5157)
!5194 = !DILocation(line: 604, column: 25, scope: !5157)
!5195 = !DILocation(line: 604, column: 9, scope: !5157)
!5196 = !DILocation(line: 604, column: 2, scope: !5157)
!5197 = !DILocation(line: 605, column: 1, scope: !5157)
!5198 = !DISubprogram(name: "kmalloc_large", scope: !143, file: !143, line: 531, type: !4927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5199 = distinct !DISubprogram(name: "__kmalloc_index", scope: !143, file: !143, line: 444, type: !5200, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5202)
!5200 = !DISubroutineType(types: !5201)
!5201 = !{!7, !341, !903}
!5202 = !{!5203, !5204}
!5203 = !DILocalVariable(name: "size", arg: 1, scope: !5199, file: !143, line: 444, type: !341)
!5204 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5199, file: !143, line: 445, type: !903)
!5205 = !DILocation(line: 444, column: 60, scope: !5199)
!5206 = !DILocation(line: 445, column: 16, scope: !5199)
!5207 = !DILocation(line: 447, column: 7, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 447, column: 6)
!5209 = !DILocation(line: 447, column: 6, scope: !5199)
!5210 = !DILocation(line: 448, column: 3, scope: !5208)
!5211 = !DILocation(line: 450, column: 6, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 450, column: 6)
!5213 = !DILocation(line: 450, column: 11, scope: !5212)
!5214 = !DILocation(line: 450, column: 6, scope: !5199)
!5215 = !DILocation(line: 451, column: 3, scope: !5212)
!5216 = !DILocation(line: 453, column: 32, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 453, column: 6)
!5218 = !DILocation(line: 453, column: 37, scope: !5217)
!5219 = !DILocation(line: 453, column: 42, scope: !5217)
!5220 = !DILocation(line: 453, column: 45, scope: !5217)
!5221 = !DILocation(line: 453, column: 50, scope: !5217)
!5222 = !DILocation(line: 453, column: 6, scope: !5199)
!5223 = !DILocation(line: 454, column: 3, scope: !5217)
!5224 = !DILocation(line: 455, column: 32, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 455, column: 6)
!5226 = !DILocation(line: 455, column: 37, scope: !5225)
!5227 = !DILocation(line: 455, column: 43, scope: !5225)
!5228 = !DILocation(line: 455, column: 46, scope: !5225)
!5229 = !DILocation(line: 455, column: 51, scope: !5225)
!5230 = !DILocation(line: 455, column: 6, scope: !5199)
!5231 = !DILocation(line: 456, column: 3, scope: !5225)
!5232 = !DILocation(line: 457, column: 6, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 457, column: 6)
!5234 = !DILocation(line: 457, column: 11, scope: !5233)
!5235 = !DILocation(line: 457, column: 6, scope: !5199)
!5236 = !DILocation(line: 457, column: 26, scope: !5233)
!5237 = !DILocation(line: 458, column: 6, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 458, column: 6)
!5239 = !DILocation(line: 458, column: 11, scope: !5238)
!5240 = !DILocation(line: 458, column: 6, scope: !5199)
!5241 = !DILocation(line: 458, column: 26, scope: !5238)
!5242 = !DILocation(line: 459, column: 6, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 459, column: 6)
!5244 = !DILocation(line: 459, column: 11, scope: !5243)
!5245 = !DILocation(line: 459, column: 6, scope: !5199)
!5246 = !DILocation(line: 459, column: 26, scope: !5243)
!5247 = !DILocation(line: 460, column: 6, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 460, column: 6)
!5249 = !DILocation(line: 460, column: 11, scope: !5248)
!5250 = !DILocation(line: 460, column: 6, scope: !5199)
!5251 = !DILocation(line: 460, column: 26, scope: !5248)
!5252 = !DILocation(line: 461, column: 6, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 461, column: 6)
!5254 = !DILocation(line: 461, column: 11, scope: !5253)
!5255 = !DILocation(line: 461, column: 6, scope: !5199)
!5256 = !DILocation(line: 461, column: 26, scope: !5253)
!5257 = !DILocation(line: 462, column: 6, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 462, column: 6)
!5259 = !DILocation(line: 462, column: 11, scope: !5258)
!5260 = !DILocation(line: 462, column: 6, scope: !5199)
!5261 = !DILocation(line: 462, column: 26, scope: !5258)
!5262 = !DILocation(line: 463, column: 6, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 463, column: 6)
!5264 = !DILocation(line: 463, column: 11, scope: !5263)
!5265 = !DILocation(line: 463, column: 6, scope: !5199)
!5266 = !DILocation(line: 463, column: 26, scope: !5263)
!5267 = !DILocation(line: 464, column: 6, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 464, column: 6)
!5269 = !DILocation(line: 464, column: 11, scope: !5268)
!5270 = !DILocation(line: 464, column: 6, scope: !5199)
!5271 = !DILocation(line: 464, column: 26, scope: !5268)
!5272 = !DILocation(line: 465, column: 6, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 465, column: 6)
!5274 = !DILocation(line: 465, column: 11, scope: !5273)
!5275 = !DILocation(line: 465, column: 6, scope: !5199)
!5276 = !DILocation(line: 465, column: 26, scope: !5273)
!5277 = !DILocation(line: 466, column: 6, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 466, column: 6)
!5279 = !DILocation(line: 466, column: 11, scope: !5278)
!5280 = !DILocation(line: 466, column: 6, scope: !5199)
!5281 = !DILocation(line: 466, column: 26, scope: !5278)
!5282 = !DILocation(line: 467, column: 6, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 467, column: 6)
!5284 = !DILocation(line: 467, column: 11, scope: !5283)
!5285 = !DILocation(line: 467, column: 6, scope: !5199)
!5286 = !DILocation(line: 467, column: 26, scope: !5283)
!5287 = !DILocation(line: 468, column: 6, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 468, column: 6)
!5289 = !DILocation(line: 468, column: 11, scope: !5288)
!5290 = !DILocation(line: 468, column: 6, scope: !5199)
!5291 = !DILocation(line: 468, column: 26, scope: !5288)
!5292 = !DILocation(line: 469, column: 6, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 469, column: 6)
!5294 = !DILocation(line: 469, column: 11, scope: !5293)
!5295 = !DILocation(line: 469, column: 6, scope: !5199)
!5296 = !DILocation(line: 469, column: 26, scope: !5293)
!5297 = !DILocation(line: 470, column: 6, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 470, column: 6)
!5299 = !DILocation(line: 470, column: 11, scope: !5298)
!5300 = !DILocation(line: 470, column: 6, scope: !5199)
!5301 = !DILocation(line: 470, column: 26, scope: !5298)
!5302 = !DILocation(line: 471, column: 6, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 471, column: 6)
!5304 = !DILocation(line: 471, column: 11, scope: !5303)
!5305 = !DILocation(line: 471, column: 6, scope: !5199)
!5306 = !DILocation(line: 471, column: 26, scope: !5303)
!5307 = !DILocation(line: 472, column: 6, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 472, column: 6)
!5309 = !DILocation(line: 472, column: 11, scope: !5308)
!5310 = !DILocation(line: 472, column: 6, scope: !5199)
!5311 = !DILocation(line: 472, column: 26, scope: !5308)
!5312 = !DILocation(line: 473, column: 6, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 473, column: 6)
!5314 = !DILocation(line: 473, column: 11, scope: !5313)
!5315 = !DILocation(line: 473, column: 6, scope: !5199)
!5316 = !DILocation(line: 473, column: 26, scope: !5313)
!5317 = !DILocation(line: 474, column: 6, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 474, column: 6)
!5319 = !DILocation(line: 474, column: 11, scope: !5318)
!5320 = !DILocation(line: 474, column: 6, scope: !5199)
!5321 = !DILocation(line: 474, column: 27, scope: !5318)
!5322 = !DILocation(line: 475, column: 6, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 475, column: 6)
!5324 = !DILocation(line: 475, column: 11, scope: !5323)
!5325 = !DILocation(line: 475, column: 6, scope: !5199)
!5326 = !DILocation(line: 475, column: 32, scope: !5323)
!5327 = !DILocation(line: 477, column: 50, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5199, file: !143, line: 477, column: 6)
!5329 = !{i8 0, i8 2}
!5330 = !DILocation(line: 477, column: 6, scope: !5199)
!5331 = !DILocation(line: 478, column: 3, scope: !5328)
!5332 = !DILocation(line: 478, column: 3, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5334, file: !143, line: 478, column: 3)
!5334 = distinct !DILexicalBlock(scope: !5328, file: !143, line: 478, column: 3)
!5335 = !{i32 -2143545677}
!5336 = !DILocation(line: 478, column: 3, scope: !5334)
!5337 = !DILocation(line: 480, column: 3, scope: !5328)
!5338 = !DILocation(line: 480, column: 3, scope: !5339)
!5339 = distinct !DILexicalBlock(scope: !5328, file: !143, line: 480, column: 3)
!5340 = !DILocation(line: 480, column: 3, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5339, file: !143, line: 480, column: 3)
!5342 = !DILocation(line: 480, column: 3, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5339, file: !143, line: 480, column: 3)
!5344 = !{i64 2151421822, i64 2151421851, i64 2151421897, i64 2151421955, i64 2151422009, i64 2151422063, i64 2151422118, i64 2151422149}
!5345 = !DILocation(line: 483, column: 2, scope: !5199)
!5346 = !DILocation(line: 484, column: 1, scope: !5199)
!5347 = !DISubprogram(name: "kmalloc_trace", scope: !143, file: !143, line: 525, type: !5348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5348 = !DISubroutineType(types: !5349)
!5349 = !{!159, !5350, !157, !341}
!5350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5351, size: 64)
!5351 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2827, line: 11, flags: DIFlagFwdDecl)
!5352 = distinct !DISubprogram(name: "kmalloc_type", scope: !143, file: !143, line: 401, type: !5353, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5355)
!5353 = !DISubroutineType(types: !5354)
!5354 = !{!142, !157, !160}
!5355 = !{!5356, !5357}
!5356 = !DILocalVariable(name: "flags", arg: 1, scope: !5352, file: !143, line: 401, type: !157)
!5357 = !DILocalVariable(name: "caller", arg: 2, scope: !5352, file: !143, line: 401, type: !160)
!5358 = !DILocation(line: 401, column: 67, scope: !5352)
!5359 = !DILocation(line: 401, column: 88, scope: !5352)
!5360 = !DILocation(line: 407, column: 6, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5352, file: !143, line: 407, column: 6)
!5362 = !DILocation(line: 407, column: 6, scope: !5352)
!5363 = !DILocation(line: 413, column: 3, scope: !5361)
!5364 = !DILocation(line: 423, column: 38, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5352, file: !143, line: 423, column: 6)
!5366 = !DILocation(line: 423, column: 44, scope: !5365)
!5367 = !DILocation(line: 423, column: 6, scope: !5352)
!5368 = !DILocation(line: 424, column: 3, scope: !5365)
!5369 = !DILocation(line: 426, column: 3, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5352, file: !143, line: 425, column: 6)
!5371 = !DILocation(line: 429, column: 1, scope: !5352)
!5372 = !DISubprogram(name: "__kmalloc", scope: !143, file: !143, line: 488, type: !4927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5373 = !DISubprogram(name: "__compiletime_assert_117", scope: !143, file: !143, line: 478, type: !2420, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5374 = !DISubprogram(name: "put_device", scope: !70, file: !70, line: 1231, type: !4081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5375 = !DISubprogram(name: "kfree", scope: !143, file: !143, line: 227, type: !5376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5376 = !DISubroutineType(types: !5377)
!5377 = !{null, !1299}
!5378 = !DISubprogram(name: "mutex_lock", scope: !657, file: !657, line: 227, type: !5379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5379 = !DISubroutineType(types: !5380)
!5380 = !{null, !4947}
!5381 = distinct !DISubprogram(name: "snd_hwdep_search", scope: !3, file: !3, line: 32, type: !5382, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5384)
!5382 = !DISubroutineType(types: !5383)
!5383 = !{!161, !166, !85}
!5384 = !{!5385, !5386, !5387, !5388, !5391}
!5385 = !DILocalVariable(name: "card", arg: 1, scope: !5381, file: !3, line: 32, type: !166)
!5386 = !DILocalVariable(name: "device", arg: 2, scope: !5381, file: !3, line: 32, type: !85)
!5387 = !DILocalVariable(name: "hwdep", scope: !5381, file: !3, line: 34, type: !161)
!5388 = !DILocalVariable(name: "__mptr", scope: !5389, file: !3, line: 36, type: !159)
!5389 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 36, column: 2)
!5390 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 36, column: 2)
!5391 = !DILocalVariable(name: "__mptr", scope: !5392, file: !3, line: 36, type: !159)
!5392 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 36, column: 2)
!5393 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 36, column: 2)
!5394 = !DILocation(line: 32, column: 60, scope: !5381)
!5395 = !DILocation(line: 32, column: 70, scope: !5381)
!5396 = !DILocation(line: 34, column: 2, scope: !5381)
!5397 = !DILocation(line: 34, column: 20, scope: !5381)
!5398 = !DILocation(line: 36, column: 2, scope: !5389)
!5399 = !DILocation(line: 36, column: 2, scope: !5390)
!5400 = !DILocation(line: 36, column: 2, scope: !5393)
!5401 = !DILocation(line: 37, column: 7, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 37, column: 7)
!5403 = !DILocation(line: 37, column: 14, scope: !5402)
!5404 = !DILocation(line: 37, column: 22, scope: !5402)
!5405 = !DILocation(line: 37, column: 19, scope: !5402)
!5406 = !DILocation(line: 37, column: 27, scope: !5402)
!5407 = !DILocation(line: 37, column: 30, scope: !5402)
!5408 = !DILocation(line: 37, column: 37, scope: !5402)
!5409 = !DILocation(line: 37, column: 47, scope: !5402)
!5410 = !DILocation(line: 37, column: 44, scope: !5402)
!5411 = !DILocation(line: 37, column: 7, scope: !5393)
!5412 = !DILocation(line: 38, column: 11, scope: !5402)
!5413 = !DILocation(line: 38, column: 4, scope: !5402)
!5414 = !DILocation(line: 36, column: 2, scope: !5392)
!5415 = distinct !{!5415, !5399, !5416, !5094, !5095}
!5416 = !DILocation(line: 38, column: 11, scope: !5390)
!5417 = !DILocation(line: 39, column: 2, scope: !5381)
!5418 = !DILocation(line: 40, column: 1, scope: !5381)
!5419 = !DISubprogram(name: "mutex_unlock", scope: !657, file: !657, line: 246, type: !5379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5420 = distinct !DISubprogram(name: "list_add_tail", scope: !5421, file: !5421, line: 181, type: !5422, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5424)
!5421 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5422 = !DISubroutineType(types: !5423)
!5423 = !{null, !199, !199}
!5424 = !{!5425, !5426}
!5425 = !DILocalVariable(name: "new", arg: 1, scope: !5420, file: !5421, line: 181, type: !199)
!5426 = !DILocalVariable(name: "head", arg: 2, scope: !5420, file: !5421, line: 181, type: !199)
!5427 = !DILocation(line: 181, column: 52, scope: !5420)
!5428 = !DILocation(line: 181, column: 75, scope: !5420)
!5429 = !DILocation(line: 183, column: 13, scope: !5420)
!5430 = !DILocation(line: 183, column: 18, scope: !5420)
!5431 = !DILocation(line: 183, column: 24, scope: !5420)
!5432 = !DILocation(line: 183, column: 30, scope: !5420)
!5433 = !DILocation(line: 183, column: 2, scope: !5420)
!5434 = !DILocation(line: 184, column: 1, scope: !5420)
!5435 = !DISubprogram(name: "snd_register_device", scope: !118, file: !118, line: 244, type: !5436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5436 = !DISubroutineType(types: !5437)
!5437 = !{!85, !85, !166, !85, !1023, !159, !4052}
!5438 = !DISubprogram(name: "_dev_err", scope: !5439, file: !5439, line: 50, type: !5440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5439 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5440 = !DISubroutineType(types: !5441)
!5441 = !{null, !4072, !213, null}
!5442 = distinct !DISubprogram(name: "list_del", scope: !5421, file: !5421, line: 227, type: !5443, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5445)
!5443 = !DISubroutineType(types: !5444)
!5444 = !{null, !199}
!5445 = !{!5446}
!5446 = !DILocalVariable(name: "entry", arg: 1, scope: !5442, file: !5421, line: 227, type: !199)
!5447 = !DILocation(line: 227, column: 47, scope: !5442)
!5448 = !DILocation(line: 229, column: 19, scope: !5442)
!5449 = !DILocation(line: 229, column: 2, scope: !5442)
!5450 = !DILocation(line: 230, column: 2, scope: !5442)
!5451 = !DILocation(line: 230, column: 9, scope: !5442)
!5452 = !DILocation(line: 230, column: 14, scope: !5442)
!5453 = !DILocation(line: 231, column: 2, scope: !5442)
!5454 = !DILocation(line: 231, column: 9, scope: !5442)
!5455 = !DILocation(line: 231, column: 14, scope: !5442)
!5456 = !DILocation(line: 232, column: 1, scope: !5442)
!5457 = distinct !DISubprogram(name: "__list_add", scope: !5421, file: !5421, line: 146, type: !5458, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5460)
!5458 = !DISubroutineType(types: !5459)
!5459 = !{null, !199, !199, !199}
!5460 = !{!5461, !5462, !5463}
!5461 = !DILocalVariable(name: "new", arg: 1, scope: !5457, file: !5421, line: 146, type: !199)
!5462 = !DILocalVariable(name: "prev", arg: 2, scope: !5457, file: !5421, line: 147, type: !199)
!5463 = !DILocalVariable(name: "next", arg: 3, scope: !5457, file: !5421, line: 148, type: !199)
!5464 = !DILocation(line: 146, column: 49, scope: !5457)
!5465 = !DILocation(line: 147, column: 28, scope: !5457)
!5466 = !DILocation(line: 148, column: 28, scope: !5457)
!5467 = !DILocation(line: 150, column: 24, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5457, file: !5421, line: 150, column: 6)
!5469 = !DILocation(line: 150, column: 29, scope: !5468)
!5470 = !DILocation(line: 150, column: 35, scope: !5468)
!5471 = !DILocation(line: 150, column: 7, scope: !5468)
!5472 = !DILocation(line: 150, column: 6, scope: !5457)
!5473 = !DILocation(line: 151, column: 3, scope: !5468)
!5474 = !DILocation(line: 153, column: 15, scope: !5457)
!5475 = !DILocation(line: 153, column: 2, scope: !5457)
!5476 = !DILocation(line: 153, column: 8, scope: !5457)
!5477 = !DILocation(line: 153, column: 13, scope: !5457)
!5478 = !DILocation(line: 154, column: 14, scope: !5457)
!5479 = !DILocation(line: 154, column: 2, scope: !5457)
!5480 = !DILocation(line: 154, column: 7, scope: !5457)
!5481 = !DILocation(line: 154, column: 12, scope: !5457)
!5482 = !DILocation(line: 155, column: 14, scope: !5457)
!5483 = !DILocation(line: 155, column: 2, scope: !5457)
!5484 = !DILocation(line: 155, column: 7, scope: !5457)
!5485 = !DILocation(line: 155, column: 12, scope: !5457)
!5486 = !DILocation(line: 156, column: 2, scope: !5457)
!5487 = !DILocation(line: 156, column: 2, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5457, file: !5421, line: 156, column: 2)
!5489 = !DILocation(line: 156, column: 2, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5488, file: !5421, line: 156, column: 2)
!5491 = !DILocation(line: 156, column: 2, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5488, file: !5421, line: 156, column: 2)
!5493 = !DILocation(line: 157, column: 1, scope: !5457)
!5494 = distinct !DISubprogram(name: "__list_add_valid", scope: !5421, file: !5421, line: 128, type: !5495, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5497)
!5495 = !DISubroutineType(types: !5496)
!5496 = !{!903, !199, !199, !199}
!5497 = !{!5498, !5499, !5500}
!5498 = !DILocalVariable(name: "new", arg: 1, scope: !5494, file: !5421, line: 128, type: !199)
!5499 = !DILocalVariable(name: "prev", arg: 2, scope: !5494, file: !5421, line: 129, type: !199)
!5500 = !DILocalVariable(name: "next", arg: 3, scope: !5494, file: !5421, line: 130, type: !199)
!5501 = !DILocation(line: 128, column: 55, scope: !5494)
!5502 = !DILocation(line: 129, column: 23, scope: !5494)
!5503 = !DILocation(line: 130, column: 23, scope: !5494)
!5504 = !DILocation(line: 132, column: 2, scope: !5494)
!5505 = distinct !DISubprogram(name: "snd_hwdep_llseek", scope: !3, file: !3, line: 42, type: !1030, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5506)
!5506 = !{!5507, !5508, !5509, !5510}
!5507 = !DILocalVariable(name: "file", arg: 1, scope: !5505, file: !3, line: 42, type: !1032)
!5508 = !DILocalVariable(name: "offset", arg: 2, scope: !5505, file: !3, line: 42, type: !532)
!5509 = !DILocalVariable(name: "orig", arg: 3, scope: !5505, file: !3, line: 42, type: !85)
!5510 = !DILocalVariable(name: "hw", scope: !5505, file: !3, line: 44, type: !161)
!5511 = !DILocation(line: 42, column: 46, scope: !5505)
!5512 = !DILocation(line: 42, column: 59, scope: !5505)
!5513 = !DILocation(line: 42, column: 71, scope: !5505)
!5514 = !DILocation(line: 44, column: 2, scope: !5505)
!5515 = !DILocation(line: 44, column: 20, scope: !5505)
!5516 = !DILocation(line: 44, column: 25, scope: !5505)
!5517 = !DILocation(line: 44, column: 31, scope: !5505)
!5518 = !DILocation(line: 45, column: 6, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5505, file: !3, line: 45, column: 6)
!5520 = !DILocation(line: 45, column: 10, scope: !5519)
!5521 = !DILocation(line: 45, column: 14, scope: !5519)
!5522 = !DILocation(line: 45, column: 6, scope: !5505)
!5523 = !DILocation(line: 46, column: 10, scope: !5519)
!5524 = !DILocation(line: 46, column: 14, scope: !5519)
!5525 = !DILocation(line: 46, column: 18, scope: !5519)
!5526 = !DILocation(line: 46, column: 25, scope: !5519)
!5527 = !DILocation(line: 46, column: 29, scope: !5519)
!5528 = !DILocation(line: 46, column: 35, scope: !5519)
!5529 = !DILocation(line: 46, column: 43, scope: !5519)
!5530 = !DILocation(line: 46, column: 3, scope: !5519)
!5531 = !DILocation(line: 47, column: 2, scope: !5505)
!5532 = !DILocation(line: 48, column: 1, scope: !5505)
!5533 = distinct !DISubprogram(name: "snd_hwdep_read", scope: !3, file: !3, line: 50, type: !1035, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5534)
!5534 = !{!5535, !5536, !5537, !5538, !5539}
!5535 = !DILocalVariable(name: "file", arg: 1, scope: !5533, file: !3, line: 50, type: !1032)
!5536 = !DILocalVariable(name: "buf", arg: 2, scope: !5533, file: !3, line: 50, type: !294)
!5537 = !DILocalVariable(name: "count", arg: 3, scope: !5533, file: !3, line: 51, type: !341)
!5538 = !DILocalVariable(name: "offset", arg: 4, scope: !5533, file: !3, line: 51, type: !685)
!5539 = !DILocalVariable(name: "hw", scope: !5533, file: !3, line: 53, type: !161)
!5540 = !DILocation(line: 50, column: 45, scope: !5533)
!5541 = !DILocation(line: 50, column: 64, scope: !5533)
!5542 = !DILocation(line: 51, column: 17, scope: !5533)
!5543 = !DILocation(line: 51, column: 32, scope: !5533)
!5544 = !DILocation(line: 53, column: 2, scope: !5533)
!5545 = !DILocation(line: 53, column: 20, scope: !5533)
!5546 = !DILocation(line: 53, column: 25, scope: !5533)
!5547 = !DILocation(line: 53, column: 31, scope: !5533)
!5548 = !DILocation(line: 54, column: 6, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 54, column: 6)
!5550 = !DILocation(line: 54, column: 10, scope: !5549)
!5551 = !DILocation(line: 54, column: 14, scope: !5549)
!5552 = !DILocation(line: 54, column: 6, scope: !5533)
!5553 = !DILocation(line: 55, column: 10, scope: !5549)
!5554 = !DILocation(line: 55, column: 14, scope: !5549)
!5555 = !DILocation(line: 55, column: 18, scope: !5549)
!5556 = !DILocation(line: 55, column: 23, scope: !5549)
!5557 = !DILocation(line: 55, column: 27, scope: !5549)
!5558 = !DILocation(line: 55, column: 32, scope: !5549)
!5559 = !DILocation(line: 55, column: 39, scope: !5549)
!5560 = !DILocation(line: 55, column: 3, scope: !5549)
!5561 = !DILocation(line: 56, column: 2, scope: !5533)
!5562 = !DILocation(line: 57, column: 1, scope: !5533)
!5563 = distinct !DISubprogram(name: "snd_hwdep_write", scope: !3, file: !3, line: 59, type: !1039, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5564)
!5564 = !{!5565, !5566, !5567, !5568, !5569}
!5565 = !DILocalVariable(name: "file", arg: 1, scope: !5563, file: !3, line: 59, type: !1032)
!5566 = !DILocalVariable(name: "buf", arg: 2, scope: !5563, file: !3, line: 59, type: !213)
!5567 = !DILocalVariable(name: "count", arg: 3, scope: !5563, file: !3, line: 60, type: !341)
!5568 = !DILocalVariable(name: "offset", arg: 4, scope: !5563, file: !3, line: 60, type: !685)
!5569 = !DILocalVariable(name: "hw", scope: !5563, file: !3, line: 62, type: !161)
!5570 = !DILocation(line: 59, column: 46, scope: !5563)
!5571 = !DILocation(line: 59, column: 71, scope: !5563)
!5572 = !DILocation(line: 60, column: 18, scope: !5563)
!5573 = !DILocation(line: 60, column: 33, scope: !5563)
!5574 = !DILocation(line: 62, column: 2, scope: !5563)
!5575 = !DILocation(line: 62, column: 20, scope: !5563)
!5576 = !DILocation(line: 62, column: 25, scope: !5563)
!5577 = !DILocation(line: 62, column: 31, scope: !5563)
!5578 = !DILocation(line: 63, column: 6, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5563, file: !3, line: 63, column: 6)
!5580 = !DILocation(line: 63, column: 10, scope: !5579)
!5581 = !DILocation(line: 63, column: 14, scope: !5579)
!5582 = !DILocation(line: 63, column: 6, scope: !5563)
!5583 = !DILocation(line: 64, column: 10, scope: !5579)
!5584 = !DILocation(line: 64, column: 14, scope: !5579)
!5585 = !DILocation(line: 64, column: 18, scope: !5579)
!5586 = !DILocation(line: 64, column: 24, scope: !5579)
!5587 = !DILocation(line: 64, column: 28, scope: !5579)
!5588 = !DILocation(line: 64, column: 33, scope: !5579)
!5589 = !DILocation(line: 64, column: 40, scope: !5579)
!5590 = !DILocation(line: 64, column: 3, scope: !5579)
!5591 = !DILocation(line: 65, column: 2, scope: !5563)
!5592 = !DILocation(line: 66, column: 1, scope: !5563)
!5593 = distinct !DISubprogram(name: "snd_hwdep_poll", scope: !3, file: !3, line: 165, type: !5594, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5596)
!5594 = !DISubroutineType(types: !5595)
!5595 = !{!1149, !1032, !4469}
!5596 = !{!5597, !5598, !5599}
!5597 = !DILocalVariable(name: "file", arg: 1, scope: !5593, file: !3, line: 165, type: !1032)
!5598 = !DILocalVariable(name: "wait", arg: 2, scope: !5593, file: !3, line: 165, type: !4469)
!5599 = !DILocalVariable(name: "hw", scope: !5593, file: !3, line: 167, type: !161)
!5600 = !DILocation(line: 165, column: 46, scope: !5593)
!5601 = !DILocation(line: 165, column: 65, scope: !5593)
!5602 = !DILocation(line: 167, column: 2, scope: !5593)
!5603 = !DILocation(line: 167, column: 20, scope: !5593)
!5604 = !DILocation(line: 167, column: 25, scope: !5593)
!5605 = !DILocation(line: 167, column: 31, scope: !5593)
!5606 = !DILocation(line: 168, column: 6, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 168, column: 6)
!5608 = !DILocation(line: 168, column: 10, scope: !5607)
!5609 = !DILocation(line: 168, column: 14, scope: !5607)
!5610 = !DILocation(line: 168, column: 6, scope: !5593)
!5611 = !DILocation(line: 169, column: 10, scope: !5607)
!5612 = !DILocation(line: 169, column: 14, scope: !5607)
!5613 = !DILocation(line: 169, column: 18, scope: !5607)
!5614 = !DILocation(line: 169, column: 23, scope: !5607)
!5615 = !DILocation(line: 169, column: 27, scope: !5607)
!5616 = !DILocation(line: 169, column: 33, scope: !5607)
!5617 = !DILocation(line: 169, column: 3, scope: !5607)
!5618 = !DILocation(line: 170, column: 2, scope: !5593)
!5619 = !DILocation(line: 171, column: 1, scope: !5593)
!5620 = distinct !DISubprogram(name: "snd_hwdep_ioctl", scope: !3, file: !3, line: 236, type: !1164, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5621)
!5621 = !{!5622, !5623, !5624, !5625, !5626, !5627, !5631, !5632, !5633, !5634}
!5622 = !DILocalVariable(name: "file", arg: 1, scope: !5620, file: !3, line: 236, type: !1032)
!5623 = !DILocalVariable(name: "cmd", arg: 2, scope: !5620, file: !3, line: 236, type: !7)
!5624 = !DILocalVariable(name: "arg", arg: 3, scope: !5620, file: !3, line: 237, type: !160)
!5625 = !DILocalVariable(name: "hw", scope: !5620, file: !3, line: 239, type: !161)
!5626 = !DILocalVariable(name: "argp", scope: !5620, file: !3, line: 240, type: !159)
!5627 = !DILocalVariable(name: "__ret_pu", scope: !5628, file: !3, line: 243, type: !85)
!5628 = distinct !DILexicalBlock(scope: !5629, file: !3, line: 243, column: 10)
!5629 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 243, column: 10)
!5630 = distinct !DILexicalBlock(scope: !5620, file: !3, line: 241, column: 15)
!5631 = !DILocalVariable(name: "__ptr_pu", scope: !5628, file: !3, line: 243, type: !159)
!5632 = !DILocalVariable(name: "__val_pu", scope: !5628, file: !3, line: 243, type: !85)
!5633 = !DILocalVariable(name: "__x", scope: !5628, file: !3, line: 243, type: !85)
!5634 = !DILocalVariable(name: "__ptr", scope: !5628, file: !3, line: 243, type: !638)
!5635 = !DILocation(line: 236, column: 43, scope: !5620)
!5636 = !DILocation(line: 236, column: 62, scope: !5620)
!5637 = !DILocation(line: 237, column: 22, scope: !5620)
!5638 = !DILocation(line: 239, column: 2, scope: !5620)
!5639 = !DILocation(line: 239, column: 20, scope: !5620)
!5640 = !DILocation(line: 239, column: 25, scope: !5620)
!5641 = !DILocation(line: 239, column: 31, scope: !5620)
!5642 = !DILocation(line: 240, column: 2, scope: !5620)
!5643 = !DILocation(line: 240, column: 15, scope: !5620)
!5644 = !DILocation(line: 240, column: 37, scope: !5620)
!5645 = !DILocation(line: 240, column: 22, scope: !5620)
!5646 = !DILocation(line: 241, column: 10, scope: !5620)
!5647 = !DILocation(line: 241, column: 2, scope: !5620)
!5648 = !DILocation(line: 243, column: 10, scope: !5629)
!5649 = !DILocation(line: 243, column: 10, scope: !5628)
!5650 = !{i64 2154064845}
!5651 = !DILocation(line: 243, column: 10, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5628, file: !3, line: 243, column: 10)
!5653 = !DILocation(line: 243, column: 3, scope: !5630)
!5654 = !DILocation(line: 245, column: 25, scope: !5630)
!5655 = !DILocation(line: 245, column: 29, scope: !5630)
!5656 = !DILocation(line: 245, column: 10, scope: !5630)
!5657 = !DILocation(line: 245, column: 3, scope: !5630)
!5658 = !DILocation(line: 247, column: 31, scope: !5630)
!5659 = !DILocation(line: 247, column: 35, scope: !5630)
!5660 = !DILocation(line: 247, column: 10, scope: !5630)
!5661 = !DILocation(line: 247, column: 3, scope: !5630)
!5662 = !DILocation(line: 249, column: 34, scope: !5630)
!5663 = !DILocation(line: 249, column: 38, scope: !5630)
!5664 = !DILocation(line: 249, column: 10, scope: !5630)
!5665 = !DILocation(line: 249, column: 3, scope: !5630)
!5666 = !DILocation(line: 251, column: 6, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5620, file: !3, line: 251, column: 6)
!5668 = !DILocation(line: 251, column: 10, scope: !5667)
!5669 = !DILocation(line: 251, column: 14, scope: !5667)
!5670 = !DILocation(line: 251, column: 6, scope: !5620)
!5671 = !DILocation(line: 252, column: 10, scope: !5667)
!5672 = !DILocation(line: 252, column: 14, scope: !5667)
!5673 = !DILocation(line: 252, column: 18, scope: !5667)
!5674 = !DILocation(line: 252, column: 24, scope: !5667)
!5675 = !DILocation(line: 252, column: 28, scope: !5667)
!5676 = !DILocation(line: 252, column: 34, scope: !5667)
!5677 = !DILocation(line: 252, column: 39, scope: !5667)
!5678 = !DILocation(line: 252, column: 3, scope: !5667)
!5679 = !DILocation(line: 253, column: 2, scope: !5620)
!5680 = !DILocation(line: 254, column: 1, scope: !5620)
!5681 = distinct !DISubprogram(name: "snd_hwdep_ioctl_compat", scope: !153, file: !153, line: 39, type: !1164, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5682)
!5682 = !{!5683, !5684, !5685, !5686, !5687}
!5683 = !DILocalVariable(name: "file", arg: 1, scope: !5681, file: !153, line: 39, type: !1032)
!5684 = !DILocalVariable(name: "cmd", arg: 2, scope: !5681, file: !153, line: 39, type: !7)
!5685 = !DILocalVariable(name: "arg", arg: 3, scope: !5681, file: !153, line: 40, type: !160)
!5686 = !DILocalVariable(name: "hw", scope: !5681, file: !153, line: 42, type: !161)
!5687 = !DILocalVariable(name: "argp", scope: !5681, file: !153, line: 43, type: !159)
!5688 = !DILocation(line: 39, column: 50, scope: !5681)
!5689 = !DILocation(line: 39, column: 69, scope: !5681)
!5690 = !DILocation(line: 40, column: 22, scope: !5681)
!5691 = !DILocation(line: 42, column: 2, scope: !5681)
!5692 = !DILocation(line: 42, column: 20, scope: !5681)
!5693 = !DILocation(line: 42, column: 25, scope: !5681)
!5694 = !DILocation(line: 42, column: 31, scope: !5681)
!5695 = !DILocation(line: 43, column: 2, scope: !5681)
!5696 = !DILocation(line: 43, column: 15, scope: !5681)
!5697 = !DILocation(line: 43, column: 33, scope: !5681)
!5698 = !DILocation(line: 43, column: 22, scope: !5681)
!5699 = !DILocation(line: 44, column: 10, scope: !5681)
!5700 = !DILocation(line: 44, column: 2, scope: !5681)
!5701 = !DILocation(line: 48, column: 26, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5681, file: !153, line: 44, column: 15)
!5703 = !DILocation(line: 48, column: 32, scope: !5702)
!5704 = !DILocation(line: 48, column: 52, scope: !5702)
!5705 = !DILocation(line: 48, column: 37, scope: !5702)
!5706 = !DILocation(line: 48, column: 10, scope: !5702)
!5707 = !DILocation(line: 48, column: 3, scope: !5702)
!5708 = !DILocation(line: 50, column: 36, scope: !5702)
!5709 = !DILocation(line: 50, column: 40, scope: !5702)
!5710 = !DILocation(line: 50, column: 10, scope: !5702)
!5711 = !DILocation(line: 50, column: 3, scope: !5702)
!5712 = !DILocation(line: 52, column: 6, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5681, file: !153, line: 52, column: 6)
!5714 = !DILocation(line: 52, column: 10, scope: !5713)
!5715 = !DILocation(line: 52, column: 14, scope: !5713)
!5716 = !DILocation(line: 52, column: 6, scope: !5681)
!5717 = !DILocation(line: 53, column: 10, scope: !5713)
!5718 = !DILocation(line: 53, column: 14, scope: !5713)
!5719 = !DILocation(line: 53, column: 18, scope: !5713)
!5720 = !DILocation(line: 53, column: 31, scope: !5713)
!5721 = !DILocation(line: 53, column: 35, scope: !5713)
!5722 = !DILocation(line: 53, column: 41, scope: !5713)
!5723 = !DILocation(line: 53, column: 46, scope: !5713)
!5724 = !DILocation(line: 53, column: 3, scope: !5713)
!5725 = !DILocation(line: 54, column: 2, scope: !5681)
!5726 = !DILocation(line: 55, column: 1, scope: !5681)
!5727 = distinct !DISubprogram(name: "snd_hwdep_mmap", scope: !3, file: !3, line: 256, type: !1169, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5728)
!5728 = !{!5729, !5730, !5731}
!5729 = !DILocalVariable(name: "file", arg: 1, scope: !5727, file: !3, line: 256, type: !1032)
!5730 = !DILocalVariable(name: "vma", arg: 2, scope: !5727, file: !3, line: 256, type: !1171)
!5731 = !DILocalVariable(name: "hw", scope: !5727, file: !3, line: 258, type: !161)
!5732 = !DILocation(line: 256, column: 41, scope: !5727)
!5733 = !DILocation(line: 256, column: 71, scope: !5727)
!5734 = !DILocation(line: 258, column: 2, scope: !5727)
!5735 = !DILocation(line: 258, column: 20, scope: !5727)
!5736 = !DILocation(line: 258, column: 25, scope: !5727)
!5737 = !DILocation(line: 258, column: 31, scope: !5727)
!5738 = !DILocation(line: 259, column: 6, scope: !5739)
!5739 = distinct !DILexicalBlock(scope: !5727, file: !3, line: 259, column: 6)
!5740 = !DILocation(line: 259, column: 10, scope: !5739)
!5741 = !DILocation(line: 259, column: 14, scope: !5739)
!5742 = !DILocation(line: 259, column: 6, scope: !5727)
!5743 = !DILocation(line: 260, column: 10, scope: !5739)
!5744 = !DILocation(line: 260, column: 14, scope: !5739)
!5745 = !DILocation(line: 260, column: 18, scope: !5739)
!5746 = !DILocation(line: 260, column: 23, scope: !5739)
!5747 = !DILocation(line: 260, column: 27, scope: !5739)
!5748 = !DILocation(line: 260, column: 33, scope: !5739)
!5749 = !DILocation(line: 260, column: 3, scope: !5739)
!5750 = !DILocation(line: 261, column: 2, scope: !5727)
!5751 = !DILocation(line: 262, column: 1, scope: !5727)
!5752 = distinct !DISubprogram(name: "snd_hwdep_open", scope: !3, file: !3, line: 68, type: !1396, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5753)
!5753 = !{!5754, !5755, !5756, !5757, !5758, !5759, !5772, !5778}
!5754 = !DILocalVariable(name: "inode", arg: 1, scope: !5752, file: !3, line: 68, type: !373)
!5755 = !DILocalVariable(name: "file", arg: 2, scope: !5752, file: !3, line: 68, type: !1032)
!5756 = !DILocalVariable(name: "major", scope: !5752, file: !3, line: 70, type: !85)
!5757 = !DILocalVariable(name: "hw", scope: !5752, file: !3, line: 71, type: !161)
!5758 = !DILocalVariable(name: "err", scope: !5752, file: !3, line: 72, type: !85)
!5759 = !DILocalVariable(name: "wait", scope: !5752, file: !3, line: 73, type: !5760)
!5760 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !773, line: 14, baseType: !5761)
!5761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !773, line: 30, size: 320, elements: !5762)
!5762 = !{!5763, !5764, !5765, !5771}
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5761, file: !773, line: 31, baseType: !7, size: 32)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5761, file: !773, line: 32, baseType: !159, size: 64, offset: 64)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5761, file: !773, line: 33, baseType: !5766, size: 64, offset: 128)
!5766 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !773, line: 16, baseType: !5767)
!5767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5768, size: 64)
!5768 = !DISubroutineType(types: !5769)
!5769 = !{!85, !5770, !7, !85, !159}
!5770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5761, size: 64)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5761, file: !773, line: 34, baseType: !196, size: 128, offset: 192)
!5772 = !DILocalVariable(name: "__ai_ptr", scope: !5773, file: !3, line: 115, type: !1779)
!5773 = distinct !DILexicalBlock(scope: !5774, file: !3, line: 115, column: 3)
!5774 = distinct !DILexicalBlock(scope: !5775, file: !3, line: 115, column: 3)
!5775 = distinct !DILexicalBlock(scope: !5776, file: !3, line: 115, column: 3)
!5776 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 115, column: 3)
!5777 = distinct !DILexicalBlock(scope: !5752, file: !3, line: 96, column: 12)
!5778 = !DILocalVariable(name: "__ret", scope: !5779, file: !3, line: 115, type: !7)
!5779 = distinct !DILexicalBlock(scope: !5773, file: !3, line: 115, column: 3)
!5780 = !DILocation(line: 68, column: 41, scope: !5752)
!5781 = !DILocation(line: 68, column: 62, scope: !5752)
!5782 = !DILocation(line: 70, column: 2, scope: !5752)
!5783 = !DILocation(line: 70, column: 6, scope: !5752)
!5784 = !DILocation(line: 70, column: 21, scope: !5752)
!5785 = !DILocation(line: 70, column: 14, scope: !5752)
!5786 = !DILocation(line: 71, column: 2, scope: !5752)
!5787 = !DILocation(line: 71, column: 20, scope: !5752)
!5788 = !DILocation(line: 72, column: 2, scope: !5752)
!5789 = !DILocation(line: 72, column: 6, scope: !5752)
!5790 = !DILocation(line: 73, column: 2, scope: !5752)
!5791 = !DILocation(line: 73, column: 21, scope: !5752)
!5792 = !DILocation(line: 75, column: 6, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5752, file: !3, line: 75, column: 6)
!5794 = !DILocation(line: 75, column: 15, scope: !5793)
!5795 = !DILocation(line: 75, column: 12, scope: !5793)
!5796 = !DILocation(line: 75, column: 6, scope: !5752)
!5797 = !DILocation(line: 76, column: 37, scope: !5798)
!5798 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 75, column: 26)
!5799 = !DILocation(line: 76, column: 30, scope: !5798)
!5800 = !DILocation(line: 76, column: 8, scope: !5798)
!5801 = !DILocation(line: 76, column: 6, scope: !5798)
!5802 = !DILocation(line: 83, column: 2, scope: !5798)
!5803 = !DILocation(line: 84, column: 3, scope: !5793)
!5804 = !DILocation(line: 85, column: 6, scope: !5805)
!5805 = distinct !DILexicalBlock(scope: !5752, file: !3, line: 85, column: 6)
!5806 = !DILocation(line: 85, column: 9, scope: !5805)
!5807 = !DILocation(line: 85, column: 6, scope: !5752)
!5808 = !DILocation(line: 86, column: 3, scope: !5805)
!5809 = !DILocation(line: 88, column: 22, scope: !5810)
!5810 = distinct !DILexicalBlock(scope: !5752, file: !3, line: 88, column: 6)
!5811 = !DILocation(line: 88, column: 26, scope: !5810)
!5812 = !DILocation(line: 88, column: 32, scope: !5810)
!5813 = !DILocation(line: 88, column: 7, scope: !5810)
!5814 = !DILocation(line: 88, column: 6, scope: !5752)
!5815 = !DILocation(line: 89, column: 18, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 88, column: 41)
!5817 = !DILocation(line: 89, column: 22, scope: !5816)
!5818 = !DILocation(line: 89, column: 3, scope: !5816)
!5819 = !DILocation(line: 90, column: 3, scope: !5816)
!5820 = !DILocation(line: 93, column: 30, scope: !5752)
!5821 = !DILocation(line: 93, column: 2, scope: !5752)
!5822 = !DILocation(line: 94, column: 18, scope: !5752)
!5823 = !DILocation(line: 94, column: 22, scope: !5752)
!5824 = !DILocation(line: 94, column: 2, scope: !5752)
!5825 = !DILocation(line: 95, column: 14, scope: !5752)
!5826 = !DILocation(line: 95, column: 18, scope: !5752)
!5827 = !DILocation(line: 95, column: 2, scope: !5752)
!5828 = !DILocation(line: 96, column: 2, scope: !5752)
!5829 = !DILocation(line: 97, column: 7, scope: !5830)
!5830 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 97, column: 7)
!5831 = !DILocation(line: 97, column: 11, scope: !5830)
!5832 = !DILocation(line: 97, column: 21, scope: !5830)
!5833 = !DILocation(line: 97, column: 24, scope: !5830)
!5834 = !DILocation(line: 97, column: 28, scope: !5830)
!5835 = !DILocation(line: 97, column: 33, scope: !5830)
!5836 = !DILocation(line: 97, column: 7, scope: !5777)
!5837 = !DILocation(line: 98, column: 8, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5830, file: !3, line: 97, column: 38)
!5839 = !DILocation(line: 99, column: 4, scope: !5838)
!5840 = !DILocation(line: 101, column: 8, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 101, column: 7)
!5842 = !DILocation(line: 101, column: 12, scope: !5841)
!5843 = !DILocation(line: 101, column: 16, scope: !5841)
!5844 = !DILocation(line: 101, column: 7, scope: !5777)
!5845 = !DILocation(line: 102, column: 8, scope: !5846)
!5846 = distinct !DILexicalBlock(scope: !5841, file: !3, line: 101, column: 22)
!5847 = !DILocation(line: 103, column: 4, scope: !5846)
!5848 = !DILocation(line: 105, column: 9, scope: !5777)
!5849 = !DILocation(line: 105, column: 13, scope: !5777)
!5850 = !DILocation(line: 105, column: 17, scope: !5777)
!5851 = !DILocation(line: 105, column: 22, scope: !5777)
!5852 = !DILocation(line: 105, column: 26, scope: !5777)
!5853 = !DILocation(line: 105, column: 7, scope: !5777)
!5854 = !DILocation(line: 106, column: 7, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 106, column: 7)
!5856 = !DILocation(line: 106, column: 11, scope: !5855)
!5857 = !DILocation(line: 106, column: 7, scope: !5777)
!5858 = !DILocation(line: 107, column: 4, scope: !5855)
!5859 = !DILocation(line: 108, column: 7, scope: !5860)
!5860 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 108, column: 7)
!5861 = !DILocation(line: 108, column: 11, scope: !5860)
!5862 = !DILocation(line: 108, column: 7, scope: !5777)
!5863 = !DILocation(line: 109, column: 8, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5865, file: !3, line: 109, column: 8)
!5865 = distinct !DILexicalBlock(scope: !5860, file: !3, line: 108, column: 23)
!5866 = !DILocation(line: 109, column: 14, scope: !5864)
!5867 = !DILocation(line: 109, column: 22, scope: !5864)
!5868 = !DILocation(line: 109, column: 8, scope: !5865)
!5869 = !DILocation(line: 110, column: 9, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !5864, file: !3, line: 109, column: 36)
!5871 = !DILocation(line: 111, column: 5, scope: !5870)
!5872 = !DILocation(line: 113, column: 3, scope: !5865)
!5873 = !DILocation(line: 114, column: 4, scope: !5860)
!5874 = !DILocation(line: 115, column: 3, scope: !5777)
!5875 = !DILocation(line: 115, column: 3, scope: !5776)
!5876 = !DILocation(line: 115, column: 3, scope: !5877)
!5877 = distinct !DILexicalBlock(scope: !5776, file: !3, line: 115, column: 3)
!5878 = !DILocation(line: 115, column: 3, scope: !5775)
!5879 = !DILocation(line: 115, column: 3, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5775, file: !3, line: 115, column: 3)
!5881 = !DILocation(line: 115, column: 3, scope: !5773)
!5882 = !DILocation(line: 115, column: 3, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5773, file: !3, line: 115, column: 3)
!5884 = !DILocation(line: 115, column: 3, scope: !5779)
!5885 = !{i64 2154063270}
!5886 = !DILocation(line: 115, column: 3, scope: !5774)
!5887 = !DILocation(line: 116, column: 17, scope: !5777)
!5888 = !DILocation(line: 116, column: 21, scope: !5777)
!5889 = !DILocation(line: 116, column: 3, scope: !5777)
!5890 = !DILocation(line: 117, column: 3, scope: !5777)
!5891 = !DILocation(line: 118, column: 15, scope: !5777)
!5892 = !DILocation(line: 118, column: 19, scope: !5777)
!5893 = !DILocation(line: 118, column: 3, scope: !5777)
!5894 = !DILocation(line: 119, column: 7, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 119, column: 7)
!5896 = !DILocation(line: 119, column: 11, scope: !5895)
!5897 = !DILocation(line: 119, column: 17, scope: !5895)
!5898 = !DILocation(line: 119, column: 7, scope: !5777)
!5899 = !DILocation(line: 120, column: 8, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5895, file: !3, line: 119, column: 27)
!5901 = !DILocation(line: 121, column: 4, scope: !5900)
!5902 = !DILocation(line: 123, column: 22, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 123, column: 7)
!5904 = !DILocation(line: 123, column: 7, scope: !5903)
!5905 = !DILocation(line: 123, column: 7, scope: !5777)
!5906 = !DILocation(line: 124, column: 8, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5903, file: !3, line: 123, column: 32)
!5908 = !DILocation(line: 125, column: 4, scope: !5907)
!5909 = distinct !{!5909, !5828, !5910, !5095}
!5910 = !DILocation(line: 127, column: 2, scope: !5752)
!5911 = !DILocation(line: 128, column: 21, scope: !5752)
!5912 = !DILocation(line: 128, column: 25, scope: !5752)
!5913 = !DILocation(line: 128, column: 2, scope: !5752)
!5914 = !DILocation(line: 129, column: 6, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5752, file: !3, line: 129, column: 6)
!5916 = !DILocation(line: 129, column: 10, scope: !5915)
!5917 = !DILocation(line: 129, column: 6, scope: !5752)
!5918 = !DILocation(line: 130, column: 27, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5915, file: !3, line: 129, column: 16)
!5920 = !DILocation(line: 130, column: 31, scope: !5919)
!5921 = !DILocation(line: 130, column: 37, scope: !5919)
!5922 = !DILocation(line: 130, column: 9, scope: !5919)
!5923 = !DILocation(line: 130, column: 7, scope: !5919)
!5924 = !DILocation(line: 131, column: 7, scope: !5925)
!5925 = distinct !DILexicalBlock(scope: !5919, file: !3, line: 131, column: 7)
!5926 = !DILocation(line: 131, column: 11, scope: !5925)
!5927 = !DILocation(line: 131, column: 7, scope: !5919)
!5928 = !DILocation(line: 132, column: 25, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5925, file: !3, line: 131, column: 17)
!5930 = !DILocation(line: 132, column: 4, scope: !5929)
!5931 = !DILocation(line: 132, column: 10, scope: !5929)
!5932 = !DILocation(line: 132, column: 23, scope: !5929)
!5933 = !DILocation(line: 133, column: 4, scope: !5929)
!5934 = !DILocation(line: 133, column: 8, scope: !5929)
!5935 = !DILocation(line: 133, column: 12, scope: !5929)
!5936 = !DILocation(line: 134, column: 3, scope: !5929)
!5937 = !DILocation(line: 135, column: 8, scope: !5938)
!5938 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 135, column: 8)
!5939 = distinct !DILexicalBlock(scope: !5925, file: !3, line: 134, column: 10)
!5940 = !DILocation(line: 135, column: 12, scope: !5938)
!5941 = !DILocation(line: 135, column: 16, scope: !5938)
!5942 = !DILocation(line: 135, column: 8, scope: !5939)
!5943 = !DILocation(line: 136, column: 5, scope: !5938)
!5944 = !DILocation(line: 136, column: 9, scope: !5938)
!5945 = !DILocation(line: 136, column: 13, scope: !5938)
!5946 = !DILocation(line: 136, column: 21, scope: !5938)
!5947 = !DILocation(line: 136, column: 25, scope: !5938)
!5948 = !DILocation(line: 138, column: 2, scope: !5919)
!5949 = !DILocation(line: 139, column: 16, scope: !5752)
!5950 = !DILocation(line: 139, column: 20, scope: !5752)
!5951 = !DILocation(line: 139, column: 2, scope: !5752)
!5952 = !DILocation(line: 140, column: 6, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5752, file: !3, line: 140, column: 6)
!5954 = !DILocation(line: 140, column: 10, scope: !5953)
!5955 = !DILocation(line: 140, column: 6, scope: !5752)
!5956 = !DILocation(line: 141, column: 14, scope: !5953)
!5957 = !DILocation(line: 141, column: 18, scope: !5953)
!5958 = !DILocation(line: 141, column: 24, scope: !5953)
!5959 = !DILocation(line: 141, column: 3, scope: !5953)
!5960 = !DILocation(line: 142, column: 17, scope: !5752)
!5961 = !DILocation(line: 142, column: 21, scope: !5752)
!5962 = !DILocation(line: 142, column: 2, scope: !5752)
!5963 = !DILocation(line: 143, column: 9, scope: !5752)
!5964 = !DILocation(line: 143, column: 2, scope: !5752)
!5965 = !DILocation(line: 144, column: 1, scope: !5752)
!5966 = distinct !DISubprogram(name: "snd_hwdep_release", scope: !3, file: !3, line: 146, type: !1396, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5967)
!5967 = !{!5968, !5969, !5970, !5971, !5972}
!5968 = !DILocalVariable(name: "inode", arg: 1, scope: !5966, file: !3, line: 146, type: !373)
!5969 = !DILocalVariable(name: "file", arg: 2, scope: !5966, file: !3, line: 146, type: !1032)
!5970 = !DILocalVariable(name: "err", scope: !5966, file: !3, line: 148, type: !85)
!5971 = !DILocalVariable(name: "hw", scope: !5966, file: !3, line: 149, type: !161)
!5972 = !DILocalVariable(name: "mod", scope: !5966, file: !3, line: 150, type: !191)
!5973 = !DILocation(line: 146, column: 44, scope: !5966)
!5974 = !DILocation(line: 146, column: 65, scope: !5966)
!5975 = !DILocation(line: 148, column: 2, scope: !5966)
!5976 = !DILocation(line: 148, column: 6, scope: !5966)
!5977 = !DILocation(line: 149, column: 2, scope: !5966)
!5978 = !DILocation(line: 149, column: 20, scope: !5966)
!5979 = !DILocation(line: 149, column: 25, scope: !5966)
!5980 = !DILocation(line: 149, column: 31, scope: !5966)
!5981 = !DILocation(line: 150, column: 2, scope: !5966)
!5982 = !DILocation(line: 150, column: 17, scope: !5966)
!5983 = !DILocation(line: 150, column: 23, scope: !5966)
!5984 = !DILocation(line: 150, column: 27, scope: !5966)
!5985 = !DILocation(line: 150, column: 33, scope: !5966)
!5986 = !DILocation(line: 152, column: 14, scope: !5966)
!5987 = !DILocation(line: 152, column: 18, scope: !5966)
!5988 = !DILocation(line: 152, column: 2, scope: !5966)
!5989 = !DILocation(line: 153, column: 6, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 153, column: 6)
!5991 = !DILocation(line: 153, column: 10, scope: !5990)
!5992 = !DILocation(line: 153, column: 14, scope: !5990)
!5993 = !DILocation(line: 153, column: 6, scope: !5966)
!5994 = !DILocation(line: 154, column: 9, scope: !5990)
!5995 = !DILocation(line: 154, column: 13, scope: !5990)
!5996 = !DILocation(line: 154, column: 17, scope: !5990)
!5997 = !DILocation(line: 154, column: 25, scope: !5990)
!5998 = !DILocation(line: 154, column: 29, scope: !5990)
!5999 = !DILocation(line: 154, column: 7, scope: !5990)
!6000 = !DILocation(line: 154, column: 3, scope: !5990)
!6001 = !DILocation(line: 155, column: 6, scope: !6002)
!6002 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 155, column: 6)
!6003 = !DILocation(line: 155, column: 10, scope: !6002)
!6004 = !DILocation(line: 155, column: 15, scope: !6002)
!6005 = !DILocation(line: 155, column: 6, scope: !5966)
!6006 = !DILocation(line: 156, column: 3, scope: !6002)
!6007 = !DILocation(line: 156, column: 7, scope: !6002)
!6008 = !DILocation(line: 156, column: 11, scope: !6002)
!6009 = !DILocation(line: 157, column: 16, scope: !5966)
!6010 = !DILocation(line: 157, column: 20, scope: !5966)
!6011 = !DILocation(line: 157, column: 2, scope: !5966)
!6012 = !DILocation(line: 158, column: 2, scope: !5966)
!6013 = !DILocation(line: 160, column: 23, scope: !5966)
!6014 = !DILocation(line: 160, column: 27, scope: !5966)
!6015 = !DILocation(line: 160, column: 33, scope: !5966)
!6016 = !DILocation(line: 160, column: 2, scope: !5966)
!6017 = !DILocation(line: 161, column: 13, scope: !5966)
!6018 = !DILocation(line: 161, column: 2, scope: !5966)
!6019 = !DILocation(line: 162, column: 9, scope: !5966)
!6020 = !DILocation(line: 163, column: 1, scope: !5966)
!6021 = !DILocation(line: 162, column: 2, scope: !5966)
!6022 = distinct !DISubprogram(name: "might_fault", scope: !6023, file: !6023, line: 202, type: !2420, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6023 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6024 = !DILocation(line: 202, column: 40, scope: !6022)
!6025 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !6026, file: !6026, line: 76, type: !6027, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6029)
!6026 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!6027 = !DISubroutineType(types: !6028)
!6028 = !{null, !159, !1299, !341, !341}
!6029 = !{!6030, !6031, !6032, !6033}
!6030 = !DILocalVariable(name: "to", arg: 1, scope: !6025, file: !6026, line: 76, type: !159)
!6031 = !DILocalVariable(name: "from", arg: 2, scope: !6025, file: !6026, line: 76, type: !1299)
!6032 = !DILocalVariable(name: "to_copy", arg: 3, scope: !6025, file: !6026, line: 77, type: !341)
!6033 = !DILocalVariable(name: "left", arg: 4, scope: !6025, file: !6026, line: 77, type: !341)
!6034 = !DILocation(line: 76, column: 52, scope: !6025)
!6035 = !DILocation(line: 76, column: 68, scope: !6025)
!6036 = !DILocation(line: 77, column: 18, scope: !6025)
!6037 = !DILocation(line: 77, column: 34, scope: !6025)
!6038 = !DILocation(line: 79, column: 1, scope: !6025)
!6039 = distinct !DISubprogram(name: "snd_hwdep_info", scope: !3, file: !3, line: 173, type: !6040, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6042)
!6040 = !DISubroutineType(types: !6041)
!6041 = !{!85, !161, !4599}
!6042 = !{!6043, !6044, !6045}
!6043 = !DILocalVariable(name: "hw", arg: 1, scope: !6039, file: !3, line: 173, type: !161)
!6044 = !DILocalVariable(name: "_info", arg: 2, scope: !6039, file: !3, line: 174, type: !4599)
!6045 = !DILocalVariable(name: "info", scope: !6039, file: !3, line: 176, type: !4600)
!6046 = !DILocation(line: 173, column: 45, scope: !6039)
!6047 = !DILocation(line: 174, column: 36, scope: !6039)
!6048 = !DILocation(line: 176, column: 2, scope: !6039)
!6049 = !DILocation(line: 176, column: 24, scope: !6039)
!6050 = !DILocation(line: 178, column: 2, scope: !6039)
!6051 = !DILocation(line: 179, column: 14, scope: !6039)
!6052 = !DILocation(line: 179, column: 18, scope: !6039)
!6053 = !DILocation(line: 179, column: 24, scope: !6039)
!6054 = !DILocation(line: 179, column: 7, scope: !6039)
!6055 = !DILocation(line: 179, column: 12, scope: !6039)
!6056 = !DILocation(line: 180, column: 15, scope: !6039)
!6057 = !DILocation(line: 180, column: 10, scope: !6039)
!6058 = !DILocation(line: 180, column: 19, scope: !6039)
!6059 = !DILocation(line: 180, column: 23, scope: !6039)
!6060 = !DILocation(line: 180, column: 2, scope: !6039)
!6061 = !DILocation(line: 181, column: 15, scope: !6039)
!6062 = !DILocation(line: 181, column: 10, scope: !6039)
!6063 = !DILocation(line: 181, column: 21, scope: !6039)
!6064 = !DILocation(line: 181, column: 25, scope: !6039)
!6065 = !DILocation(line: 181, column: 2, scope: !6039)
!6066 = !DILocation(line: 182, column: 15, scope: !6039)
!6067 = !DILocation(line: 182, column: 19, scope: !6039)
!6068 = !DILocation(line: 182, column: 7, scope: !6039)
!6069 = !DILocation(line: 182, column: 13, scope: !6039)
!6070 = !DILocation(line: 183, column: 19, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6039, file: !3, line: 183, column: 6)
!6072 = !DILocation(line: 183, column: 6, scope: !6071)
!6073 = !DILocation(line: 183, column: 6, scope: !6039)
!6074 = !DILocation(line: 184, column: 3, scope: !6071)
!6075 = !DILocation(line: 185, column: 2, scope: !6039)
!6076 = !DILocation(line: 186, column: 1, scope: !6039)
!6077 = distinct !DISubprogram(name: "snd_hwdep_dsp_status", scope: !3, file: !3, line: 188, type: !4555, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6078)
!6078 = !{!6079, !6080, !6081, !6082}
!6079 = !DILocalVariable(name: "hw", arg: 1, scope: !6077, file: !3, line: 188, type: !161)
!6080 = !DILocalVariable(name: "_info", arg: 2, scope: !6077, file: !3, line: 189, type: !4557)
!6081 = !DILocalVariable(name: "info", scope: !6077, file: !3, line: 191, type: !4558)
!6082 = !DILocalVariable(name: "err", scope: !6077, file: !3, line: 192, type: !85)
!6083 = !DILocation(line: 188, column: 51, scope: !6077)
!6084 = !DILocation(line: 189, column: 41, scope: !6077)
!6085 = !DILocation(line: 191, column: 2, scope: !6077)
!6086 = !DILocation(line: 191, column: 30, scope: !6077)
!6087 = !DILocation(line: 192, column: 2, scope: !6077)
!6088 = !DILocation(line: 192, column: 6, scope: !6077)
!6089 = !DILocation(line: 194, column: 8, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !6077, file: !3, line: 194, column: 6)
!6091 = !DILocation(line: 194, column: 12, scope: !6090)
!6092 = !DILocation(line: 194, column: 16, scope: !6090)
!6093 = !DILocation(line: 194, column: 6, scope: !6077)
!6094 = !DILocation(line: 195, column: 3, scope: !6090)
!6095 = !DILocation(line: 196, column: 2, scope: !6077)
!6096 = !DILocation(line: 197, column: 20, scope: !6077)
!6097 = !DILocation(line: 197, column: 24, scope: !6077)
!6098 = !DILocation(line: 197, column: 7, scope: !6077)
!6099 = !DILocation(line: 197, column: 18, scope: !6077)
!6100 = !DILocation(line: 198, column: 8, scope: !6077)
!6101 = !DILocation(line: 198, column: 12, scope: !6077)
!6102 = !DILocation(line: 198, column: 16, scope: !6077)
!6103 = !DILocation(line: 198, column: 27, scope: !6077)
!6104 = !DILocation(line: 198, column: 6, scope: !6077)
!6105 = !DILocation(line: 199, column: 6, scope: !6106)
!6106 = distinct !DILexicalBlock(scope: !6077, file: !3, line: 199, column: 6)
!6107 = !DILocation(line: 199, column: 10, scope: !6106)
!6108 = !DILocation(line: 199, column: 6, scope: !6077)
!6109 = !DILocation(line: 200, column: 10, scope: !6106)
!6110 = !DILocation(line: 200, column: 3, scope: !6106)
!6111 = !DILocation(line: 201, column: 19, scope: !6112)
!6112 = distinct !DILexicalBlock(scope: !6077, file: !3, line: 201, column: 6)
!6113 = !DILocation(line: 201, column: 6, scope: !6112)
!6114 = !DILocation(line: 201, column: 6, scope: !6077)
!6115 = !DILocation(line: 202, column: 3, scope: !6112)
!6116 = !DILocation(line: 203, column: 2, scope: !6077)
!6117 = !DILocation(line: 204, column: 1, scope: !6077)
!6118 = distinct !DISubprogram(name: "snd_hwdep_dsp_load_user", scope: !3, file: !3, line: 225, type: !4570, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6119)
!6119 = !{!6120, !6121, !6122}
!6120 = !DILocalVariable(name: "hw", arg: 1, scope: !6118, file: !3, line: 225, type: !161)
!6121 = !DILocalVariable(name: "_info", arg: 2, scope: !6118, file: !3, line: 226, type: !4572)
!6122 = !DILocalVariable(name: "info", scope: !6118, file: !3, line: 228, type: !4573)
!6123 = !DILocation(line: 225, column: 54, scope: !6118)
!6124 = !DILocation(line: 226, column: 43, scope: !6118)
!6125 = !DILocation(line: 228, column: 2, scope: !6118)
!6126 = !DILocation(line: 228, column: 29, scope: !6118)
!6127 = !DILocation(line: 230, column: 28, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6118, file: !3, line: 230, column: 6)
!6129 = !DILocation(line: 230, column: 6, scope: !6128)
!6130 = !DILocation(line: 230, column: 6, scope: !6118)
!6131 = !DILocation(line: 231, column: 3, scope: !6128)
!6132 = !DILocation(line: 232, column: 28, scope: !6118)
!6133 = !DILocation(line: 232, column: 9, scope: !6118)
!6134 = !DILocation(line: 232, column: 2, scope: !6118)
!6135 = !DILocation(line: 233, column: 1, scope: !6118)
!6136 = distinct !DISubprogram(name: "copy_to_user", scope: !6137, file: !6137, line: 188, type: !6138, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6140)
!6137 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!6138 = !DISubroutineType(types: !6139)
!6139 = !{!160, !159, !1299, !160}
!6140 = !{!6141, !6142, !6143}
!6141 = !DILocalVariable(name: "to", arg: 1, scope: !6136, file: !6137, line: 188, type: !159)
!6142 = !DILocalVariable(name: "from", arg: 2, scope: !6136, file: !6137, line: 188, type: !1299)
!6143 = !DILocalVariable(name: "n", arg: 3, scope: !6136, file: !6137, line: 188, type: !160)
!6144 = !DILocation(line: 188, column: 27, scope: !6136)
!6145 = !DILocation(line: 188, column: 43, scope: !6136)
!6146 = !DILocation(line: 188, column: 63, scope: !6136)
!6147 = !DILocation(line: 190, column: 22, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6136, file: !6137, line: 190, column: 6)
!6149 = !DILocation(line: 190, column: 28, scope: !6148)
!6150 = !DILocation(line: 190, column: 6, scope: !6148)
!6151 = !DILocation(line: 190, column: 6, scope: !6136)
!6152 = !DILocation(line: 191, column: 21, scope: !6148)
!6153 = !DILocation(line: 191, column: 25, scope: !6148)
!6154 = !DILocation(line: 191, column: 31, scope: !6148)
!6155 = !DILocation(line: 191, column: 7, scope: !6148)
!6156 = !DILocation(line: 191, column: 5, scope: !6148)
!6157 = !DILocation(line: 191, column: 3, scope: !6148)
!6158 = !DILocation(line: 192, column: 9, scope: !6136)
!6159 = !DILocation(line: 192, column: 2, scope: !6136)
!6160 = distinct !DISubprogram(name: "check_copy_size", scope: !4705, file: !4705, line: 237, type: !6161, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6163)
!6161 = !DISubroutineType(types: !6162)
!6162 = !{!903, !1299, !341, !903}
!6163 = !{!6164, !6165, !6166, !6167, !6168, !6171}
!6164 = !DILocalVariable(name: "addr", arg: 1, scope: !6160, file: !4705, line: 237, type: !1299)
!6165 = !DILocalVariable(name: "bytes", arg: 2, scope: !6160, file: !4705, line: 237, type: !341)
!6166 = !DILocalVariable(name: "is_source", arg: 3, scope: !6160, file: !4705, line: 237, type: !903)
!6167 = !DILocalVariable(name: "sz", scope: !6160, file: !4705, line: 239, type: !85)
!6168 = !DILocalVariable(name: "__ret_warn_on", scope: !6169, file: !4705, line: 249, type: !85)
!6169 = distinct !DILexicalBlock(scope: !6170, file: !4705, line: 249, column: 6)
!6170 = distinct !DILexicalBlock(scope: !6160, file: !4705, line: 249, column: 6)
!6171 = !DILocalVariable(name: "__flags", scope: !6172, file: !4705, line: 249, type: !85)
!6172 = distinct !DILexicalBlock(scope: !6173, file: !4705, line: 249, column: 6)
!6173 = distinct !DILexicalBlock(scope: !6169, file: !4705, line: 249, column: 6)
!6174 = !DILocation(line: 237, column: 29, scope: !6160)
!6175 = !DILocation(line: 237, column: 42, scope: !6160)
!6176 = !DILocation(line: 237, column: 54, scope: !6160)
!6177 = !DILocation(line: 239, column: 2, scope: !6160)
!6178 = !DILocation(line: 239, column: 6, scope: !6160)
!6179 = !DILocation(line: 239, column: 33, scope: !6160)
!6180 = !DILocation(line: 239, column: 11, scope: !6160)
!6181 = !DILocation(line: 240, column: 6, scope: !6182)
!6182 = distinct !DILexicalBlock(scope: !6160, file: !4705, line: 240, column: 6)
!6183 = !DILocation(line: 0, scope: !6182)
!6184 = !DILocation(line: 240, column: 6, scope: !6160)
!6185 = !DILocation(line: 241, column: 29, scope: !6186)
!6186 = distinct !DILexicalBlock(scope: !6187, file: !4705, line: 241, column: 7)
!6187 = distinct !DILexicalBlock(scope: !6182, file: !4705, line: 240, column: 39)
!6188 = !DILocation(line: 241, column: 8, scope: !6186)
!6189 = !DILocation(line: 241, column: 7, scope: !6187)
!6190 = !DILocation(line: 242, column: 18, scope: !6186)
!6191 = !DILocation(line: 242, column: 22, scope: !6186)
!6192 = !DILocation(line: 242, column: 4, scope: !6186)
!6193 = !DILocation(line: 243, column: 12, scope: !6194)
!6194 = distinct !DILexicalBlock(scope: !6186, file: !4705, line: 243, column: 12)
!6195 = !DILocation(line: 243, column: 12, scope: !6186)
!6196 = !DILocation(line: 244, column: 4, scope: !6194)
!6197 = !{i32 920670}
!6198 = !DILocation(line: 246, column: 4, scope: !6194)
!6199 = !{i32 920699}
!6200 = !DILocation(line: 247, column: 3, scope: !6187)
!6201 = !DILocation(line: 249, column: 6, scope: !6169)
!6202 = !DILocation(line: 249, column: 6, scope: !6173)
!6203 = !DILocation(line: 249, column: 6, scope: !6172)
!6204 = !DILocation(line: 249, column: 6, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6172, file: !4705, line: 249, column: 6)
!6206 = !DILocation(line: 249, column: 6, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6172, file: !4705, line: 249, column: 6)
!6208 = !{i64 2149557700, i64 2149557729, i64 2149557775, i64 2149557833, i64 2149557887, i64 2149557941, i64 2149557996, i64 2149558027, i64 2149558335, i64 2149558341, i64 2149558388, i64 2149558411, i64 2149558437}
!6209 = !DILocation(line: 249, column: 6, scope: !6210)
!6210 = distinct !DILexicalBlock(scope: !6172, file: !4705, line: 249, column: 6)
!6211 = !DILocation(line: 249, column: 6, scope: !6170)
!6212 = !DILocation(line: 249, column: 6, scope: !6160)
!6213 = !DILocation(line: 250, column: 3, scope: !6170)
!6214 = !DILocation(line: 251, column: 20, scope: !6160)
!6215 = !DILocation(line: 251, column: 26, scope: !6160)
!6216 = !DILocation(line: 251, column: 33, scope: !6160)
!6217 = !DILocation(line: 251, column: 2, scope: !6160)
!6218 = !DILocation(line: 252, column: 2, scope: !6160)
!6219 = !DILocation(line: 253, column: 1, scope: !6160)
!6220 = !DISubprogram(name: "_copy_to_user", scope: !6137, file: !6137, line: 176, type: !6138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6221 = distinct !DISubprogram(name: "copy_overflow", scope: !4705, file: !4705, line: 230, type: !6222, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6224)
!6222 = !DISubroutineType(types: !6223)
!6223 = !{null, !85, !160}
!6224 = !{!6225, !6226}
!6225 = !DILocalVariable(name: "size", arg: 1, scope: !6221, file: !4705, line: 230, type: !85)
!6226 = !DILocalVariable(name: "count", arg: 2, scope: !6221, file: !4705, line: 230, type: !160)
!6227 = !DILocation(line: 230, column: 38, scope: !6221)
!6228 = !DILocation(line: 230, column: 58, scope: !6221)
!6229 = !DILocation(line: 233, column: 19, scope: !6230)
!6230 = distinct !DILexicalBlock(scope: !6221, file: !4705, line: 232, column: 6)
!6231 = !DILocation(line: 233, column: 25, scope: !6230)
!6232 = !DILocation(line: 233, column: 3, scope: !6230)
!6233 = !DILocation(line: 234, column: 1, scope: !6221)
!6234 = !DISubprogram(name: "__bad_copy_from", scope: !4705, file: !4705, line: 224, type: !2420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6235 = !DISubprogram(name: "__bad_copy_to", scope: !4705, file: !4705, line: 226, type: !2420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6236 = distinct !DISubprogram(name: "check_object_size", scope: !4705, file: !4705, line: 218, type: !6237, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6239)
!6237 = !DISubroutineType(types: !6238)
!6238 = !{null, !1299, !160, !903}
!6239 = !{!6240, !6241, !6242}
!6240 = !DILocalVariable(name: "ptr", arg: 1, scope: !6236, file: !4705, line: 218, type: !1299)
!6241 = !DILocalVariable(name: "n", arg: 2, scope: !6236, file: !4705, line: 218, type: !160)
!6242 = !DILocalVariable(name: "to_user", arg: 3, scope: !6236, file: !4705, line: 219, type: !903)
!6243 = !DILocation(line: 218, column: 50, scope: !6236)
!6244 = !DILocation(line: 218, column: 69, scope: !6236)
!6245 = !DILocation(line: 219, column: 15, scope: !6236)
!6246 = !DILocation(line: 220, column: 3, scope: !6236)
!6247 = !DISubprogram(name: "__copy_overflow", scope: !4705, file: !4705, line: 228, type: !6222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6248 = distinct !DISubprogram(name: "copy_from_user", scope: !6137, file: !6137, line: 180, type: !6138, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6249)
!6249 = !{!6250, !6251, !6252}
!6250 = !DILocalVariable(name: "to", arg: 1, scope: !6248, file: !6137, line: 180, type: !159)
!6251 = !DILocalVariable(name: "from", arg: 2, scope: !6248, file: !6137, line: 180, type: !1299)
!6252 = !DILocalVariable(name: "n", arg: 3, scope: !6248, file: !6137, line: 180, type: !160)
!6253 = !DILocation(line: 180, column: 22, scope: !6248)
!6254 = !DILocation(line: 180, column: 45, scope: !6248)
!6255 = !DILocation(line: 180, column: 65, scope: !6248)
!6256 = !DILocation(line: 182, column: 22, scope: !6257)
!6257 = distinct !DILexicalBlock(scope: !6248, file: !6137, line: 182, column: 6)
!6258 = !DILocation(line: 182, column: 26, scope: !6257)
!6259 = !DILocation(line: 182, column: 6, scope: !6257)
!6260 = !DILocation(line: 182, column: 6, scope: !6248)
!6261 = !DILocation(line: 183, column: 23, scope: !6257)
!6262 = !DILocation(line: 183, column: 27, scope: !6257)
!6263 = !DILocation(line: 183, column: 33, scope: !6257)
!6264 = !DILocation(line: 183, column: 7, scope: !6257)
!6265 = !DILocation(line: 183, column: 5, scope: !6257)
!6266 = !DILocation(line: 183, column: 3, scope: !6257)
!6267 = !DILocation(line: 184, column: 9, scope: !6248)
!6268 = !DILocation(line: 184, column: 2, scope: !6248)
!6269 = distinct !DISubprogram(name: "snd_hwdep_dsp_load", scope: !3, file: !3, line: 206, type: !4570, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6270)
!6270 = !{!6271, !6272, !6273}
!6271 = !DILocalVariable(name: "hw", arg: 1, scope: !6269, file: !3, line: 206, type: !161)
!6272 = !DILocalVariable(name: "info", arg: 2, scope: !6269, file: !3, line: 207, type: !4572)
!6273 = !DILocalVariable(name: "err", scope: !6269, file: !3, line: 209, type: !85)
!6274 = !DILocation(line: 206, column: 49, scope: !6269)
!6275 = !DILocation(line: 207, column: 38, scope: !6269)
!6276 = !DILocation(line: 209, column: 2, scope: !6269)
!6277 = !DILocation(line: 209, column: 6, scope: !6269)
!6278 = !DILocation(line: 211, column: 8, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6269, file: !3, line: 211, column: 6)
!6280 = !DILocation(line: 211, column: 12, scope: !6279)
!6281 = !DILocation(line: 211, column: 16, scope: !6279)
!6282 = !DILocation(line: 211, column: 6, scope: !6269)
!6283 = !DILocation(line: 212, column: 3, scope: !6279)
!6284 = !DILocation(line: 213, column: 6, scope: !6285)
!6285 = distinct !DILexicalBlock(scope: !6269, file: !3, line: 213, column: 6)
!6286 = !DILocation(line: 213, column: 12, scope: !6285)
!6287 = !DILocation(line: 213, column: 18, scope: !6285)
!6288 = !DILocation(line: 213, column: 6, scope: !6269)
!6289 = !DILocation(line: 214, column: 3, scope: !6285)
!6290 = !DILocation(line: 216, column: 6, scope: !6291)
!6291 = distinct !DILexicalBlock(scope: !6269, file: !3, line: 216, column: 6)
!6292 = !DILocation(line: 216, column: 10, scope: !6291)
!6293 = !DILocation(line: 216, column: 30, scope: !6291)
!6294 = !DILocation(line: 216, column: 36, scope: !6291)
!6295 = !DILocation(line: 216, column: 27, scope: !6291)
!6296 = !DILocation(line: 216, column: 21, scope: !6291)
!6297 = !DILocation(line: 216, column: 6, scope: !6269)
!6298 = !DILocation(line: 217, column: 3, scope: !6291)
!6299 = !DILocation(line: 218, column: 8, scope: !6269)
!6300 = !DILocation(line: 218, column: 12, scope: !6269)
!6301 = !DILocation(line: 218, column: 16, scope: !6269)
!6302 = !DILocation(line: 218, column: 25, scope: !6269)
!6303 = !DILocation(line: 218, column: 29, scope: !6269)
!6304 = !DILocation(line: 218, column: 6, scope: !6269)
!6305 = !DILocation(line: 219, column: 6, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6269, file: !3, line: 219, column: 6)
!6307 = !DILocation(line: 219, column: 10, scope: !6306)
!6308 = !DILocation(line: 219, column: 6, scope: !6269)
!6309 = !DILocation(line: 220, column: 10, scope: !6306)
!6310 = !DILocation(line: 220, column: 3, scope: !6306)
!6311 = !DILocation(line: 221, column: 27, scope: !6269)
!6312 = !DILocation(line: 221, column: 33, scope: !6269)
!6313 = !DILocation(line: 221, column: 24, scope: !6269)
!6314 = !DILocation(line: 221, column: 2, scope: !6269)
!6315 = !DILocation(line: 221, column: 6, scope: !6269)
!6316 = !DILocation(line: 221, column: 17, scope: !6269)
!6317 = !DILocation(line: 222, column: 2, scope: !6269)
!6318 = !DILocation(line: 223, column: 1, scope: !6269)
!6319 = !DISubprogram(name: "_copy_from_user", scope: !6137, file: !6137, line: 158, type: !6138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6320 = distinct !DISubprogram(name: "compat_ptr", scope: !2598, file: !2598, line: 977, type: !6321, scopeLine: 978, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6323)
!6321 = !DISubroutineType(types: !6322)
!6322 = !{!159, !2604}
!6323 = !{!6324}
!6324 = !DILocalVariable(name: "uptr", arg: 1, scope: !6320, file: !2598, line: 977, type: !2604)
!6325 = !DILocation(line: 977, column: 53, scope: !6320)
!6326 = !DILocation(line: 979, column: 39, scope: !6320)
!6327 = !DILocation(line: 979, column: 24, scope: !6320)
!6328 = !DILocation(line: 979, column: 9, scope: !6320)
!6329 = !DILocation(line: 979, column: 2, scope: !6320)
!6330 = distinct !DISubprogram(name: "snd_hwdep_dsp_load_compat", scope: !153, file: !153, line: 19, type: !6331, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6341)
!6331 = !DISubroutineType(types: !6332)
!6332 = !{!85, !161, !6333}
!6333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6334, size: 64)
!6334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_hwdep_dsp_image32", file: !153, line: 11, size: 640, elements: !6335)
!6335 = !{!6336, !6337, !6338, !6339, !6340}
!6336 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !6334, file: !153, line: 12, baseType: !442, size: 32)
!6337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6334, file: !153, line: 13, baseType: !4577, size: 512, offset: 32)
!6338 = !DIDerivedType(tag: DW_TAG_member, name: "image", scope: !6334, file: !153, line: 14, baseType: !442, size: 32, offset: 544)
!6339 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6334, file: !153, line: 15, baseType: !442, size: 32, offset: 576)
!6340 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !6334, file: !153, line: 16, baseType: !442, size: 32, offset: 608)
!6341 = !{!6342, !6343, !6344, !6345, !6347, !6351, !6352, !6354, !6357, !6358, !6360, !6363, !6364}
!6342 = !DILocalVariable(name: "hw", arg: 1, scope: !6330, file: !153, line: 19, type: !161)
!6343 = !DILocalVariable(name: "src", arg: 2, scope: !6330, file: !153, line: 20, type: !6333)
!6344 = !DILocalVariable(name: "info", scope: !6330, file: !153, line: 22, type: !4573)
!6345 = !DILocalVariable(name: "ptr", scope: !6330, file: !153, line: 23, type: !6346)
!6346 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_caddr_t", file: !2605, line: 47, baseType: !442)
!6347 = !DILocalVariable(name: "__ret_gu", scope: !6348, file: !153, line: 26, type: !85)
!6348 = distinct !DILexicalBlock(scope: !6349, file: !153, line: 26, column: 6)
!6349 = distinct !DILexicalBlock(scope: !6350, file: !153, line: 26, column: 6)
!6350 = distinct !DILexicalBlock(scope: !6330, file: !153, line: 25, column: 6)
!6351 = !DILocalVariable(name: "__val_gu", scope: !6348, file: !153, line: 26, type: !7)
!6352 = !DILocalVariable(name: "__tmp", scope: !6353, file: !153, line: 26, type: !446)
!6353 = distinct !DILexicalBlock(scope: !6348, file: !153, line: 26, column: 6)
!6354 = !DILocalVariable(name: "__ret_gu", scope: !6355, file: !153, line: 27, type: !85)
!6355 = distinct !DILexicalBlock(scope: !6356, file: !153, line: 27, column: 6)
!6356 = distinct !DILexicalBlock(scope: !6350, file: !153, line: 27, column: 6)
!6357 = !DILocalVariable(name: "__val_gu", scope: !6355, file: !153, line: 27, type: !7)
!6358 = !DILocalVariable(name: "__tmp", scope: !6359, file: !153, line: 27, type: !446)
!6359 = distinct !DILexicalBlock(scope: !6355, file: !153, line: 27, column: 6)
!6360 = !DILocalVariable(name: "__ret_gu", scope: !6361, file: !153, line: 28, type: !85)
!6361 = distinct !DILexicalBlock(scope: !6362, file: !153, line: 28, column: 6)
!6362 = distinct !DILexicalBlock(scope: !6350, file: !153, line: 28, column: 6)
!6363 = !DILocalVariable(name: "__val_gu", scope: !6361, file: !153, line: 28, type: !7)
!6364 = !DILocalVariable(name: "__tmp", scope: !6365, file: !153, line: 28, type: !446)
!6365 = distinct !DILexicalBlock(scope: !6361, file: !153, line: 28, column: 6)
!6366 = !DILocation(line: 19, column: 56, scope: !6330)
!6367 = !DILocation(line: 20, column: 47, scope: !6330)
!6368 = !DILocation(line: 22, column: 2, scope: !6330)
!6369 = !DILocation(line: 22, column: 29, scope: !6330)
!6370 = !DILocation(line: 23, column: 2, scope: !6330)
!6371 = !DILocation(line: 23, column: 17, scope: !6330)
!6372 = !DILocation(line: 25, column: 28, scope: !6350)
!6373 = !DILocation(line: 25, column: 6, scope: !6350)
!6374 = !DILocation(line: 25, column: 41, scope: !6350)
!6375 = !DILocation(line: 26, column: 6, scope: !6349)
!6376 = !DILocation(line: 26, column: 6, scope: !6348)
!6377 = !{i64 2154214795}
!6378 = !DILocation(line: 26, column: 6, scope: !6353)
!6379 = !DILocation(line: 26, column: 6, scope: !6350)
!6380 = !DILocation(line: 26, column: 33, scope: !6350)
!6381 = !DILocation(line: 27, column: 6, scope: !6356)
!6382 = !DILocation(line: 27, column: 6, scope: !6355)
!6383 = !{i64 2154216796}
!6384 = !DILocation(line: 27, column: 6, scope: !6359)
!6385 = !DILocation(line: 27, column: 6, scope: !6350)
!6386 = !DILocation(line: 27, column: 42, scope: !6350)
!6387 = !DILocation(line: 28, column: 6, scope: !6362)
!6388 = !DILocation(line: 28, column: 6, scope: !6361)
!6389 = !{i64 2154218834}
!6390 = !DILocation(line: 28, column: 6, scope: !6365)
!6391 = !DILocation(line: 28, column: 6, scope: !6350)
!6392 = !DILocation(line: 25, column: 6, scope: !6330)
!6393 = !DILocation(line: 29, column: 3, scope: !6350)
!6394 = !DILocation(line: 30, column: 26, scope: !6330)
!6395 = !DILocation(line: 30, column: 15, scope: !6330)
!6396 = !DILocation(line: 30, column: 7, scope: !6330)
!6397 = !DILocation(line: 30, column: 13, scope: !6330)
!6398 = !DILocation(line: 32, column: 28, scope: !6330)
!6399 = !DILocation(line: 32, column: 9, scope: !6330)
!6400 = !DILocation(line: 32, column: 2, scope: !6330)
!6401 = !DILocation(line: 33, column: 1, scope: !6330)
!6402 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !6026, file: !6026, line: 70, type: !6403, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6405)
!6403 = !DISubroutineType(types: !6404)
!6404 = !{null, !1299, !341}
!6405 = !{!6406, !6407}
!6406 = !DILocalVariable(name: "address", arg: 1, scope: !6402, file: !6026, line: 70, type: !1299)
!6407 = !DILocalVariable(name: "size", arg: 2, scope: !6402, file: !6026, line: 70, type: !341)
!6408 = !DILocation(line: 70, column: 54, scope: !6402)
!6409 = !DILocation(line: 70, column: 70, scope: !6402)
!6410 = !DILocation(line: 72, column: 1, scope: !6402)
!6411 = distinct !DISubprogram(name: "imajor", scope: !14, file: !14, line: 943, type: !6412, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6414)
!6412 = !DISubroutineType(types: !6413)
!6413 = !{!7, !3148}
!6414 = !{!6415}
!6415 = !DILocalVariable(name: "inode", arg: 1, scope: !6411, file: !14, line: 943, type: !3148)
!6416 = !DILocation(line: 943, column: 51, scope: !6411)
!6417 = !DILocation(line: 945, column: 9, scope: !6411)
!6418 = !DILocation(line: 945, column: 2, scope: !6411)
!6419 = !DISubprogram(name: "snd_lookup_minor_data", scope: !118, file: !118, line: 248, type: !6420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6420 = !DISubroutineType(types: !6421)
!6421 = !{!159, !7, !85}
!6422 = distinct !DISubprogram(name: "iminor", scope: !14, file: !14, line: 938, type: !6412, scopeLine: 939, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6423)
!6423 = !{!6424}
!6424 = !DILocalVariable(name: "inode", arg: 1, scope: !6422, file: !14, line: 938, type: !3148)
!6425 = !DILocation(line: 938, column: 51, scope: !6422)
!6426 = !DILocation(line: 940, column: 9, scope: !6422)
!6427 = !DILocation(line: 940, column: 2, scope: !6422)
!6428 = !DISubprogram(name: "try_module_get", scope: !6, file: !6, line: 696, type: !6429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6429 = !DISubroutineType(types: !6430)
!6430 = !{!903, !191}
!6431 = distinct !DISubprogram(name: "snd_card_unref", scope: !118, file: !118, line: 312, type: !4048, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6432)
!6432 = !{!6433}
!6433 = !DILocalVariable(name: "card", arg: 1, scope: !6431, file: !118, line: 312, type: !166)
!6434 = !DILocation(line: 312, column: 52, scope: !6431)
!6435 = !DILocation(line: 314, column: 14, scope: !6431)
!6436 = !DILocation(line: 314, column: 20, scope: !6431)
!6437 = !DILocation(line: 314, column: 2, scope: !6431)
!6438 = !DILocation(line: 315, column: 1, scope: !6431)
!6439 = distinct !DISubprogram(name: "init_waitqueue_entry", scope: !773, file: !773, line: 82, type: !6440, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6442)
!6440 = !DISubroutineType(types: !6441)
!6441 = !{null, !5770, !1785}
!6442 = !{!6443, !6444}
!6443 = !DILocalVariable(name: "wq_entry", arg: 1, scope: !6439, file: !773, line: 82, type: !5770)
!6444 = !DILocalVariable(name: "p", arg: 2, scope: !6439, file: !773, line: 82, type: !1785)
!6445 = !DILocation(line: 82, column: 66, scope: !6439)
!6446 = !DILocation(line: 82, column: 96, scope: !6439)
!6447 = !DILocation(line: 84, column: 2, scope: !6439)
!6448 = !DILocation(line: 84, column: 12, scope: !6439)
!6449 = !DILocation(line: 84, column: 19, scope: !6439)
!6450 = !DILocation(line: 85, column: 22, scope: !6439)
!6451 = !DILocation(line: 85, column: 2, scope: !6439)
!6452 = !DILocation(line: 85, column: 12, scope: !6439)
!6453 = !DILocation(line: 85, column: 20, scope: !6439)
!6454 = !DILocation(line: 86, column: 2, scope: !6439)
!6455 = !DILocation(line: 86, column: 12, scope: !6439)
!6456 = !DILocation(line: 86, column: 18, scope: !6439)
!6457 = !DILocation(line: 87, column: 1, scope: !6439)
!6458 = distinct !DISubprogram(name: "get_current", scope: !6459, file: !6459, line: 39, type: !6460, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6462)
!6459 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6460 = !DISubroutineType(types: !6461)
!6461 = !{!1785}
!6462 = !{!6463, !6465, !6467}
!6463 = !DILocalVariable(name: "pscr_ret__", scope: !6464, file: !6459, line: 41, type: !1785)
!6464 = distinct !DILexicalBlock(scope: !6458, file: !6459, line: 41, column: 9)
!6465 = !DILocalVariable(name: "__vpp_verify", scope: !6466, file: !6459, line: 41, type: !1299)
!6466 = distinct !DILexicalBlock(scope: !6464, file: !6459, line: 41, column: 9)
!6467 = !DILocalVariable(name: "pfo_val__", scope: !6468, file: !6459, line: 41, type: !446)
!6468 = distinct !DILexicalBlock(scope: !6464, file: !6459, line: 41, column: 9)
!6469 = !DILocation(line: 41, column: 9, scope: !6464)
!6470 = !DILocation(line: 41, column: 9, scope: !6466)
!6471 = !DILocation(line: 41, column: 9, scope: !6468)
!6472 = !{i64 2148397000}
!6473 = !DILocation(line: 41, column: 9, scope: !6458)
!6474 = !DILocation(line: 41, column: 2, scope: !6458)
!6475 = !DISubprogram(name: "add_wait_queue", scope: !773, file: !773, line: 166, type: !6476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6476 = !DISubroutineType(types: !6477)
!6477 = !{null, !4942, !5770}
!6478 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6479, file: !6479, line: 94, type: !6480, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6485)
!6479 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6480 = !DISubroutineType(types: !6481)
!6481 = !{null, !6482, !341}
!6482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6483, size: 64)
!6483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6484)
!6484 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6485 = !{!6486, !6487}
!6486 = !DILocalVariable(name: "v", arg: 1, scope: !6478, file: !6479, line: 94, type: !6482)
!6487 = !DILocalVariable(name: "size", arg: 2, scope: !6478, file: !6479, line: 94, type: !341)
!6488 = !DILocation(line: 94, column: 79, scope: !6478)
!6489 = !DILocation(line: 94, column: 89, scope: !6478)
!6490 = !DILocation(line: 96, column: 20, scope: !6478)
!6491 = !DILocation(line: 96, column: 23, scope: !6478)
!6492 = !DILocation(line: 96, column: 2, scope: !6478)
!6493 = !DILocation(line: 97, column: 2, scope: !6478)
!6494 = !DILocation(line: 98, column: 1, scope: !6478)
!6495 = !DISubprogram(name: "schedule", scope: !1430, file: !1430, line: 303, type: !2420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6496 = distinct !DISubprogram(name: "signal_pending", scope: !2257, file: !2257, line: 392, type: !6497, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6499)
!6497 = !DISubroutineType(types: !6498)
!6498 = !{!85, !1785}
!6499 = !{!6500}
!6500 = !DILocalVariable(name: "p", arg: 1, scope: !6496, file: !2257, line: 392, type: !1785)
!6501 = !DILocation(line: 392, column: 54, scope: !6496)
!6502 = !DILocation(line: 399, column: 6, scope: !6503)
!6503 = distinct !DILexicalBlock(scope: !6496, file: !2257, line: 399, column: 6)
!6504 = !DILocation(line: 399, column: 6, scope: !6496)
!6505 = !DILocation(line: 400, column: 3, scope: !6503)
!6506 = !DILocation(line: 401, column: 25, scope: !6496)
!6507 = !DILocation(line: 401, column: 9, scope: !6496)
!6508 = !DILocation(line: 401, column: 2, scope: !6496)
!6509 = !DILocation(line: 402, column: 1, scope: !6496)
!6510 = !DISubprogram(name: "remove_wait_queue", scope: !773, file: !773, line: 169, type: !6476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6511 = !DISubprogram(name: "snd_card_file_add", scope: !118, file: !118, line: 300, type: !6512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6512 = !DISubroutineType(types: !6513)
!6513 = !{!85, !166, !1032}
!6514 = !DISubprogram(name: "module_put", scope: !6, file: !6, line: 706, type: !3745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6515 = distinct !DISubprogram(name: "kasan_check_write", scope: !6516, file: !6516, line: 44, type: !6517, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6519)
!6516 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6517 = !DISubroutineType(types: !6518)
!6518 = !{!903, !6482, !7}
!6519 = !{!6520, !6521}
!6520 = !DILocalVariable(name: "p", arg: 1, scope: !6515, file: !6516, line: 44, type: !6482)
!6521 = !DILocalVariable(name: "size", arg: 2, scope: !6515, file: !6516, line: 44, type: !7)
!6522 = !DILocation(line: 44, column: 59, scope: !6515)
!6523 = !DILocation(line: 44, column: 75, scope: !6515)
!6524 = !DILocation(line: 46, column: 2, scope: !6515)
!6525 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6526, file: !6526, line: 229, type: !6527, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6529)
!6526 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6527 = !DISubroutineType(types: !6528)
!6528 = !{null, !6482, !341, !85}
!6529 = !{!6530, !6531, !6532}
!6530 = !DILocalVariable(name: "ptr", arg: 1, scope: !6525, file: !6526, line: 229, type: !6482)
!6531 = !DILocalVariable(name: "size", arg: 2, scope: !6525, file: !6526, line: 229, type: !341)
!6532 = !DILocalVariable(name: "type", arg: 3, scope: !6525, file: !6526, line: 230, type: !85)
!6533 = !DILocation(line: 229, column: 60, scope: !6525)
!6534 = !DILocation(line: 229, column: 72, scope: !6525)
!6535 = !DILocation(line: 230, column: 15, scope: !6525)
!6536 = !DILocation(line: 230, column: 23, scope: !6525)
!6537 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !1430, file: !1430, line: 2066, type: !6538, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6540)
!6538 = !DISubroutineType(types: !6539)
!6539 = !{!85, !1785, !85}
!6540 = !{!6541, !6542}
!6541 = !DILocalVariable(name: "tsk", arg: 1, scope: !6537, file: !1430, line: 2066, type: !1785)
!6542 = !DILocalVariable(name: "flag", arg: 2, scope: !6537, file: !1430, line: 2066, type: !85)
!6543 = !DILocation(line: 2066, column: 60, scope: !6537)
!6544 = !DILocation(line: 2066, column: 69, scope: !6537)
!6545 = !DILocation(line: 2068, column: 29, scope: !6537)
!6546 = !DILocation(line: 2068, column: 52, scope: !6537)
!6547 = !DILocation(line: 2068, column: 9, scope: !6537)
!6548 = !DILocation(line: 2068, column: 2, scope: !6537)
!6549 = distinct !DISubprogram(name: "task_sigpending", scope: !2257, file: !2257, line: 387, type: !6497, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6550)
!6550 = !{!6551}
!6551 = !DILocalVariable(name: "p", arg: 1, scope: !6549, file: !2257, line: 387, type: !1785)
!6552 = !DILocation(line: 387, column: 55, scope: !6549)
!6553 = !DILocation(line: 389, column: 9, scope: !6549)
!6554 = !DILocation(line: 389, column: 2, scope: !6549)
!6555 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !4705, file: !4705, line: 116, type: !6556, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6559)
!6556 = !DISubroutineType(types: !6557)
!6557 = !{!85, !6558, !85}
!6558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!6559 = !{!6560, !6561}
!6560 = !DILocalVariable(name: "ti", arg: 1, scope: !6555, file: !4705, line: 116, type: !6558)
!6561 = !DILocalVariable(name: "flag", arg: 2, scope: !6555, file: !4705, line: 116, type: !85)
!6562 = !DILocation(line: 116, column: 59, scope: !6555)
!6563 = !DILocation(line: 116, column: 67, scope: !6555)
!6564 = !DILocation(line: 118, column: 9, scope: !6555)
!6565 = !DILocation(line: 118, column: 2, scope: !6555)
!6566 = distinct !DISubprogram(name: "const_test_bit", scope: !6567, file: !6567, line: 166, type: !6568, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6573)
!6567 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6568 = !DISubroutineType(types: !6569)
!6569 = !{!903, !160, !6570}
!6570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6571, size: 64)
!6571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6572)
!6572 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !160)
!6573 = !{!6574, !6575, !6576, !6577, !6578}
!6574 = !DILocalVariable(name: "nr", arg: 1, scope: !6566, file: !6567, line: 166, type: !160)
!6575 = !DILocalVariable(name: "addr", arg: 2, scope: !6566, file: !6567, line: 166, type: !6570)
!6576 = !DILocalVariable(name: "p", scope: !6566, file: !6567, line: 168, type: !4597)
!6577 = !DILocalVariable(name: "mask", scope: !6566, file: !6567, line: 169, type: !160)
!6578 = !DILocalVariable(name: "val", scope: !6566, file: !6567, line: 170, type: !160)
!6579 = !DILocation(line: 166, column: 30, scope: !6566)
!6580 = !DILocation(line: 166, column: 64, scope: !6566)
!6581 = !DILocation(line: 168, column: 2, scope: !6566)
!6582 = !DILocation(line: 168, column: 23, scope: !6566)
!6583 = !DILocation(line: 168, column: 50, scope: !6566)
!6584 = !DILocation(line: 168, column: 57, scope: !6566)
!6585 = !DILocation(line: 168, column: 55, scope: !6566)
!6586 = !DILocation(line: 169, column: 2, scope: !6566)
!6587 = !DILocation(line: 169, column: 16, scope: !6566)
!6588 = !DILocation(line: 169, column: 23, scope: !6566)
!6589 = !DILocation(line: 170, column: 2, scope: !6566)
!6590 = !DILocation(line: 170, column: 16, scope: !6566)
!6591 = !DILocation(line: 170, column: 23, scope: !6566)
!6592 = !DILocation(line: 170, column: 22, scope: !6566)
!6593 = !DILocation(line: 172, column: 12, scope: !6566)
!6594 = !DILocation(line: 172, column: 18, scope: !6566)
!6595 = !DILocation(line: 172, column: 16, scope: !6566)
!6596 = !DILocation(line: 172, column: 10, scope: !6566)
!6597 = !DILocation(line: 172, column: 9, scope: !6566)
!6598 = !DILocation(line: 173, column: 1, scope: !6566)
!6599 = !DILocation(line: 172, column: 2, scope: !6566)
!6600 = distinct !DISubprogram(name: "_test_bit", scope: !6601, file: !6601, line: 139, type: !6568, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6602)
!6601 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6602 = !{!6603, !6604}
!6603 = !DILocalVariable(name: "nr", arg: 1, scope: !6600, file: !6601, line: 139, type: !160)
!6604 = !DILocalVariable(name: "addr", arg: 2, scope: !6600, file: !6601, line: 139, type: !6570)
!6605 = !DILocation(line: 139, column: 25, scope: !6600)
!6606 = !DILocation(line: 139, column: 59, scope: !6600)
!6607 = !DILocation(line: 141, column: 25, scope: !6600)
!6608 = !DILocation(line: 141, column: 32, scope: !6600)
!6609 = !DILocation(line: 141, column: 30, scope: !6600)
!6610 = !DILocation(line: 141, column: 2, scope: !6600)
!6611 = !DILocation(line: 142, column: 23, scope: !6600)
!6612 = !DILocation(line: 142, column: 27, scope: !6600)
!6613 = !DILocation(line: 142, column: 9, scope: !6600)
!6614 = !DILocation(line: 142, column: 2, scope: !6600)
!6615 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6479, file: !6479, line: 66, type: !6480, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6616)
!6616 = !{!6617, !6618}
!6617 = !DILocalVariable(name: "v", arg: 1, scope: !6615, file: !6479, line: 66, type: !6482)
!6618 = !DILocalVariable(name: "size", arg: 2, scope: !6615, file: !6479, line: 66, type: !341)
!6619 = !DILocation(line: 66, column: 73, scope: !6615)
!6620 = !DILocation(line: 66, column: 83, scope: !6615)
!6621 = !DILocation(line: 68, column: 19, scope: !6615)
!6622 = !DILocation(line: 68, column: 22, scope: !6615)
!6623 = !DILocation(line: 68, column: 2, scope: !6615)
!6624 = !DILocation(line: 69, column: 2, scope: !6615)
!6625 = !DILocation(line: 70, column: 1, scope: !6615)
!6626 = distinct !DISubprogram(name: "arch_test_bit", scope: !6627, file: !6627, line: 237, type: !6568, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6628)
!6627 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6628 = !{!6629, !6630}
!6629 = !DILocalVariable(name: "nr", arg: 1, scope: !6626, file: !6627, line: 237, type: !160)
!6630 = !DILocalVariable(name: "addr", arg: 2, scope: !6626, file: !6627, line: 237, type: !6570)
!6631 = !DILocation(line: 237, column: 29, scope: !6626)
!6632 = !DILocation(line: 237, column: 63, scope: !6626)
!6633 = !DILocation(line: 239, column: 30, scope: !6626)
!6634 = !DILocation(line: 239, column: 9, scope: !6626)
!6635 = !DILocation(line: 239, column: 54, scope: !6626)
!6636 = !DILocation(line: 239, column: 58, scope: !6626)
!6637 = !DILocation(line: 239, column: 36, scope: !6626)
!6638 = !DILocation(line: 240, column: 26, scope: !6626)
!6639 = !DILocation(line: 240, column: 30, scope: !6626)
!6640 = !DILocation(line: 240, column: 8, scope: !6626)
!6641 = !DILocation(line: 239, column: 2, scope: !6626)
!6642 = distinct !DISubprogram(name: "kasan_check_read", scope: !6516, file: !6516, line: 40, type: !6517, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6643)
!6643 = !{!6644, !6645}
!6644 = !DILocalVariable(name: "p", arg: 1, scope: !6642, file: !6516, line: 40, type: !6482)
!6645 = !DILocalVariable(name: "size", arg: 2, scope: !6642, file: !6516, line: 40, type: !7)
!6646 = !DILocation(line: 40, column: 58, scope: !6642)
!6647 = !DILocation(line: 40, column: 74, scope: !6642)
!6648 = !DILocation(line: 42, column: 2, scope: !6642)
!6649 = distinct !DISubprogram(name: "constant_test_bit", scope: !6627, file: !6627, line: 204, type: !6650, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6652)
!6650 = !DISubroutineType(types: !6651)
!6651 = !{!903, !330, !6570}
!6652 = !{!6653, !6654}
!6653 = !DILocalVariable(name: "nr", arg: 1, scope: !6649, file: !6627, line: 204, type: !330)
!6654 = !DILocalVariable(name: "addr", arg: 2, scope: !6649, file: !6627, line: 204, type: !6570)
!6655 = !DILocation(line: 204, column: 52, scope: !6649)
!6656 = !DILocation(line: 204, column: 86, scope: !6649)
!6657 = !DILocation(line: 206, column: 19, scope: !6649)
!6658 = !DILocation(line: 206, column: 22, scope: !6649)
!6659 = !DILocation(line: 206, column: 15, scope: !6649)
!6660 = !DILocation(line: 207, column: 4, scope: !6649)
!6661 = !DILocation(line: 207, column: 9, scope: !6649)
!6662 = !DILocation(line: 207, column: 12, scope: !6649)
!6663 = !DILocation(line: 206, column: 44, scope: !6649)
!6664 = !DILocation(line: 207, column: 37, scope: !6649)
!6665 = !DILocation(line: 206, column: 2, scope: !6649)
!6666 = distinct !DISubprogram(name: "variable_test_bit", scope: !6627, file: !6627, line: 224, type: !6650, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6667)
!6667 = !{!6668, !6669, !6670}
!6668 = !DILocalVariable(name: "nr", arg: 1, scope: !6666, file: !6627, line: 224, type: !330)
!6669 = !DILocalVariable(name: "addr", arg: 2, scope: !6666, file: !6627, line: 224, type: !6570)
!6670 = !DILocalVariable(name: "oldbit", scope: !6666, file: !6627, line: 226, type: !903)
!6671 = !DILocation(line: 224, column: 52, scope: !6666)
!6672 = !DILocation(line: 224, column: 86, scope: !6666)
!6673 = !DILocation(line: 226, column: 2, scope: !6666)
!6674 = !DILocation(line: 226, column: 7, scope: !6666)
!6675 = !DILocation(line: 231, column: 33, scope: !6666)
!6676 = !DILocation(line: 231, column: 46, scope: !6666)
!6677 = !DILocation(line: 228, column: 2, scope: !6666)
!6678 = !{i64 2148116992, i64 2148117066}
!6679 = !DILocation(line: 233, column: 9, scope: !6666)
!6680 = !DILocation(line: 234, column: 1, scope: !6666)
!6681 = !DILocation(line: 233, column: 2, scope: !6666)
!6682 = !DISubprogram(name: "__wake_up", scope: !773, file: !773, line: 212, type: !6683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6683 = !DISubroutineType(types: !6684)
!6684 = !{!85, !4942, !7, !85, !159}
!6685 = !DISubprogram(name: "snd_card_file_remove", scope: !118, file: !118, line: 301, type: !6512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6686 = distinct !DISubprogram(name: "__list_del_entry", scope: !5421, file: !5421, line: 213, type: !5443, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6687)
!6687 = !{!6688}
!6688 = !DILocalVariable(name: "entry", arg: 1, scope: !6686, file: !5421, line: 213, type: !199)
!6689 = !DILocation(line: 213, column: 55, scope: !6686)
!6690 = !DILocation(line: 215, column: 30, scope: !6691)
!6691 = distinct !DILexicalBlock(scope: !6686, file: !5421, line: 215, column: 6)
!6692 = !DILocation(line: 215, column: 7, scope: !6691)
!6693 = !DILocation(line: 215, column: 6, scope: !6686)
!6694 = !DILocation(line: 216, column: 3, scope: !6691)
!6695 = !DILocation(line: 218, column: 13, scope: !6686)
!6696 = !DILocation(line: 218, column: 20, scope: !6686)
!6697 = !DILocation(line: 218, column: 26, scope: !6686)
!6698 = !DILocation(line: 218, column: 33, scope: !6686)
!6699 = !DILocation(line: 218, column: 2, scope: !6686)
!6700 = !DILocation(line: 219, column: 1, scope: !6686)
!6701 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5421, file: !5421, line: 134, type: !6702, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6704)
!6702 = !DISubroutineType(types: !6703)
!6703 = !{!903, !199}
!6704 = !{!6705}
!6705 = !DILocalVariable(name: "entry", arg: 1, scope: !6701, file: !5421, line: 134, type: !199)
!6706 = !DILocation(line: 134, column: 61, scope: !6701)
!6707 = !DILocation(line: 136, column: 2, scope: !6701)
!6708 = distinct !DISubprogram(name: "__list_del", scope: !5421, file: !5421, line: 193, type: !5422, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6709)
!6709 = !{!6710, !6711}
!6710 = !DILocalVariable(name: "prev", arg: 1, scope: !6708, file: !5421, line: 193, type: !199)
!6711 = !DILocalVariable(name: "next", arg: 2, scope: !6708, file: !5421, line: 193, type: !199)
!6712 = !DILocation(line: 193, column: 50, scope: !6708)
!6713 = !DILocation(line: 193, column: 75, scope: !6708)
!6714 = !DILocation(line: 195, column: 15, scope: !6708)
!6715 = !DILocation(line: 195, column: 2, scope: !6708)
!6716 = !DILocation(line: 195, column: 8, scope: !6708)
!6717 = !DILocation(line: 195, column: 13, scope: !6708)
!6718 = !DILocation(line: 196, column: 2, scope: !6708)
!6719 = !DILocation(line: 196, column: 2, scope: !6720)
!6720 = distinct !DILexicalBlock(scope: !6708, file: !5421, line: 196, column: 2)
!6721 = !DILocation(line: 196, column: 2, scope: !6722)
!6722 = distinct !DILexicalBlock(scope: !6720, file: !5421, line: 196, column: 2)
!6723 = !DILocation(line: 196, column: 2, scope: !6724)
!6724 = distinct !DILexicalBlock(scope: !6720, file: !5421, line: 196, column: 2)
!6725 = !DILocation(line: 197, column: 1, scope: !6708)
!6726 = !DISubprogram(name: "snd_unregister_device", scope: !118, file: !118, line: 247, type: !4090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6727 = distinct !DISubprogram(name: "list_del_init", scope: !5421, file: !5421, line: 285, type: !5443, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6728)
!6728 = !{!6729}
!6729 = !DILocalVariable(name: "entry", arg: 1, scope: !6727, file: !5421, line: 285, type: !199)
!6730 = !DILocation(line: 285, column: 52, scope: !6727)
!6731 = !DILocation(line: 287, column: 19, scope: !6727)
!6732 = !DILocation(line: 287, column: 2, scope: !6727)
!6733 = !DILocation(line: 288, column: 17, scope: !6727)
!6734 = !DILocation(line: 288, column: 2, scope: !6727)
!6735 = !DILocation(line: 289, column: 1, scope: !6727)
!6736 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5421, file: !5421, line: 35, type: !5443, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6737)
!6737 = !{!6738}
!6738 = !DILocalVariable(name: "list", arg: 1, scope: !6736, file: !5421, line: 35, type: !199)
!6739 = !DILocation(line: 35, column: 53, scope: !6736)
!6740 = !DILocation(line: 37, column: 2, scope: !6736)
!6741 = !DILocation(line: 37, column: 2, scope: !6742)
!6742 = distinct !DILexicalBlock(scope: !6736, file: !5421, line: 37, column: 2)
!6743 = !DILocation(line: 37, column: 2, scope: !6744)
!6744 = distinct !DILexicalBlock(scope: !6742, file: !5421, line: 37, column: 2)
!6745 = !DILocation(line: 37, column: 2, scope: !6746)
!6746 = distinct !DILexicalBlock(scope: !6742, file: !5421, line: 37, column: 2)
!6747 = !DILocation(line: 38, column: 2, scope: !6736)
!6748 = !DILocation(line: 38, column: 2, scope: !6749)
!6749 = distinct !DILexicalBlock(scope: !6736, file: !5421, line: 38, column: 2)
!6750 = !DILocation(line: 38, column: 2, scope: !6751)
!6751 = distinct !DILexicalBlock(scope: !6749, file: !5421, line: 38, column: 2)
!6752 = !DILocation(line: 38, column: 2, scope: !6753)
!6753 = distinct !DILexicalBlock(scope: !6749, file: !5421, line: 38, column: 2)
!6754 = !DILocation(line: 39, column: 1, scope: !6736)
!6755 = distinct !DISubprogram(name: "snd_hwdep_proc_init", scope: !3, file: !3, line: 504, type: !2420, scopeLine: 505, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6756)
!6756 = !{!6757}
!6757 = !DILocalVariable(name: "entry", scope: !6755, file: !3, line: 506, type: !4412)
!6758 = !DILocation(line: 506, column: 2, scope: !6755)
!6759 = !DILocation(line: 506, column: 25, scope: !6755)
!6760 = !DILocation(line: 508, column: 10, scope: !6755)
!6761 = !DILocation(line: 508, column: 8, scope: !6755)
!6762 = !DILocation(line: 509, column: 6, scope: !6763)
!6763 = distinct !DILexicalBlock(scope: !6755, file: !3, line: 509, column: 6)
!6764 = !DILocation(line: 509, column: 6, scope: !6755)
!6765 = !DILocation(line: 510, column: 3, scope: !6766)
!6766 = distinct !DILexicalBlock(scope: !6763, file: !3, line: 509, column: 13)
!6767 = !DILocation(line: 510, column: 10, scope: !6766)
!6768 = !DILocation(line: 510, column: 17, scope: !6766)
!6769 = !DILocation(line: 510, column: 22, scope: !6766)
!6770 = !DILocation(line: 511, column: 25, scope: !6771)
!6771 = distinct !DILexicalBlock(scope: !6766, file: !3, line: 511, column: 7)
!6772 = !DILocation(line: 511, column: 7, scope: !6771)
!6773 = !DILocation(line: 511, column: 32, scope: !6771)
!6774 = !DILocation(line: 511, column: 7, scope: !6766)
!6775 = !DILocation(line: 512, column: 24, scope: !6776)
!6776 = distinct !DILexicalBlock(scope: !6771, file: !3, line: 511, column: 37)
!6777 = !DILocation(line: 512, column: 4, scope: !6776)
!6778 = !DILocation(line: 513, column: 10, scope: !6776)
!6779 = !DILocation(line: 514, column: 3, scope: !6776)
!6780 = !DILocation(line: 515, column: 2, scope: !6766)
!6781 = !DILocation(line: 516, column: 25, scope: !6755)
!6782 = !DILocation(line: 516, column: 23, scope: !6755)
!6783 = !DILocation(line: 517, column: 1, scope: !6755)
!6784 = !DISubprogram(name: "snd_ctl_register_ioctl", scope: !4994, file: !4994, line: 172, type: !4995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6785 = !DISubprogram(name: "snd_ctl_register_ioctl_compat", scope: !4994, file: !4994, line: 175, type: !4995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6786 = !DISubprogram(name: "snd_info_create_module_entry", scope: !4414, file: !4414, line: 114, type: !6787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6787 = !DISubroutineType(types: !6788)
!6788 = !{!4412, !191, !213, !4412}
!6789 = distinct !DISubprogram(name: "snd_hwdep_proc_read", scope: !3, file: !3, line: 490, type: !4428, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6790)
!6790 = !{!6791, !6792, !6793, !6794, !6797}
!6791 = !DILocalVariable(name: "entry", arg: 1, scope: !6789, file: !3, line: 490, type: !4412)
!6792 = !DILocalVariable(name: "buffer", arg: 2, scope: !6789, file: !3, line: 491, type: !4430)
!6793 = !DILocalVariable(name: "hwdep", scope: !6789, file: !3, line: 493, type: !161)
!6794 = !DILocalVariable(name: "__mptr", scope: !6795, file: !3, line: 496, type: !159)
!6795 = distinct !DILexicalBlock(scope: !6796, file: !3, line: 496, column: 2)
!6796 = distinct !DILexicalBlock(scope: !6789, file: !3, line: 496, column: 2)
!6797 = !DILocalVariable(name: "__mptr", scope: !6798, file: !3, line: 496, type: !159)
!6798 = distinct !DILexicalBlock(scope: !6799, file: !3, line: 496, column: 2)
!6799 = distinct !DILexicalBlock(scope: !6796, file: !3, line: 496, column: 2)
!6800 = !DILocation(line: 490, column: 56, scope: !6789)
!6801 = !DILocation(line: 491, column: 29, scope: !6789)
!6802 = !DILocation(line: 493, column: 2, scope: !6789)
!6803 = !DILocation(line: 493, column: 20, scope: !6789)
!6804 = !DILocation(line: 495, column: 2, scope: !6789)
!6805 = !DILocation(line: 496, column: 2, scope: !6795)
!6806 = !DILocation(line: 496, column: 2, scope: !6796)
!6807 = !DILocation(line: 496, column: 2, scope: !6799)
!6808 = !DILocation(line: 497, column: 3, scope: !6799)
!6809 = !DILocation(line: 496, column: 2, scope: !6798)
!6810 = distinct !{!6810, !6806, !6811, !5094, !5095}
!6811 = !DILocation(line: 497, column: 3, scope: !6796)
!6812 = !DILocation(line: 499, column: 2, scope: !6789)
!6813 = !DILocation(line: 500, column: 1, scope: !6789)
!6814 = !DISubprogram(name: "snd_info_register", scope: !4414, file: !4414, line: 127, type: !6815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6815 = !DISubroutineType(types: !6816)
!6816 = !{!85, !4412}
!6817 = !DISubprogram(name: "seq_printf", scope: !646, file: !646, line: 119, type: !6818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6818 = !DISubroutineType(types: !6819)
!6819 = !{null, !644, !213, null}
