; ModuleID = 'drivers/char/hw_random/core.c'
source_filename = "drivers/char/hw_random/core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hwrng_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad hwrng_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hwrng_unregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad hwrng_unregister ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_hwrng_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_hwrng_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_hwrng_unregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_hwrng_unregister ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hwrng_msleep: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad hwrng_msleep ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hwrng_yield: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad hwrng_yield ; .previous"
module asm ".section\09\22.initcall5.init..kmod_rng_core__281_732_hwrng_modinit\22, \22a\22\09\09"
module asm "__initcall__kmod_rng_core__281_732_hwrng_modinit5:\09\09\09"
module asm ".long\09__initstub__kmod_rng_core__281_732_hwrng_modinit5 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcpu_hot = type { %union.anon.17 }
%union.anon.17 = type { %struct.anon.18, [16 x i8] }
%struct.anon.18 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.lock_class_key = type {}
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, i16, %struct.list_head, %struct.kref, %struct.completion, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.file = type { %union.anon.14, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.15, %struct.qspinlock }
%union.anon.15 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
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

@__param_str_current_quality = internal constant [25 x i8] c"rng_core.current_quality\00", align 16, !dbg !0
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 8
@current_quality = internal global i16 0, align 2, !dbg !4028
@__param_current_quality = internal constant %struct.kernel_param { ptr @__param_str_current_quality, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.13 { ptr @current_quality } }, section "__param", align 8, !dbg !3953
@__UNIQUE_ID_current_qualitytype267 = internal constant [41 x i8] c"rng_core.parmtype=current_quality:ushort\00", section ".modinfo", align 1, !dbg !3955
@__UNIQUE_ID_current_quality268 = internal constant [123 x i8] c"rng_core.parm=current_quality:current hwrng entropy estimation per 1024 bits of input -- obsolete, use rng_quality instead\00", section ".modinfo", align 1, !dbg !3960
@__param_str_default_quality = internal constant [25 x i8] c"rng_core.default_quality\00", align 16, !dbg !4030
@default_quality = internal global i16 1024, align 2, !dbg !4035
@__param_default_quality = internal constant %struct.kernel_param { ptr @__param_str_default_quality, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.13 { ptr @default_quality } }, section "__param", align 8, !dbg !3965
@__UNIQUE_ID_default_qualitytype269 = internal constant [41 x i8] c"rng_core.parmtype=default_quality:ushort\00", section ".modinfo", align 1, !dbg !3967
@__UNIQUE_ID_default_quality270 = internal constant [94 x i8] c"rng_core.parm=default_quality:default maximum entropy content of hwrng per 1024 bits of input\00", section ".modinfo", align 1, !dbg !3969
@rng_miscdev = internal global %struct.miscdevice { i32 183, ptr @.str.2, ptr @rng_chrdev_ops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @rng_dev_groups, ptr @.str.3, i16 0 }, align 8, !dbg !4044
@rng_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rng_mutex, i64 16), ptr getelementptr (i8, ptr @rng_mutex, i64 16) } }, align 8, !dbg !4482
@rng_list = internal global %struct.list_head { ptr @rng_list, ptr @rng_list }, align 8, !dbg !4484
@current_rng = internal global ptr null, align 8, !dbg !4017
@cur_rng_set_by_user = internal global i32 0, align 4, !dbg !4019
@__UNIQUE_ID___addressable_hwrng_register275 = internal global ptr @hwrng_register, section ".discard.addressable", align 8, !dbg !3974
@hwrng_fill = internal global ptr null, align 8, !dbg !4021
@__UNIQUE_ID___addressable_hwrng_unregister276 = internal global ptr @hwrng_unregister, section ".discard.addressable", align 8, !dbg !3976
@.str = private unnamed_addr constant [19 x i8] c"devm_hwrng_release\00", align 1, !dbg !3978
@__UNIQUE_ID___addressable_devm_hwrng_register277 = internal global ptr @devm_hwrng_register, section ".discard.addressable", align 8, !dbg !3983
@__UNIQUE_ID___addressable_devm_hwrng_unregister278 = internal global ptr @devm_hwrng_unregister, section ".discard.addressable", align 8, !dbg !3985
@__UNIQUE_ID___addressable_hwrng_msleep279 = internal global ptr @hwrng_msleep, section ".discard.addressable", align 8, !dbg !3987
@__UNIQUE_ID___addressable_hwrng_yield280 = internal global ptr @hwrng_yield, section ".discard.addressable", align 8, !dbg !3989
@.str.1 = private unnamed_addr constant [30 x i8] c"drivers/char/hw_random/core.c\00", align 1, !dbg !3991
@rng_buffer = internal global ptr null, align 8, !dbg !4023
@rng_fillbuf = internal global ptr null, align 8, !dbg !4026
@__UNIQUE_ID___addressable___initstub__kmod_rng_core__281_732_hwrng_modinit5282 = internal global ptr @__initstub__kmod_rng_core__281_732_hwrng_modinit5, section ".discard.addressable", align 8, !dbg !3996
@__exitcall_hwrng_modexit = internal global ptr @hwrng_modexit, section ".exitcall.exit", align 8, !dbg !3998
@__UNIQUE_ID_description283 = internal constant [62 x i8] c"rng_core.description=H/W Random Number Generator (RNG) driver\00", section ".modinfo", align 1, !dbg !4002
@__UNIQUE_ID_file284 = internal constant [46 x i8] c"rng_core.file=drivers/char/hw_random/rng-core\00", section ".modinfo", align 1, !dbg !4007
@__UNIQUE_ID_license285 = internal constant [21 x i8] c"rng_core.license=GPL\00", section ".modinfo", align 1, !dbg !4012
@.str.2 = private unnamed_addr constant [10 x i8] c"hw_random\00", align 1, !dbg !4037
@rng_chrdev_ops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr @rng_dev_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @rng_dev_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4407
@rng_dev_groups = internal global [2 x ptr] [ptr @rng_dev_group, ptr null], align 16, !dbg !4419
@.str.3 = private unnamed_addr constant [6 x i8] c"hwrng\00", align 1, !dbg !4042
@reading_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @reading_mutex, i64 16), ptr getelementptr (i8, ptr @reading_mutex, i64 16) } }, align 8, !dbg !4409
@data_avail = internal global i32 0, align 4, !dbg !4411
@.str.4 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !4413
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@rng_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rng_dev_attrs, ptr null }, align 8, !dbg !4422
@rng_dev_attrs = internal global [5 x ptr] [ptr @dev_attr_rng_current, ptr @dev_attr_rng_available, ptr @dev_attr_rng_selected, ptr @dev_attr_rng_quality, ptr null], align 16, !dbg !4424
@dev_attr_rng_current = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420 }, ptr @rng_current_show, ptr @rng_current_store }, align 8, !dbg !4432
@dev_attr_rng_available = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @rng_available_show, ptr null }, align 8, !dbg !4460
@dev_attr_rng_selected = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @rng_selected_show, ptr null }, align 8, !dbg !4472
@dev_attr_rng_quality = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420 }, ptr @rng_quality_show, ptr @rng_quality_store }, align 8, !dbg !4478
@.str.5 = private unnamed_addr constant [12 x i8] c"rng_current\00", align 1, !dbg !4429
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !4446
@.str.7 = private unnamed_addr constant [5 x i8] c"none\00", align 1, !dbg !4449
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !4452
@.str.9 = private unnamed_addr constant [14 x i8] c"rng_available\00", align 1, !dbg !4455
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !4462
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !4465
@.str.12 = private unnamed_addr constant [13 x i8] c"rng_selected\00", align 1, !dbg !4467
@.str.13 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !4474
@.str.14 = private unnamed_addr constant [12 x i8] c"rng_quality\00", align 1, !dbg !4476
@.str.15 = private unnamed_addr constant [5 x i8] c"%hu\0A\00", align 1, !dbg !4480
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4486
@.str.16 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1, !dbg !4493
@.str.17 = private unnamed_addr constant [37 x i8] c"\013hwrng_fill thread creation failed\0A\00", align 1, !dbg !4498
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.18 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4503
@llvm.compiler.used = appending global [19 x ptr] [ptr @__param_current_quality, ptr @__UNIQUE_ID_current_qualitytype267, ptr @__UNIQUE_ID_current_quality268, ptr @__param_default_quality, ptr @__UNIQUE_ID_default_qualitytype269, ptr @__UNIQUE_ID_default_quality270, ptr @unregister_miscdev, ptr @__UNIQUE_ID___addressable_hwrng_register275, ptr @__UNIQUE_ID___addressable_hwrng_unregister276, ptr @__UNIQUE_ID___addressable_devm_hwrng_register277, ptr @__UNIQUE_ID___addressable_devm_hwrng_unregister278, ptr @__UNIQUE_ID___addressable_hwrng_msleep279, ptr @__UNIQUE_ID___addressable_hwrng_yield280, ptr @hwrng_modexit, ptr @__UNIQUE_ID___addressable___initstub__kmod_rng_core__281_732_hwrng_modinit5282, ptr @__exitcall_hwrng_modexit, ptr @__UNIQUE_ID_description283, ptr @__UNIQUE_ID_file284, ptr @__UNIQUE_ID_license285], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @unregister_miscdev() #0 section ".exit.text" align 16 !dbg !4515 {
entry:
  call void @misc_deregister(ptr noundef @rng_miscdev) #19, !dbg !4516
  ret void, !dbg !4517
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4518 dso_local void @misc_deregister(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @hwrng_register(ptr noundef %rng) #2 align 16 !dbg !4522 {
entry:
  %retval = alloca i32, align 4
  %rng.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %is_new_current = alloca i8, align 1
  %__mptr = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  %__UNIQUE_ID___x273 = alloca i16, align 2
  %__UNIQUE_ID___x271 = alloca i16, align 2
  %__UNIQUE_ID___y272 = alloca i16, align 2
  %tmp15 = alloca i32, align 4
  %__UNIQUE_ID___y274 = alloca i16, align 2
  %tmp29 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rng, ptr %rng.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rng.addr, metadata !4524, metadata !DIExpression()), !dbg !4542
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #20, !dbg !4543
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4525, metadata !DIExpression()), !dbg !4544
  store i32 -22, ptr %err, align 4, !dbg !4544
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #20, !dbg !4545
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4526, metadata !DIExpression()), !dbg !4546
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_new_current) #20, !dbg !4547
  call void @llvm.dbg.declare(metadata ptr %is_new_current, metadata !4527, metadata !DIExpression()), !dbg !4548
  store i8 0, ptr %is_new_current, align 1, !dbg !4548
  %0 = load ptr, ptr %rng.addr, align 8, !dbg !4549
  %name = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 0, !dbg !4551
  %1 = load ptr, ptr %name, align 8, !dbg !4551
  %tobool = icmp ne ptr %1, null, !dbg !4549
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4552

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %rng.addr, align 8, !dbg !4553
  %data_read = getelementptr inbounds %struct.hwrng, ptr %2, i32 0, i32 4, !dbg !4554
  %3 = load ptr, ptr %data_read, align 8, !dbg !4554
  %tobool1 = icmp ne ptr %3, null, !dbg !4553
  br i1 %tobool1, label %if.end, label %land.lhs.true, !dbg !4555

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load ptr, ptr %rng.addr, align 8, !dbg !4556
  %read = getelementptr inbounds %struct.hwrng, ptr %4, i32 0, i32 5, !dbg !4557
  %5 = load ptr, ptr %read, align 8, !dbg !4557
  %tobool2 = icmp ne ptr %5, null, !dbg !4556
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4558

if.then:                                          ; preds = %land.lhs.true, %entry
  br label %out, !dbg !4559

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  call void @mutex_lock(ptr noundef @rng_mutex) #19, !dbg !4560
  store i32 -17, ptr %err, align 4, !dbg !4561
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !4562
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4528, metadata !DIExpression()), !dbg !4562
  %6 = load ptr, ptr @rng_list, align 8, !dbg !4562
  store ptr %6, ptr %__mptr, align 8, !dbg !4562
  %7 = load ptr, ptr %__mptr, align 8, !dbg !4562
  %add.ptr = getelementptr i8, ptr %7, i64 -64, !dbg !4562
  store ptr %add.ptr, ptr %tmp3, align 8, !dbg !4562
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !4563
  %8 = load ptr, ptr %tmp3, align 8, !dbg !4562
  store ptr %8, ptr %tmp, align 8, !dbg !4563
  br label %for.cond, !dbg !4563

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load ptr, ptr %tmp, align 8, !dbg !4564
  %list = getelementptr inbounds %struct.hwrng, ptr %9, i32 0, i32 8, !dbg !4564
  %cmp = icmp eq ptr %list, @rng_list, !dbg !4564
  %lnot = xor i1 %cmp, true, !dbg !4564
  br i1 %lnot, label %for.body, label %for.end, !dbg !4563

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %tmp, align 8, !dbg !4565
  %name4 = getelementptr inbounds %struct.hwrng, ptr %10, i32 0, i32 0, !dbg !4568
  %11 = load ptr, ptr %name4, align 8, !dbg !4568
  %12 = load ptr, ptr %rng.addr, align 8, !dbg !4569
  %name5 = getelementptr inbounds %struct.hwrng, ptr %12, i32 0, i32 0, !dbg !4570
  %13 = load ptr, ptr %name5, align 8, !dbg !4570
  %call = call i32 @strcmp(ptr noundef %11, ptr noundef %13) #19, !dbg !4571
  %cmp6 = icmp eq i32 %call, 0, !dbg !4572
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !4573

if.then7:                                         ; preds = %for.body
  br label %out_unlock, !dbg !4574

if.end8:                                          ; preds = %for.body
  br label %for.inc, !dbg !4575

for.inc:                                          ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #20, !dbg !4576
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !4531, metadata !DIExpression()), !dbg !4576
  %14 = load ptr, ptr %tmp, align 8, !dbg !4576
  %list10 = getelementptr inbounds %struct.hwrng, ptr %14, i32 0, i32 8, !dbg !4576
  %next = getelementptr inbounds %struct.list_head, ptr %list10, i32 0, i32 0, !dbg !4576
  %15 = load ptr, ptr %next, align 8, !dbg !4576
  store ptr %15, ptr %__mptr9, align 8, !dbg !4576
  %16 = load ptr, ptr %__mptr9, align 8, !dbg !4576
  %add.ptr12 = getelementptr i8, ptr %16, i64 -64, !dbg !4576
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !4576
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #20, !dbg !4564
  %17 = load ptr, ptr %tmp11, align 8, !dbg !4576
  store ptr %17, ptr %tmp, align 8, !dbg !4564
  br label %for.cond, !dbg !4564, !llvm.loop !4577

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %rng.addr, align 8, !dbg !4581
  %list13 = getelementptr inbounds %struct.hwrng, ptr %18, i32 0, i32 8, !dbg !4582
  call void @list_add_tail(ptr noundef %list13, ptr noundef @rng_list) #19, !dbg !4583
  %19 = load ptr, ptr %rng.addr, align 8, !dbg !4584
  %cleanup_done = getelementptr inbounds %struct.hwrng, ptr %19, i32 0, i32 10, !dbg !4585
  call void @init_completion(ptr noundef %cleanup_done) #19, !dbg !4586
  %20 = load ptr, ptr %rng.addr, align 8, !dbg !4587
  %cleanup_done14 = getelementptr inbounds %struct.hwrng, ptr %20, i32 0, i32 10, !dbg !4588
  call void @complete(ptr noundef %cleanup_done14) #19, !dbg !4589
  %21 = load ptr, ptr %rng.addr, align 8, !dbg !4590
  %dying = getelementptr inbounds %struct.hwrng, ptr %21, i32 0, i32 11, !dbg !4591
  call void @init_completion(ptr noundef %dying) #19, !dbg !4592
  call void @llvm.lifetime.start.p0(i64 2, ptr %__UNIQUE_ID___x273) #20, !dbg !4593
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x273, metadata !4534, metadata !DIExpression()), !dbg !4593
  call void @llvm.lifetime.start.p0(i64 2, ptr %__UNIQUE_ID___x271) #20, !dbg !4594
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x271, metadata !4536, metadata !DIExpression()), !dbg !4594
  %22 = load i16, ptr @default_quality, align 2, !dbg !4594
  store i16 %22, ptr %__UNIQUE_ID___x271, align 2, !dbg !4594
  call void @llvm.lifetime.start.p0(i64 2, ptr %__UNIQUE_ID___y272) #20, !dbg !4594
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y272, metadata !4538, metadata !DIExpression()), !dbg !4594
  store i16 1024, ptr %__UNIQUE_ID___y272, align 2, !dbg !4594
  %23 = load i16, ptr %__UNIQUE_ID___x271, align 2, !dbg !4594
  %conv = zext i16 %23 to i32, !dbg !4594
  %24 = load i16, ptr %__UNIQUE_ID___y272, align 2, !dbg !4594
  %conv16 = zext i16 %24 to i32, !dbg !4594
  %cmp17 = icmp slt i32 %conv, %conv16, !dbg !4594
  br i1 %cmp17, label %cond.true, label %cond.false, !dbg !4594

cond.true:                                        ; preds = %for.end
  %25 = load i16, ptr %__UNIQUE_ID___x271, align 2, !dbg !4594
  %conv19 = zext i16 %25 to i32, !dbg !4594
  br label %cond.end, !dbg !4594

cond.false:                                       ; preds = %for.end
  %26 = load i16, ptr %__UNIQUE_ID___y272, align 2, !dbg !4594
  %conv20 = zext i16 %26 to i32, !dbg !4594
  br label %cond.end, !dbg !4594

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv19, %cond.true ], [ %conv20, %cond.false ], !dbg !4594
  store i32 %cond, ptr %tmp15, align 4, !dbg !4594
  call void @llvm.lifetime.end.p0(i64 2, ptr %__UNIQUE_ID___y272) #20, !dbg !4593
  call void @llvm.lifetime.end.p0(i64 2, ptr %__UNIQUE_ID___x271) #20, !dbg !4593
  %27 = load i32, ptr %tmp15, align 4, !dbg !4594
  %conv21 = trunc i32 %27 to i16, !dbg !4593
  store i16 %conv21, ptr %__UNIQUE_ID___x273, align 2, !dbg !4593
  call void @llvm.lifetime.start.p0(i64 2, ptr %__UNIQUE_ID___y274) #20, !dbg !4593
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y274, metadata !4539, metadata !DIExpression()), !dbg !4593
  %28 = load ptr, ptr %rng.addr, align 8, !dbg !4593
  %quality = getelementptr inbounds %struct.hwrng, ptr %28, i32 0, i32 7, !dbg !4593
  %29 = load i16, ptr %quality, align 8, !dbg !4593
  %conv22 = zext i16 %29 to i32, !dbg !4593
  %tobool23 = icmp ne i32 %conv22, 0, !dbg !4593
  br i1 %tobool23, label %cond.true24, label %cond.false25, !dbg !4593

cond.true24:                                      ; preds = %cond.end
  br label %cond.end26, !dbg !4593

cond.false25:                                     ; preds = %cond.end
  br label %cond.end26, !dbg !4593

cond.end26:                                       ; preds = %cond.false25, %cond.true24
  %cond27 = phi i32 [ %conv22, %cond.true24 ], [ 1024, %cond.false25 ], !dbg !4593
  %conv28 = trunc i32 %cond27 to i16, !dbg !4593
  store i16 %conv28, ptr %__UNIQUE_ID___y274, align 2, !dbg !4593
  %30 = load i16, ptr %__UNIQUE_ID___x273, align 2, !dbg !4593
  %conv30 = zext i16 %30 to i32, !dbg !4593
  %31 = load i16, ptr %__UNIQUE_ID___y274, align 2, !dbg !4593
  %conv31 = zext i16 %31 to i32, !dbg !4593
  %cmp32 = icmp slt i32 %conv30, %conv31, !dbg !4593
  br i1 %cmp32, label %cond.true34, label %cond.false36, !dbg !4593

cond.true34:                                      ; preds = %cond.end26
  %32 = load i16, ptr %__UNIQUE_ID___x273, align 2, !dbg !4593
  %conv35 = zext i16 %32 to i32, !dbg !4593
  br label %cond.end38, !dbg !4593

cond.false36:                                     ; preds = %cond.end26
  %33 = load i16, ptr %__UNIQUE_ID___y274, align 2, !dbg !4593
  %conv37 = zext i16 %33 to i32, !dbg !4593
  br label %cond.end38, !dbg !4593

cond.end38:                                       ; preds = %cond.false36, %cond.true34
  %cond39 = phi i32 [ %conv35, %cond.true34 ], [ %conv37, %cond.false36 ], !dbg !4593
  store i32 %cond39, ptr %tmp29, align 4, !dbg !4593
  call void @llvm.lifetime.end.p0(i64 2, ptr %__UNIQUE_ID___y274) #20, !dbg !4595
  call void @llvm.lifetime.end.p0(i64 2, ptr %__UNIQUE_ID___x273) #20, !dbg !4595
  %34 = load i32, ptr %tmp29, align 4, !dbg !4593
  %conv40 = trunc i32 %34 to i16, !dbg !4595
  %35 = load ptr, ptr %rng.addr, align 8, !dbg !4596
  %quality41 = getelementptr inbounds %struct.hwrng, ptr %35, i32 0, i32 7, !dbg !4597
  store i16 %conv40, ptr %quality41, align 8, !dbg !4598
  %36 = load ptr, ptr @current_rng, align 8, !dbg !4599
  %tobool42 = icmp ne ptr %36, null, !dbg !4599
  br i1 %tobool42, label %lor.lhs.false43, label %if.then52, !dbg !4601

lor.lhs.false43:                                  ; preds = %cond.end38
  %37 = load i32, ptr @cur_rng_set_by_user, align 4, !dbg !4602
  %tobool44 = icmp ne i32 %37, 0, !dbg !4602
  br i1 %tobool44, label %if.end57, label %land.lhs.true45, !dbg !4603

land.lhs.true45:                                  ; preds = %lor.lhs.false43
  %38 = load ptr, ptr %rng.addr, align 8, !dbg !4604
  %quality46 = getelementptr inbounds %struct.hwrng, ptr %38, i32 0, i32 7, !dbg !4605
  %39 = load i16, ptr %quality46, align 8, !dbg !4605
  %conv47 = zext i16 %39 to i32, !dbg !4604
  %40 = load ptr, ptr @current_rng, align 8, !dbg !4606
  %quality48 = getelementptr inbounds %struct.hwrng, ptr %40, i32 0, i32 7, !dbg !4607
  %41 = load i16, ptr %quality48, align 8, !dbg !4607
  %conv49 = zext i16 %41 to i32, !dbg !4606
  %cmp50 = icmp sgt i32 %conv47, %conv49, !dbg !4608
  br i1 %cmp50, label %if.then52, label %if.end57, !dbg !4609

if.then52:                                        ; preds = %land.lhs.true45, %cond.end38
  %42 = load ptr, ptr %rng.addr, align 8, !dbg !4610
  %call53 = call i32 @set_current_rng(ptr noundef %42) #19, !dbg !4612
  store i32 %call53, ptr %err, align 4, !dbg !4613
  %43 = load i32, ptr %err, align 4, !dbg !4614
  %tobool54 = icmp ne i32 %43, 0, !dbg !4614
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !4616

if.then55:                                        ; preds = %if.then52
  br label %out_unlock, !dbg !4617

if.end56:                                         ; preds = %if.then52
  store i8 1, ptr %is_new_current, align 1, !dbg !4618
  %44 = load ptr, ptr %rng.addr, align 8, !dbg !4619
  %ref = getelementptr inbounds %struct.hwrng, ptr %44, i32 0, i32 9, !dbg !4620
  call void @kref_get(ptr noundef %ref) #19, !dbg !4621
  br label %if.end57, !dbg !4622

if.end57:                                         ; preds = %if.end56, %land.lhs.true45, %lor.lhs.false43
  call void @mutex_unlock(ptr noundef @rng_mutex) #19, !dbg !4623
  %45 = load i8, ptr %is_new_current, align 1, !dbg !4624, !range !4626, !noundef !531
  %tobool58 = trunc i8 %45 to i1, !dbg !4624
  br i1 %tobool58, label %if.then62, label %lor.lhs.false60, !dbg !4627

lor.lhs.false60:                                  ; preds = %if.end57
  %46 = load ptr, ptr %rng.addr, align 8, !dbg !4628
  %init = getelementptr inbounds %struct.hwrng, ptr %46, i32 0, i32 1, !dbg !4629
  %47 = load ptr, ptr %init, align 8, !dbg !4629
  %tobool61 = icmp ne ptr %47, null, !dbg !4628
  br i1 %tobool61, label %if.end63, label %if.then62, !dbg !4630

if.then62:                                        ; preds = %lor.lhs.false60, %if.end57
  %48 = load ptr, ptr %rng.addr, align 8, !dbg !4631
  call void @add_early_randomness(ptr noundef %48) #19, !dbg !4633
  br label %if.end63, !dbg !4634

if.end63:                                         ; preds = %if.then62, %lor.lhs.false60
  %49 = load i8, ptr %is_new_current, align 1, !dbg !4635, !range !4626, !noundef !531
  %tobool64 = trunc i8 %49 to i1, !dbg !4635
  br i1 %tobool64, label %if.then65, label %if.end66, !dbg !4637

if.then65:                                        ; preds = %if.end63
  %50 = load ptr, ptr %rng.addr, align 8, !dbg !4638
  call void @put_rng(ptr noundef %50) #19, !dbg !4639
  br label %if.end66, !dbg !4639

if.end66:                                         ; preds = %if.then65, %if.end63
  store i32 0, ptr %retval, align 4, !dbg !4640
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4640

out_unlock:                                       ; preds = %if.then55, %if.then7
  call void @llvm.dbg.label(metadata !4540), !dbg !4641
  call void @mutex_unlock(ptr noundef @rng_mutex) #19, !dbg !4642
  br label %out, !dbg !4642

out:                                              ; preds = %out_unlock, %if.then
  call void @llvm.dbg.label(metadata !4541), !dbg !4643
  %51 = load i32, ptr %err, align 4, !dbg !4644
  store i32 %51, ptr %retval, align 4, !dbg !4645
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4645

cleanup:                                          ; preds = %out, %if.end66
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_new_current) #20, !dbg !4646
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #20, !dbg !4646
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #20, !dbg !4646
  %52 = load i32, ptr %retval, align 4, !dbg !4646
  ret i32 %52, !dbg !4646
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4647 dso_local void @mutex_lock(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4651 dso_local i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !4655 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4660, metadata !DIExpression()), !dbg !4662
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4661, metadata !DIExpression()), !dbg !4663
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4664
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4665
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4666
  %2 = load ptr, ptr %prev, align 8, !dbg !4666
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4667
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #19, !dbg !4668
  ret void, !dbg !4669
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_completion(ptr noundef %x) #5 align 16 !dbg !4488 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !4492, metadata !DIExpression()), !dbg !4670
  %0 = load ptr, ptr %x.addr, align 8, !dbg !4671
  %done = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 0, !dbg !4672
  store i32 0, ptr %done, align 8, !dbg !4673
  br label %do.body, !dbg !4674

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %x.addr, align 8, !dbg !4675
  %wait = getelementptr inbounds %struct.completion, ptr %1, i32 0, i32 1, !dbg !4675
  call void @__init_swait_queue_head(ptr noundef %wait, ptr noundef @.str.16, ptr noundef @init_completion.__key) #19, !dbg !4675
  br label %do.end, !dbg !4675

do.end:                                           ; preds = %do.body
  ret void, !dbg !4677
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4678 dso_local void @complete(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @set_current_rng(ptr noundef %rng) #2 align 16 !dbg !4679 {
entry:
  %retval = alloca i32, align 4
  %rng.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__k = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp28 = alloca i32, align 4
  store ptr %rng, ptr %rng.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rng.addr, metadata !4681, metadata !DIExpression()), !dbg !4687
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #20, !dbg !4688
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4682, metadata !DIExpression()), !dbg !4689
  br label %do.body, !dbg !4690

do.body:                                          ; preds = %entry
  %call = call zeroext i1 @mutex_is_locked(ptr noundef @rng_mutex) #19, !dbg !4691
  %lnot = xor i1 %call, true, !dbg !4691
  %lnot1 = xor i1 %lnot, true, !dbg !4691
  %lnot2 = xor i1 %lnot1, true, !dbg !4691
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4691
  %conv = sext i32 %lnot.ext to i64, !dbg !4691
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4691
  %tobool = icmp ne i64 %expval, 0, !dbg !4691
  br i1 %tobool, label %if.then, label %if.end, !dbg !4694

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !4691

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !4695

do.body4:                                         ; preds = %do.body3
  br label %do.cond, !dbg !4697

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !4697

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !4695

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 94, i32 0, i64 12) #20, !dbg !4699, !srcloc !4701
  br label %do.cond6, !dbg !4699

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4699

do.end7:                                          ; preds = %do.cond6
  unreachable, !dbg !4695

do.cond8:                                         ; No predecessors!
  br label %do.end9, !dbg !4695

do.end9:                                          ; preds = %do.cond8
  br label %if.end, !dbg !4695

if.end:                                           ; preds = %do.end9, %do.body
  br label %do.cond10, !dbg !4694

do.cond10:                                        ; preds = %if.end
  br label %do.end11, !dbg !4694

do.end11:                                         ; preds = %do.cond10
  %0 = load ptr, ptr %rng.addr, align 8, !dbg !4702
  %call12 = call i32 @hwrng_init(ptr noundef %0) #19, !dbg !4703
  store i32 %call12, ptr %err, align 4, !dbg !4704
  %1 = load i32, ptr %err, align 4, !dbg !4705
  %tobool13 = icmp ne i32 %1, 0, !dbg !4705
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4707

if.then14:                                        ; preds = %do.end11
  %2 = load i32, ptr %err, align 4, !dbg !4708
  store i32 %2, ptr %retval, align 4, !dbg !4709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4709

if.end15:                                         ; preds = %do.end11
  call void @drop_current_rng() #19, !dbg !4710
  %3 = load ptr, ptr %rng.addr, align 8, !dbg !4711
  store ptr %3, ptr @current_rng, align 8, !dbg !4712
  %4 = load ptr, ptr @hwrng_fill, align 8, !dbg !4713
  %tobool16 = icmp ne ptr %4, null, !dbg !4713
  br i1 %tobool16, label %if.end31, label %if.then17, !dbg !4714

if.then17:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 8, ptr %__k) #20, !dbg !4715
  call void @llvm.dbg.declare(metadata ptr %__k, metadata !4683, metadata !DIExpression()), !dbg !4715
  %call18 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef @hwrng_fillfn, ptr noundef null, i32 noundef -1, ptr noundef @.str.3) #19, !dbg !4715
  store ptr %call18, ptr %__k, align 8, !dbg !4715
  %5 = load ptr, ptr %__k, align 8, !dbg !4716
  %call19 = call zeroext i1 @IS_ERR(ptr noundef %5) #19, !dbg !4716
  br i1 %call19, label %if.end22, label %if.then20, !dbg !4715

if.then20:                                        ; preds = %if.then17
  %6 = load ptr, ptr %__k, align 8, !dbg !4716
  %call21 = call i32 @wake_up_process(ptr noundef %6) #19, !dbg !4716
  br label %if.end22, !dbg !4716

if.end22:                                         ; preds = %if.then20, %if.then17
  %7 = load ptr, ptr %__k, align 8, !dbg !4715
  store ptr %7, ptr %tmp, align 8, !dbg !4716
  call void @llvm.lifetime.end.p0(i64 8, ptr %__k) #20, !dbg !4718
  %8 = load ptr, ptr %tmp, align 8, !dbg !4715
  store ptr %8, ptr @hwrng_fill, align 8, !dbg !4719
  %9 = load ptr, ptr @hwrng_fill, align 8, !dbg !4720
  %call23 = call zeroext i1 @IS_ERR(ptr noundef %9) #19, !dbg !4722
  br i1 %call23, label %if.then24, label %if.end30, !dbg !4723

if.then24:                                        ; preds = %if.end22
  br label %do.body25, !dbg !4724

do.body25:                                        ; preds = %if.then24
  br label %do.cond26, !dbg !4727

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !4727

do.end27:                                         ; preds = %do.cond26
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef @.str.17) #21, !dbg !4724
  store i32 %call29, ptr %tmp28, align 4, !dbg !4727
  %10 = load i32, ptr %tmp28, align 4, !dbg !4724
  store ptr null, ptr @hwrng_fill, align 8, !dbg !4729
  br label %if.end30, !dbg !4730

if.end30:                                         ; preds = %do.end27, %if.end22
  br label %if.end31, !dbg !4731

if.end31:                                         ; preds = %if.end30, %if.end15
  store i32 0, ptr %retval, align 4, !dbg !4732
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4732

cleanup:                                          ; preds = %if.end31, %if.then14
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #20, !dbg !4733
  %11 = load i32, ptr %retval, align 4, !dbg !4733
  ret i32 %11, !dbg !4733
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_get(ptr noundef %kref) #5 align 16 !dbg !4734 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !4739, metadata !DIExpression()), !dbg !4740
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !4741
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !4742
  call void @refcount_inc(ptr noundef %refcount) #19, !dbg !4743
  ret void, !dbg !4744
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4745 dso_local void @mutex_unlock(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @add_early_randomness(ptr noundef %rng) #2 align 16 !dbg !4746 {
entry:
  %rng.addr = alloca ptr, align 8
  %bytes_read = alloca i32, align 4
  %entropy = alloca i64, align 8
  store ptr %rng, ptr %rng.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rng.addr, metadata !4748, metadata !DIExpression()), !dbg !4753
  call void @llvm.lifetime.start.p0(i64 4, ptr %bytes_read) #20, !dbg !4754
  call void @llvm.dbg.declare(metadata ptr %bytes_read, metadata !4749, metadata !DIExpression()), !dbg !4755
  call void @mutex_lock(ptr noundef @reading_mutex) #19, !dbg !4756
  %0 = load ptr, ptr %rng.addr, align 8, !dbg !4757
  %1 = load ptr, ptr @rng_fillbuf, align 8, !dbg !4758
  %call = call i32 @rng_get_data(ptr noundef %0, ptr noundef %1, i64 noundef 32, i32 noundef 0) #19, !dbg !4759
  store i32 %call, ptr %bytes_read, align 4, !dbg !4760
  call void @mutex_unlock(ptr noundef @reading_mutex) #19, !dbg !4761
  %2 = load i32, ptr %bytes_read, align 4, !dbg !4762
  %cmp = icmp sgt i32 %2, 0, !dbg !4763
  br i1 %cmp, label %if.then, label %if.end, !dbg !4764

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %entropy) #20, !dbg !4765
  call void @llvm.dbg.declare(metadata ptr %entropy, metadata !4750, metadata !DIExpression()), !dbg !4766
  %3 = load i32, ptr %bytes_read, align 4, !dbg !4767
  %mul = mul i32 %3, 8, !dbg !4768
  %4 = load ptr, ptr %rng.addr, align 8, !dbg !4769
  %quality = getelementptr inbounds %struct.hwrng, ptr %4, i32 0, i32 7, !dbg !4770
  %5 = load i16, ptr %quality, align 8, !dbg !4770
  %conv = zext i16 %5 to i32, !dbg !4769
  %mul1 = mul i32 %mul, %conv, !dbg !4771
  %div = sdiv i32 %mul1, 1024, !dbg !4772
  %conv2 = sext i32 %div to i64, !dbg !4767
  store i64 %conv2, ptr %entropy, align 8, !dbg !4766
  %6 = load ptr, ptr @rng_fillbuf, align 8, !dbg !4773
  %7 = load i32, ptr %bytes_read, align 4, !dbg !4774
  %conv3 = sext i32 %7 to i64, !dbg !4774
  %8 = load i64, ptr %entropy, align 8, !dbg !4775
  call void @add_hwgenerator_randomness(ptr noundef %6, i64 noundef %conv3, i64 noundef %8, i1 noundef zeroext false) #19, !dbg !4776
  call void @llvm.lifetime.end.p0(i64 8, ptr %entropy) #20, !dbg !4777
  br label %if.end, !dbg !4778

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %bytes_read) #20, !dbg !4779
  ret void, !dbg !4779
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_rng(ptr noundef %rng) #2 align 16 !dbg !4780 {
entry:
  %rng.addr = alloca ptr, align 8
  store ptr %rng, ptr %rng.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rng.addr, metadata !4782, metadata !DIExpression()), !dbg !4783
  call void @mutex_lock(ptr noundef @rng_mutex) #19, !dbg !4784
  %0 = load ptr, ptr %rng.addr, align 8, !dbg !4785
  %tobool = icmp ne ptr %0, null, !dbg !4785
  br i1 %tobool, label %if.then, label %if.end, !dbg !4787

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %rng.addr, align 8, !dbg !4788
  %ref = getelementptr inbounds %struct.hwrng, ptr %1, i32 0, i32 9, !dbg !4789
  %call = call i32 @kref_put(ptr noundef %ref, ptr noundef @cleanup_rng) #19, !dbg !4790
  br label %if.end, !dbg !4790

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_unlock(ptr noundef @rng_mutex) #19, !dbg !4791
  ret void, !dbg !4792
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @hwrng_unregister(ptr noundef %rng) #2 align 16 !dbg !4793 {
entry:
  %rng.addr = alloca ptr, align 8
  %old_rng = alloca ptr, align 8
  %new_rng = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %rng, ptr %rng.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rng.addr, metadata !4795, metadata !DIExpression()), !dbg !4799
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_rng) #20, !dbg !4800
  call void @llvm.dbg.declare(metadata ptr %old_rng, metadata !4796, metadata !DIExpression()), !dbg !4801
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_rng) #20, !dbg !4800
  call void @llvm.dbg.declare(metadata ptr %new_rng, metadata !4797, metadata !DIExpression()), !dbg !4802
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #20, !dbg !4803
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4798, metadata !DIExpression()), !dbg !4804
  call void @mutex_lock(ptr noundef @rng_mutex) #19, !dbg !4805
  %0 = load ptr, ptr @current_rng, align 8, !dbg !4806
  store ptr %0, ptr %old_rng, align 8, !dbg !4807
  %1 = load ptr, ptr %rng.addr, align 8, !dbg !4808
  %list = getelementptr inbounds %struct.hwrng, ptr %1, i32 0, i32 8, !dbg !4809
  call void @list_del(ptr noundef %list) #19, !dbg !4810
  %2 = load ptr, ptr %rng.addr, align 8, !dbg !4811
  %dying = getelementptr inbounds %struct.hwrng, ptr %2, i32 0, i32 11, !dbg !4812
  call void @complete_all(ptr noundef %dying) #19, !dbg !4813
  %3 = load ptr, ptr @current_rng, align 8, !dbg !4814
  %4 = load ptr, ptr %rng.addr, align 8, !dbg !4816
  %cmp = icmp eq ptr %3, %4, !dbg !4817
  br i1 %cmp, label %if.then, label %if.end2, !dbg !4818

if.then:                                          ; preds = %entry
  %call = call i32 @enable_best_rng() #19, !dbg !4819
  store i32 %call, ptr %err, align 4, !dbg !4821
  %5 = load i32, ptr %err, align 4, !dbg !4822
  %tobool = icmp ne i32 %5, 0, !dbg !4822
  br i1 %tobool, label %if.then1, label %if.end, !dbg !4824

if.then1:                                         ; preds = %if.then
  call void @drop_current_rng() #19, !dbg !4825
  store i32 0, ptr @cur_rng_set_by_user, align 4, !dbg !4827
  br label %if.end, !dbg !4828

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end2, !dbg !4829

if.end2:                                          ; preds = %if.end, %entry
  %call3 = call ptr @get_current_rng_nolock() #19, !dbg !4830
  store ptr %call3, ptr %new_rng, align 8, !dbg !4831
  %call4 = call i32 @list_empty(ptr noundef @rng_list) #19, !dbg !4832
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4832
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !4834

if.then6:                                         ; preds = %if.end2
  call void @mutex_unlock(ptr noundef @rng_mutex) #19, !dbg !4835
  %6 = load ptr, ptr @hwrng_fill, align 8, !dbg !4837
  %tobool7 = icmp ne ptr %6, null, !dbg !4837
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !4839

if.then8:                                         ; preds = %if.then6
  %7 = load ptr, ptr @hwrng_fill, align 8, !dbg !4840
  %call9 = call i32 @kthread_stop(ptr noundef %7) #19, !dbg !4841
  br label %if.end10, !dbg !4841

if.end10:                                         ; preds = %if.then8, %if.then6
  br label %if.end11, !dbg !4842

if.else:                                          ; preds = %if.end2
  call void @mutex_unlock(ptr noundef @rng_mutex) #19, !dbg !4843
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end10
  %8 = load ptr, ptr %new_rng, align 8, !dbg !4844
  %tobool12 = icmp ne ptr %8, null, !dbg !4844
  br i1 %tobool12, label %if.then13, label %if.end17, !dbg !4846

if.then13:                                        ; preds = %if.end11
  %9 = load ptr, ptr %old_rng, align 8, !dbg !4847
  %10 = load ptr, ptr %new_rng, align 8, !dbg !4850
  %cmp14 = icmp ne ptr %9, %10, !dbg !4851
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !4852

if.then15:                                        ; preds = %if.then13
  %11 = load ptr, ptr %new_rng, align 8, !dbg !4853
  call void @add_early_randomness(ptr noundef %11) #19, !dbg !4854
  br label %if.end16, !dbg !4854

if.end16:                                         ; preds = %if.then15, %if.then13
  %12 = load ptr, ptr %new_rng, align 8, !dbg !4855
  call void @put_rng(ptr noundef %12) #19, !dbg !4856
  br label %if.end17, !dbg !4857

if.end17:                                         ; preds = %if.end16, %if.end11
  %13 = load ptr, ptr %rng.addr, align 8, !dbg !4858
  %cleanup_done = getelementptr inbounds %struct.hwrng, ptr %13, i32 0, i32 10, !dbg !4859
  call void @wait_for_completion(ptr noundef %cleanup_done) #19, !dbg !4860
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #20, !dbg !4861
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_rng) #20, !dbg !4861
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_rng) #20, !dbg !4861
  ret void, !dbg !4861
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #5 align 16 !dbg !4862 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4866, metadata !DIExpression()), !dbg !4867
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4868
  call void @__list_del_entry(ptr noundef %0) #19, !dbg !4869
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4870
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4871
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !4872
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !4873
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !4874
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !4875
  ret void, !dbg !4876
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4877 dso_local void @complete_all(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @enable_best_rng() #2 align 16 !dbg !4878 {
entry:
  %retval = alloca i32, align 4
  %rng = alloca ptr, align 8
  %new_rng = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr27 = alloca ptr, align 8
  %tmp29 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rng) #20, !dbg !4889
  call void @llvm.dbg.declare(metadata ptr %rng, metadata !4880, metadata !DIExpression()), !dbg !4890
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_rng) #20, !dbg !4889
  call void @llvm.dbg.declare(metadata ptr %new_rng, metadata !4881, metadata !DIExpression()), !dbg !4891
  store ptr null, ptr %new_rng, align 8, !dbg !4891
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #20, !dbg !4892
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4882, metadata !DIExpression()), !dbg !4893
  store i32 -19, ptr %ret, align 4, !dbg !4893
  br label %do.body, !dbg !4894

do.body:                                          ; preds = %entry
  %call = call zeroext i1 @mutex_is_locked(ptr noundef @rng_mutex) #19, !dbg !4895
  %lnot = xor i1 %call, true, !dbg !4895
  %lnot1 = xor i1 %lnot, true, !dbg !4895
  %lnot2 = xor i1 %lnot1, true, !dbg !4895
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4895
  %conv = sext i32 %lnot.ext to i64, !dbg !4895
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4895
  %tobool = icmp ne i64 %expval, 0, !dbg !4895
  br i1 %tobool, label %if.then, label %if.end, !dbg !4898

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !4895

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !4899

do.body4:                                         ; preds = %do.body3
  br label %do.cond, !dbg !4901

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !4901

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !4899

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 315, i32 0, i64 12) #20, !dbg !4903, !srcloc !4905
  br label %do.cond6, !dbg !4903

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4903

do.end7:                                          ; preds = %do.cond6
  unreachable, !dbg !4899

do.cond8:                                         ; No predecessors!
  br label %do.end9, !dbg !4899

do.end9:                                          ; preds = %do.cond8
  br label %if.end, !dbg !4899

if.end:                                           ; preds = %do.end9, %do.body
  br label %do.cond10, !dbg !4898

do.cond10:                                        ; preds = %if.end
  br label %do.end11, !dbg !4898

do.end11:                                         ; preds = %do.cond10
  %call12 = call i32 @list_empty(ptr noundef @rng_list) #19, !dbg !4906
  %tobool13 = icmp ne i32 %call12, 0, !dbg !4906
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4908

if.then14:                                        ; preds = %do.end11
  call void @drop_current_rng() #19, !dbg !4909
  store i32 0, ptr @cur_rng_set_by_user, align 4, !dbg !4911
  store i32 0, ptr %retval, align 4, !dbg !4912
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4912

if.end15:                                         ; preds = %do.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !4913
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4883, metadata !DIExpression()), !dbg !4913
  %0 = load ptr, ptr @rng_list, align 8, !dbg !4913
  store ptr %0, ptr %__mptr, align 8, !dbg !4913
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4913
  %add.ptr = getelementptr i8, ptr %1, i64 -64, !dbg !4913
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4913
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !4914
  %2 = load ptr, ptr %tmp, align 8, !dbg !4913
  store ptr %2, ptr %rng, align 8, !dbg !4914
  br label %for.cond, !dbg !4914

for.cond:                                         ; preds = %for.inc, %if.end15
  %3 = load ptr, ptr %rng, align 8, !dbg !4915
  %list = getelementptr inbounds %struct.hwrng, ptr %3, i32 0, i32 8, !dbg !4915
  %cmp = icmp eq ptr %list, @rng_list, !dbg !4915
  %lnot17 = xor i1 %cmp, true, !dbg !4915
  br i1 %lnot17, label %for.body, label %for.end, !dbg !4914

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %new_rng, align 8, !dbg !4916
  %tobool19 = icmp ne ptr %4, null, !dbg !4916
  br i1 %tobool19, label %lor.lhs.false, label %if.then25, !dbg !4919

lor.lhs.false:                                    ; preds = %for.body
  %5 = load ptr, ptr %rng, align 8, !dbg !4920
  %quality = getelementptr inbounds %struct.hwrng, ptr %5, i32 0, i32 7, !dbg !4921
  %6 = load i16, ptr %quality, align 8, !dbg !4921
  %conv20 = zext i16 %6 to i32, !dbg !4920
  %7 = load ptr, ptr %new_rng, align 8, !dbg !4922
  %quality21 = getelementptr inbounds %struct.hwrng, ptr %7, i32 0, i32 7, !dbg !4923
  %8 = load i16, ptr %quality21, align 8, !dbg !4923
  %conv22 = zext i16 %8 to i32, !dbg !4922
  %cmp23 = icmp sgt i32 %conv20, %conv22, !dbg !4924
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !4925

if.then25:                                        ; preds = %lor.lhs.false, %for.body
  %9 = load ptr, ptr %rng, align 8, !dbg !4926
  store ptr %9, ptr %new_rng, align 8, !dbg !4927
  br label %if.end26, !dbg !4928

if.end26:                                         ; preds = %if.then25, %lor.lhs.false
  br label %for.inc, !dbg !4929

for.inc:                                          ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr27) #20, !dbg !4930
  call void @llvm.dbg.declare(metadata ptr %__mptr27, metadata !4886, metadata !DIExpression()), !dbg !4930
  %10 = load ptr, ptr %rng, align 8, !dbg !4930
  %list28 = getelementptr inbounds %struct.hwrng, ptr %10, i32 0, i32 8, !dbg !4930
  %next = getelementptr inbounds %struct.list_head, ptr %list28, i32 0, i32 0, !dbg !4930
  %11 = load ptr, ptr %next, align 8, !dbg !4930
  store ptr %11, ptr %__mptr27, align 8, !dbg !4930
  %12 = load ptr, ptr %__mptr27, align 8, !dbg !4930
  %add.ptr30 = getelementptr i8, ptr %12, i64 -64, !dbg !4930
  store ptr %add.ptr30, ptr %tmp29, align 8, !dbg !4930
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr27) #20, !dbg !4915
  %13 = load ptr, ptr %tmp29, align 8, !dbg !4930
  store ptr %13, ptr %rng, align 8, !dbg !4915
  br label %for.cond, !dbg !4915, !llvm.loop !4931

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %new_rng, align 8, !dbg !4933
  %15 = load ptr, ptr @current_rng, align 8, !dbg !4934
  %cmp31 = icmp eq ptr %14, %15, !dbg !4935
  br i1 %cmp31, label %cond.true, label %cond.false, !dbg !4936

cond.true:                                        ; preds = %for.end
  br label %cond.end, !dbg !4936

cond.false:                                       ; preds = %for.end
  %16 = load ptr, ptr %new_rng, align 8, !dbg !4937
  %call33 = call i32 @set_current_rng(ptr noundef %16) #19, !dbg !4938
  br label %cond.end, !dbg !4936

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call33, %cond.false ], !dbg !4936
  store i32 %cond, ptr %ret, align 4, !dbg !4939
  %17 = load i32, ptr %ret, align 4, !dbg !4940
  %tobool34 = icmp ne i32 %17, 0, !dbg !4940
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !4942

if.then35:                                        ; preds = %cond.end
  store i32 0, ptr @cur_rng_set_by_user, align 4, !dbg !4943
  br label %if.end36, !dbg !4944

if.end36:                                         ; preds = %if.then35, %cond.end
  %18 = load i32, ptr %ret, align 4, !dbg !4945
  store i32 %18, ptr %retval, align 4, !dbg !4946
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4946

cleanup:                                          ; preds = %if.end36, %if.then14
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #20, !dbg !4947
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_rng) #20, !dbg !4947
  call void @llvm.lifetime.end.p0(i64 8, ptr %rng) #20, !dbg !4947
  %19 = load i32, ptr %retval, align 4, !dbg !4947
  ret i32 %19, !dbg !4947
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drop_current_rng() #2 align 16 !dbg !4948 {
entry:
  br label %do.body, !dbg !4949

do.body:                                          ; preds = %entry
  %call = call zeroext i1 @mutex_is_locked(ptr noundef @rng_mutex) #19, !dbg !4950
  %lnot = xor i1 %call, true, !dbg !4950
  %lnot1 = xor i1 %lnot, true, !dbg !4950
  %lnot2 = xor i1 %lnot1, true, !dbg !4950
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4950
  %conv = sext i32 %lnot.ext to i64, !dbg !4950
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4950
  %tobool = icmp ne i64 %expval, 0, !dbg !4950
  br i1 %tobool, label %if.then, label %if.end, !dbg !4953

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !4950

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !4954

do.body4:                                         ; preds = %do.body3
  br label %do.end, !dbg !4956

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4954

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 117, i32 0, i64 12) #20, !dbg !4958, !srcloc !4960
  br label %do.end6, !dbg !4958

do.end6:                                          ; preds = %do.body5
  unreachable, !dbg !4954

do.end7:                                          ; No predecessors!
  br label %if.end, !dbg !4954

if.end:                                           ; preds = %do.end7, %do.body
  br label %do.end8, !dbg !4953

do.end8:                                          ; preds = %if.end
  %0 = load ptr, ptr @current_rng, align 8, !dbg !4961
  %tobool9 = icmp ne ptr %0, null, !dbg !4961
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !4963

if.then10:                                        ; preds = %do.end8
  br label %return, !dbg !4964

if.end11:                                         ; preds = %do.end8
  %1 = load ptr, ptr @current_rng, align 8, !dbg !4965
  %ref = getelementptr inbounds %struct.hwrng, ptr %1, i32 0, i32 9, !dbg !4966
  %call12 = call i32 @kref_put(ptr noundef %ref, ptr noundef @cleanup_rng) #19, !dbg !4967
  store ptr null, ptr @current_rng, align 8, !dbg !4968
  br label %return, !dbg !4969

return:                                           ; preds = %if.end11, %if.then10
  ret void, !dbg !4969
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current_rng_nolock() #2 align 16 !dbg !4970 {
entry:
  %0 = load ptr, ptr @current_rng, align 8, !dbg !4973
  %tobool = icmp ne ptr %0, null, !dbg !4973
  br i1 %tobool, label %if.then, label %if.end, !dbg !4975

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @current_rng, align 8, !dbg !4976
  %ref = getelementptr inbounds %struct.hwrng, ptr %1, i32 0, i32 9, !dbg !4977
  call void @kref_get(ptr noundef %ref) #19, !dbg !4978
  br label %if.end, !dbg !4978

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr @current_rng, align 8, !dbg !4979
  ret ptr %2, !dbg !4980
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #5 align 16 !dbg !4981 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4987, metadata !DIExpression()), !dbg !4988
  br label %do.body, !dbg !4989

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4991

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !4989
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !4989
  %1 = load volatile ptr, ptr %next, align 8, !dbg !4989
  store ptr %1, ptr %tmp, align 8, !dbg !4991
  %2 = load ptr, ptr %tmp, align 8, !dbg !4989
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4993
  %cmp = icmp eq ptr %2, %3, !dbg !4994
  %conv = zext i1 %cmp to i32, !dbg !4994
  ret i32 %conv, !dbg !4995
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4996 dso_local i32 @kthread_stop(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5000 dso_local void @wait_for_completion(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @devm_hwrng_register(ptr noundef %dev, ptr noundef %rng) #2 align 16 !dbg !5001 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %rng.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5005, metadata !DIExpression()), !dbg !5009
  store ptr %rng, ptr %rng.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rng.addr, metadata !5006, metadata !DIExpression()), !dbg !5010
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #20, !dbg !5011
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !5007, metadata !DIExpression()), !dbg !5012
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #20, !dbg !5013
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5008, metadata !DIExpression()), !dbg !5014
  %call = call noalias ptr @__devres_alloc_node(ptr noundef @devm_hwrng_release, i64 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef @.str) #19, !dbg !5015
  store ptr %call, ptr %ptr, align 8, !dbg !5016
  %0 = load ptr, ptr %ptr, align 8, !dbg !5017
  %tobool = icmp ne ptr %0, null, !dbg !5017
  br i1 %tobool, label %if.end, label %if.then, !dbg !5019

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5020
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5020

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %rng.addr, align 8, !dbg !5021
  %call1 = call i32 @hwrng_register(ptr noundef %1) #19, !dbg !5022
  store i32 %call1, ptr %error, align 4, !dbg !5023
  %2 = load i32, ptr %error, align 4, !dbg !5024
  %tobool2 = icmp ne i32 %2, 0, !dbg !5024
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5026

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %ptr, align 8, !dbg !5027
  call void @devres_free(ptr noundef %3) #19, !dbg !5029
  %4 = load i32, ptr %error, align 4, !dbg !5030
  store i32 %4, ptr %retval, align 4, !dbg !5031
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5031

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %rng.addr, align 8, !dbg !5032
  %6 = load ptr, ptr %ptr, align 8, !dbg !5033
  store ptr %5, ptr %6, align 8, !dbg !5034
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5035
  %8 = load ptr, ptr %ptr, align 8, !dbg !5036
  call void @devres_add(ptr noundef %7, ptr noundef %8) #19, !dbg !5037
  store i32 0, ptr %retval, align 4, !dbg !5038
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5038

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #20, !dbg !5039
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #20, !dbg !5039
  %9 = load i32, ptr %retval, align 4, !dbg !5039
  ret i32 %9, !dbg !5039
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5040 dso_local noalias ptr @__devres_alloc_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @devm_hwrng_release(ptr noundef %dev, ptr noundef %res) #2 align 16 !dbg !5047 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5049, metadata !DIExpression()), !dbg !5051
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5050, metadata !DIExpression()), !dbg !5052
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5053
  %1 = load ptr, ptr %0, align 8, !dbg !5054
  call void @hwrng_unregister(ptr noundef %1) #19, !dbg !5055
  ret void, !dbg !5056
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5057 dso_local void @devres_free(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5058 dso_local void @devres_add(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @devm_hwrng_unregister(ptr noundef %dev, ptr noundef %rng) #2 align 16 !dbg !5059 {
entry:
  %dev.addr = alloca ptr, align 8
  %rng.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5063, metadata !DIExpression()), !dbg !5065
  store ptr %rng, ptr %rng.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rng.addr, metadata !5064, metadata !DIExpression()), !dbg !5066
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5067
  %1 = load ptr, ptr %rng.addr, align 8, !dbg !5068
  %call = call i32 @devres_release(ptr noundef %0, ptr noundef @devm_hwrng_release, ptr noundef @devm_hwrng_match, ptr noundef %1) #19, !dbg !5069
  ret void, !dbg !5070
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5071 dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @devm_hwrng_match(ptr noundef %dev, ptr noundef %res, ptr noundef %data) #2 align 16 !dbg !5078 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %r = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5080, metadata !DIExpression()), !dbg !5090
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5081, metadata !DIExpression()), !dbg !5091
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5082, metadata !DIExpression()), !dbg !5092
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #20, !dbg !5093
  call void @llvm.dbg.declare(metadata ptr %r, metadata !5083, metadata !DIExpression()), !dbg !5094
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5095
  store ptr %0, ptr %r, align 8, !dbg !5094
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #20, !dbg !5096
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5084, metadata !DIExpression()), !dbg !5096
  %1 = load ptr, ptr %r, align 8, !dbg !5096
  %tobool = icmp ne ptr %1, null, !dbg !5096
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !5096

lor.rhs:                                          ; preds = %entry
  %2 = load ptr, ptr %r, align 8, !dbg !5096
  %3 = load ptr, ptr %2, align 8, !dbg !5096
  %tobool1 = icmp ne ptr %3, null, !dbg !5096
  %lnot = xor i1 %tobool1, true, !dbg !5096
  br label %lor.end, !dbg !5096

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %4, true, !dbg !5096
  %lnot3 = xor i1 %lnot2, true, !dbg !5096
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5096
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5096
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !5097
  %tobool4 = icmp ne i32 %5, 0, !dbg !5097
  %lnot5 = xor i1 %tobool4, true, !dbg !5097
  %lnot7 = xor i1 %lnot5, true, !dbg !5097
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5097
  %conv = sext i32 %lnot.ext8 to i64, !dbg !5097
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5097
  %tobool9 = icmp ne i64 %expval, 0, !dbg !5097
  br i1 %tobool9, label %if.then, label %if.end, !dbg !5096

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !5097

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #20, !dbg !5098
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5087, metadata !DIExpression()), !dbg !5098
  store i32 2305, ptr %__flags, align 4, !dbg !5098
  br label %do.body10, !dbg !5098

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !5099

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !5099

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !5098

do.body11:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !5101
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 650, i32 %6, i64 12) #20, !dbg !5101, !srcloc !5103
  br label %do.cond12, !dbg !5101

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5101

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5098

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !5104

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5104

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #20, !dbg !5097
  br label %do.cond17, !dbg !5098

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !5098

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !5098

if.end:                                           ; preds = %do.end18, %lor.end
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !5096
  %tobool19 = icmp ne i32 %7, 0, !dbg !5096
  %lnot20 = xor i1 %tobool19, true, !dbg !5096
  %lnot22 = xor i1 %lnot20, true, !dbg !5096
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5096
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5096
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5096
  store i64 %expval25, ptr %tmp, align 8, !dbg !5097
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #20, !dbg !5106
  %8 = load i64, ptr %tmp, align 8, !dbg !5096
  %tobool26 = icmp ne i64 %8, 0, !dbg !5106
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !5107

if.then27:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5108
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5108

if.end28:                                         ; preds = %if.end
  %9 = load ptr, ptr %r, align 8, !dbg !5109
  %10 = load ptr, ptr %9, align 8, !dbg !5110
  %11 = load ptr, ptr %data.addr, align 8, !dbg !5111
  %cmp = icmp eq ptr %10, %11, !dbg !5112
  %conv29 = zext i1 %cmp to i32, !dbg !5112
  store i32 %conv29, ptr %retval, align 4, !dbg !5113
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5113

cleanup:                                          ; preds = %if.end28, %if.then27
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #20, !dbg !5114
  %12 = load i32, ptr %retval, align 4, !dbg !5114
  ret i32 %12, !dbg !5114
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @hwrng_msleep(ptr noundef %rng, i32 noundef %msecs) #2 align 16 !dbg !5115 {
entry:
  %rng.addr = alloca ptr, align 8
  %msecs.addr = alloca i32, align 4
  %timeout = alloca i64, align 8
  store ptr %rng, ptr %rng.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rng.addr, metadata !5119, metadata !DIExpression()), !dbg !5122
  store i32 %msecs, ptr %msecs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msecs.addr, metadata !5120, metadata !DIExpression()), !dbg !5123
  call void @llvm.lifetime.start.p0(i64 8, ptr %timeout) #20, !dbg !5124
  call void @llvm.dbg.declare(metadata ptr %timeout, metadata !5121, metadata !DIExpression()), !dbg !5125
  %0 = load i32, ptr %msecs.addr, align 4, !dbg !5126
  %call = call i64 @msecs_to_jiffies(i32 noundef %0) #19, !dbg !5127
  %add = add i64 %call, 1, !dbg !5128
  store i64 %add, ptr %timeout, align 8, !dbg !5125
  %1 = load ptr, ptr %rng.addr, align 8, !dbg !5129
  %dying = getelementptr inbounds %struct.hwrng, ptr %1, i32 0, i32 11, !dbg !5130
  %2 = load i64, ptr %timeout, align 8, !dbg !5131
  %call1 = call i64 @wait_for_completion_interruptible_timeout(ptr noundef %dying, i64 noundef %2) #19, !dbg !5132
  call void @llvm.lifetime.end.p0(i64 8, ptr %timeout) #20, !dbg !5133
  ret i64 %call1, !dbg !5134
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msecs_to_jiffies(i32 noundef %m) #6 align 16 !dbg !5135 {
entry:
  %retval = alloca i64, align 8
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5140, metadata !DIExpression()), !dbg !5141
  %0 = load i32, ptr %m.addr, align 4, !dbg !5142
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5144
  br i1 %1, label %if.then, label %if.else, !dbg !5145

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %m.addr, align 4, !dbg !5146
  %cmp = icmp slt i32 %2, 0, !dbg !5149
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5150

if.then1:                                         ; preds = %if.then
  store i64 4611686018427387902, ptr %retval, align 8, !dbg !5151
  br label %return, !dbg !5151

if.end:                                           ; preds = %if.then
  %3 = load i32, ptr %m.addr, align 4, !dbg !5152
  %call = call i64 @_msecs_to_jiffies(i32 noundef %3) #19, !dbg !5153
  store i64 %call, ptr %retval, align 8, !dbg !5154
  br label %return, !dbg !5154

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %m.addr, align 4, !dbg !5155
  %call2 = call i64 @__msecs_to_jiffies(i32 noundef %4) #19, !dbg !5157
  store i64 %call2, ptr %retval, align 8, !dbg !5158
  br label %return, !dbg !5158

return:                                           ; preds = %if.else, %if.end, %if.then1
  %5 = load i64, ptr %retval, align 8, !dbg !5159
  ret i64 %5, !dbg !5159
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5160 dso_local i64 @wait_for_completion_interruptible_timeout(ptr noundef, i64 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @hwrng_yield(ptr noundef %rng) #2 align 16 !dbg !5163 {
entry:
  %rng.addr = alloca ptr, align 8
  store ptr %rng, ptr %rng.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rng.addr, metadata !5167, metadata !DIExpression()), !dbg !5168
  %0 = load ptr, ptr %rng.addr, align 8, !dbg !5169
  %dying = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 11, !dbg !5170
  %call = call i64 @wait_for_completion_interruptible_timeout(ptr noundef %dying, i64 noundef 1) #19, !dbg !5171
  ret i64 %call, !dbg !5172
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @hwrng_modexit() #0 section ".exit.text" align 16 !dbg !5173 {
entry:
  call void @mutex_lock(ptr noundef @rng_mutex) #19, !dbg !5174
  br label %do.body, !dbg !5175

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @current_rng, align 8, !dbg !5176
  %tobool = icmp ne ptr %0, null, !dbg !5176
  %lnot = xor i1 %tobool, true, !dbg !5176
  %lnot1 = xor i1 %lnot, true, !dbg !5176
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5176
  %conv = sext i32 %lnot.ext to i64, !dbg !5176
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5176
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5176
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5179

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !5176

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !5180

do.body4:                                         ; preds = %do.body3
  br label %do.end, !dbg !5182

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5180

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 724, i32 0, i64 12) #20, !dbg !5184, !srcloc !5186
  br label %do.end6, !dbg !5184

do.end6:                                          ; preds = %do.body5
  unreachable, !dbg !5180

do.end7:                                          ; No predecessors!
  br label %if.end, !dbg !5180

if.end:                                           ; preds = %do.end7, %do.body
  br label %do.end8, !dbg !5179

do.end8:                                          ; preds = %if.end
  %1 = load ptr, ptr @rng_buffer, align 8, !dbg !5187
  call void @kfree(ptr noundef %1) #19, !dbg !5188
  %2 = load ptr, ptr @rng_fillbuf, align 8, !dbg !5189
  call void @kfree(ptr noundef %2) #19, !dbg !5190
  call void @mutex_unlock(ptr noundef @rng_mutex) #19, !dbg !5191
  call void @unregister_miscdev() #21, !dbg !5192
  ret void, !dbg !5193
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5194 dso_local void @kfree(ptr noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_rng_core__281_732_hwrng_modinit5() #0 section ".init.text" align 16 !dbg !5197 {
entry:
  %call = call i32 @hwrng_modinit() #21, !dbg !5198
  ret i32 %call, !dbg !5198
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @hwrng_modinit() #0 section ".init.text" align 16 !dbg !5199 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #20, !dbg !5202
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5201, metadata !DIExpression()), !dbg !5203
  %call = call i64 @rng_buffer_size() #19, !dbg !5204
  %call1 = call noalias ptr @kmalloc(i64 noundef %call, i32 noundef 3264) #22, !dbg !5205
  store ptr %call1, ptr @rng_buffer, align 8, !dbg !5206
  %0 = load ptr, ptr @rng_buffer, align 8, !dbg !5207
  %tobool = icmp ne ptr %0, null, !dbg !5207
  br i1 %tobool, label %if.end, label %if.then, !dbg !5209

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5210

if.end:                                           ; preds = %entry
  %call2 = call i64 @rng_buffer_size() #19, !dbg !5211
  %call3 = call noalias ptr @kmalloc(i64 noundef %call2, i32 noundef 3264) #22, !dbg !5212
  store ptr %call3, ptr @rng_fillbuf, align 8, !dbg !5213
  %1 = load ptr, ptr @rng_fillbuf, align 8, !dbg !5214
  %tobool4 = icmp ne ptr %1, null, !dbg !5214
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5216

if.then5:                                         ; preds = %if.end
  %2 = load ptr, ptr @rng_buffer, align 8, !dbg !5217
  call void @kfree(ptr noundef %2) #19, !dbg !5219
  store i32 -12, ptr %retval, align 4, !dbg !5220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5220

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @register_miscdev() #21, !dbg !5221
  store i32 %call7, ptr %ret, align 4, !dbg !5222
  %3 = load i32, ptr %ret, align 4, !dbg !5223
  %tobool8 = icmp ne i32 %3, 0, !dbg !5223
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5225

if.then9:                                         ; preds = %if.end6
  %4 = load ptr, ptr @rng_fillbuf, align 8, !dbg !5226
  call void @kfree(ptr noundef %4) #19, !dbg !5228
  %5 = load ptr, ptr @rng_buffer, align 8, !dbg !5229
  call void @kfree(ptr noundef %5) #19, !dbg !5230
  br label %if.end10, !dbg !5231

if.end10:                                         ; preds = %if.then9, %if.end6
  %6 = load i32, ptr %ret, align 4, !dbg !5232
  store i32 %6, ptr %retval, align 4, !dbg !5233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5233

cleanup:                                          ; preds = %if.end10, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #20, !dbg !5234
  %7 = load i32, ptr %retval, align 4, !dbg !5234
  ret i32 %7, !dbg !5234
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rng_dev_read(ptr noundef %filp, ptr noundef %buf, i64 noundef %size, ptr noundef %offp) #2 align 16 !dbg !5235 {
entry:
  %filp.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offp.addr = alloca ptr, align 8
  %buffer = alloca [64 x i8], align 16
  %ret = alloca i64, align 8
  %err = alloca i32, align 4
  %bytes_read = alloca i32, align 4
  %len = alloca i32, align 4
  %rng = alloca ptr, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5237, metadata !DIExpression()), !dbg !5251
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5238, metadata !DIExpression()), !dbg !5252
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5239, metadata !DIExpression()), !dbg !5253
  store ptr %offp, ptr %offp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offp.addr, metadata !5240, metadata !DIExpression()), !dbg !5254
  call void @llvm.lifetime.start.p0(i64 64, ptr %buffer) #20, !dbg !5255
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !5241, metadata !DIExpression()), !dbg !5256
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #20, !dbg !5257
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5243, metadata !DIExpression()), !dbg !5258
  store i64 0, ptr %ret, align 8, !dbg !5258
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #20, !dbg !5259
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5244, metadata !DIExpression()), !dbg !5260
  store i32 0, ptr %err, align 4, !dbg !5260
  call void @llvm.lifetime.start.p0(i64 4, ptr %bytes_read) #20, !dbg !5261
  call void @llvm.dbg.declare(metadata ptr %bytes_read, metadata !5245, metadata !DIExpression()), !dbg !5262
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #20, !dbg !5261
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5246, metadata !DIExpression()), !dbg !5263
  call void @llvm.lifetime.start.p0(i64 8, ptr %rng) #20, !dbg !5264
  call void @llvm.dbg.declare(metadata ptr %rng, metadata !5247, metadata !DIExpression()), !dbg !5265
  br label %while.cond, !dbg !5266

while.cond:                                       ; preds = %if.end57, %entry
  %0 = load i64, ptr %size.addr, align 8, !dbg !5267
  %tobool = icmp ne i64 %0, 0, !dbg !5266
  br i1 %tobool, label %while.body, label %while.end, !dbg !5266

while.body:                                       ; preds = %while.cond
  %call = call ptr @get_current_rng() #19, !dbg !5268
  store ptr %call, ptr %rng, align 8, !dbg !5270
  %1 = load ptr, ptr %rng, align 8, !dbg !5271
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %1) #19, !dbg !5273
  br i1 %call1, label %if.then, label %if.end, !dbg !5274

if.then:                                          ; preds = %while.body
  %2 = load ptr, ptr %rng, align 8, !dbg !5275
  %call2 = call i64 @PTR_ERR(ptr noundef %2) #19, !dbg !5277
  %conv = trunc i64 %call2 to i32, !dbg !5277
  store i32 %conv, ptr %err, align 4, !dbg !5278
  br label %out, !dbg !5279

if.end:                                           ; preds = %while.body
  %3 = load ptr, ptr %rng, align 8, !dbg !5280
  %tobool3 = icmp ne ptr %3, null, !dbg !5280
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5282

if.then4:                                         ; preds = %if.end
  store i32 -19, ptr %err, align 4, !dbg !5283
  br label %out, !dbg !5285

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @mutex_lock_interruptible(ptr noundef @reading_mutex) #19, !dbg !5286
  %tobool7 = icmp ne i32 %call6, 0, !dbg !5286
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5288

if.then8:                                         ; preds = %if.end5
  store i32 -512, ptr %err, align 4, !dbg !5289
  br label %out_put, !dbg !5291

if.end9:                                          ; preds = %if.end5
  %4 = load i32, ptr @data_avail, align 4, !dbg !5292
  %tobool10 = icmp ne i32 %4, 0, !dbg !5292
  br i1 %tobool10, label %if.end25, label %if.then11, !dbg !5294

if.then11:                                        ; preds = %if.end9
  %5 = load ptr, ptr %rng, align 8, !dbg !5295
  %6 = load ptr, ptr @rng_buffer, align 8, !dbg !5297
  %call12 = call i64 @rng_buffer_size() #19, !dbg !5298
  %7 = load ptr, ptr %filp.addr, align 8, !dbg !5299
  %f_flags = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 6, !dbg !5300
  %8 = load i32, ptr %f_flags, align 8, !dbg !5300
  %and = and i32 %8, 2048, !dbg !5301
  %tobool13 = icmp ne i32 %and, 0, !dbg !5302
  %lnot = xor i1 %tobool13, true, !dbg !5302
  %lnot.ext = zext i1 %lnot to i32, !dbg !5302
  %call14 = call i32 @rng_get_data(ptr noundef %5, ptr noundef %6, i64 noundef %call12, i32 noundef %lnot.ext) #19, !dbg !5303
  store i32 %call14, ptr %bytes_read, align 4, !dbg !5304
  %9 = load i32, ptr %bytes_read, align 4, !dbg !5305
  %cmp = icmp slt i32 %9, 0, !dbg !5307
  br i1 %cmp, label %if.then16, label %if.else, !dbg !5308

if.then16:                                        ; preds = %if.then11
  %10 = load i32, ptr %bytes_read, align 4, !dbg !5309
  store i32 %10, ptr %err, align 4, !dbg !5311
  br label %out_unlock_reading, !dbg !5312

if.else:                                          ; preds = %if.then11
  %11 = load i32, ptr %bytes_read, align 4, !dbg !5313
  %cmp17 = icmp eq i32 %11, 0, !dbg !5315
  br i1 %cmp17, label %land.lhs.true, label %if.end23, !dbg !5316

land.lhs.true:                                    ; preds = %if.else
  %12 = load ptr, ptr %filp.addr, align 8, !dbg !5317
  %f_flags19 = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 6, !dbg !5318
  %13 = load i32, ptr %f_flags19, align 8, !dbg !5318
  %and20 = and i32 %13, 2048, !dbg !5319
  %tobool21 = icmp ne i32 %and20, 0, !dbg !5319
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !5320

if.then22:                                        ; preds = %land.lhs.true
  store i32 -11, ptr %err, align 4, !dbg !5321
  br label %out_unlock_reading, !dbg !5323

if.end23:                                         ; preds = %land.lhs.true, %if.else
  br label %if.end24

if.end24:                                         ; preds = %if.end23
  %14 = load i32, ptr %bytes_read, align 4, !dbg !5324
  store i32 %14, ptr @data_avail, align 4, !dbg !5325
  br label %if.end25, !dbg !5326

if.end25:                                         ; preds = %if.end24, %if.end9
  %15 = load i32, ptr @data_avail, align 4, !dbg !5327
  store i32 %15, ptr %len, align 4, !dbg !5328
  %16 = load i32, ptr %len, align 4, !dbg !5329
  %tobool26 = icmp ne i32 %16, 0, !dbg !5329
  br i1 %tobool26, label %if.then27, label %if.end35, !dbg !5331

if.then27:                                        ; preds = %if.end25
  %17 = load i32, ptr %len, align 4, !dbg !5332
  %conv28 = sext i32 %17 to i64, !dbg !5332
  %18 = load i64, ptr %size.addr, align 8, !dbg !5335
  %cmp29 = icmp ugt i64 %conv28, %18, !dbg !5336
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !5337

if.then31:                                        ; preds = %if.then27
  %19 = load i64, ptr %size.addr, align 8, !dbg !5338
  %conv32 = trunc i64 %19 to i32, !dbg !5338
  store i32 %conv32, ptr %len, align 4, !dbg !5339
  br label %if.end33, !dbg !5340

if.end33:                                         ; preds = %if.then31, %if.then27
  %20 = load i32, ptr %len, align 4, !dbg !5341
  %21 = load i32, ptr @data_avail, align 4, !dbg !5342
  %sub = sub i32 %21, %20, !dbg !5342
  store i32 %sub, ptr @data_avail, align 4, !dbg !5342
  %arraydecay = getelementptr inbounds [64 x i8], ptr %buffer, i64 0, i64 0, !dbg !5343
  %22 = load ptr, ptr @rng_buffer, align 8, !dbg !5344
  %23 = load i32, ptr @data_avail, align 4, !dbg !5345
  %idx.ext = sext i32 %23 to i64, !dbg !5346
  %add.ptr = getelementptr i8, ptr %22, i64 %idx.ext, !dbg !5346
  %24 = load i32, ptr %len, align 4, !dbg !5347
  %conv34 = sext i32 %24 to i64, !dbg !5347
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay, ptr align 1 %add.ptr, i64 %conv34, i1 false), !dbg !5343
  br label %if.end35, !dbg !5348

if.end35:                                         ; preds = %if.end33, %if.end25
  call void @mutex_unlock(ptr noundef @reading_mutex) #19, !dbg !5349
  %25 = load ptr, ptr %rng, align 8, !dbg !5350
  call void @put_rng(ptr noundef %25) #19, !dbg !5351
  %26 = load i32, ptr %len, align 4, !dbg !5352
  %tobool36 = icmp ne i32 %26, 0, !dbg !5352
  br i1 %tobool36, label %if.then37, label %if.end48, !dbg !5354

if.then37:                                        ; preds = %if.end35
  %27 = load ptr, ptr %buf.addr, align 8, !dbg !5355
  %28 = load i64, ptr %ret, align 8, !dbg !5358
  %add.ptr38 = getelementptr i8, ptr %27, i64 %28, !dbg !5359
  %arraydecay39 = getelementptr inbounds [64 x i8], ptr %buffer, i64 0, i64 0, !dbg !5360
  %29 = load i32, ptr %len, align 4, !dbg !5361
  %conv40 = sext i32 %29 to i64, !dbg !5361
  %call41 = call i64 @copy_to_user(ptr noundef %add.ptr38, ptr noundef %arraydecay39, i64 noundef %conv40) #19, !dbg !5362
  %tobool42 = icmp ne i64 %call41, 0, !dbg !5362
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !5363

if.then43:                                        ; preds = %if.then37
  store i32 -14, ptr %err, align 4, !dbg !5364
  br label %out, !dbg !5366

if.end44:                                         ; preds = %if.then37
  %30 = load i32, ptr %len, align 4, !dbg !5367
  %conv45 = sext i32 %30 to i64, !dbg !5367
  %31 = load i64, ptr %size.addr, align 8, !dbg !5368
  %sub46 = sub i64 %31, %conv45, !dbg !5368
  store i64 %sub46, ptr %size.addr, align 8, !dbg !5368
  %32 = load i32, ptr %len, align 4, !dbg !5369
  %conv47 = sext i32 %32 to i64, !dbg !5369
  %33 = load i64, ptr %ret, align 8, !dbg !5370
  %add = add i64 %33, %conv47, !dbg !5370
  store i64 %add, ptr %ret, align 8, !dbg !5370
  br label %if.end48, !dbg !5371

if.end48:                                         ; preds = %if.end44, %if.end35
  %call49 = call zeroext i1 @need_resched() #19, !dbg !5372
  br i1 %call49, label %if.then50, label %if.end52, !dbg !5374

if.then50:                                        ; preds = %if.end48
  %call51 = call i64 @schedule_timeout_interruptible(i64 noundef 1) #19, !dbg !5375
  br label %if.end52, !dbg !5375

if.end52:                                         ; preds = %if.then50, %if.end48
  %call53 = call ptr @get_current() #19, !dbg !5376
  %call54 = call i32 @signal_pending(ptr noundef %call53) #19, !dbg !5378
  %tobool55 = icmp ne i32 %call54, 0, !dbg !5378
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !5379

if.then56:                                        ; preds = %if.end52
  store i32 -512, ptr %err, align 4, !dbg !5380
  br label %out, !dbg !5382

if.end57:                                         ; preds = %if.end52
  br label %while.cond, !dbg !5266, !llvm.loop !5383

while.end:                                        ; preds = %while.cond
  br label %out, !dbg !5266

out:                                              ; preds = %out_put, %while.end, %if.then56, %if.then43, %if.then4, %if.then
  call void @llvm.dbg.label(metadata !5248), !dbg !5385
  %arraydecay58 = getelementptr inbounds [64 x i8], ptr %buffer, i64 0, i64 0, !dbg !5386
  call void @memzero_explicit(ptr noundef %arraydecay58, i64 noundef 64) #19, !dbg !5387
  %34 = load i64, ptr %ret, align 8, !dbg !5388
  %tobool59 = icmp ne i64 %34, 0, !dbg !5388
  br i1 %tobool59, label %cond.true, label %cond.false, !dbg !5388

cond.true:                                        ; preds = %out
  br label %cond.end, !dbg !5388

cond.false:                                       ; preds = %out
  %35 = load i32, ptr %err, align 4, !dbg !5389
  %conv60 = sext i32 %35 to i64, !dbg !5389
  br label %cond.end, !dbg !5388

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %34, %cond.true ], [ %conv60, %cond.false ], !dbg !5388
  call void @llvm.lifetime.end.p0(i64 8, ptr %rng) #20, !dbg !5390
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #20, !dbg !5390
  call void @llvm.lifetime.end.p0(i64 4, ptr %bytes_read) #20, !dbg !5390
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #20, !dbg !5390
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #20, !dbg !5390
  call void @llvm.lifetime.end.p0(i64 64, ptr %buffer) #20, !dbg !5390
  ret i64 %cond, !dbg !5391

out_unlock_reading:                               ; preds = %if.then22, %if.then16
  call void @llvm.dbg.label(metadata !5249), !dbg !5392
  call void @mutex_unlock(ptr noundef @reading_mutex) #19, !dbg !5393
  br label %out_put, !dbg !5393

out_put:                                          ; preds = %out_unlock_reading, %if.then8
  call void @llvm.dbg.label(metadata !5250), !dbg !5394
  %36 = load ptr, ptr %rng, align 8, !dbg !5395
  call void @put_rng(ptr noundef %36) #19, !dbg !5396
  br label %out, !dbg !5397
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rng_dev_open(ptr noundef %inode, ptr noundef %filp) #2 align 16 !dbg !5398 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %filp.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5400, metadata !DIExpression()), !dbg !5402
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5401, metadata !DIExpression()), !dbg !5403
  %0 = load ptr, ptr %filp.addr, align 8, !dbg !5404
  %f_mode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2, !dbg !5406
  %1 = load i32, ptr %f_mode, align 4, !dbg !5406
  %and = and i32 %1, 1, !dbg !5407
  %cmp = icmp eq i32 %and, 0, !dbg !5408
  br i1 %cmp, label %if.then, label %if.end, !dbg !5409

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5410
  br label %return, !dbg !5410

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %filp.addr, align 8, !dbg !5411
  %f_mode1 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 2, !dbg !5413
  %3 = load i32, ptr %f_mode1, align 4, !dbg !5413
  %and2 = and i32 %3, 2, !dbg !5414
  %tobool = icmp ne i32 %and2, 0, !dbg !5414
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !5415

if.then3:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5416
  br label %return, !dbg !5416

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5417
  br label %return, !dbg !5417

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !5418
  ret i32 %4, !dbg !5418
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current_rng() #2 align 16 !dbg !5419 {
entry:
  %retval = alloca ptr, align 8
  %rng = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rng) #20, !dbg !5422
  call void @llvm.dbg.declare(metadata ptr %rng, metadata !5421, metadata !DIExpression()), !dbg !5423
  %call = call i32 @mutex_lock_interruptible(ptr noundef @rng_mutex) #19, !dbg !5424
  %tobool = icmp ne i32 %call, 0, !dbg !5424
  br i1 %tobool, label %if.then, label %if.end, !dbg !5426

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -512) #19, !dbg !5427
  store ptr %call1, ptr %retval, align 8, !dbg !5428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5428

if.end:                                           ; preds = %entry
  %call2 = call ptr @get_current_rng_nolock() #19, !dbg !5429
  store ptr %call2, ptr %rng, align 8, !dbg !5430
  call void @mutex_unlock(ptr noundef @rng_mutex) #19, !dbg !5431
  %0 = load ptr, ptr %rng, align 8, !dbg !5432
  store ptr %0, ptr %retval, align 8, !dbg !5433
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5433

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rng) #20, !dbg !5434
  %1 = load ptr, ptr %retval, align 8, !dbg !5434
  ret ptr %1, !dbg !5434
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #5 align 16 !dbg !5435 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5440, metadata !DIExpression()), !dbg !5441
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5442
  %1 = ptrtoint ptr %0 to i64, !dbg !5442
  %2 = inttoptr i64 %1 to ptr, !dbg !5442
  %3 = ptrtoint ptr %2 to i64, !dbg !5442
  %cmp = icmp uge i64 %3, -4095, !dbg !5442
  %lnot = xor i1 %cmp, true, !dbg !5442
  %lnot1 = xor i1 %lnot, true, !dbg !5442
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5442
  %conv = sext i32 %lnot.ext to i64, !dbg !5442
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5442
  %tobool = icmp ne i64 %expval, 0, !dbg !5442
  ret i1 %tobool, !dbg !5443
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #5 align 16 !dbg !5444 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5448, metadata !DIExpression()), !dbg !5449
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5450
  %1 = ptrtoint ptr %0 to i64, !dbg !5451
  ret i64 %1, !dbg !5452
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5453 dso_local i32 @mutex_lock_interruptible(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rng_get_data(ptr noundef %rng, ptr noundef %buffer, i64 noundef %size, i32 noundef %wait) #5 align 16 !dbg !5456 {
entry:
  %retval = alloca i32, align 4
  %rng.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %wait.addr = alloca i32, align 4
  %present = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rng, ptr %rng.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rng.addr, metadata !5460, metadata !DIExpression()), !dbg !5465
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5461, metadata !DIExpression()), !dbg !5466
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5462, metadata !DIExpression()), !dbg !5467
  store i32 %wait, ptr %wait.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !5463, metadata !DIExpression()), !dbg !5468
  call void @llvm.lifetime.start.p0(i64 4, ptr %present) #20, !dbg !5469
  call void @llvm.dbg.declare(metadata ptr %present, metadata !5464, metadata !DIExpression()), !dbg !5470
  br label %do.body, !dbg !5471

do.body:                                          ; preds = %entry
  %call = call zeroext i1 @mutex_is_locked(ptr noundef @reading_mutex) #19, !dbg !5472
  %lnot = xor i1 %call, true, !dbg !5472
  %lnot1 = xor i1 %lnot, true, !dbg !5472
  %lnot2 = xor i1 %lnot1, true, !dbg !5472
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5472
  %conv = sext i32 %lnot.ext to i64, !dbg !5472
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5472
  %tobool = icmp ne i64 %expval, 0, !dbg !5472
  br i1 %tobool, label %if.then, label %if.end, !dbg !5475

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !5472

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !5476

do.body4:                                         ; preds = %do.body3
  br label %do.cond, !dbg !5478

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !5478

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !5476

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 196, i32 0, i64 12) #20, !dbg !5480, !srcloc !5482
  br label %do.cond6, !dbg !5480

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5480

do.end7:                                          ; preds = %do.cond6
  unreachable, !dbg !5476

do.cond8:                                         ; No predecessors!
  br label %do.end9, !dbg !5476

do.end9:                                          ; preds = %do.cond8
  br label %if.end, !dbg !5476

if.end:                                           ; preds = %do.end9, %do.body
  br label %do.cond10, !dbg !5475

do.cond10:                                        ; preds = %if.end
  br label %do.end11, !dbg !5475

do.end11:                                         ; preds = %do.cond10
  %0 = load ptr, ptr %rng.addr, align 8, !dbg !5483
  %read = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 5, !dbg !5485
  %1 = load ptr, ptr %read, align 8, !dbg !5485
  %tobool12 = icmp ne ptr %1, null, !dbg !5483
  br i1 %tobool12, label %if.then13, label %if.end17, !dbg !5486

if.then13:                                        ; preds = %do.end11
  %2 = load ptr, ptr %rng.addr, align 8, !dbg !5487
  %read14 = getelementptr inbounds %struct.hwrng, ptr %2, i32 0, i32 5, !dbg !5488
  %3 = load ptr, ptr %read14, align 8, !dbg !5488
  %4 = load ptr, ptr %rng.addr, align 8, !dbg !5489
  %5 = load ptr, ptr %buffer.addr, align 8, !dbg !5490
  %6 = load i64, ptr %size.addr, align 8, !dbg !5491
  %7 = load i32, ptr %wait.addr, align 4, !dbg !5492
  %tobool15 = icmp ne i32 %7, 0, !dbg !5492
  %call16 = call i32 %3(ptr noundef %4, ptr noundef %5, i64 noundef %6, i1 noundef zeroext %tobool15) #19, !dbg !5487
  store i32 %call16, ptr %retval, align 4, !dbg !5493
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5493

if.end17:                                         ; preds = %do.end11
  %8 = load ptr, ptr %rng.addr, align 8, !dbg !5494
  %data_present = getelementptr inbounds %struct.hwrng, ptr %8, i32 0, i32 3, !dbg !5496
  %9 = load ptr, ptr %data_present, align 8, !dbg !5496
  %tobool18 = icmp ne ptr %9, null, !dbg !5494
  br i1 %tobool18, label %if.then19, label %if.else, !dbg !5497

if.then19:                                        ; preds = %if.end17
  %10 = load ptr, ptr %rng.addr, align 8, !dbg !5498
  %data_present20 = getelementptr inbounds %struct.hwrng, ptr %10, i32 0, i32 3, !dbg !5499
  %11 = load ptr, ptr %data_present20, align 8, !dbg !5499
  %12 = load ptr, ptr %rng.addr, align 8, !dbg !5500
  %13 = load i32, ptr %wait.addr, align 4, !dbg !5501
  %call21 = call i32 %11(ptr noundef %12, i32 noundef %13) #19, !dbg !5498
  store i32 %call21, ptr %present, align 4, !dbg !5502
  br label %if.end22, !dbg !5503

if.else:                                          ; preds = %if.end17
  store i32 1, ptr %present, align 4, !dbg !5504
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then19
  %14 = load i32, ptr %present, align 4, !dbg !5505
  %tobool23 = icmp ne i32 %14, 0, !dbg !5505
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !5507

if.then24:                                        ; preds = %if.end22
  %15 = load ptr, ptr %rng.addr, align 8, !dbg !5508
  %data_read = getelementptr inbounds %struct.hwrng, ptr %15, i32 0, i32 4, !dbg !5509
  %16 = load ptr, ptr %data_read, align 8, !dbg !5509
  %17 = load ptr, ptr %rng.addr, align 8, !dbg !5510
  %18 = load ptr, ptr %buffer.addr, align 8, !dbg !5511
  %call25 = call i32 %16(ptr noundef %17, ptr noundef %18) #19, !dbg !5508
  store i32 %call25, ptr %retval, align 4, !dbg !5512
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5512

if.end26:                                         ; preds = %if.end22
  store i32 0, ptr %retval, align 4, !dbg !5513
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5513

cleanup:                                          ; preds = %if.end26, %if.then24, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %present) #20, !dbg !5514
  %19 = load i32, ptr %retval, align 4, !dbg !5514
  ret i32 %19, !dbg !5514
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rng_buffer_size() #2 align 16 !dbg !5515 {
entry:
  ret i64 64, !dbg !5518
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #6 align 16 !dbg !5519 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5524, metadata !DIExpression()), !dbg !5527
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5525, metadata !DIExpression()), !dbg !5528
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5526, metadata !DIExpression()), !dbg !5529
  %0 = load ptr, ptr %from.addr, align 8, !dbg !5530
  %1 = load i64, ptr %n.addr, align 8, !dbg !5532
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #19, !dbg !5533
  br i1 %call, label %if.then, label %if.end, !dbg !5534

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5535
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5536
  %4 = load i64, ptr %n.addr, align 8, !dbg !5537
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #19, !dbg !5538
  store i64 %call1, ptr %n.addr, align 8, !dbg !5539
  br label %if.end, !dbg !5540

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5541
  ret i64 %5, !dbg !5542
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @need_resched() #6 align 16 !dbg !5543 {
entry:
  %call = call zeroext i1 @tif_need_resched() #19, !dbg !5544
  %lnot = xor i1 %call, true, !dbg !5544
  %lnot1 = xor i1 %lnot, true, !dbg !5544
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5544
  %conv = sext i32 %lnot.ext to i64, !dbg !5544
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5544
  %tobool = icmp ne i64 %expval, 0, !dbg !5544
  ret i1 %tobool, !dbg !5545
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5546 dso_local i64 @schedule_timeout_interruptible(i64 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @signal_pending(ptr noundef %p) #5 align 16 !dbg !5549 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5551, metadata !DIExpression()), !dbg !5552
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5553
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 17) #19, !dbg !5553
  %tobool = icmp ne i32 %call, 0, !dbg !5553
  %lnot = xor i1 %tobool, true, !dbg !5553
  %lnot1 = xor i1 %lnot, true, !dbg !5553
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5553
  %conv = sext i32 %lnot.ext to i64, !dbg !5553
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5553
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5553
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5555

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !5556
  br label %return, !dbg !5556

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !5557
  %call3 = call i32 @task_sigpending(ptr noundef %1) #19, !dbg !5558
  store i32 %call3, ptr %retval, align 4, !dbg !5559
  br label %return, !dbg !5559

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5560
  ret i32 %2, !dbg !5560
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !5561 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #20, !dbg !5572
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5566, metadata !DIExpression()), !dbg !5572
  br label %do.body, !dbg !5572

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #20, !dbg !5573
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5568, metadata !DIExpression()), !dbg !5573
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5573
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5573
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #20, !dbg !5572
  br label %do.cond, !dbg !5573

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5573

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #20, !dbg !5574
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5570, metadata !DIExpression()), !dbg !5574
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #23, !dbg !5574, !srcloc !5575
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5574
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5574
  %3 = inttoptr i64 %2 to ptr, !dbg !5574
  store ptr %3, ptr %tmp, align 8, !dbg !5574
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #20, !dbg !5572
  %4 = load ptr, ptr %tmp, align 8, !dbg !5574
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5572
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5572
  store ptr %5, ptr %tmp1, align 8, !dbg !5572
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #20, !dbg !5576
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5572
  ret ptr %6, !dbg !5577
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @memzero_explicit(ptr noundef %s, i64 noundef %count) #5 align 16 !dbg !5578 {
entry:
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5582, metadata !DIExpression()), !dbg !5584
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5583, metadata !DIExpression()), !dbg !5585
  %0 = load ptr, ptr %s.addr, align 8, !dbg !5586
  %1 = load i64, ptr %count.addr, align 8, !dbg !5587
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %1, i1 false), !dbg !5588
  %2 = load ptr, ptr %s.addr, align 8, !dbg !5589
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %2) #20, !dbg !5589, !srcloc !5590
  ret void, !dbg !5591
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !5592 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5596, metadata !DIExpression()), !dbg !5597
  %0 = load i64, ptr %error.addr, align 8, !dbg !5598
  %1 = inttoptr i64 %0 to ptr, !dbg !5599
  ret ptr %1, !dbg !5600
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5601 dso_local zeroext i1 @mutex_is_locked(ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #6 align 16 !dbg !5604 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5608, metadata !DIExpression()), !dbg !5618
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !5609, metadata !DIExpression()), !dbg !5619
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !5610, metadata !DIExpression()), !dbg !5620
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #20, !dbg !5621
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !5611, metadata !DIExpression()), !dbg !5622
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5623
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !5624
  %conv = trunc i64 %1 to i32, !dbg !5624
  store i32 %conv, ptr %sz, align 4, !dbg !5622
  %2 = load i32, ptr %sz, align 4, !dbg !5625
  %cmp = icmp sge i32 %2, 0, !dbg !5625
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5625

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !5625
  %conv2 = sext i32 %3 to i64, !dbg !5625
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !5625
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !5625
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !5627
  %lnot = xor i1 %5, true, !dbg !5625
  %lnot5 = xor i1 %lnot, true, !dbg !5625
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5625
  %conv6 = sext i32 %lnot.ext to i64, !dbg !5625
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !5625
  %tobool = icmp ne i64 %expval, 0, !dbg !5625
  br i1 %tobool, label %if.then, label %if.end12, !dbg !5628

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !5629
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !5632
  br i1 %7, label %if.else, label %if.then7, !dbg !5633

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !5634
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !5635
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #19, !dbg !5636
  br label %if.end11, !dbg !5636

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !5637, !range !4626, !noundef !531
  %tobool8 = trunc i8 %10 to i1, !dbg !5637
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !5639

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #19, !dbg !5640, !srcloc !5641
  br label %if.end, !dbg !5640

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #19, !dbg !5642, !srcloc !5643
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !5644
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5644

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #20, !dbg !5645
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5612, metadata !DIExpression()), !dbg !5645
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !5645
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !5645
  %lnot15 = xor i1 %cmp13, true, !dbg !5645
  %lnot17 = xor i1 %lnot15, true, !dbg !5645
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !5645
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !5645
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !5646
  %tobool19 = icmp ne i32 %12, 0, !dbg !5646
  %lnot20 = xor i1 %tobool19, true, !dbg !5646
  %lnot22 = xor i1 %lnot20, true, !dbg !5646
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5646
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5646
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5646
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !5646
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !5645

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !5646

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #20, !dbg !5647
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5615, metadata !DIExpression()), !dbg !5647
  store i32 2307, ptr %__flags, align 4, !dbg !5647
  br label %do.body28, !dbg !5647

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !5648

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !5648

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !5647

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !5650
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 249, i32 %13, i64 12) #20, !dbg !5650, !srcloc !5652
  br label %do.cond30, !dbg !5650

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5650

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !5647

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !5653

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !5653

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #20, !dbg !5646
  br label %do.cond35, !dbg !5647

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !5647

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !5647

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !5645
  %tobool38 = icmp ne i32 %14, 0, !dbg !5645
  %lnot39 = xor i1 %tobool38, true, !dbg !5645
  %lnot41 = xor i1 %lnot39, true, !dbg !5645
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !5645
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !5645
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !5645
  store i64 %expval44, ptr %tmp, align 8, !dbg !5646
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #20, !dbg !5655
  %15 = load i64, ptr %tmp, align 8, !dbg !5645
  %tobool45 = icmp ne i64 %15, 0, !dbg !5655
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !5656

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !5657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5657

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !5658
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !5659
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !5660, !range !4626, !noundef !531
  %tobool48 = trunc i8 %18 to i1, !dbg !5660
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #19, !dbg !5661
  store i1 true, ptr %retval, align 1, !dbg !5662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5662

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #20, !dbg !5663
  %19 = load i1, ptr %retval, align 1, !dbg !5663
  ret i1 %19, !dbg !5663
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5664 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #5 align 16 !dbg !5665 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5669, metadata !DIExpression()), !dbg !5671
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5670, metadata !DIExpression()), !dbg !5672
  %0 = load i32, ptr %size.addr, align 4, !dbg !5673
  %1 = load i64, ptr %count.addr, align 8, !dbg !5675
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #19, !dbg !5676
  ret void, !dbg !5677
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5678 dso_local void @__bad_copy_from() #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5679 dso_local void @__bad_copy_to() #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #5 align 16 !dbg !5680 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5684, metadata !DIExpression()), !dbg !5687
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5685, metadata !DIExpression()), !dbg !5688
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !5686, metadata !DIExpression()), !dbg !5689
  ret void, !dbg !5690
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5691 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tif_need_resched() #6 align 16 !dbg !5692 {
entry:
  %call = call ptr @get_current() #19, !dbg !5693
  %flags = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 0, !dbg !5694
  %call1 = call zeroext i1 @arch_test_bit(i64 noundef 3, ptr noundef %flags) #19, !dbg !5695
  ret i1 %call1, !dbg !5696
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5697 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5705, metadata !DIExpression()), !dbg !5707
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5706, metadata !DIExpression()), !dbg !5708
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5709
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5710
  br i1 %1, label %cond.true, label %cond.false, !dbg !5710

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5711
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5712
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #19, !dbg !5713
  %conv = zext i1 %call to i32, !dbg !5713
  br label %cond.end, !dbg !5710

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5714
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5715
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #19, !dbg !5716
  %conv2 = zext i1 %call1 to i32, !dbg !5716
  br label %cond.end, !dbg !5710

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5710
  %tobool = icmp ne i32 %cond, 0, !dbg !5710
  ret i1 %tobool, !dbg !5717
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5718 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5722, metadata !DIExpression()), !dbg !5724
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5723, metadata !DIExpression()), !dbg !5725
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5726
  %and = and i64 %0, 63, !dbg !5727
  %shl = shl i64 1, %and, !dbg !5728
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5729
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5730
  %shr = ashr i64 %2, 6, !dbg !5731
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5729
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5729
  %and1 = and i64 %shl, %3, !dbg !5732
  %cmp = icmp ne i64 %and1, 0, !dbg !5733
  ret i1 %cmp, !dbg !5734
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5735 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5737, metadata !DIExpression()), !dbg !5740
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5738, metadata !DIExpression()), !dbg !5741
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #20, !dbg !5742
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5739, metadata !DIExpression()), !dbg !5743
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5744
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5745
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #20, !dbg !5746, !srcloc !5747
  %3 = icmp ult i8 %2, 2, !dbg !5746
  call void @llvm.assume(i1 %3), !dbg !5746
  store i8 %2, ptr %oldbit, align 1, !dbg !5746
  %4 = load i8, ptr %oldbit, align 1, !dbg !5748, !range !4626, !noundef !531
  %tobool = trunc i8 %4 to i1, !dbg !5748
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #20, !dbg !5749
  ret i1 %tobool, !dbg !5750
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #5 align 16 !dbg !5751 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !5755, metadata !DIExpression()), !dbg !5757
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !5756, metadata !DIExpression()), !dbg !5758
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !5759
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !5759
  %1 = load i32, ptr %flag.addr, align 4, !dbg !5760
  %call = call i32 @test_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #19, !dbg !5761
  ret i32 %call, !dbg !5762
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_sigpending(ptr noundef %p) #5 align 16 !dbg !5763 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5765, metadata !DIExpression()), !dbg !5766
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5767
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 2) #19, !dbg !5767
  %tobool = icmp ne i32 %call, 0, !dbg !5767
  %lnot = xor i1 %tobool, true, !dbg !5767
  %lnot1 = xor i1 %lnot, true, !dbg !5767
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5767
  %conv = sext i32 %lnot.ext to i64, !dbg !5767
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5767
  %conv2 = trunc i64 %expval to i32, !dbg !5767
  ret i32 %conv2, !dbg !5768
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #5 align 16 !dbg !5769 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !5773, metadata !DIExpression()), !dbg !5775
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !5774, metadata !DIExpression()), !dbg !5776
  %0 = load i32, ptr %flag.addr, align 4, !dbg !5777
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5777
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5777

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !5777
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !5777
  %3 = ptrtoint ptr %flags to i64, !dbg !5777
  %cmp = icmp ne i64 %3, 0, !dbg !5777
  %conv = zext i1 %cmp to i32, !dbg !5777
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5777
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !5777

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !5777
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !5777
  %6 = ptrtoint ptr %flags2 to i64, !dbg !5777
  %cmp3 = icmp ne i64 %6, 0, !dbg !5777
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !5777

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !5777
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !5777
  %8 = load i64, ptr %flags6, align 8, !dbg !5777
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !5777
  br i1 %9, label %cond.true, label %cond.false, !dbg !5777

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !5777
  %conv7 = sext i32 %10 to i64, !dbg !5777
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !5777
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !5777
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #19, !dbg !5777
  %conv9 = zext i1 %call to i32, !dbg !5777
  br label %cond.end, !dbg !5777

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !5777
  %conv10 = sext i32 %12 to i64, !dbg !5777
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !5777
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !5777
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #19, !dbg !5777
  %conv13 = zext i1 %call12 to i32, !dbg !5777
  br label %cond.end, !dbg !5777

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !5777
  ret i32 %cond, !dbg !5778
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5779 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5782, metadata !DIExpression()), !dbg !5787
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5783, metadata !DIExpression()), !dbg !5788
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #20, !dbg !5789
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5784, metadata !DIExpression()), !dbg !5790
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5791
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5792
  %div = udiv i64 %1, 64, !dbg !5792
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5793
  store ptr %add.ptr, ptr %p, align 8, !dbg !5790
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #20, !dbg !5794
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5785, metadata !DIExpression()), !dbg !5795
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5796
  %rem = urem i64 %2, 64, !dbg !5796
  %shl = shl i64 1, %rem, !dbg !5796
  store i64 %shl, ptr %mask, align 8, !dbg !5795
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #20, !dbg !5797
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5786, metadata !DIExpression()), !dbg !5798
  %3 = load ptr, ptr %p, align 8, !dbg !5799
  %4 = load i64, ptr %3, align 8, !dbg !5800
  store i64 %4, ptr %val, align 8, !dbg !5798
  %5 = load i64, ptr %val, align 8, !dbg !5801
  %6 = load i64, ptr %mask, align 8, !dbg !5802
  %and = and i64 %5, %6, !dbg !5803
  %tobool = icmp ne i64 %and, 0, !dbg !5804
  %lnot = xor i1 %tobool, true, !dbg !5804
  %lnot1 = xor i1 %lnot, true, !dbg !5805
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #20, !dbg !5806
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #20, !dbg !5806
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #20, !dbg !5806
  ret i1 %lnot1, !dbg !5807
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5808 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5811, metadata !DIExpression()), !dbg !5813
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5812, metadata !DIExpression()), !dbg !5814
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5815
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5816
  %div = udiv i64 %1, 64, !dbg !5816
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5817
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #19, !dbg !5818
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5819
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5820
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #19, !dbg !5821
  ret i1 %call, !dbg !5822
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !5823 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5831, metadata !DIExpression()), !dbg !5833
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5832, metadata !DIExpression()), !dbg !5834
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5835
  %1 = load i64, ptr %size.addr, align 8, !dbg !5836
  %conv = trunc i64 %1 to i32, !dbg !5836
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #19, !dbg !5837
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5838
  %3 = load i64, ptr %size.addr, align 8, !dbg !5838
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #19, !dbg !5838
  ret void, !dbg !5839
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !5840 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5845, metadata !DIExpression()), !dbg !5847
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5846, metadata !DIExpression()), !dbg !5848
  ret i1 true, !dbg !5849
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !5850 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5855, metadata !DIExpression()), !dbg !5858
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5856, metadata !DIExpression()), !dbg !5859
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5857, metadata !DIExpression()), !dbg !5860
  ret void, !dbg !5861
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rng_current_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #2 align 16 !dbg !5862 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %rng = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5864, metadata !DIExpression()), !dbg !5869
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5865, metadata !DIExpression()), !dbg !5870
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5866, metadata !DIExpression()), !dbg !5871
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #20, !dbg !5872
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5867, metadata !DIExpression()), !dbg !5873
  call void @llvm.lifetime.start.p0(i64 8, ptr %rng) #20, !dbg !5874
  call void @llvm.dbg.declare(metadata ptr %rng, metadata !5868, metadata !DIExpression()), !dbg !5875
  %call = call ptr @get_current_rng() #19, !dbg !5876
  store ptr %call, ptr %rng, align 8, !dbg !5877
  %0 = load ptr, ptr %rng, align 8, !dbg !5878
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %0) #19, !dbg !5880
  br i1 %call1, label %if.then, label %if.end, !dbg !5881

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %rng, align 8, !dbg !5882
  %call2 = call i64 @PTR_ERR(ptr noundef %1) #19, !dbg !5883
  store i64 %call2, ptr %retval, align 8, !dbg !5884
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5884

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !5885
  %3 = load ptr, ptr %rng, align 8, !dbg !5886
  %tobool = icmp ne ptr %3, null, !dbg !5886
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5886

cond.true:                                        ; preds = %if.end
  %4 = load ptr, ptr %rng, align 8, !dbg !5887
  %name = getelementptr inbounds %struct.hwrng, ptr %4, i32 0, i32 0, !dbg !5888
  %5 = load ptr, ptr %name, align 8, !dbg !5888
  br label %cond.end, !dbg !5886

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !5886

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ @.str.7, %cond.false ], !dbg !5886
  %call3 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %2, i64 noundef 4096, ptr noundef @.str.6, ptr noundef %cond) #19, !dbg !5889
  %conv = sext i32 %call3 to i64, !dbg !5889
  store i64 %conv, ptr %ret, align 8, !dbg !5890
  %6 = load ptr, ptr %rng, align 8, !dbg !5891
  call void @put_rng(ptr noundef %6) #19, !dbg !5892
  %7 = load i64, ptr %ret, align 8, !dbg !5893
  store i64 %7, ptr %retval, align 8, !dbg !5894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5894

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rng) #20, !dbg !5895
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #20, !dbg !5895
  %8 = load i64, ptr %retval, align 8, !dbg !5895
  ret i64 %8, !dbg !5895
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rng_current_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %len) #2 align 16 !dbg !5896 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %err = alloca i32, align 4
  %rng = alloca ptr, align 8
  %old_rng = alloca ptr, align 8
  %new_rng = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr11 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5898, metadata !DIExpression()), !dbg !5914
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5899, metadata !DIExpression()), !dbg !5915
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5900, metadata !DIExpression()), !dbg !5916
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5901, metadata !DIExpression()), !dbg !5917
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #20, !dbg !5918
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5902, metadata !DIExpression()), !dbg !5919
  call void @llvm.lifetime.start.p0(i64 8, ptr %rng) #20, !dbg !5920
  call void @llvm.dbg.declare(metadata ptr %rng, metadata !5903, metadata !DIExpression()), !dbg !5921
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_rng) #20, !dbg !5920
  call void @llvm.dbg.declare(metadata ptr %old_rng, metadata !5904, metadata !DIExpression()), !dbg !5922
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_rng) #20, !dbg !5920
  call void @llvm.dbg.declare(metadata ptr %new_rng, metadata !5905, metadata !DIExpression()), !dbg !5923
  %call = call i32 @mutex_lock_interruptible(ptr noundef @rng_mutex) #19, !dbg !5924
  store i32 %call, ptr %err, align 4, !dbg !5925
  %0 = load i32, ptr %err, align 4, !dbg !5926
  %tobool = icmp ne i32 %0, 0, !dbg !5926
  br i1 %tobool, label %if.then, label %if.end, !dbg !5928

if.then:                                          ; preds = %entry
  store i64 -512, ptr %retval, align 8, !dbg !5929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5929

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @current_rng, align 8, !dbg !5930
  store ptr %1, ptr %old_rng, align 8, !dbg !5931
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !5932
  %call1 = call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef @.str.8) #19, !dbg !5933
  br i1 %call1, label %if.then2, label %if.else, !dbg !5934

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @enable_best_rng() #19, !dbg !5935
  store i32 %call3, ptr %err, align 4, !dbg !5937
  br label %if.end15, !dbg !5938

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !5939
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5906, metadata !DIExpression()), !dbg !5939
  %3 = load ptr, ptr @rng_list, align 8, !dbg !5939
  store ptr %3, ptr %__mptr, align 8, !dbg !5939
  %4 = load ptr, ptr %__mptr, align 8, !dbg !5939
  %add.ptr = getelementptr i8, ptr %4, i64 -64, !dbg !5939
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5939
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !5940
  %5 = load ptr, ptr %tmp, align 8, !dbg !5939
  store ptr %5, ptr %rng, align 8, !dbg !5940
  br label %for.cond, !dbg !5940

for.cond:                                         ; preds = %for.inc, %if.else
  %6 = load ptr, ptr %rng, align 8, !dbg !5941
  %list = getelementptr inbounds %struct.hwrng, ptr %6, i32 0, i32 8, !dbg !5941
  %cmp = icmp eq ptr %list, @rng_list, !dbg !5941
  %lnot = xor i1 %cmp, true, !dbg !5941
  br i1 %lnot, label %for.body, label %for.end, !dbg !5940

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %rng, align 8, !dbg !5942
  %name = getelementptr inbounds %struct.hwrng, ptr %7, i32 0, i32 0, !dbg !5945
  %8 = load ptr, ptr %name, align 8, !dbg !5945
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !5946
  %call4 = call zeroext i1 @sysfs_streq(ptr noundef %8, ptr noundef %9) #19, !dbg !5947
  br i1 %call4, label %if.then5, label %if.end10, !dbg !5948

if.then5:                                         ; preds = %for.body
  %10 = load ptr, ptr %rng, align 8, !dbg !5949
  %call6 = call i32 @set_current_rng(ptr noundef %10) #19, !dbg !5951
  store i32 %call6, ptr %err, align 4, !dbg !5952
  %11 = load i32, ptr %err, align 4, !dbg !5953
  %tobool7 = icmp ne i32 %11, 0, !dbg !5953
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !5955

if.then8:                                         ; preds = %if.then5
  store i32 1, ptr @cur_rng_set_by_user, align 4, !dbg !5956
  br label %if.end9, !dbg !5957

if.end9:                                          ; preds = %if.then8, %if.then5
  br label %for.end, !dbg !5958

if.end10:                                         ; preds = %for.body
  br label %for.inc, !dbg !5959

for.inc:                                          ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr11) #20, !dbg !5960
  call void @llvm.dbg.declare(metadata ptr %__mptr11, metadata !5911, metadata !DIExpression()), !dbg !5960
  %12 = load ptr, ptr %rng, align 8, !dbg !5960
  %list12 = getelementptr inbounds %struct.hwrng, ptr %12, i32 0, i32 8, !dbg !5960
  %next = getelementptr inbounds %struct.list_head, ptr %list12, i32 0, i32 0, !dbg !5960
  %13 = load ptr, ptr %next, align 8, !dbg !5960
  store ptr %13, ptr %__mptr11, align 8, !dbg !5960
  %14 = load ptr, ptr %__mptr11, align 8, !dbg !5960
  %add.ptr14 = getelementptr i8, ptr %14, i64 -64, !dbg !5960
  store ptr %add.ptr14, ptr %tmp13, align 8, !dbg !5960
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr11) #20, !dbg !5941
  %15 = load ptr, ptr %tmp13, align 8, !dbg !5960
  store ptr %15, ptr %rng, align 8, !dbg !5941
  br label %for.cond, !dbg !5941, !llvm.loop !5961

for.end:                                          ; preds = %if.end9, %for.cond
  br label %if.end15

if.end15:                                         ; preds = %for.end, %if.then2
  %call16 = call ptr @get_current_rng_nolock() #19, !dbg !5963
  store ptr %call16, ptr %new_rng, align 8, !dbg !5964
  call void @mutex_unlock(ptr noundef @rng_mutex) #19, !dbg !5965
  %16 = load ptr, ptr %new_rng, align 8, !dbg !5966
  %tobool17 = icmp ne ptr %16, null, !dbg !5966
  br i1 %tobool17, label %if.then18, label %if.end22, !dbg !5968

if.then18:                                        ; preds = %if.end15
  %17 = load ptr, ptr %new_rng, align 8, !dbg !5969
  %18 = load ptr, ptr %old_rng, align 8, !dbg !5972
  %cmp19 = icmp ne ptr %17, %18, !dbg !5973
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !5974

if.then20:                                        ; preds = %if.then18
  %19 = load ptr, ptr %new_rng, align 8, !dbg !5975
  call void @add_early_randomness(ptr noundef %19) #19, !dbg !5976
  br label %if.end21, !dbg !5976

if.end21:                                         ; preds = %if.then20, %if.then18
  %20 = load ptr, ptr %new_rng, align 8, !dbg !5977
  call void @put_rng(ptr noundef %20) #19, !dbg !5978
  br label %if.end22, !dbg !5979

if.end22:                                         ; preds = %if.end21, %if.end15
  %21 = load i32, ptr %err, align 4, !dbg !5980
  %tobool23 = icmp ne i32 %21, 0, !dbg !5980
  br i1 %tobool23, label %cond.true, label %cond.false, !dbg !5980

cond.true:                                        ; preds = %if.end22
  %conv = sext i32 %21 to i64, !dbg !5980
  br label %cond.end, !dbg !5980

cond.false:                                       ; preds = %if.end22
  %22 = load i64, ptr %len.addr, align 8, !dbg !5981
  br label %cond.end, !dbg !5980

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %22, %cond.false ], !dbg !5980
  store i64 %cond, ptr %retval, align 8, !dbg !5982
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5982

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_rng) #20, !dbg !5983
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_rng) #20, !dbg !5983
  call void @llvm.lifetime.end.p0(i64 8, ptr %rng) #20, !dbg !5983
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #20, !dbg !5983
  %23 = load i64, ptr %retval, align 8, !dbg !5983
  ret i64 %23, !dbg !5983
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5984 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5988 dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rng_available_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #2 align 16 !dbg !5991 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %rng = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5993, metadata !DIExpression()), !dbg !6004
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5994, metadata !DIExpression()), !dbg !6005
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5995, metadata !DIExpression()), !dbg !6006
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #20, !dbg !6007
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5996, metadata !DIExpression()), !dbg !6008
  call void @llvm.lifetime.start.p0(i64 8, ptr %rng) #20, !dbg !6009
  call void @llvm.dbg.declare(metadata ptr %rng, metadata !5997, metadata !DIExpression()), !dbg !6010
  %call = call i32 @mutex_lock_interruptible(ptr noundef @rng_mutex) #19, !dbg !6011
  store i32 %call, ptr %err, align 4, !dbg !6012
  %0 = load i32, ptr %err, align 4, !dbg !6013
  %tobool = icmp ne i32 %0, 0, !dbg !6013
  br i1 %tobool, label %if.then, label %if.end, !dbg !6015

if.then:                                          ; preds = %entry
  store i64 -512, ptr %retval, align 8, !dbg !6016
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6016

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !6017
  %arrayidx = getelementptr i8, ptr %1, i64 0, !dbg !6017
  store i8 0, ptr %arrayidx, align 1, !dbg !6018
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !6019
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5998, metadata !DIExpression()), !dbg !6019
  %2 = load ptr, ptr @rng_list, align 8, !dbg !6019
  store ptr %2, ptr %__mptr, align 8, !dbg !6019
  %3 = load ptr, ptr %__mptr, align 8, !dbg !6019
  %add.ptr = getelementptr i8, ptr %3, i64 -64, !dbg !6019
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6019
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !6020
  %4 = load ptr, ptr %tmp, align 8, !dbg !6019
  store ptr %4, ptr %rng, align 8, !dbg !6020
  br label %for.cond, !dbg !6020

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %rng, align 8, !dbg !6021
  %list = getelementptr inbounds %struct.hwrng, ptr %5, i32 0, i32 8, !dbg !6021
  %cmp = icmp eq ptr %list, @rng_list, !dbg !6021
  %lnot = xor i1 %cmp, true, !dbg !6021
  br i1 %lnot, label %for.body, label %for.end, !dbg !6020

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !6022
  %7 = load ptr, ptr %rng, align 8, !dbg !6024
  %name = getelementptr inbounds %struct.hwrng, ptr %7, i32 0, i32 0, !dbg !6025
  %8 = load ptr, ptr %name, align 8, !dbg !6025
  %call1 = call i64 @strlcat(ptr noundef %6, ptr noundef %8, i64 noundef 4096) #19, !dbg !6026
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !6027
  %call2 = call i64 @strlcat(ptr noundef %9, ptr noundef @.str.10, i64 noundef 4096) #19, !dbg !6028
  br label %for.inc, !dbg !6029

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #20, !dbg !6030
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !6001, metadata !DIExpression()), !dbg !6030
  %10 = load ptr, ptr %rng, align 8, !dbg !6030
  %list4 = getelementptr inbounds %struct.hwrng, ptr %10, i32 0, i32 8, !dbg !6030
  %next = getelementptr inbounds %struct.list_head, ptr %list4, i32 0, i32 0, !dbg !6030
  %11 = load ptr, ptr %next, align 8, !dbg !6030
  store ptr %11, ptr %__mptr3, align 8, !dbg !6030
  %12 = load ptr, ptr %__mptr3, align 8, !dbg !6030
  %add.ptr6 = getelementptr i8, ptr %12, i64 -64, !dbg !6030
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !6030
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #20, !dbg !6021
  %13 = load ptr, ptr %tmp5, align 8, !dbg !6030
  store ptr %13, ptr %rng, align 8, !dbg !6021
  br label %for.cond, !dbg !6021, !llvm.loop !6031

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !6033
  %call7 = call i64 @strlcat(ptr noundef %14, ptr noundef @.str.11, i64 noundef 4096) #19, !dbg !6034
  call void @mutex_unlock(ptr noundef @rng_mutex) #19, !dbg !6035
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !6036
  %call8 = call i64 @strlen(ptr noundef %15) #19, !dbg !6037
  store i64 %call8, ptr %retval, align 8, !dbg !6038
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6038

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rng) #20, !dbg !6039
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #20, !dbg !6039
  %16 = load i64, ptr %retval, align 8, !dbg !6039
  ret i64 %16, !dbg !6039
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6040 dso_local i64 @strlcat(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6043 dso_local i64 @strlen(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rng_selected_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #2 align 16 !dbg !6046 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6048, metadata !DIExpression()), !dbg !6051
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6049, metadata !DIExpression()), !dbg !6052
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6050, metadata !DIExpression()), !dbg !6053
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6054
  %1 = load i32, ptr @cur_rng_set_by_user, align 4, !dbg !6055
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.13, i32 noundef %1) #19, !dbg !6056
  %conv = sext i32 %call to i64, !dbg !6056
  ret i64 %conv, !dbg !6057
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6058 dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rng_quality_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #2 align 16 !dbg !6061 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %rng = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6063, metadata !DIExpression()), !dbg !6068
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6064, metadata !DIExpression()), !dbg !6069
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6065, metadata !DIExpression()), !dbg !6070
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #20, !dbg !6071
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6066, metadata !DIExpression()), !dbg !6072
  call void @llvm.lifetime.start.p0(i64 8, ptr %rng) #20, !dbg !6073
  call void @llvm.dbg.declare(metadata ptr %rng, metadata !6067, metadata !DIExpression()), !dbg !6074
  %call = call ptr @get_current_rng() #19, !dbg !6075
  store ptr %call, ptr %rng, align 8, !dbg !6076
  %0 = load ptr, ptr %rng, align 8, !dbg !6077
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %0) #19, !dbg !6079
  br i1 %call1, label %if.then, label %if.end, !dbg !6080

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %rng, align 8, !dbg !6081
  %call2 = call i64 @PTR_ERR(ptr noundef %1) #19, !dbg !6082
  store i64 %call2, ptr %retval, align 8, !dbg !6083
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6083

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %rng, align 8, !dbg !6084
  %tobool = icmp ne ptr %2, null, !dbg !6084
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !6086

if.then3:                                         ; preds = %if.end
  store i64 -19, ptr %retval, align 8, !dbg !6087
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6087

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !6088
  %4 = load ptr, ptr %rng, align 8, !dbg !6089
  %quality = getelementptr inbounds %struct.hwrng, ptr %4, i32 0, i32 7, !dbg !6090
  %5 = load i16, ptr %quality, align 8, !dbg !6090
  %conv = zext i16 %5 to i32, !dbg !6089
  %call5 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef @.str.15, i32 noundef %conv) #19, !dbg !6091
  %conv6 = sext i32 %call5 to i64, !dbg !6091
  store i64 %conv6, ptr %ret, align 8, !dbg !6092
  %6 = load ptr, ptr %rng, align 8, !dbg !6093
  call void @put_rng(ptr noundef %6) #19, !dbg !6094
  %7 = load i64, ptr %ret, align 8, !dbg !6095
  store i64 %7, ptr %retval, align 8, !dbg !6096
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6096

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rng) #20, !dbg !6097
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #20, !dbg !6097
  %8 = load i64, ptr %retval, align 8, !dbg !6097
  ret i64 %8, !dbg !6097
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rng_quality_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %len) #2 align 16 !dbg !6098 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %quality = alloca i16, align 2
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6100, metadata !DIExpression()), !dbg !6107
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6101, metadata !DIExpression()), !dbg !6108
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6102, metadata !DIExpression()), !dbg !6109
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6103, metadata !DIExpression()), !dbg !6110
  call void @llvm.lifetime.start.p0(i64 2, ptr %quality) #20, !dbg !6111
  call void @llvm.dbg.declare(metadata ptr %quality, metadata !6104, metadata !DIExpression()), !dbg !6112
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #20, !dbg !6113
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6105, metadata !DIExpression()), !dbg !6114
  store i32 -22, ptr %ret, align 4, !dbg !6114
  %0 = load i64, ptr %len.addr, align 8, !dbg !6115
  %cmp = icmp ult i64 %0, 2, !dbg !6117
  br i1 %cmp, label %if.then, label %if.end, !dbg !6118

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !6119
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6119

if.end:                                           ; preds = %entry
  %call = call i32 @mutex_lock_interruptible(ptr noundef @rng_mutex) #19, !dbg !6120
  store i32 %call, ptr %ret, align 4, !dbg !6121
  %1 = load i32, ptr %ret, align 4, !dbg !6122
  %tobool = icmp ne i32 %1, 0, !dbg !6122
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !6124

if.then1:                                         ; preds = %if.end
  store i64 -512, ptr %retval, align 8, !dbg !6125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6125

if.end2:                                          ; preds = %if.end
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !6126
  %call3 = call i32 @kstrtou16(ptr noundef %2, i32 noundef 0, ptr noundef %quality) #19, !dbg !6127
  store i32 %call3, ptr %ret, align 4, !dbg !6128
  %3 = load i32, ptr %ret, align 4, !dbg !6129
  %tobool4 = icmp ne i32 %3, 0, !dbg !6129
  br i1 %tobool4, label %if.then7, label %lor.lhs.false, !dbg !6131

lor.lhs.false:                                    ; preds = %if.end2
  %4 = load i16, ptr %quality, align 2, !dbg !6132
  %conv = zext i16 %4 to i32, !dbg !6132
  %cmp5 = icmp sgt i32 %conv, 1024, !dbg !6133
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !6134

if.then7:                                         ; preds = %lor.lhs.false, %if.end2
  store i32 -22, ptr %ret, align 4, !dbg !6135
  br label %out, !dbg !6137

if.end8:                                          ; preds = %lor.lhs.false
  %5 = load ptr, ptr @current_rng, align 8, !dbg !6138
  %tobool9 = icmp ne ptr %5, null, !dbg !6138
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !6140

if.then10:                                        ; preds = %if.end8
  store i32 -19, ptr %ret, align 4, !dbg !6141
  br label %out, !dbg !6143

if.end11:                                         ; preds = %if.end8
  %6 = load i16, ptr %quality, align 2, !dbg !6144
  %7 = load ptr, ptr @current_rng, align 8, !dbg !6145
  %quality12 = getelementptr inbounds %struct.hwrng, ptr %7, i32 0, i32 7, !dbg !6146
  store i16 %6, ptr %quality12, align 8, !dbg !6147
  %8 = load i16, ptr %quality, align 2, !dbg !6148
  store i16 %8, ptr @current_quality, align 2, !dbg !6149
  %call13 = call i32 @enable_best_rng() #19, !dbg !6150
  store i32 %call13, ptr %ret, align 4, !dbg !6151
  br label %out, !dbg !6152

out:                                              ; preds = %if.end11, %if.then10, %if.then7
  call void @llvm.dbg.label(metadata !6106), !dbg !6153
  call void @mutex_unlock(ptr noundef @rng_mutex) #19, !dbg !6154
  %9 = load i32, ptr %ret, align 4, !dbg !6155
  %tobool14 = icmp ne i32 %9, 0, !dbg !6155
  br i1 %tobool14, label %cond.true, label %cond.false, !dbg !6155

cond.true:                                        ; preds = %out
  %10 = load i32, ptr %ret, align 4, !dbg !6156
  %conv15 = sext i32 %10 to i64, !dbg !6156
  br label %cond.end, !dbg !6155

cond.false:                                       ; preds = %out
  %11 = load i64, ptr %len.addr, align 8, !dbg !6157
  br label %cond.end, !dbg !6155

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv15, %cond.true ], [ %11, %cond.false ], !dbg !6155
  store i64 %cond, ptr %retval, align 8, !dbg !6158
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6158

cleanup:                                          ; preds = %cond.end, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #20, !dbg !6159
  call void @llvm.lifetime.end.p0(i64 2, ptr %quality) #20, !dbg !6159
  %12 = load i64, ptr %retval, align 8, !dbg !6159
  ret i64 %12, !dbg !6159
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6160 dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6165 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6169, metadata !DIExpression()), !dbg !6172
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6170, metadata !DIExpression()), !dbg !6173
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6171, metadata !DIExpression()), !dbg !6174
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6175
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6177
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6178
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19, !dbg !6179
  br i1 %call, label %if.end, label %if.then, !dbg !6180

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6181

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6182
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6183
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6184
  store ptr %3, ptr %prev1, align 8, !dbg !6185
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6186
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6187
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6188
  store ptr %5, ptr %next2, align 8, !dbg !6189
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6190
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6191
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6192
  store ptr %7, ptr %prev3, align 8, !dbg !6193
  br label %do.body, !dbg !6194

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6195

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6197

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6195

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6199
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6199
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6199
  store volatile ptr %9, ptr %next6, align 8, !dbg !6199
  br label %do.end7, !dbg !6199

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6195

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6201
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6202 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6206, metadata !DIExpression()), !dbg !6209
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6207, metadata !DIExpression()), !dbg !6210
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6208, metadata !DIExpression()), !dbg !6211
  ret i1 true, !dbg !6212
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6213 dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hwrng_init(ptr noundef %rng) #2 align 16 !dbg !6218 {
entry:
  %retval = alloca i32, align 4
  %rng.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rng, ptr %rng.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rng.addr, metadata !6220, metadata !DIExpression()), !dbg !6225
  %0 = load ptr, ptr %rng.addr, align 8, !dbg !6226
  %ref = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 9, !dbg !6228
  %call = call i32 @kref_get_unless_zero(ptr noundef %ref) #19, !dbg !6229
  %tobool = icmp ne i32 %call, 0, !dbg !6229
  br i1 %tobool, label %if.then, label %if.end, !dbg !6230

if.then:                                          ; preds = %entry
  br label %skip_init, !dbg !6231

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %rng.addr, align 8, !dbg !6232
  %init = getelementptr inbounds %struct.hwrng, ptr %1, i32 0, i32 1, !dbg !6233
  %2 = load ptr, ptr %init, align 8, !dbg !6233
  %tobool1 = icmp ne ptr %2, null, !dbg !6232
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !6234

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #20, !dbg !6235
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6221, metadata !DIExpression()), !dbg !6236
  %3 = load ptr, ptr %rng.addr, align 8, !dbg !6237
  %init3 = getelementptr inbounds %struct.hwrng, ptr %3, i32 0, i32 1, !dbg !6238
  %4 = load ptr, ptr %init3, align 8, !dbg !6238
  %5 = load ptr, ptr %rng.addr, align 8, !dbg !6239
  %call4 = call i32 %4(ptr noundef %5) #19, !dbg !6237
  store i32 %call4, ptr %ret, align 4, !dbg !6240
  %6 = load i32, ptr %ret, align 4, !dbg !6241
  %tobool5 = icmp ne i32 %6, 0, !dbg !6241
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6243

if.then6:                                         ; preds = %if.then2
  %7 = load i32, ptr %ret, align 4, !dbg !6244
  store i32 %7, ptr %retval, align 4, !dbg !6245
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6245

if.end7:                                          ; preds = %if.then2
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6246
  br label %cleanup, !dbg !6246

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #20, !dbg !6246
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end8, !dbg !6247

if.end8:                                          ; preds = %cleanup.cont, %if.end
  %8 = load ptr, ptr %rng.addr, align 8, !dbg !6248
  %ref9 = getelementptr inbounds %struct.hwrng, ptr %8, i32 0, i32 9, !dbg !6249
  call void @kref_init(ptr noundef %ref9) #19, !dbg !6250
  %9 = load ptr, ptr %rng.addr, align 8, !dbg !6251
  %cleanup_done = getelementptr inbounds %struct.hwrng, ptr %9, i32 0, i32 10, !dbg !6252
  call void @reinit_completion(ptr noundef %cleanup_done) #19, !dbg !6253
  br label %skip_init, !dbg !6253

skip_init:                                        ; preds = %if.end8, %if.then
  call void @llvm.dbg.label(metadata !6224), !dbg !6254
  %10 = load ptr, ptr %rng.addr, align 8, !dbg !6255
  %quality = getelementptr inbounds %struct.hwrng, ptr %10, i32 0, i32 7, !dbg !6256
  %11 = load i16, ptr %quality, align 8, !dbg !6256
  store i16 %11, ptr @current_quality, align 2, !dbg !6257
  store i32 0, ptr %retval, align 4, !dbg !6258
  br label %return, !dbg !6258

return:                                           ; preds = %skip_init, %cleanup
  %12 = load i32, ptr %retval, align 4, !dbg !6259
  ret i32 %12, !dbg !6259

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6260 dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hwrng_fillfn(ptr noundef %unused) #2 align 16 !dbg !6266 {
entry:
  %unused.addr = alloca ptr, align 8
  %entropy = alloca i64, align 8
  %entropy_credit = alloca i64, align 8
  %rc = alloca i64, align 8
  %quality = alloca i16, align 2
  %rng = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %unused, ptr %unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !6268, metadata !DIExpression()), !dbg !6275
  call void @llvm.lifetime.start.p0(i64 8, ptr %entropy) #20, !dbg !6276
  call void @llvm.dbg.declare(metadata ptr %entropy, metadata !6269, metadata !DIExpression()), !dbg !6277
  call void @llvm.lifetime.start.p0(i64 8, ptr %entropy_credit) #20, !dbg !6276
  call void @llvm.dbg.declare(metadata ptr %entropy_credit, metadata !6270, metadata !DIExpression()), !dbg !6278
  store i64 0, ptr %entropy_credit, align 8, !dbg !6278
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #20, !dbg !6279
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !6271, metadata !DIExpression()), !dbg !6280
  br label %while.cond, !dbg !6281

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %entry
  %call = call zeroext i1 @kthread_should_stop() #19, !dbg !6282
  %lnot = xor i1 %call, true, !dbg !6283
  br i1 %lnot, label %while.body, label %while.end, !dbg !6281

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 2, ptr %quality) #20, !dbg !6284
  call void @llvm.dbg.declare(metadata ptr %quality, metadata !6272, metadata !DIExpression()), !dbg !6285
  call void @llvm.lifetime.start.p0(i64 8, ptr %rng) #20, !dbg !6286
  call void @llvm.dbg.declare(metadata ptr %rng, metadata !6274, metadata !DIExpression()), !dbg !6287
  %call1 = call ptr @get_current_rng() #19, !dbg !6288
  store ptr %call1, ptr %rng, align 8, !dbg !6289
  %0 = load ptr, ptr %rng, align 8, !dbg !6290
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %0) #19, !dbg !6292
  br i1 %call2, label %if.then, label %lor.lhs.false, !dbg !6293

lor.lhs.false:                                    ; preds = %while.body
  %1 = load ptr, ptr %rng, align 8, !dbg !6294
  %tobool = icmp ne ptr %1, null, !dbg !6294
  br i1 %tobool, label %if.end, label %if.then, !dbg !6295

if.then:                                          ; preds = %lor.lhs.false, %while.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6296

if.end:                                           ; preds = %lor.lhs.false
  call void @mutex_lock(ptr noundef @reading_mutex) #19, !dbg !6297
  %2 = load ptr, ptr %rng, align 8, !dbg !6298
  %3 = load ptr, ptr @rng_fillbuf, align 8, !dbg !6299
  %call3 = call i64 @rng_buffer_size() #19, !dbg !6300
  %call4 = call i32 @rng_get_data(ptr noundef %2, ptr noundef %3, i64 noundef %call3, i32 noundef 1) #19, !dbg !6301
  %conv = sext i32 %call4 to i64, !dbg !6301
  store i64 %conv, ptr %rc, align 8, !dbg !6302
  %4 = load i16, ptr @current_quality, align 2, !dbg !6303
  %conv5 = zext i16 %4 to i32, !dbg !6303
  %5 = load ptr, ptr %rng, align 8, !dbg !6305
  %quality6 = getelementptr inbounds %struct.hwrng, ptr %5, i32 0, i32 7, !dbg !6306
  %6 = load i16, ptr %quality6, align 8, !dbg !6306
  %conv7 = zext i16 %6 to i32, !dbg !6305
  %cmp = icmp ne i32 %conv5, %conv7, !dbg !6307
  br i1 %cmp, label %if.then9, label %if.end11, !dbg !6308

if.then9:                                         ; preds = %if.end
  %7 = load i16, ptr @current_quality, align 2, !dbg !6309
  %8 = load ptr, ptr %rng, align 8, !dbg !6310
  %quality10 = getelementptr inbounds %struct.hwrng, ptr %8, i32 0, i32 7, !dbg !6311
  store i16 %7, ptr %quality10, align 8, !dbg !6312
  br label %if.end11, !dbg !6310

if.end11:                                         ; preds = %if.then9, %if.end
  %9 = load ptr, ptr %rng, align 8, !dbg !6313
  %quality12 = getelementptr inbounds %struct.hwrng, ptr %9, i32 0, i32 7, !dbg !6314
  %10 = load i16, ptr %quality12, align 8, !dbg !6314
  store i16 %10, ptr %quality, align 2, !dbg !6315
  call void @mutex_unlock(ptr noundef @reading_mutex) #19, !dbg !6316
  %11 = load i64, ptr %rc, align 8, !dbg !6317
  %cmp13 = icmp sle i64 %11, 0, !dbg !6319
  br i1 %cmp13, label %if.then15, label %if.end17, !dbg !6320

if.then15:                                        ; preds = %if.end11
  %12 = load ptr, ptr %rng, align 8, !dbg !6321
  %call16 = call i64 @hwrng_msleep(ptr noundef %12, i32 noundef 10000) #19, !dbg !6322
  br label %if.end17, !dbg !6322

if.end17:                                         ; preds = %if.then15, %if.end11
  %13 = load ptr, ptr %rng, align 8, !dbg !6323
  call void @put_rng(ptr noundef %13) #19, !dbg !6324
  %14 = load i64, ptr %rc, align 8, !dbg !6325
  %cmp18 = icmp sle i64 %14, 0, !dbg !6327
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !6328

if.then20:                                        ; preds = %if.end17
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6329, !llvm.loop !6330

if.end21:                                         ; preds = %if.end17
  %15 = load i64, ptr %rc, align 8, !dbg !6332
  %16 = load i16, ptr %quality, align 2, !dbg !6333
  %conv22 = zext i16 %16 to i64, !dbg !6333
  %mul = mul i64 %15, %conv22, !dbg !6334
  %mul23 = mul i64 %mul, 8, !dbg !6335
  %17 = load i64, ptr %entropy_credit, align 8, !dbg !6336
  %add = add i64 %mul23, %17, !dbg !6337
  store i64 %add, ptr %entropy, align 8, !dbg !6338
  %18 = load i64, ptr %entropy, align 8, !dbg !6339
  %shr = lshr i64 %18, 10, !dbg !6341
  %cmp24 = icmp eq i64 %shr, 0, !dbg !6342
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !6343

if.then26:                                        ; preds = %if.end21
  %19 = load i64, ptr %entropy, align 8, !dbg !6344
  store i64 %19, ptr %entropy_credit, align 8, !dbg !6345
  br label %if.end27, !dbg !6346

if.end27:                                         ; preds = %if.then26, %if.end21
  %20 = load ptr, ptr @rng_fillbuf, align 8, !dbg !6347
  %21 = load i64, ptr %rc, align 8, !dbg !6348
  %22 = load i64, ptr %entropy, align 8, !dbg !6349
  %shr28 = lshr i64 %22, 10, !dbg !6350
  call void @add_hwgenerator_randomness(ptr noundef %20, i64 noundef %21, i64 noundef %shr28, i1 noundef zeroext true) #19, !dbg !6351
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6331
  br label %cleanup, !dbg !6331

cleanup:                                          ; preds = %if.end27, %if.then20, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rng) #20, !dbg !6331
  call void @llvm.lifetime.end.p0(i64 2, ptr %quality) #20, !dbg !6331
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !6281, !llvm.loop !6330

while.end:                                        ; preds = %cleanup, %while.cond
  store ptr null, ptr @hwrng_fill, align 8, !dbg !6352
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #20, !dbg !6353
  call void @llvm.lifetime.end.p0(i64 8, ptr %entropy_credit) #20, !dbg !6353
  call void @llvm.lifetime.end.p0(i64 8, ptr %entropy) #20, !dbg !6353
  ret i32 0, !dbg !6354

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6355 dso_local i32 @wake_up_process(ptr noundef) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6356 dso_local i32 @_printk(ptr noundef, ...) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_get_unless_zero(ptr noundef %kref) #5 align 16 !dbg !6360 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !6364, metadata !DIExpression()), !dbg !6365
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !6366
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !6367
  %call = call zeroext i1 @refcount_inc_not_zero(ptr noundef %refcount) #19, !dbg !6368
  %conv = zext i1 %call to i32, !dbg !6368
  ret i32 %conv, !dbg !6369
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_init(ptr noundef %kref) #5 align 16 !dbg !6370 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !6372, metadata !DIExpression()), !dbg !6373
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !6374
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !6375
  call void @refcount_set(ptr noundef %refcount, i32 noundef 1) #19, !dbg !6376
  ret void, !dbg !6377
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @reinit_completion(ptr noundef %x) #5 align 16 !dbg !6378 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !6380, metadata !DIExpression()), !dbg !6381
  %0 = load ptr, ptr %x.addr, align 8, !dbg !6382
  %done = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 0, !dbg !6383
  store i32 0, ptr %done, align 8, !dbg !6384
  ret void, !dbg !6385
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_inc_not_zero(ptr noundef %r) #5 align 16 !dbg !6386 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6391, metadata !DIExpression()), !dbg !6392
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6393
  %call = call zeroext i1 @__refcount_inc_not_zero(ptr noundef %0, ptr noundef null) #19, !dbg !6394
  ret i1 %call, !dbg !6395
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_inc_not_zero(ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !6396 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6400, metadata !DIExpression()), !dbg !6402
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6401, metadata !DIExpression()), !dbg !6403
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6404
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6405
  %call = call zeroext i1 @__refcount_add_not_zero(i32 noundef 1, ptr noundef %0, ptr noundef %1) #19, !dbg !6406
  ret i1 %call, !dbg !6407
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_add_not_zero(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !6408 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6412, metadata !DIExpression()), !dbg !6416
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6413, metadata !DIExpression()), !dbg !6417
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6414, metadata !DIExpression()), !dbg !6418
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #20, !dbg !6419
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6415, metadata !DIExpression()), !dbg !6420
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6421
  %call = call i32 @refcount_read(ptr noundef %0) #19, !dbg !6422
  store i32 %call, ptr %old, align 4, !dbg !6420
  br label %do.body, !dbg !6423

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %old, align 4, !dbg !6424
  %tobool = icmp ne i32 %1, 0, !dbg !6424
  br i1 %tobool, label %if.end, label %if.then, !dbg !6427

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !6428

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !6429

do.cond:                                          ; preds = %if.end
  %2 = load ptr, ptr %r.addr, align 8, !dbg !6430
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %2, i32 0, i32 0, !dbg !6431
  %3 = load i32, ptr %old, align 4, !dbg !6432
  %4 = load i32, ptr %i.addr, align 4, !dbg !6433
  %add = add i32 %3, %4, !dbg !6434
  %call1 = call zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %refs, ptr noundef %old, i32 noundef %add) #19, !dbg !6435
  %lnot = xor i1 %call1, true, !dbg !6436
  br i1 %lnot, label %do.body, label %do.end, !dbg !6429, !llvm.loop !6437

do.end:                                           ; preds = %do.cond, %if.then
  %5 = load ptr, ptr %oldp.addr, align 8, !dbg !6439
  %tobool2 = icmp ne ptr %5, null, !dbg !6439
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6441

if.then3:                                         ; preds = %do.end
  %6 = load i32, ptr %old, align 4, !dbg !6442
  %7 = load ptr, ptr %oldp.addr, align 8, !dbg !6443
  store i32 %6, ptr %7, align 4, !dbg !6444
  br label %if.end4, !dbg !6445

if.end4:                                          ; preds = %if.then3, %do.end
  %8 = load i32, ptr %old, align 4, !dbg !6446
  %cmp = icmp slt i32 %8, 0, !dbg !6446
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6446

lor.rhs:                                          ; preds = %if.end4
  %9 = load i32, ptr %old, align 4, !dbg !6446
  %10 = load i32, ptr %i.addr, align 4, !dbg !6446
  %add5 = add i32 %9, %10, !dbg !6446
  %cmp6 = icmp slt i32 %add5, 0, !dbg !6446
  br label %lor.end, !dbg !6446

lor.end:                                          ; preds = %lor.rhs, %if.end4
  %11 = phi i1 [ true, %if.end4 ], [ %cmp6, %lor.rhs ]
  %lnot7 = xor i1 %11, true, !dbg !6446
  %lnot8 = xor i1 %lnot7, true, !dbg !6446
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !6446
  %conv = sext i32 %lnot.ext to i64, !dbg !6446
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6446
  %tobool9 = icmp ne i64 %expval, 0, !dbg !6446
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6448

if.then10:                                        ; preds = %lor.end
  %12 = load ptr, ptr %r.addr, align 8, !dbg !6449
  call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 0) #19, !dbg !6450
  br label %if.end11, !dbg !6450

if.end11:                                         ; preds = %if.then10, %lor.end
  %13 = load i32, ptr %old, align 4, !dbg !6451
  %tobool12 = icmp ne i32 %13, 0, !dbg !6451
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #20, !dbg !6452
  ret i1 %tobool12, !dbg !6453
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @refcount_read(ptr noundef %r) #5 align 16 !dbg !6454 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6460, metadata !DIExpression()), !dbg !6461
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6462
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !6463
  %call = call i32 @atomic_read(ptr noundef %refs) #19, !dbg !6464
  ret i32 %call, !dbg !6465
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #6 align 16 !dbg !6466 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6472, metadata !DIExpression()), !dbg !6475
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6473, metadata !DIExpression()), !dbg !6476
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6474, metadata !DIExpression()), !dbg !6477
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6478
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #19, !dbg !6479
  %1 = load ptr, ptr %old.addr, align 8, !dbg !6480
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #19, !dbg !6481
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6482
  %3 = load ptr, ptr %old.addr, align 8, !dbg !6483
  %4 = load i32, ptr %new.addr, align 4, !dbg !6484
  %call = call zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %2, ptr noundef %3, i32 noundef %4) #19, !dbg !6485
  ret i1 %call, !dbg !6486
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6487 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #6 align 16 !dbg !6490 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6496, metadata !DIExpression()), !dbg !6497
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6498
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #19, !dbg !6499
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6500
  %call = call i32 @raw_atomic_read(ptr noundef %1) #19, !dbg !6501
  ret i32 %call, !dbg !6502
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #6 align 16 !dbg !6503 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6506, metadata !DIExpression()), !dbg !6507
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6508
  %call = call i32 @arch_atomic_read(ptr noundef %0) #19, !dbg !6509
  ret i32 %call, !dbg !6510
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #6 align 16 !dbg !6511 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6514, metadata !DIExpression()), !dbg !6515
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6516
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6516
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6516
  ret i32 %1, !dbg !6517
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6518 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6520, metadata !DIExpression()), !dbg !6522
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6521, metadata !DIExpression()), !dbg !6523
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6524
  %1 = load i64, ptr %size.addr, align 8, !dbg !6525
  %conv = trunc i64 %1 to i32, !dbg !6525
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #19, !dbg !6526
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6527
  %3 = load i64, ptr %size.addr, align 8, !dbg !6527
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #19, !dbg !6527
  ret void, !dbg !6528
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #6 align 16 !dbg !6529 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6531, metadata !DIExpression()), !dbg !6534
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6532, metadata !DIExpression()), !dbg !6535
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6533, metadata !DIExpression()), !dbg !6536
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6537
  %1 = load ptr, ptr %old.addr, align 8, !dbg !6538
  %2 = load i32, ptr %new.addr, align 4, !dbg !6539
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #19, !dbg !6540
  ret i1 %call, !dbg !6541
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6542 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6544, metadata !DIExpression()), !dbg !6546
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6545, metadata !DIExpression()), !dbg !6547
  ret i1 true, !dbg !6548
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #6 align 16 !dbg !6549 {
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
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6551, metadata !DIExpression()), !dbg !6560
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6552, metadata !DIExpression()), !dbg !6561
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6553, metadata !DIExpression()), !dbg !6562
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #20, !dbg !6563
  call void @llvm.dbg.declare(metadata ptr %success, metadata !6554, metadata !DIExpression()), !dbg !6563
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #20, !dbg !6563
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !6556, metadata !DIExpression()), !dbg !6563
  %0 = load ptr, ptr %old.addr, align 8, !dbg !6563
  store ptr %0, ptr %_old, align 8, !dbg !6563
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #20, !dbg !6563
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !6557, metadata !DIExpression()), !dbg !6563
  %1 = load ptr, ptr %_old, align 8, !dbg !6563
  %2 = load i32, ptr %1, align 4, !dbg !6563
  store i32 %2, ptr %__old, align 4, !dbg !6563
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #20, !dbg !6563
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !6558, metadata !DIExpression()), !dbg !6563
  %3 = load i32, ptr %new.addr, align 4, !dbg !6563
  store i32 %3, ptr %__new, align 4, !dbg !6563
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #20, !dbg !6563
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6559, metadata !DIExpression()), !dbg !6563
  %4 = load ptr, ptr %v.addr, align 8, !dbg !6563
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !6563
  store ptr %counter, ptr %__ptr, align 8, !dbg !6563
  %5 = load ptr, ptr %__ptr, align 8, !dbg !6563
  %6 = load i32, ptr %__old, align 4, !dbg !6563
  %7 = load i32, ptr %__new, align 4, !dbg !6563
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #20, !dbg !6563, !srcloc !6564
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !6563
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !6563
  %9 = icmp ult i8 %asmresult, 2, !dbg !6563
  call void @llvm.assume(i1 %9), !dbg !6563
  store i8 %asmresult, ptr %success, align 1, !dbg !6563
  store i32 %asmresult1, ptr %__old, align 4, !dbg !6563
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #20, !dbg !6563
  %10 = load i8, ptr %success, align 1, !dbg !6565, !range !4626, !noundef !531
  %tobool = trunc i8 %10 to i1, !dbg !6565
  %lnot = xor i1 %tobool, true, !dbg !6565
  %lnot2 = xor i1 %lnot, true, !dbg !6565
  %lnot3 = xor i1 %lnot2, true, !dbg !6565
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6565
  %conv = sext i32 %lnot.ext to i64, !dbg !6565
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6565
  %tobool4 = icmp ne i64 %expval, 0, !dbg !6565
  br i1 %tobool4, label %if.then, label %if.end, !dbg !6563

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !6565
  %12 = load ptr, ptr %_old, align 8, !dbg !6565
  store i32 %11, ptr %12, align 4, !dbg !6565
  br label %if.end, !dbg !6565

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !6563, !range !4626, !noundef !531
  %tobool5 = trunc i8 %13 to i1, !dbg !6563
  %lnot6 = xor i1 %tobool5, true, !dbg !6563
  %lnot8 = xor i1 %lnot6, true, !dbg !6563
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !6563
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !6563
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !6563
  store i64 %expval11, ptr %tmp, align 8, !dbg !6565
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #20, !dbg !6567
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #20, !dbg !6567
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #20, !dbg !6567
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #20, !dbg !6567
  %14 = load i64, ptr %tmp, align 8, !dbg !6563
  %tobool12 = icmp ne i64 %14, 0, !dbg !6567
  ret i1 %tobool12, !dbg !6568
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #5 align 16 !dbg !6569 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6573, metadata !DIExpression()), !dbg !6575
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6574, metadata !DIExpression()), !dbg !6576
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6577
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !6578
  %1 = load i32, ptr %n.addr, align 4, !dbg !6579
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #19, !dbg !6580
  ret void, !dbg !6581
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !6582 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6586, metadata !DIExpression()), !dbg !6588
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6587, metadata !DIExpression()), !dbg !6589
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6590
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #19, !dbg !6591
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6592
  %2 = load i32, ptr %i.addr, align 4, !dbg !6593
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #19, !dbg !6594
  ret void, !dbg !6595
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6596 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6598, metadata !DIExpression()), !dbg !6600
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6599, metadata !DIExpression()), !dbg !6601
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6602
  %1 = load i64, ptr %size.addr, align 8, !dbg !6603
  %conv = trunc i64 %1 to i32, !dbg !6603
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #19, !dbg !6604
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6605
  %3 = load i64, ptr %size.addr, align 8, !dbg !6605
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #19, !dbg !6605
  ret void, !dbg !6606
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !6607 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6609, metadata !DIExpression()), !dbg !6611
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6610, metadata !DIExpression()), !dbg !6612
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6613
  %1 = load i32, ptr %i.addr, align 4, !dbg !6614
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #19, !dbg !6615
  ret void, !dbg !6616
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !6617 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6619, metadata !DIExpression()), !dbg !6621
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6620, metadata !DIExpression()), !dbg !6622
  br label %do.body, !dbg !6623

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !6624
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6624
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !6624
  store volatile i32 %0, ptr %counter, align 4, !dbg !6624
  br label %do.end, !dbg !6624

do.end:                                           ; preds = %do.body
  ret void, !dbg !6626
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6627 dso_local zeroext i1 @kthread_should_stop() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6628 dso_local void @add_hwgenerator_randomness(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #5 align 16 !dbg !6632 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6636, metadata !DIExpression()), !dbg !6637
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6638
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #19, !dbg !6639
  ret void, !dbg !6640
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !6641 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6645, metadata !DIExpression()), !dbg !6647
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6646, metadata !DIExpression()), !dbg !6648
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6649
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6650
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #19, !dbg !6651
  ret void, !dbg !6652
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !6653 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6657, metadata !DIExpression()), !dbg !6661
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6658, metadata !DIExpression()), !dbg !6662
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6659, metadata !DIExpression()), !dbg !6663
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #20, !dbg !6664
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6660, metadata !DIExpression()), !dbg !6665
  %0 = load i32, ptr %i.addr, align 4, !dbg !6666
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6667
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6668
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #19, !dbg !6669
  store i32 %call, ptr %old, align 4, !dbg !6665
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6670
  %tobool = icmp ne ptr %2, null, !dbg !6670
  br i1 %tobool, label %if.then, label %if.end, !dbg !6672

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6673
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6674
  store i32 %3, ptr %4, align 4, !dbg !6675
  br label %if.end, !dbg !6676

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6677
  %tobool1 = icmp ne i32 %5, 0, !dbg !6677
  %lnot = xor i1 %tobool1, true, !dbg !6677
  %lnot2 = xor i1 %lnot, true, !dbg !6677
  %lnot3 = xor i1 %lnot2, true, !dbg !6677
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6677
  %conv = sext i32 %lnot.ext to i64, !dbg !6677
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6677
  %tobool4 = icmp ne i64 %expval, 0, !dbg !6677
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !6679

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !6680
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #19, !dbg !6681
  br label %if.end18, !dbg !6681

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6682
  %cmp = icmp slt i32 %7, 0, !dbg !6682
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6682

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !6682
  %9 = load i32, ptr %i.addr, align 4, !dbg !6682
  %add = add i32 %8, %9, !dbg !6682
  %cmp7 = icmp slt i32 %add, 0, !dbg !6682
  br label %lor.end, !dbg !6682

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !6682
  %lnot11 = xor i1 %lnot9, true, !dbg !6682
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6682
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !6682
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !6682
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !6682
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6684

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6685
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #19, !dbg !6686
  br label %if.end17, !dbg !6686

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #20, !dbg !6687
  ret void, !dbg !6687
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6688 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6692, metadata !DIExpression()), !dbg !6694
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6693, metadata !DIExpression()), !dbg !6695
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6696
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #19, !dbg !6697
  %1 = load i32, ptr %i.addr, align 4, !dbg !6698
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6699
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #19, !dbg !6700
  ret i32 %call, !dbg !6701
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6702 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6704, metadata !DIExpression()), !dbg !6706
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6705, metadata !DIExpression()), !dbg !6707
  %0 = load i32, ptr %i.addr, align 4, !dbg !6708
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6709
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #19, !dbg !6710
  ret i32 %call, !dbg !6711
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6712 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6714, metadata !DIExpression()), !dbg !6718
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6715, metadata !DIExpression()), !dbg !6719
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #20, !dbg !6720
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6716, metadata !DIExpression()), !dbg !6720
  %0 = load i32, ptr %i.addr, align 4, !dbg !6720
  store i32 %0, ptr %__ret, align 4, !dbg !6720
  %1 = load i32, ptr %__ret, align 4, !dbg !6720
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6720
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6720
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #20, !dbg !6720, !srcloc !6721
  store i32 %3, ptr %__ret, align 4, !dbg !6720
  %4 = load i32, ptr %__ret, align 4, !dbg !6720
  store i32 %4, ptr %tmp, align 4, !dbg !6720
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #20, !dbg !6722
  %5 = load i32, ptr %tmp, align 4, !dbg !6720
  ret i32 %5, !dbg !6723
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #5 align 16 !dbg !6724 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !6729, metadata !DIExpression()), !dbg !6731
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !6730, metadata !DIExpression()), !dbg !6732
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !6733
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !6735
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #19, !dbg !6736
  br i1 %call, label %if.then, label %if.end, !dbg !6737

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !6738
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !6740
  call void %1(ptr noundef %2) #19, !dbg !6738
  store i32 1, ptr %retval, align 4, !dbg !6741
  br label %return, !dbg !6741

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6742
  br label %return, !dbg !6742

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !6743
  ret i32 %3, !dbg !6743
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cleanup_rng(ptr noundef %kref) #5 align 16 !dbg !6744 {
entry:
  %kref.addr = alloca ptr, align 8
  %rng = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !6746, metadata !DIExpression()), !dbg !6750
  call void @llvm.lifetime.start.p0(i64 8, ptr %rng) #20, !dbg !6751
  call void @llvm.dbg.declare(metadata ptr %rng, metadata !6747, metadata !DIExpression()), !dbg !6752
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !6753
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6748, metadata !DIExpression()), !dbg !6753
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !6753
  store ptr %0, ptr %__mptr, align 8, !dbg !6753
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6753
  %add.ptr = getelementptr i8, ptr %1, i64 -80, !dbg !6753
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6753
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !6754
  %2 = load ptr, ptr %tmp, align 8, !dbg !6753
  store ptr %2, ptr %rng, align 8, !dbg !6752
  %3 = load ptr, ptr %rng, align 8, !dbg !6755
  %cleanup = getelementptr inbounds %struct.hwrng, ptr %3, i32 0, i32 2, !dbg !6757
  %4 = load ptr, ptr %cleanup, align 8, !dbg !6757
  %tobool = icmp ne ptr %4, null, !dbg !6755
  br i1 %tobool, label %if.then, label %if.end, !dbg !6758

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %rng, align 8, !dbg !6759
  %cleanup1 = getelementptr inbounds %struct.hwrng, ptr %5, i32 0, i32 2, !dbg !6760
  %6 = load ptr, ptr %cleanup1, align 8, !dbg !6760
  %7 = load ptr, ptr %rng, align 8, !dbg !6761
  call void %6(ptr noundef %7) #19, !dbg !6759
  br label %if.end, !dbg !6759

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %rng, align 8, !dbg !6762
  %cleanup_done = getelementptr inbounds %struct.hwrng, ptr %8, i32 0, i32 10, !dbg !6763
  call void @complete(ptr noundef %cleanup_done) #19, !dbg !6764
  call void @llvm.lifetime.end.p0(i64 8, ptr %rng) #20, !dbg !6765
  ret void, !dbg !6765
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #5 align 16 !dbg !6766 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6768, metadata !DIExpression()), !dbg !6769
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6770
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #19, !dbg !6771
  ret i1 %call, !dbg !6772
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !6773 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6775, metadata !DIExpression()), !dbg !6777
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6776, metadata !DIExpression()), !dbg !6778
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6779
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6780
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #19, !dbg !6781
  ret i1 %call, !dbg !6782
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !6783 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6785, metadata !DIExpression()), !dbg !6789
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6786, metadata !DIExpression()), !dbg !6790
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6787, metadata !DIExpression()), !dbg !6791
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #20, !dbg !6792
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6788, metadata !DIExpression()), !dbg !6793
  %0 = load i32, ptr %i.addr, align 4, !dbg !6794
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6795
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6796
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #19, !dbg !6797
  store i32 %call, ptr %old, align 4, !dbg !6793
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6798
  %tobool = icmp ne ptr %2, null, !dbg !6798
  br i1 %tobool, label %if.then, label %if.end, !dbg !6800

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6801
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6802
  store i32 %3, ptr %4, align 4, !dbg !6803
  br label %if.end, !dbg !6804

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6805
  %6 = load i32, ptr %i.addr, align 4, !dbg !6807
  %cmp = icmp eq i32 %5, %6, !dbg !6808
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !6809

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !6810

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !6812

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6814

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6814

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6812

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !6816

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !6818

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6818

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !6816, !srcloc !6820
  br label %do.cond7, !dbg !6816

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6816

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !6812

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6812

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !6821
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6821

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6822
  %cmp12 = icmp slt i32 %7, 0, !dbg !6822
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !6822

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !6822
  %9 = load i32, ptr %i.addr, align 4, !dbg !6822
  %sub = sub i32 %8, %9, !dbg !6822
  %cmp13 = icmp slt i32 %sub, 0, !dbg !6822
  br label %lor.end, !dbg !6822

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !6822
  %lnot14 = xor i1 %lnot, true, !dbg !6822
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !6822
  %conv = sext i32 %lnot.ext to i64, !dbg !6822
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6822
  %tobool15 = icmp ne i64 %expval, 0, !dbg !6822
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6824

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6825
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #19, !dbg !6826
  br label %if.end17, !dbg !6826

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !6827
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6827

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #20, !dbg !6828
  %12 = load i1, ptr %retval, align 1, !dbg !6828
  ret i1 %12, !dbg !6828
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6829 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6831, metadata !DIExpression()), !dbg !6833
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6832, metadata !DIExpression()), !dbg !6834
  br label %do.body, !dbg !6835

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6836

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6838
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #19, !dbg !6839
  %1 = load i32, ptr %i.addr, align 4, !dbg !6840
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6841
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #19, !dbg !6842
  ret i32 %call, !dbg !6843
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6844 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6846, metadata !DIExpression()), !dbg !6848
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6847, metadata !DIExpression()), !dbg !6849
  %0 = load i32, ptr %i.addr, align 4, !dbg !6850
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6851
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #19, !dbg !6852
  ret i32 %call, !dbg !6853
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6854 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6856, metadata !DIExpression()), !dbg !6860
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6857, metadata !DIExpression()), !dbg !6861
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #20, !dbg !6862
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6858, metadata !DIExpression()), !dbg !6862
  %0 = load i32, ptr %i.addr, align 4, !dbg !6862
  %sub = sub i32 0, %0, !dbg !6862
  store i32 %sub, ptr %__ret, align 4, !dbg !6862
  %1 = load i32, ptr %__ret, align 4, !dbg !6862
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6862
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6862
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #20, !dbg !6862, !srcloc !6863
  store i32 %3, ptr %__ret, align 4, !dbg !6862
  %4 = load i32, ptr %__ret, align 4, !dbg !6862
  store i32 %4, ptr %tmp, align 4, !dbg !6862
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #20, !dbg !6864
  %5 = load i32, ptr %tmp, align 4, !dbg !6862
  ret i32 %5, !dbg !6865
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !6866 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6868, metadata !DIExpression()), !dbg !6869
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6870
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #19, !dbg !6872
  br i1 %call, label %if.end, label %if.then, !dbg !6873

if.then:                                          ; preds = %entry
  br label %return, !dbg !6874

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6875
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6876
  %2 = load ptr, ptr %prev, align 8, !dbg !6876
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6877
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6878
  %4 = load ptr, ptr %next, align 8, !dbg !6878
  call void @__list_del(ptr noundef %2, ptr noundef %4) #19, !dbg !6879
  br label %return, !dbg !6880

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6880
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !6881 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6885, metadata !DIExpression()), !dbg !6886
  ret i1 true, !dbg !6887
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6888 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6890, metadata !DIExpression()), !dbg !6892
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6891, metadata !DIExpression()), !dbg !6893
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6894
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6895
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6896
  store ptr %0, ptr %prev1, align 8, !dbg !6897
  br label %do.body, !dbg !6898

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6899

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6901

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6899

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6903
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6903
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6903
  store volatile ptr %2, ptr %next4, align 8, !dbg !6903
  br label %do.end5, !dbg !6903

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6899

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6905
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_msecs_to_jiffies(i32 noundef %m) #5 align 16 !dbg !6906 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6908, metadata !DIExpression()), !dbg !6909
  %0 = load i32, ptr %m.addr, align 4, !dbg !6910
  %conv = zext i32 %0 to i64, !dbg !6910
  %add = add i64 %conv, 1, !dbg !6911
  %sub = sub i64 %add, 1, !dbg !6912
  %div = sdiv i64 %sub, 1, !dbg !6913
  ret i64 %div, !dbg !6914
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6915 dso_local i64 @__msecs_to_jiffies(i32 noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #15 align 16 !dbg !6916 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6920, metadata !DIExpression()), !dbg !6925
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6921, metadata !DIExpression()), !dbg !6926
  %0 = load i64, ptr %size.addr, align 8, !dbg !6927
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6928
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6929

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6930
  %tobool = icmp ne i64 %2, 0, !dbg !6930
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6931

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #20, !dbg !6932
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6922, metadata !DIExpression()), !dbg !6933
  %3 = load i64, ptr %size.addr, align 8, !dbg !6934
  %cmp = icmp ugt i64 %3, 8192, !dbg !6936
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6937

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6938
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6939
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #22, !dbg !6940
  store ptr %call, ptr %retval, align 8, !dbg !6941
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6941

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6942
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #19, !dbg !6942
  store i32 %call2, ptr %index, align 4, !dbg !6943
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6944
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6945
  %9 = ptrtoint ptr %8 to i64, !dbg !6945
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #19, !dbg !6946
  %idxprom = zext i32 %call3 to i64, !dbg !6947
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6947
  %10 = load i32, ptr %index, align 4, !dbg !6948
  %idxprom4 = zext i32 %10 to i64, !dbg !6947
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6947
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6947
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6949
  %13 = load i64, ptr %size.addr, align 8, !dbg !6950
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #24, !dbg !6951
  store ptr %call6, ptr %retval, align 8, !dbg !6952
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6952

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #20, !dbg !6953
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6954
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6955
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #22, !dbg !6956
  store ptr %call8, ptr %retval, align 8, !dbg !6957
  br label %return, !dbg !6957

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6958
  ret ptr %16, !dbg !6958
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @register_miscdev() #0 section ".init.text" align 16 !dbg !6959 {
entry:
  %call = call i32 @misc_register(ptr noundef @rng_miscdev) #19, !dbg !6960
  ret i32 %call, !dbg !6961
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6962 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !6963 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6967, metadata !DIExpression()), !dbg !6969
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6968, metadata !DIExpression()), !dbg !6970
  %0 = load i64, ptr %size.addr, align 8, !dbg !6971
  %tobool = icmp ne i64 %0, 0, !dbg !6971
  br i1 %tobool, label %if.end, label %if.then, !dbg !6973

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6974
  br label %return, !dbg !6974

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6975
  %cmp = icmp ule i64 %1, 8, !dbg !6977
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6978

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6979
  br label %return, !dbg !6979

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6980
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6982
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6983

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6984
  %cmp4 = icmp ule i64 %3, 96, !dbg !6985
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6986

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6987
  br label %return, !dbg !6987

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6988
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6990
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6991

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6992
  %cmp9 = icmp ule i64 %5, 192, !dbg !6993
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6994

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6995
  br label %return, !dbg !6995

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6996
  %cmp12 = icmp ule i64 %6, 8, !dbg !6998
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6999

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !7000
  br label %return, !dbg !7000

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !7001
  %cmp15 = icmp ule i64 %7, 16, !dbg !7003
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !7004

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !7005
  br label %return, !dbg !7005

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !7006
  %cmp18 = icmp ule i64 %8, 32, !dbg !7008
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7009

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !7010
  br label %return, !dbg !7010

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !7011
  %cmp21 = icmp ule i64 %9, 64, !dbg !7013
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7014

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !7015
  br label %return, !dbg !7015

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !7016
  %cmp24 = icmp ule i64 %10, 128, !dbg !7018
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !7019

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !7020
  br label %return, !dbg !7020

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7021
  %cmp27 = icmp ule i64 %11, 256, !dbg !7023
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7024

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7025
  br label %return, !dbg !7025

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7026
  %cmp30 = icmp ule i64 %12, 512, !dbg !7028
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7029

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7030
  br label %return, !dbg !7030

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7031
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7033
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7034

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7035
  br label %return, !dbg !7035

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7036
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7038
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7039

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7040
  br label %return, !dbg !7040

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7041
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7043
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7044

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7045
  br label %return, !dbg !7045

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7046
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7048
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7049

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7050
  br label %return, !dbg !7050

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7051
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7053
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7054

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7055
  br label %return, !dbg !7055

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7056
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7058
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7059

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7060
  br label %return, !dbg !7060

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7061
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7063
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7064

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7065
  br label %return, !dbg !7065

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7066
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7068
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7069

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7070
  br label %return, !dbg !7070

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7071
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7073
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7074

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7075
  br label %return, !dbg !7075

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7076
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7078
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7079

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7080
  br label %return, !dbg !7080

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7081
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7083
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7084

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7085
  br label %return, !dbg !7085

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7086
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7088
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7089

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7090
  br label %return, !dbg !7090

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7091, !range !4626, !noundef !531
  %tobool69 = trunc i8 %25 to i1, !dbg !7091
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7093

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7094

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_263() #25, !dbg !7095, !srcloc !7098
  unreachable, !dbg !7095

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7099

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7100

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7101

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7103

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7101

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.18, i32 480, i32 0, i64 12) #20, !dbg !7105, !srcloc !7107
  br label %do.end75, !dbg !7105

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7101

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7108
  br label %return, !dbg !7108

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7109
  ret i32 %26, !dbg !7109
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7110 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #17

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !7116 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7120, metadata !DIExpression()), !dbg !7122
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7121, metadata !DIExpression()), !dbg !7123
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7124
  %and = and i32 %0, 17, !dbg !7124
  %cmp = icmp eq i32 %and, 0, !dbg !7124
  %lnot = xor i1 %cmp, true, !dbg !7124
  %lnot1 = xor i1 %lnot, true, !dbg !7124
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7124
  %conv = sext i32 %lnot.ext to i64, !dbg !7124
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7124
  %tobool = icmp ne i64 %expval, 0, !dbg !7124
  br i1 %tobool, label %if.then, label %if.end, !dbg !7126

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7127
  br label %return, !dbg !7127

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7128
  %and2 = and i32 %1, 1, !dbg !7130
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7130
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7131

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7132
  br label %return, !dbg !7132

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7133
  br label %return, !dbg !7133

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7135
  ret i32 %2, !dbg !7135
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7136 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #16

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7137 dso_local void @__compiletime_assert_263() #18

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7138 dso_local i32 @misc_register(ptr noundef) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #19 = { noredzone }
attributes #20 = { nounwind }
attributes #21 = { cold noredzone }
attributes #22 = { noredzone allocsize(0) }
attributes #23 = { nounwind memory(none) }
attributes #24 = { noredzone allocsize(2) }
attributes #25 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513}
!llvm.ident = !{!4514}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_current_quality", scope: !2, file: !3, line: 48, type: !4032, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/char/hw_random/.core.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/char/hw_random/rng-core\22 -D KBUILD_BASENAME=\22core\22 -D KBUILD_MODNAME=\22rng_core\22 -D __KBUILD_MODNAME=kmod_rng_core -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/char/hw_random/core.ll drivers/char/hw_random/core.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !140, globals: !3952, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/char/hw_random/core.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e126aaa135589c384129c2e33baa6eda")
!4 = !{!5, !13, !18, !24, !29, !37, !43, !50, !57, !63, !69, !76, !84, !92, !101, !106, !111, !117, !122, !130}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !19, line: 54, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "USRQUOTA", value: 0)
!22 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!23 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !25, line: 65, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!28 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !30, line: 9, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!33 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!34 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!35 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!36 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
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
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 10, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!119 = !{!120, !121}
!120 = !DIEnumerator(name: "false", value: 0)
!121 = !DIEnumerator(name: "true", value: 1)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !123, line: 119, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!124 = !{!125, !126, !127, !128, !129}
!125 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!126 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!127 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!128 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!129 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !131, line: 364, baseType: !7, size: 32, elements: !132)
!131 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!132 = !{!133, !134, !135, !136, !137, !138, !139}
!133 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!134 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!135 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!136 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!137 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!138 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!139 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!140 = !{!141, !318, !3905, !214, !692, !296, !282, !1965, !85, !3890, !3936, !3937, !3938, !3940, !956, !1297, !3941, !3943, !594, !3946, !3948, !3949, !3951}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !143)
!143 = !{!144, !145, !152, !157, !3581, !3607, !3608, !3609, !3610, !3614, !3617, !3618, !3619, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3686, !3690, !3708, !3725, !3726, !3727, !3728, !3737, !3760, !3761, !3764, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3778, !3779, !3865, !3873, !3874, !3875, !3877, !3881, !3882, !3886, !3887, !3888, !3889, !3891, !3892, !3893, !3900, !3901, !3902, !3904}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !142, file: !6, line: 403, baseType: !5, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !142, file: !6, line: 406, baseType: !146, size: 128, offset: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !147, line: 190, size: 128, elements: !148)
!147 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!148 = !{!149, !151}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !146, file: !147, line: 191, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !146, file: !147, line: 191, baseType: !150, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !142, file: !6, line: 409, baseType: !153, size: 448, offset: 192)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 448, elements: !155)
!154 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!155 = !{!156}
!156 = !DISubrange(count: 56)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !142, file: !6, line: 417, baseType: !158, size: 768, offset: 640)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !159)
!159 = !{!160, !3575, !3576, !3577, !3580}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !158, file: !6, line: 46, baseType: !161, size: 512)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !162, line: 64, size: 512, elements: !163)
!162 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!163 = !{!164, !167, !168, !170, !259, !3462, !3565, !3570, !3571, !3572, !3573, !3574}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !161, file: !162, line: 65, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !161, file: !162, line: 66, baseType: !146, size: 128, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !161, file: !162, line: 67, baseType: !169, size: 64, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !161, file: !162, line: 68, baseType: !171, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !162, line: 168, size: 768, elements: !173)
!173 = !{!174, !175, !218, !219}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !172, file: !162, line: 169, baseType: !146, size: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !172, file: !162, line: 170, baseType: !176, size: 32, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !177, line: 29, baseType: !178)
!177 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !177, line: 17, size: 32, elements: !179)
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, scope: !178, file: !177, line: 18, baseType: !181, size: 32)
!181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !178, file: !177, line: 18, size: 32, elements: !182)
!182 = !{!183}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !181, file: !177, line: 19, baseType: !184, size: 32)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !185, line: 14, size: 32, elements: !186)
!185 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !184, file: !185, line: 15, baseType: !188, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !189, line: 44, baseType: !190)
!189 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !189, line: 14, size: 32, elements: !191)
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, scope: !190, file: !189, line: 15, baseType: !193, size: 32)
!193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !190, file: !189, line: 15, size: 32, elements: !194)
!194 = !{!195, !200, !210}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !193, file: !189, line: 16, baseType: !196, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !147, line: 174, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !147, line: 172, size: 32, elements: !198)
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !197, file: !147, line: 173, baseType: !85, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, scope: !193, file: !189, line: 24, baseType: !201, size: 16)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !193, file: !189, line: 24, size: 16, elements: !202)
!202 = !{!203, !209}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !201, file: !189, line: 25, baseType: !204, size: 8)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !205, line: 17, baseType: !206)
!205 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !207, line: 21, baseType: !208)
!207 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!208 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !201, file: !189, line: 26, baseType: !204, size: 8, offset: 8)
!210 = !DIDerivedType(tag: DW_TAG_member, scope: !193, file: !189, line: 28, baseType: !211, size: 32)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !193, file: !189, line: 28, size: 32, elements: !212)
!212 = !{!213, !217}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !211, file: !189, line: 29, baseType: !214, size: 16)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !205, line: 19, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !207, line: 24, baseType: !216)
!216 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !211, file: !189, line: 30, baseType: !214, size: 16, offset: 16)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !172, file: !162, line: 171, baseType: !161, size: 512, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !172, file: !162, line: 172, baseType: !220, size: 64, offset: 704)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !162, line: 133, size: 192, elements: !223)
!223 = !{!224, !231, !236}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !222, file: !162, line: 134, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!85, !229}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !222, file: !162, line: 135, baseType: !232, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!165, !229}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !222, file: !162, line: 136, baseType: !237, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!85, !229, !241}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !162, line: 125, size: 20736, elements: !243)
!243 = !{!244, !249, !253, !254, !258}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !242, file: !162, line: 126, baseType: !245, size: 192)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 192, elements: !247)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!247 = !{!248}
!248 = !DISubrange(count: 3)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !242, file: !162, line: 127, baseType: !250, size: 4096, offset: 192)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 4096, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !242, file: !162, line: 128, baseType: !85, size: 32, offset: 4288)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !242, file: !162, line: 129, baseType: !255, size: 16384, offset: 4320)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 16384, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 2048)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !242, file: !162, line: 130, baseType: !85, size: 32, offset: 20704)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !161, file: !162, line: 69, baseType: !260, size: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !162, line: 116, size: 384, elements: !263)
!263 = !{!264, !268, !297, !3424, !3452, !3456}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !262, file: !162, line: 117, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !169}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !262, file: !162, line: 118, baseType: !269, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !272, line: 254, size: 128, elements: !273)
!272 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!273 = !{!274, !289}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !271, file: !272, line: 255, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!278, !169, !283, !246}
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !147, line: 66, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !280, line: 73, baseType: !281)
!280 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !280, line: 15, baseType: !282)
!282 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !272, line: 30, size: 128, elements: !285)
!285 = !{!286, !287}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !284, file: !272, line: 31, baseType: !165, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !284, file: !272, line: 32, baseType: !288, size: 16, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !147, line: 24, baseType: !216)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !271, file: !272, line: 256, baseType: !290, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!278, !169, !283, !165, !293}
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !147, line: 61, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !280, line: 72, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !280, line: 16, baseType: !296)
!296 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !262, file: !162, line: 119, baseType: !298, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !272, line: 84, size: 320, elements: !302)
!302 = !{!303, !304, !308, !3420, !3422}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !301, file: !272, line: 85, baseType: !165, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !301, file: !272, line: 86, baseType: !305, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!288, !169, !283, !85}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !301, file: !272, line: 88, baseType: !309, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!288, !169, !312, !85}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !272, line: 175, size: 512, elements: !314)
!314 = !{!315, !316, !317, !319, !3411, !3415, !3416}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !313, file: !272, line: 176, baseType: !284, size: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !313, file: !272, line: 177, baseType: !293, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !313, file: !272, line: 178, baseType: !318, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !313, file: !272, line: 179, baseType: !320, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !325)
!325 = !{!326, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3405, !3406, !3407, !3408, !3409, !3410}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !324, file: !14, line: 473, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !329)
!329 = !{!330, !331, !332, !340, !341, !348, !349, !352, !353, !3183, !3184, !3185, !3186, !3187, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3227, !3230, !3231, !3232, !3241, !3242, !3243, !3244}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !328, file: !14, line: 642, baseType: !288, size: 16)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !328, file: !14, line: 643, baseType: !216, size: 16, offset: 16)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !328, file: !14, line: 644, baseType: !333, size: 32, offset: 32)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !334, line: 23, baseType: !335)
!334 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !334, line: 21, size: 32, elements: !336)
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !335, file: !334, line: 22, baseType: !338, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !147, line: 37, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !280, line: 49, baseType: !7)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !328, file: !14, line: 645, baseType: !146, size: 128, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !328, file: !14, line: 646, baseType: !342, size: 32, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !334, line: 28, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !334, line: 26, size: 32, elements: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !343, file: !334, line: 27, baseType: !346, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !147, line: 38, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !280, line: 50, baseType: !7)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !328, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !328, file: !14, line: 650, baseType: !350, size: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !328, file: !14, line: 651, baseType: !350, size: 64, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !328, file: !14, line: 654, baseType: !354, size: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !357)
!357 = !{!358, !3008, !3021, !3025, !3029, !3033, !3037, !3041, !3045, !3049, !3053, !3054, !3058, !3062, !3099, !3128, !3132, !3138, !3142, !3146, !3150, !3154, !3158, !3164, !3168}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !356, file: !14, line: 1967, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!362, !327, !362, !7}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !364, line: 82, size: 1536, elements: !365)
!364 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!365 = !{!366, !367, !377, !385, !386, !406, !407, !411, !424, !2991, !2992, !2993, !2994, !3000, !3001, !3002}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !363, file: !364, line: 84, baseType: !7, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !363, file: !364, line: 85, baseType: !368, size: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !369, line: 275, baseType: !370)
!369 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !369, line: 275, size: 32, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !370, file: !369, line: 275, baseType: !373, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !369, line: 69, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !369, line: 64, size: 32, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !374, file: !369, line: 65, baseType: !7, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !363, file: !364, line: 86, baseType: !378, size: 128, offset: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !379, line: 38, size: 128, elements: !380)
!379 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!380 = !{!381, !383}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !378, file: !379, line: 39, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !378, file: !379, line: 39, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !363, file: !364, line: 87, baseType: !362, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !363, file: !364, line: 88, baseType: !387, size: 128, offset: 256)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !364, line: 49, size: 128, elements: !388)
!388 = !{!389, !403}
!389 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !364, line: 50, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !364, line: 50, size: 64, elements: !391)
!391 = !{!392, !399}
!392 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !364, line: 51, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !390, file: !364, line: 51, size: 64, elements: !394)
!394 = !{!395, !398}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !393, file: !364, line: 52, baseType: !396, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !205, line: 21, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !207, line: 27, baseType: !7)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !393, file: !364, line: 52, baseType: !396, size: 32, offset: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !390, file: !364, line: 54, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !205, line: 23, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !207, line: 31, baseType: !402)
!402 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !387, file: !364, line: 56, baseType: !404, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !363, file: !364, line: 89, baseType: !327, size: 64, offset: 384)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !363, file: !364, line: 91, baseType: !408, size: 256, offset: 448)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 256, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !363, file: !364, line: 94, baseType: !412, size: 64, offset: 704)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !413, line: 25, size: 64, elements: !414)
!413 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !413, line: 26, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !413, line: 26, size: 64, elements: !417)
!417 = !{!418, !419}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !416, file: !413, line: 28, baseType: !401, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !413, line: 30, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !416, file: !413, line: 30, size: 64, elements: !421)
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !420, file: !413, line: 31, baseType: !176, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !420, file: !413, line: 32, baseType: !85, size: 32, offset: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !363, file: !364, line: 95, baseType: !425, size: 64, offset: 768)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !364, line: 128, size: 1024, align: 512, elements: !428)
!428 = !{!429, !433, !434, !441, !447, !451, !455, !459, !460, !464, !468, !2981, !2985}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !427, file: !364, line: 129, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!85, !362, !7}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !427, file: !364, line: 130, baseType: !430, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !427, file: !364, line: 131, baseType: !435, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!85, !438, !440}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !427, file: !364, line: 132, baseType: !442, size: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!85, !438, !7, !165, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !427, file: !364, line: 134, baseType: !448, size: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!85, !438}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !427, file: !364, line: 135, baseType: !452, size: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!85, !362}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !427, file: !364, line: 136, baseType: !456, size: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !362}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !427, file: !364, line: 137, baseType: !456, size: 64, offset: 448)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !427, file: !364, line: 138, baseType: !461, size: 64, offset: 512)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !362, !327}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !427, file: !364, line: 139, baseType: !465, size: 64, offset: 576)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!246, !362, !246, !85}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !427, file: !364, line: 140, baseType: !469, size: 64, offset: 640)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!472, !2980}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !474, line: 70, size: 256, elements: !475)
!474 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!475 = !{!476, !477, !2976, !2977}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !473, file: !474, line: 71, baseType: !362, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !473, file: !474, line: 72, baseType: !478, size: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !480)
!480 = !{!481, !482, !485, !486, !487, !491, !540, !702, !742, !832, !836, !837, !838, !839, !840, !849, !850, !851, !852, !857, !861, !862, !865, !868, !871, !874, !875, !876, !917, !2907, !2908, !2909, !2910, !2911, !2912, !2915, !2917, !2924, !2925, !2926, !2927, !2928, !2943, !2944, !2945, !2946, !2947, !2950, !2951, !2952, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !479, file: !14, line: 1191, baseType: !146, size: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !479, file: !14, line: 1192, baseType: !483, size: 32, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !147, line: 21, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !147, line: 18, baseType: !396)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !479, file: !14, line: 1193, baseType: !208, size: 8, offset: 160)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !479, file: !14, line: 1194, baseType: !296, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !479, file: !14, line: 1195, baseType: !488, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !147, line: 52, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !280, line: 88, baseType: !490)
!490 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !479, file: !14, line: 1196, baseType: !492, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !494)
!494 = !{!495, !496, !497, !504, !508, !512, !516, !517, !518, !528, !532, !533, !534, !536, !537, !538, !539}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !493, file: !14, line: 2367, baseType: !165, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !493, file: !14, line: 2368, baseType: !85, size: 32, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !493, file: !14, line: 2376, baseType: !498, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!85, !501}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !503, line: 32, flags: DIFlagFwdDecl)
!503 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!504 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !493, file: !14, line: 2377, baseType: !505, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!507 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !493, file: !14, line: 2378, baseType: !509, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!362, !492, !85, !165, !318}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !493, file: !14, line: 2380, baseType: !513, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !478}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !493, file: !14, line: 2381, baseType: !141, size: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !493, file: !14, line: 2382, baseType: !492, size: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !493, file: !14, line: 2383, baseType: !519, size: 64, offset: 512)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !147, line: 194, size: 64, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !519, file: !147, line: 195, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !147, line: 198, size: 128, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !523, file: !147, line: 199, baseType: !522, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !523, file: !147, line: 199, baseType: !527, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !493, file: !14, line: 2385, baseType: !529, offset: 576)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !530, line: 206, elements: !531)
!530 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!531 = !{}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !493, file: !14, line: 2386, baseType: !529, offset: 576)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !493, file: !14, line: 2387, baseType: !529, offset: 576)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !493, file: !14, line: 2388, baseType: !535, offset: 576)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, elements: !247)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !493, file: !14, line: 2390, baseType: !529, offset: 576)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !493, file: !14, line: 2391, baseType: !529, offset: 576)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !493, file: !14, line: 2392, baseType: !529, offset: 576)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !493, file: !14, line: 2393, baseType: !529, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !479, file: !14, line: 1197, baseType: !541, size: 64, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !543)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !544)
!544 = !{!545, !549, !553, !554, !558, !564, !568, !569, !570, !574, !578, !582, !583, !584, !590, !595, !596, !603, !604, !605, !606, !610, !614, !683, !700, !701}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !543, file: !14, line: 2058, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!327, !478}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !543, file: !14, line: 2059, baseType: !550, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !327}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !543, file: !14, line: 2060, baseType: !550, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !543, file: !14, line: 2062, baseType: !555, size: 64, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !327, !85}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !543, file: !14, line: 2063, baseType: !559, size: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!85, !327, !562}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !543, file: !14, line: 2064, baseType: !565, size: 64, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!85, !327}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !543, file: !14, line: 2065, baseType: !550, size: 64, offset: 384)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !543, file: !14, line: 2066, baseType: !513, size: 64, offset: 448)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !543, file: !14, line: 2067, baseType: !571, size: 64, offset: 512)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!85, !478, !85}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !543, file: !14, line: 2068, baseType: !575, size: 64, offset: 576)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!85, !478, !13}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !543, file: !14, line: 2069, baseType: !579, size: 64, offset: 640)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!85, !478}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !543, file: !14, line: 2070, baseType: !575, size: 64, offset: 704)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !543, file: !14, line: 2071, baseType: !579, size: 64, offset: 768)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !543, file: !14, line: 2072, baseType: !585, size: 64, offset: 832)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!85, !362, !588}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !543, file: !14, line: 2073, baseType: !591, size: 64, offset: 896)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!85, !478, !594, !246}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !543, file: !14, line: 2074, baseType: !513, size: 64, offset: 960)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !543, file: !14, line: 2076, baseType: !597, size: 64, offset: 1024)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!85, !600, !362}
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !602, line: 66, flags: DIFlagFwdDecl)
!602 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!603 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !543, file: !14, line: 2077, baseType: !597, size: 64, offset: 1088)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !543, file: !14, line: 2078, baseType: !597, size: 64, offset: 1152)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !543, file: !14, line: 2079, baseType: !597, size: 64, offset: 1216)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !543, file: !14, line: 2081, baseType: !607, size: 64, offset: 1280)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!278, !478, !85, !246, !293, !488}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !543, file: !14, line: 2082, baseType: !611, size: 64, offset: 1344)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!278, !478, !85, !165, !293, !488}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !543, file: !14, line: 2083, baseType: !615, size: 64, offset: 1408)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!618, !327}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !621)
!621 = !{!622, !623, !624, !625, !626, !647, !648, !649, !650, !666, !667, !668}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !620, file: !19, line: 297, baseType: !523, size: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !620, file: !19, line: 298, baseType: !146, size: 128, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !620, file: !19, line: 299, baseType: !146, size: 128, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !620, file: !19, line: 300, baseType: !146, size: 128, offset: 384)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !620, file: !19, line: 301, baseType: !627, size: 256, offset: 512)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !628, line: 66, size: 256, elements: !629)
!628 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!629 = !{!630, !639, !641, !646}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !627, file: !628, line: 67, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !632, line: 13, baseType: !633)
!632 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !147, line: 181, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !147, line: 179, size: 64, elements: !635)
!635 = !{!636}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !634, file: !147, line: 180, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !205, line: 22, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !207, line: 30, baseType: !490)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !627, file: !628, line: 68, baseType: !640, size: 32, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !185, line: 23, baseType: !184)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !627, file: !628, line: 70, baseType: !642, size: 32, offset: 96)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !643, line: 15, size: 32, elements: !644)
!643 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!644 = !{!645}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !642, file: !643, line: 20, baseType: !196, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !627, file: !628, line: 72, baseType: !146, size: 128, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !620, file: !19, line: 302, baseType: !176, size: 32, offset: 768)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !620, file: !19, line: 303, baseType: !196, size: 32, offset: 800)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !620, file: !19, line: 304, baseType: !478, size: 64, offset: 832)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !620, file: !19, line: 305, baseType: !651, size: 64, offset: 896)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !652)
!652 = !{!653, !665}
!653 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !19, line: 69, baseType: !654, size: 32)
!654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !19, line: 69, size: 32, elements: !655)
!655 = !{!656, !657, !658}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !654, file: !19, line: 70, baseType: !333, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !654, file: !19, line: 71, baseType: !342, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !654, file: !19, line: 72, baseType: !659, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !660, line: 24, baseType: !661)
!660 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !660, line: 22, size: 32, elements: !662)
!662 = !{!663}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !661, file: !660, line: 23, baseType: !664, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !660, line: 20, baseType: !339)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !651, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !620, file: !19, line: 306, baseType: !488, size: 64, offset: 960)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !620, file: !19, line: 307, baseType: !296, size: 64, offset: 1024)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !620, file: !19, line: 308, baseType: !669, size: 576, offset: 1088)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !670)
!670 = !{!671, !673, !674, !675, !676, !677, !678, !679, !682}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !669, file: !19, line: 206, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !490)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !669, file: !19, line: 207, baseType: !672, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !669, file: !19, line: 208, baseType: !672, size: 64, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !669, file: !19, line: 209, baseType: !672, size: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !669, file: !19, line: 210, baseType: !672, size: 64, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !669, file: !19, line: 211, baseType: !672, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !669, file: !19, line: 212, baseType: !672, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !669, file: !19, line: 213, baseType: !680, size: 64, offset: 448)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !681, line: 8, baseType: !638)
!681 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!682 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !669, file: !19, line: 214, baseType: !680, size: 64, offset: 512)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !543, file: !14, line: 2085, baseType: !684, size: 64, offset: 1472)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!282, !478, !687}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !689, line: 15, size: 256, elements: !690)
!689 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!690 = !{!691, !693, !694, !695, !696}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !688, file: !689, line: 16, baseType: !692, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !147, line: 154, baseType: !7)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !688, file: !689, line: 19, baseType: !85, size: 32, offset: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !688, file: !689, line: 26, baseType: !296, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !688, file: !689, line: 33, baseType: !296, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !688, file: !689, line: 36, baseType: !697, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !699, line: 33, flags: DIFlagFwdDecl)
!699 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!700 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !543, file: !14, line: 2087, baseType: !684, size: 64, offset: 1536)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !543, file: !14, line: 2089, baseType: !513, size: 64, offset: 1600)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !479, file: !14, line: 1198, baseType: !703, size: 64, offset: 448)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !706)
!706 = !{!707, !711, !715, !719, !720, !721, !722, !723, !728, !733, !737}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !705, file: !19, line: 325, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!85, !619}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !705, file: !19, line: 326, baseType: !712, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!619, !478, !85}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !705, file: !19, line: 327, baseType: !716, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{null, !619}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !705, file: !19, line: 328, baseType: !708, size: 64, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !705, file: !19, line: 329, baseType: !708, size: 64, offset: 256)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !705, file: !19, line: 330, baseType: !708, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !705, file: !19, line: 331, baseType: !571, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !705, file: !19, line: 334, baseType: !724, size: 64, offset: 448)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!727, !327}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !705, file: !19, line: 335, baseType: !729, size: 64, offset: 512)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!85, !327, !732}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !705, file: !19, line: 337, baseType: !734, size: 64, offset: 576)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!85, !327, !727}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !705, file: !19, line: 339, baseType: !738, size: 64, offset: 640)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!85, !478, !741}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !479, file: !14, line: 1199, baseType: !743, size: 64, offset: 512)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !745)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !746)
!746 = !{!747, !758, !759, !763, !764, !765, !780, !803, !807, !808, !831}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !745, file: !19, line: 431, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!85, !478, !85, !85, !751}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !754, line: 8, size: 128, elements: !755)
!754 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!755 = !{!756, !757}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !753, file: !754, line: 9, baseType: !472, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !753, file: !754, line: 10, baseType: !362, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !745, file: !19, line: 432, baseType: !571, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !745, file: !19, line: 433, baseType: !760, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!85, !478, !7}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !745, file: !19, line: 434, baseType: !760, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !745, file: !19, line: 435, baseType: !571, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !745, file: !19, line: 436, baseType: !766, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!85, !478, !85, !769}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !771)
!771 = !{!772, !773, !774, !775, !776, !777, !778, !779}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !770, file: !19, line: 418, baseType: !85, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !770, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !770, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !770, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !770, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !770, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !770, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !770, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !745, file: !19, line: 437, baseType: !781, size: 64, offset: 384)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!85, !478, !651, !784}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !786)
!786 = !{!787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !785, file: !19, line: 346, baseType: !85, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !785, file: !19, line: 347, baseType: !400, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !785, file: !19, line: 348, baseType: !400, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !785, file: !19, line: 349, baseType: !400, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !785, file: !19, line: 350, baseType: !400, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !785, file: !19, line: 351, baseType: !400, size: 64, offset: 320)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !785, file: !19, line: 352, baseType: !400, size: 64, offset: 384)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !785, file: !19, line: 353, baseType: !637, size: 64, offset: 448)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !785, file: !19, line: 355, baseType: !637, size: 64, offset: 512)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !785, file: !19, line: 356, baseType: !85, size: 32, offset: 576)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !785, file: !19, line: 357, baseType: !85, size: 32, offset: 608)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !785, file: !19, line: 358, baseType: !400, size: 64, offset: 640)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !785, file: !19, line: 359, baseType: !400, size: 64, offset: 704)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !785, file: !19, line: 360, baseType: !400, size: 64, offset: 768)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !785, file: !19, line: 361, baseType: !637, size: 64, offset: 832)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !785, file: !19, line: 362, baseType: !85, size: 32, offset: 896)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !745, file: !19, line: 438, baseType: !804, size: 64, offset: 448)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!85, !478, !741, !784}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !745, file: !19, line: 440, baseType: !781, size: 64, offset: 512)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !745, file: !19, line: 441, baseType: !809, size: 64, offset: 576)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!85, !478, !812}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !814)
!814 = !{!815, !816}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !813, file: !19, line: 412, baseType: !7, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !813, file: !19, line: 413, baseType: !817, size: 1344, offset: 64)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !818, size: 1344, elements: !247)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !819)
!819 = !{!820, !821, !822, !823, !824, !825, !826, !827, !828, !830}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !818, file: !19, line: 398, baseType: !7, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !818, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !818, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !818, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !818, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !818, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !818, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !818, file: !19, line: 406, baseType: !402, size: 64, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !818, file: !19, line: 407, baseType: !829, size: 64, offset: 320)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !147, line: 132, baseType: !400)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !818, file: !19, line: 408, baseType: !829, size: 64, offset: 384)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !745, file: !19, line: 442, baseType: !760, size: 64, offset: 640)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !479, file: !14, line: 1200, baseType: !833, size: 64, offset: 576)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !835)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !479, file: !14, line: 1201, baseType: !296, size: 64, offset: 640)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !479, file: !14, line: 1202, baseType: !296, size: 64, offset: 704)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !479, file: !14, line: 1203, baseType: !296, size: 64, offset: 768)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !479, file: !14, line: 1204, baseType: !362, size: 64, offset: 832)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !479, file: !14, line: 1205, baseType: !841, size: 320, offset: 896)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !842, line: 48, size: 320, elements: !843)
!842 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!843 = !{!844, !845, !846, !847, !848}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !841, file: !842, line: 49, baseType: !631, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !841, file: !842, line: 55, baseType: !631, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !841, file: !842, line: 57, baseType: !642, size: 32, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !841, file: !842, line: 59, baseType: !640, size: 32, offset: 160)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !841, file: !842, line: 60, baseType: !146, size: 128, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !479, file: !14, line: 1206, baseType: !85, size: 32, offset: 1216)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !479, file: !14, line: 1207, baseType: !196, size: 32, offset: 1248)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !479, file: !14, line: 1209, baseType: !318, size: 64, offset: 1280)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !479, file: !14, line: 1211, baseType: !853, size: 64, offset: 1344)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !856)
!856 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !479, file: !14, line: 1223, baseType: !858, size: 64, offset: 1408)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !379, line: 34, size: 64, elements: !859)
!859 = !{!860}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !858, file: !379, line: 35, baseType: !382, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !479, file: !14, line: 1224, baseType: !146, size: 128, offset: 1472)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !479, file: !14, line: 1225, baseType: !863, size: 64, offset: 1600)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !479, file: !14, line: 1226, baseType: !866, size: 64, offset: 1664)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !479, file: !14, line: 1227, baseType: !869, size: 64, offset: 1728)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !479, file: !14, line: 1228, baseType: !872, size: 64, offset: 1792)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !479, file: !14, line: 1229, baseType: !523, size: 128, offset: 1856)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !479, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !479, file: !14, line: 1231, baseType: !877, size: 2496, offset: 2048)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !878)
!878 = !{!879, !880, !881, !883, !915}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !877, file: !19, line: 522, baseType: !7, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !877, file: !19, line: 523, baseType: !841, size: 320, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !877, file: !19, line: 524, baseType: !882, size: 192, offset: 384)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 192, elements: !247)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !877, file: !19, line: 525, baseType: !884, size: 1728, offset: 576)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !885, size: 1728, elements: !247)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !886)
!886 = !{!887, !907, !908, !909, !910, !911, !912, !913, !914}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !885, file: !19, line: 223, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !890)
!890 = !{!891, !892, !905, !906}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !889, file: !19, line: 446, baseType: !85, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !889, file: !19, line: 447, baseType: !893, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !895)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !896)
!896 = !{!897, !898, !899, !900, !901, !902, !903, !904}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !895, file: !19, line: 313, baseType: !571, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !895, file: !19, line: 314, baseType: !571, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !895, file: !19, line: 315, baseType: !571, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !895, file: !19, line: 316, baseType: !571, size: 64, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !895, file: !19, line: 317, baseType: !708, size: 64, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !895, file: !19, line: 318, baseType: !708, size: 64, offset: 320)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !895, file: !19, line: 319, baseType: !708, size: 64, offset: 384)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !895, file: !19, line: 320, baseType: !738, size: 64, offset: 448)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !889, file: !19, line: 448, baseType: !141, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !889, file: !19, line: 449, baseType: !888, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !885, file: !19, line: 224, baseType: !85, size: 32, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !885, file: !19, line: 226, baseType: !146, size: 128, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !885, file: !19, line: 227, baseType: !296, size: 64, offset: 256)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !885, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !885, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !885, file: !19, line: 230, baseType: !672, size: 64, offset: 384)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !885, file: !19, line: 231, baseType: !672, size: 64, offset: 448)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !885, file: !19, line: 232, baseType: !318, size: 64, offset: 512)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !877, file: !19, line: 526, baseType: !916, size: 192, offset: 2304)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !893, size: 192, elements: !247)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !479, file: !14, line: 1233, baseType: !918, size: 2368, offset: 4544)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !919)
!919 = !{!920, !921, !922}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !918, file: !14, line: 1185, baseType: !216, size: 16)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !918, file: !14, line: 1186, baseType: !216, size: 16, offset: 16)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !918, file: !14, line: 1187, baseType: !923, size: 2304, offset: 64)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !924, size: 2304, elements: !247)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !925, line: 12, size: 768, elements: !926)
!925 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!926 = !{!927, !949, !951, !2905, !2906}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !924, file: !925, line: 13, baseType: !928, size: 384)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !929, line: 17, size: 384, elements: !930)
!929 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!930 = !{!931, !932, !933, !940}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !928, file: !929, line: 18, baseType: !85, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !928, file: !929, line: 19, baseType: !85, size: 32, offset: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !928, file: !929, line: 20, baseType: !934, size: 192, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !935, line: 41, baseType: !936)
!935 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !935, line: 37, size: 192, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !936, file: !935, line: 38, baseType: !176, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !936, file: !935, line: 39, baseType: !146, size: 128, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !928, file: !929, line: 22, baseType: !941, size: 128, align: 64, offset: 256)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !147, line: 232, size: 128, align: 64, elements: !942)
!942 = !{!943, !945}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !941, file: !147, line: 233, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !941, file: !147, line: 234, baseType: !946, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{null, !944}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !924, file: !925, line: 14, baseType: !950, size: 64, offset: 384)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !924, file: !925, line: 15, baseType: !952, size: 64, offset: 448)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !953, line: 16, size: 64, elements: !954)
!953 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!954 = !{!955}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !952, file: !953, line: 17, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !602, line: 746, size: 58368, elements: !958)
!958 = !{!959, !967, !968, !969, !974, !975, !976, !977, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1055, !1066, !1161, !1165, !1168, !1199, !1200, !1201, !1202, !1213, !1215, !1216, !1217, !1218, !1219, !1220, !1231, !1232, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1249, !1250, !1257, !1258, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !2006, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2021, !2022, !2023, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2065, !2071, !2072, !2073, !2074, !2075, !2079, !2082, !2089, !2094, !2097, !2100, !2103, !2106, !2246, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2286, !2287, !2288, !2297, !2305, !2306, !2307, !2308, !2309, !2314, !2315, !2316, !2319, !2320, !2323, !2326, !2329, !2337, !2340, !2341, !2427, !2428, !2429, !2430, !2431, !2437, !2438, !2439, !2440, !2443, !2444, !2447, !2450, !2451, !2454, !2455, !2456, !2459, !2460, !2461, !2462, !2463, !2464, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2496, !2497, !2563, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2575, !2647, !2649, !2650, !2651, !2652, !2653, !2665, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2682, !2683, !2684}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !957, file: !602, line: 752, baseType: !960, size: 192)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !961, line: 56, size: 192, elements: !962)
!961 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!962 = !{!963, !964, !965, !966}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !960, file: !961, line: 57, baseType: !296, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !960, file: !961, line: 58, baseType: !296, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !960, file: !961, line: 59, baseType: !396, size: 32, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !960, file: !961, line: 61, baseType: !396, size: 32, offset: 160)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !957, file: !602, line: 754, baseType: !7, size: 32, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !957, file: !602, line: 767, baseType: !318, size: 64, offset: 256)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !957, file: !602, line: 768, baseType: !970, size: 32, offset: 320)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !123, line: 113, baseType: !971)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !123, line: 111, size: 32, elements: !972)
!972 = !{!973}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !971, file: !123, line: 112, baseType: !196, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !957, file: !602, line: 770, baseType: !7, size: 32, offset: 352)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !957, file: !602, line: 771, baseType: !7, size: 32, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !957, file: !602, line: 774, baseType: !85, size: 32, offset: 416)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !957, file: !602, line: 775, baseType: !978, size: 128, offset: 448)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !979, line: 58, size: 128, elements: !980)
!979 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!980 = !{!981, !987, !992, !993}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !978, file: !979, line: 59, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !983, line: 60, size: 64, elements: !984)
!983 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!984 = !{!985}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !982, file: !983, line: 61, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !979, line: 60, baseType: !988, size: 32, offset: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !978, file: !979, line: 60, size: 32, elements: !989)
!989 = !{!990, !991}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !988, file: !979, line: 61, baseType: !7, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !988, file: !979, line: 62, baseType: !196, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !978, file: !979, line: 65, baseType: !214, size: 16, offset: 96)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !978, file: !979, line: 65, baseType: !214, size: 16, offset: 112)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !957, file: !602, line: 776, baseType: !7, size: 32, offset: 576)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !957, file: !602, line: 777, baseType: !296, size: 64, offset: 640)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !957, file: !602, line: 778, baseType: !956, size: 64, offset: 704)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !957, file: !602, line: 787, baseType: !85, size: 32, offset: 768)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !957, file: !602, line: 788, baseType: !85, size: 32, offset: 800)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !957, file: !602, line: 790, baseType: !85, size: 32, offset: 832)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !957, file: !602, line: 792, baseType: !85, size: 32, offset: 864)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !957, file: !602, line: 793, baseType: !85, size: 32, offset: 896)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !957, file: !602, line: 794, baseType: !85, size: 32, offset: 928)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !957, file: !602, line: 795, baseType: !7, size: 32, offset: 960)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !957, file: !602, line: 797, baseType: !1005, size: 2048, offset: 1024)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !602, line: 551, size: 2048, elements: !1006)
!1006 = !{!1007, !1012, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1034, !1037, !1038, !1039}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1005, file: !602, line: 553, baseType: !1008, size: 128)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !602, line: 411, size: 128, elements: !1009)
!1009 = !{!1010, !1011}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1008, file: !602, line: 412, baseType: !296, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1008, file: !602, line: 413, baseType: !396, size: 32, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1005, file: !602, line: 554, baseType: !1013, size: 192, align: 64, offset: 128)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1014, line: 5, size: 192, align: 64, elements: !1015)
!1014 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1015 = !{!1016, !1017, !1019}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1013, file: !1014, line: 6, baseType: !296, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1013, file: !1014, line: 7, baseType: !1018, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1013, file: !1014, line: 8, baseType: !1018, size: 64, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1005, file: !602, line: 555, baseType: !400, size: 64, offset: 320)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1005, file: !602, line: 556, baseType: !400, size: 64, offset: 384)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1005, file: !602, line: 558, baseType: !146, size: 128, offset: 448)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1005, file: !602, line: 559, baseType: !7, size: 32, offset: 576)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1005, file: !602, line: 561, baseType: !400, size: 64, offset: 640)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1005, file: !602, line: 562, baseType: !400, size: 64, offset: 704)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1005, file: !602, line: 563, baseType: !400, size: 64, offset: 768)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1005, file: !602, line: 564, baseType: !400, size: 64, offset: 832)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1005, file: !602, line: 565, baseType: !637, size: 64, offset: 896)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1005, file: !602, line: 566, baseType: !400, size: 64, offset: 960)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1005, file: !602, line: 568, baseType: !400, size: 64, offset: 1024)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1005, file: !602, line: 571, baseType: !85, size: 32, offset: 1088)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1005, file: !602, line: 572, baseType: !1033, size: 64, offset: 1152)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1005, file: !602, line: 574, baseType: !1035, size: 64, offset: 1216)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !602, line: 49, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1005, file: !602, line: 576, baseType: !1035, size: 64, offset: 1280)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1005, file: !602, line: 578, baseType: !296, size: 64, offset: 1344)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1005, file: !602, line: 588, baseType: !1040, size: 512, align: 512, offset: 1536)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !602, line: 497, size: 512, align: 512, elements: !1041)
!1041 = !{!1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1040, file: !602, line: 498, baseType: !400, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1040, file: !602, line: 499, baseType: !400, size: 64, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1040, file: !602, line: 500, baseType: !400, size: 64, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1040, file: !602, line: 501, baseType: !396, size: 32, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1040, file: !602, line: 502, baseType: !396, size: 32, offset: 224)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1040, file: !602, line: 503, baseType: !296, size: 64, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1040, file: !602, line: 504, baseType: !296, size: 64, offset: 320)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1040, file: !602, line: 505, baseType: !296, size: 64, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1040, file: !602, line: 506, baseType: !1051, size: 64, align: 64, offset: 448)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !602, line: 445, size: 64, align: 64, elements: !1052)
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1051, file: !602, line: 446, baseType: !7, size: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1051, file: !602, line: 447, baseType: !7, size: 32, offset: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !957, file: !602, line: 798, baseType: !1056, size: 384, offset: 3072)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !602, line: 592, size: 384, elements: !1057)
!1057 = !{!1058, !1059, !1060, !1061, !1062, !1063, !1064}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1056, file: !602, line: 593, baseType: !146, size: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1056, file: !602, line: 594, baseType: !296, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1056, file: !602, line: 595, baseType: !296, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1056, file: !602, line: 596, baseType: !7, size: 32, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1056, file: !602, line: 597, baseType: !216, size: 16, offset: 288)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1056, file: !602, line: 598, baseType: !216, size: 16, offset: 304)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1056, file: !602, line: 600, baseType: !1065, size: 64, offset: 320)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !957, file: !602, line: 799, baseType: !1067, size: 1792, offset: 3456)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !602, line: 610, size: 1792, elements: !1068)
!1068 = !{!1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1158, !1159}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1067, file: !602, line: 611, baseType: !1013, size: 192, align: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1067, file: !602, line: 618, baseType: !400, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1067, file: !602, line: 619, baseType: !400, size: 64, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1067, file: !602, line: 620, baseType: !400, size: 64, offset: 320)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1067, file: !602, line: 621, baseType: !400, size: 64, offset: 384)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1067, file: !602, line: 622, baseType: !400, size: 64, offset: 448)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1067, file: !602, line: 629, baseType: !637, size: 64, offset: 512)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1067, file: !602, line: 630, baseType: !400, size: 64, offset: 576)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1067, file: !602, line: 631, baseType: !7, size: 32, offset: 640)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1067, file: !602, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1067, file: !602, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1067, file: !602, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1067, file: !602, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1067, file: !602, line: 662, baseType: !1083, size: 512, offset: 704)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1084)
!1084 = !{!1085, !1093, !1094, !1099, !1154, !1155, !1156, !1157}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1083, file: !25, line: 119, baseType: !1086, size: 256)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1087, line: 9, size: 256, elements: !1088)
!1087 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1088 = !{!1089, !1090}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1086, file: !1087, line: 10, baseType: !1013, size: 192, align: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1086, file: !1087, line: 11, baseType: !1091, size: 64, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1092, line: 29, baseType: !637)
!1092 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1083, file: !25, line: 120, baseType: !1091, size: 64, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1083, file: !25, line: 121, baseType: !1095, size: 64, offset: 320)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!24, !1098}
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1083, file: !25, line: 122, baseType: !1100, size: 64, offset: 384)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1102)
!1102 = !{!1103, !1128, !1129, !1132, !1137, !1138, !1149, !1153}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1101, file: !25, line: 160, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1105, file: !25, line: 216, baseType: !640, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1105, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1105, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1105, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1105, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1105, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1105, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1105, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1105, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1105, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1105, file: !25, line: 227, baseType: !216, size: 16, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1105, file: !25, line: 228, baseType: !216, size: 16, offset: 208)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1105, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1105, file: !25, line: 235, baseType: !1091, size: 64, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1105, file: !25, line: 236, baseType: !1098, size: 64, offset: 320)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1105, file: !25, line: 237, baseType: !1091, size: 64, offset: 384)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1105, file: !25, line: 238, baseType: !1098, size: 64, offset: 448)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1105, file: !25, line: 239, baseType: !1125, size: 4096, align: 512, offset: 512)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1101, size: 4096, align: 512, elements: !1126)
!1126 = !{!1127}
!1127 = !DISubrange(count: 8)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1101, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1101, file: !25, line: 162, baseType: !1130, size: 32, offset: 96)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !147, line: 32, baseType: !1131)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !280, line: 96, baseType: !85)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1101, file: !25, line: 163, baseType: !1133, size: 32, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !369, line: 274, baseType: !1134)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !369, line: 274, size: 32, elements: !1135)
!1135 = !{!1136}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1134, file: !369, line: 274, baseType: !373, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1101, file: !25, line: 164, baseType: !1098, size: 64, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1101, file: !25, line: 165, baseType: !1139, size: 128, offset: 256)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1087, line: 14, size: 128, elements: !1140)
!1140 = !{!1141}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1139, file: !1087, line: 15, baseType: !1142, size: 128)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1014, line: 26, size: 128, elements: !1143)
!1143 = !{!1144, !1148}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1142, file: !1014, line: 27, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1014, line: 12, size: 64, elements: !1146)
!1146 = !{!1147}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1145, file: !1014, line: 13, baseType: !1018, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1142, file: !1014, line: 28, baseType: !1018, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1101, file: !25, line: 166, baseType: !1150, size: 64, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!1091}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1101, file: !25, line: 167, baseType: !1091, size: 64, offset: 448)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1083, file: !25, line: 123, baseType: !204, size: 8, offset: 448)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1083, file: !25, line: 124, baseType: !204, size: 8, offset: 456)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1083, file: !25, line: 125, baseType: !204, size: 8, offset: 464)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1083, file: !25, line: 126, baseType: !204, size: 8, offset: 472)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1067, file: !602, line: 671, baseType: !1083, size: 512, offset: 1216)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1067, file: !602, line: 679, baseType: !1160, size: 64, offset: 1728)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !957, file: !602, line: 800, baseType: !1162, size: 64, offset: 5248)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1164)
!1164 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !602, line: 800, flags: DIFlagFwdDecl)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !957, file: !602, line: 809, baseType: !1166, size: 64, offset: 5312)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !602, line: 70, flags: DIFlagFwdDecl)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !957, file: !602, line: 825, baseType: !1169, size: 2048, align: 512, offset: 5632)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !602, line: 509, size: 2048, align: 512, elements: !1170)
!1170 = !{!1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1169, file: !602, line: 511, baseType: !400, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1169, file: !602, line: 512, baseType: !400, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1169, file: !602, line: 513, baseType: !400, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1169, file: !602, line: 514, baseType: !400, size: 64, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1169, file: !602, line: 515, baseType: !400, size: 64, offset: 256)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1169, file: !602, line: 516, baseType: !400, size: 64, offset: 320)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1169, file: !602, line: 518, baseType: !400, size: 64, offset: 384)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1169, file: !602, line: 519, baseType: !400, size: 64, offset: 448)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1169, file: !602, line: 520, baseType: !637, size: 64, offset: 512)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1169, file: !602, line: 522, baseType: !400, size: 64, offset: 576)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1169, file: !602, line: 523, baseType: !400, size: 64, offset: 640)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1169, file: !602, line: 524, baseType: !637, size: 64, offset: 704)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1169, file: !602, line: 526, baseType: !637, size: 64, offset: 768)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1169, file: !602, line: 527, baseType: !400, size: 64, offset: 832)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1169, file: !602, line: 529, baseType: !400, size: 64, offset: 896)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1169, file: !602, line: 530, baseType: !400, size: 64, offset: 960)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1169, file: !602, line: 531, baseType: !400, size: 64, offset: 1024)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1169, file: !602, line: 532, baseType: !400, size: 64, offset: 1088)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1169, file: !602, line: 533, baseType: !400, size: 64, offset: 1152)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1169, file: !602, line: 535, baseType: !400, size: 64, offset: 1216)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1169, file: !602, line: 536, baseType: !400, size: 64, offset: 1280)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1169, file: !602, line: 537, baseType: !400, size: 64, offset: 1344)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1169, file: !602, line: 538, baseType: !400, size: 64, offset: 1408)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1169, file: !602, line: 539, baseType: !400, size: 64, offset: 1472)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1169, file: !602, line: 540, baseType: !400, size: 64, offset: 1536)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1169, file: !602, line: 541, baseType: !400, size: 64, offset: 1600)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1169, file: !602, line: 542, baseType: !400, size: 64, offset: 1664)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1169, file: !602, line: 543, baseType: !400, size: 64, offset: 1728)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !957, file: !602, line: 833, baseType: !7, size: 32, offset: 7680)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !957, file: !602, line: 836, baseType: !7, size: 32, offset: 7712)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !957, file: !602, line: 837, baseType: !85, size: 32, offset: 7744)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !957, file: !602, line: 838, baseType: !1203, size: 64, offset: 7808)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1206, line: 19, baseType: !1207)
!1206 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1206, line: 19, size: 64, elements: !1208)
!1208 = !{!1209}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1207, file: !1206, line: 19, baseType: !1210, size: 64)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 64, elements: !1211)
!1211 = !{!1212}
!1212 = !DISubrange(count: 1)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !957, file: !602, line: 839, baseType: !1214, size: 64, offset: 7872)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !957, file: !602, line: 840, baseType: !1205, size: 64, offset: 7936)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !957, file: !602, line: 841, baseType: !318, size: 64, offset: 8000)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !957, file: !602, line: 843, baseType: !216, size: 16, offset: 8064)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !957, file: !602, line: 845, baseType: !216, size: 16, offset: 8080)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !957, file: !602, line: 848, baseType: !85, size: 32, offset: 8096)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !957, file: !602, line: 849, baseType: !1221, size: 32, offset: 8128)
!1221 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !602, line: 718, size: 32, elements: !1222)
!1222 = !{!1223, !1230}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1221, file: !602, line: 724, baseType: !1224, size: 32)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1221, file: !602, line: 719, size: 32, elements: !1225)
!1225 = !{!1226, !1227, !1228, !1229}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1224, file: !602, line: 720, baseType: !204, size: 8)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1224, file: !602, line: 721, baseType: !204, size: 8, offset: 8)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1224, file: !602, line: 722, baseType: !204, size: 8, offset: 16)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1224, file: !602, line: 723, baseType: !204, size: 8, offset: 24)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1221, file: !602, line: 725, baseType: !396, size: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !957, file: !602, line: 850, baseType: !146, size: 128, offset: 8192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !957, file: !602, line: 851, baseType: !1233, size: 64, offset: 8320)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !602, line: 60, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !957, file: !602, line: 855, baseType: !296, size: 64, offset: 8384)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !957, file: !602, line: 856, baseType: !204, size: 8, offset: 8448)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !957, file: !602, line: 857, baseType: !204, size: 8, offset: 8456)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !957, file: !602, line: 858, baseType: !85, size: 32, offset: 8480)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !957, file: !602, line: 859, baseType: !146, size: 128, offset: 8512)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !957, file: !602, line: 860, baseType: !85, size: 32, offset: 8640)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !957, file: !602, line: 861, baseType: !146, size: 128, offset: 8704)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !957, file: !602, line: 873, baseType: !1243, size: 256, offset: 8832)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !602, line: 376, size: 256, elements: !1244)
!1244 = !{!1245, !1246, !1247, !1248}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1243, file: !602, line: 381, baseType: !296, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1243, file: !602, line: 384, baseType: !402, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1243, file: !602, line: 389, baseType: !402, size: 64, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1243, file: !602, line: 392, baseType: !402, size: 64, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !957, file: !602, line: 875, baseType: !146, size: 128, offset: 9088)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !957, file: !602, line: 877, baseType: !1251, size: 320, offset: 9216)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1252, line: 86, size: 320, elements: !1253)
!1252 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1253 = !{!1254, !1255, !1256}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1251, file: !1252, line: 87, baseType: !85, size: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1251, file: !1252, line: 88, baseType: !146, size: 128, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1251, file: !1252, line: 89, baseType: !146, size: 128, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !957, file: !602, line: 878, baseType: !1013, size: 192, align: 64, offset: 9536)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !957, file: !602, line: 881, baseType: !1259, size: 64, offset: 9728)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !699, line: 733, size: 10240, elements: !1261)
!1261 = !{!1262, !1925}
!1262 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !699, line: 734, baseType: !1263, size: 10240)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1260, file: !699, line: 734, size: 10240, elements: !1264)
!1264 = !{!1265, !1269, !1282, !1789, !1790, !1791, !1792, !1793, !1794, !1801, !1802, !1803, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1842, !1844, !1847, !1894, !1895, !1896, !1899, !1900, !1901, !1904, !1905, !1906, !1912, !1913}
!1265 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !699, line: 739, baseType: !1266, size: 512, align: 512)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1263, file: !699, line: 739, size: 512, align: 512, elements: !1267)
!1267 = !{!1268}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1266, file: !699, line: 747, baseType: !196, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1263, file: !699, line: 750, baseType: !1270, size: 128, offset: 512)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1271, line: 218, size: 128, elements: !1272)
!1271 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1272 = !{!1273, !1280, !1281}
!1273 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !1271, line: 219, baseType: !1274, size: 32)
!1274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !1271, line: 219, size: 32, elements: !1275)
!1275 = !{!1276, !1277}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1274, file: !1271, line: 220, baseType: !176, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1274, file: !1271, line: 221, baseType: !1278)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1271, line: 197, baseType: !1279)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1271, line: 197, elements: !531)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1270, file: !1271, line: 223, baseType: !7, size: 32, offset: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1270, file: !1271, line: 224, baseType: !318, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1263, file: !699, line: 752, baseType: !1283, size: 64, offset: 640)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!296, !1286, !296, !296, !296, !296}
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1288)
!1288 = !{!1289, !1295, !1296, !1298, !1299, !1300, !1301, !1302, !1354, !1549, !1558, !1559, !1560, !1779, !1780, !1781, !1782, !1784, !1785, !1788}
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !14, line: 995, baseType: !1290, size: 128)
!1290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1287, file: !14, line: 995, size: 128, elements: !1291)
!1291 = !{!1292, !1293, !1294}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1290, file: !14, line: 996, baseType: !982, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1290, file: !14, line: 997, baseType: !941, size: 128, align: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1290, file: !14, line: 998, baseType: !7, size: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1287, file: !14, line: 1005, baseType: !176, size: 32, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1287, file: !14, line: 1006, baseType: !1297, size: 32, offset: 160)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !147, line: 156, baseType: !7)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1287, file: !14, line: 1007, baseType: !631, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1287, file: !14, line: 1008, baseType: !627, size: 256, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1287, file: !14, line: 1009, baseType: !488, size: 64, offset: 512)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1287, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1287, file: !14, line: 1011, baseType: !1303, size: 256, offset: 640)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1304)
!1304 = !{!1305, !1326, !1350, !1351, !1352, !1353}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1303, file: !14, line: 949, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1307, line: 34, baseType: !1308)
!1307 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1307, line: 25, size: 64, elements: !1309)
!1309 = !{!1310}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1308, file: !1307, line: 26, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1312, line: 27, baseType: !1313)
!1312 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1312, line: 13, size: 64, elements: !1314)
!1314 = !{!1315, !1325}
!1315 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !1312, line: 14, baseType: !1316, size: 32)
!1316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1313, file: !1312, line: 14, size: 32, elements: !1317)
!1317 = !{!1318, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1316, file: !1312, line: 15, baseType: !196, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, scope: !1316, file: !1312, line: 16, baseType: !1320, size: 32)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1316, file: !1312, line: 16, size: 32, elements: !1321)
!1321 = !{!1322, !1323}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1320, file: !1312, line: 18, baseType: !204, size: 8)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1320, file: !1312, line: 19, baseType: !1324, size: 24, offset: 8)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 24, elements: !247)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1313, file: !1312, line: 26, baseType: !188, size: 32, offset: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1303, file: !14, line: 950, baseType: !1327, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1329)
!1329 = !{!1330, !1331, !1332, !1333, !1337, !1338, !1339, !1340}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1328, file: !30, line: 61, baseType: !970, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1328, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1328, file: !30, line: 63, baseType: !176, size: 32, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1328, file: !30, line: 65, baseType: !1334, size: 256, offset: 128)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 256, elements: !1335)
!1335 = !{!1336}
!1336 = !DISubrange(count: 4)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1328, file: !30, line: 66, baseType: !519, size: 64, offset: 384)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1328, file: !30, line: 68, baseType: !934, size: 192, offset: 448)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1328, file: !30, line: 69, baseType: !941, size: 128, align: 64, offset: 640)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1328, file: !30, line: 70, baseType: !1341, offset: 768)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1342, elements: !1348)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1343)
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1342, file: !30, line: 55, baseType: !85, size: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1342, file: !30, line: 56, baseType: !1346, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1348 = !{!1349}
!1349 = !DISubrange(count: -1)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1303, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1303, file: !14, line: 952, baseType: !333, size: 32, offset: 160)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1303, file: !14, line: 952, baseType: !333, size: 32, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1303, file: !14, line: 953, baseType: !85, size: 32, offset: 224)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1287, file: !14, line: 1012, baseType: !1355, size: 64, offset: 896)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1357)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1358, line: 110, size: 1472, elements: !1359)
!1358 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1359 = !{!1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1376, !1377, !1378, !1379, !1380, !1381, !1494, !1495, !1496, !1497, !1498, !1529, !1532, !1536, !1544}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1357, file: !1358, line: 111, baseType: !631, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1357, file: !1358, line: 112, baseType: !333, size: 32, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1357, file: !1358, line: 113, baseType: !342, size: 32, offset: 96)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1357, file: !1358, line: 114, baseType: !333, size: 32, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1357, file: !1358, line: 115, baseType: !342, size: 32, offset: 160)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1357, file: !1358, line: 116, baseType: !333, size: 32, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1357, file: !1358, line: 117, baseType: !342, size: 32, offset: 224)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1357, file: !1358, line: 118, baseType: !333, size: 32, offset: 256)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1357, file: !1358, line: 119, baseType: !342, size: 32, offset: 288)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1357, file: !1358, line: 120, baseType: !7, size: 32, offset: 320)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1357, file: !1358, line: 121, baseType: !1371, size: 64, offset: 384)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1372, line: 24, baseType: !1373)
!1372 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1372, line: 24, size: 64, elements: !1374)
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1373, file: !1372, line: 24, baseType: !400, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1357, file: !1358, line: 122, baseType: !1371, size: 64, offset: 448)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1357, file: !1358, line: 123, baseType: !1371, size: 64, offset: 512)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1357, file: !1358, line: 124, baseType: !1371, size: 64, offset: 576)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1357, file: !1358, line: 125, baseType: !1371, size: 64, offset: 640)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1357, file: !1358, line: 127, baseType: !208, size: 8, offset: 704)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1357, file: !1358, line: 129, baseType: !1382, size: 64, offset: 768)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1384, line: 195, size: 1728, elements: !1385)
!1384 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1385 = !{!1386, !1387, !1392, !1397, !1398, !1401, !1402, !1407, !1408, !1409, !1410, !1413, !1414, !1415, !1417, !1418, !1458, !1479}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1383, file: !1384, line: 196, baseType: !970, size: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1383, file: !1384, line: 197, baseType: !1388, size: 32, offset: 32)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1384, line: 28, baseType: !1389)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !147, line: 104, baseType: !1390)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !205, line: 20, baseType: !1391)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !207, line: 26, baseType: !85)
!1392 = !DIDerivedType(tag: DW_TAG_member, scope: !1383, file: !1384, line: 198, baseType: !1393, size: 192, offset: 64)
!1393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1383, file: !1384, line: 198, size: 192, elements: !1394)
!1394 = !{!1395, !1396}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1393, file: !1384, line: 199, baseType: !146, size: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1393, file: !1384, line: 200, baseType: !1013, size: 192, align: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1383, file: !1384, line: 205, baseType: !841, size: 320, offset: 256)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1383, file: !1384, line: 206, baseType: !1399, size: 64, offset: 576)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1384, line: 206, flags: DIFlagFwdDecl)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1383, file: !1384, line: 207, baseType: !318, size: 64, offset: 640)
!1402 = !DIDerivedType(tag: DW_TAG_member, scope: !1383, file: !1384, line: 208, baseType: !1403, size: 64, offset: 704)
!1403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1383, file: !1384, line: 208, size: 64, elements: !1404)
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1403, file: !1384, line: 209, baseType: !680, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1403, file: !1384, line: 210, baseType: !680, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1383, file: !1384, line: 212, baseType: !680, size: 64, offset: 768)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1383, file: !1384, line: 213, baseType: !333, size: 32, offset: 832)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1383, file: !1384, line: 214, baseType: !342, size: 32, offset: 864)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1383, file: !1384, line: 215, baseType: !1411, size: 32, offset: 896)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1384, line: 31, baseType: !1412)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !147, line: 110, baseType: !396)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1383, file: !1384, line: 216, baseType: !216, size: 16, offset: 928)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1383, file: !1384, line: 217, baseType: !216, size: 16, offset: 944)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1383, file: !1384, line: 221, baseType: !1416, size: 16, offset: 960)
!1416 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1383, file: !1384, line: 228, baseType: !296, size: 64, offset: 1024)
!1418 = !DIDerivedType(tag: DW_TAG_member, scope: !1383, file: !1384, line: 245, baseType: !1419, size: 320, offset: 1088)
!1419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1383, file: !1384, line: 245, size: 320, elements: !1420)
!1420 = !{!1421, !1450}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1419, file: !1384, line: 246, baseType: !1422, size: 320)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1384, line: 114, size: 320, elements: !1423)
!1423 = !{!1424, !1425, !1437, !1440, !1449}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1422, file: !1384, line: 116, baseType: !296, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, scope: !1422, file: !1384, line: 117, baseType: !1426, size: 64, offset: 64)
!1426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1422, file: !1384, line: 117, size: 64, elements: !1427)
!1427 = !{!1428, !1436}
!1428 = !DIDerivedType(tag: DW_TAG_member, scope: !1426, file: !1384, line: 118, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1426, file: !1384, line: 118, size: 64, elements: !1430)
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1429, file: !1384, line: 120, baseType: !214, size: 16)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1429, file: !1384, line: 121, baseType: !1433, size: 48, offset: 16)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 48, elements: !1434)
!1434 = !{!1435}
!1435 = !DISubrange(count: 6)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1426, file: !1384, line: 127, baseType: !296, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1422, file: !1384, line: 129, baseType: !1438, size: 64, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1384, line: 102, flags: DIFlagFwdDecl)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1422, file: !1384, line: 130, baseType: !1441, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1384, line: 108, size: 192, elements: !1443)
!1443 = !{!1444, !1445, !1446}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1442, file: !1384, line: 109, baseType: !941, size: 128, align: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1442, file: !1384, line: 110, baseType: !970, size: 32, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1442, file: !1384, line: 111, baseType: !1447, size: 8, offset: 160)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !147, line: 35, baseType: !1448)
!1448 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1422, file: !1384, line: 131, baseType: !165, size: 64, offset: 256)
!1450 = !DIDerivedType(tag: DW_TAG_member, scope: !1419, file: !1384, line: 247, baseType: !1451, size: 320)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1419, file: !1384, line: 247, size: 320, elements: !1452)
!1452 = !{!1453, !1454, !1455, !1456, !1457}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1451, file: !1384, line: 248, baseType: !296, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1451, file: !1384, line: 249, baseType: !296, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1451, file: !1384, line: 250, baseType: !1438, size: 64, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1451, file: !1384, line: 251, baseType: !1441, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1451, file: !1384, line: 252, baseType: !246, size: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, scope: !1383, file: !1384, line: 260, baseType: !1459, size: 256, offset: 1408)
!1459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1383, file: !1384, line: 260, size: 256, elements: !1460)
!1460 = !{!1461, !1467}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1459, file: !1384, line: 261, baseType: !1462, size: 256)
!1462 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1384, line: 134, size: 256, elements: !1463)
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1462, file: !1384, line: 135, baseType: !318, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1462, file: !1384, line: 136, baseType: !1466, size: 256)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 256, elements: !1335)
!1467 = !DIDerivedType(tag: DW_TAG_member, scope: !1459, file: !1384, line: 262, baseType: !1468, size: 256)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1459, file: !1384, line: 262, size: 256, elements: !1469)
!1469 = !{!1470, !1471}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1468, file: !1384, line: 264, baseType: !146, size: 128)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1468, file: !1384, line: 265, baseType: !1472, size: 128, offset: 128)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1473, line: 22, size: 128, elements: !1474)
!1473 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1474 = !{!1475, !1478}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1472, file: !1473, line: 23, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1473, line: 23, flags: DIFlagFwdDecl)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1472, file: !1473, line: 24, baseType: !296, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1383, file: !1384, line: 280, baseType: !1480, size: 64, offset: 1664)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1384, line: 176, size: 192, elements: !1482)
!1482 = !{!1483, !1492, !1493}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1481, file: !1384, line: 177, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1384, line: 171, baseType: !1485)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!85, !1382, !1488, !1490, !1382}
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1439)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1462)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1481, file: !1384, line: 178, baseType: !1382, size: 64, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1481, file: !1384, line: 179, baseType: !1438, size: 64, offset: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1357, file: !1358, line: 130, baseType: !1382, size: 64, offset: 832)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1357, file: !1358, line: 131, baseType: !1382, size: 64, offset: 896)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1357, file: !1358, line: 132, baseType: !1382, size: 64, offset: 960)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1357, file: !1358, line: 135, baseType: !318, size: 64, offset: 1024)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1357, file: !1358, line: 137, baseType: !1499, size: 64, offset: 1088)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1501, line: 14, size: 1088, elements: !1502)
!1501 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1502 = !{!1503, !1504, !1513, !1514, !1515, !1516, !1517, !1518}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1500, file: !1501, line: 15, baseType: !970, size: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1500, file: !1501, line: 17, baseType: !1505, size: 320, offset: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1506, line: 22, size: 320, elements: !1507)
!1506 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1507 = !{!1508, !1509, !1510, !1511}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1505, file: !1506, line: 23, baseType: !640, size: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1505, file: !1506, line: 24, baseType: !637, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1505, file: !1506, line: 26, baseType: !146, size: 128, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1505, file: !1506, line: 28, baseType: !1512, size: 64, offset: 256)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1500, file: !1501, line: 19, baseType: !296, size: 64, offset: 384)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1500, file: !1501, line: 20, baseType: !631, size: 64, offset: 448)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1500, file: !1501, line: 23, baseType: !523, size: 128, offset: 512)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1500, file: !1501, line: 24, baseType: !333, size: 32, offset: 640)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1500, file: !1501, line: 29, baseType: !631, size: 64, offset: 704)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1500, file: !1501, line: 36, baseType: !1519, size: 320, offset: 768)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1520, line: 15, size: 320, elements: !1521)
!1520 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1521 = !{!1522, !1523, !1524, !1525, !1526, !1527, !1528}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1519, file: !1520, line: 16, baseType: !640, size: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1519, file: !1520, line: 18, baseType: !85, size: 32, offset: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1519, file: !1520, line: 19, baseType: !85, size: 32, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1519, file: !1520, line: 20, baseType: !85, size: 32, offset: 96)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1519, file: !1520, line: 21, baseType: !85, size: 32, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1519, file: !1520, line: 22, baseType: !296, size: 64, offset: 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1519, file: !1520, line: 23, baseType: !296, size: 64, offset: 256)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1357, file: !1358, line: 138, baseType: !1530, size: 64, offset: 1152)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !334, line: 18, flags: DIFlagFwdDecl)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1357, file: !1358, line: 139, baseType: !1533, size: 64, offset: 1216)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1535, line: 16, flags: DIFlagFwdDecl)
!1535 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1357, file: !1358, line: 140, baseType: !1537, size: 64, offset: 1280)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1358, line: 25, size: 64, elements: !1539)
!1539 = !{!1540, !1541, !1542}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1538, file: !1358, line: 26, baseType: !196, size: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1538, file: !1358, line: 27, baseType: !85, size: 32, offset: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1538, file: !1358, line: 28, baseType: !1543, offset: 64)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, elements: !1348)
!1544 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1358, line: 142, baseType: !1545, size: 128, offset: 1344)
!1545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1358, line: 142, size: 128, elements: !1546)
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1545, file: !1358, line: 143, baseType: !85, size: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1545, file: !1358, line: 144, baseType: !941, size: 128, align: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1287, file: !14, line: 1013, baseType: !1550, size: 256, offset: 960)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1551)
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1550, file: !14, line: 971, baseType: !296, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1550, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1550, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1550, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1550, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1550, file: !14, line: 976, baseType: !488, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1287, file: !14, line: 1014, baseType: !753, size: 128, offset: 1216)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1287, file: !14, line: 1015, baseType: !327, size: 64, offset: 1344)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1287, file: !14, line: 1016, baseType: !1561, size: 64, offset: 1408)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1563)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1564)
!1564 = !{!1565, !1566, !1570, !1575, !1579, !1607, !1608, !1614, !1627, !1635, !1639, !1640, !1701, !1702, !1706, !1711, !1712, !1716, !1720, !1726, !1727, !1731, !1732, !1738, !1742, !1746, !1752, !1756, !1760, !1764, !1768, !1769, !1775}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1563, file: !14, line: 1915, baseType: !141, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1563, file: !14, line: 1916, baseType: !1567, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!488, !1286, !488, !85}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1563, file: !14, line: 1917, baseType: !1571, size: 64, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!278, !1286, !246, !293, !1574}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1563, file: !14, line: 1918, baseType: !1576, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!278, !1286, !165, !293, !1574}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1563, file: !14, line: 1919, baseType: !1580, size: 64, offset: 256)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!278, !1583, !1605}
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1585)
!1585 = !{!1586, !1587, !1588, !1592, !1593, !1594, !1595}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1584, file: !14, line: 374, baseType: !1286, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1584, file: !14, line: 375, baseType: !488, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1584, file: !14, line: 376, baseType: !1589, size: 64, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !1583, !282}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1584, file: !14, line: 377, baseType: !318, size: 64, offset: 192)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1584, file: !14, line: 378, baseType: !85, size: 32, offset: 256)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1584, file: !14, line: 379, baseType: !214, size: 16, offset: 288)
!1595 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !14, line: 380, baseType: !1596, size: 64, offset: 320)
!1596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !14, line: 380, size: 64, elements: !1597)
!1597 = !{!1598, !1601}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1596, file: !14, line: 386, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1596, file: !14, line: 395, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!278, !318}
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1563, file: !14, line: 1920, baseType: !1580, size: 64, offset: 320)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1563, file: !14, line: 1921, baseType: !1609, size: 64, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!85, !1583, !1612, !7}
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1563, file: !14, line: 1923, baseType: !1615, size: 64, offset: 448)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!85, !1286, !1618}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1620)
!1620 = !{!1621, !1626}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1619, file: !14, line: 1859, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1623)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!1447, !1618, !165, !85, !488, !400, !7}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1619, file: !14, line: 1860, baseType: !488, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1563, file: !14, line: 1924, baseType: !1628, size: 64, offset: 512)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!1631, !1286, !1633}
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1632, line: 59, baseType: !7)
!1632 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !503, line: 31, flags: DIFlagFwdDecl)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1563, file: !14, line: 1925, baseType: !1636, size: 64, offset: 576)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!282, !1286, !7, !296}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1563, file: !14, line: 1926, baseType: !1636, size: 64, offset: 640)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1563, file: !14, line: 1927, baseType: !1641, size: 64, offset: 704)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!85, !1286, !1644}
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !699, line: 625, size: 1344, elements: !1646)
!1646 = !{!1647, !1656, !1657, !1665, !1672, !1673, !1678, !1679, !1684, !1685, !1688, !1692, !1693, !1694, !1695, !1696, !1699}
!1647 = !DIDerivedType(tag: DW_TAG_member, scope: !1645, file: !699, line: 628, baseType: !1648, size: 128)
!1648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1645, file: !699, line: 628, size: 128, elements: !1649)
!1649 = !{!1650, !1655}
!1650 = !DIDerivedType(tag: DW_TAG_member, scope: !1648, file: !699, line: 629, baseType: !1651, size: 128)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1648, file: !699, line: 629, size: 128, elements: !1652)
!1652 = !{!1653, !1654}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1651, file: !699, line: 631, baseType: !296, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1651, file: !699, line: 632, baseType: !296, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1648, file: !699, line: 635, baseType: !941, size: 128, align: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1645, file: !699, line: 639, baseType: !1259, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1645, file: !699, line: 640, baseType: !1658, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1659, line: 297, baseType: !1660)
!1659 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1659, line: 297, size: 64, elements: !1661)
!1661 = !{!1662}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1660, file: !1659, line: 297, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1664, line: 19, baseType: !296)
!1664 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1645, file: !699, line: 646, baseType: !1666, size: 64, offset: 256)
!1666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1645, file: !699, line: 646, size: 64, elements: !1667)
!1667 = !{!1668, !1671}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1666, file: !699, line: 647, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1670)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !699, line: 542, baseType: !296)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1666, file: !699, line: 648, baseType: !1670, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1645, file: !699, line: 666, baseType: !85, size: 32, offset: 320)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1645, file: !699, line: 667, baseType: !1674, size: 64, offset: 384)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !699, line: 579, size: 320, elements: !1676)
!1676 = !{!1677}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1675, file: !699, line: 580, baseType: !841, size: 320)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1645, file: !699, line: 670, baseType: !1447, size: 8, offset: 448)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1645, file: !699, line: 681, baseType: !1680, size: 256, offset: 512)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1645, file: !699, line: 678, size: 256, elements: !1681)
!1681 = !{!1682, !1683}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1680, file: !699, line: 679, baseType: !1013, size: 192, align: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1680, file: !699, line: 680, baseType: !296, size: 64, offset: 192)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1645, file: !699, line: 689, baseType: !146, size: 128, offset: 768)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1645, file: !699, line: 691, baseType: !1686, size: 64, offset: 896)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !699, line: 691, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1645, file: !699, line: 694, baseType: !1689, size: 64, offset: 960)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1691)
!1691 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !699, line: 694, flags: DIFlagFwdDecl)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1645, file: !699, line: 697, baseType: !296, size: 64, offset: 1024)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1645, file: !699, line: 699, baseType: !1286, size: 64, offset: 1088)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1645, file: !699, line: 700, baseType: !318, size: 64, offset: 1152)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1645, file: !699, line: 711, baseType: !631, size: 64, offset: 1216)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1645, file: !699, line: 717, baseType: !1697, size: 64, offset: 1280)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !602, line: 54, flags: DIFlagFwdDecl)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1645, file: !699, line: 722, baseType: !1700, offset: 1344)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !699, line: 570, elements: !531)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1563, file: !14, line: 1928, baseType: !296, size: 64, offset: 768)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1563, file: !14, line: 1929, baseType: !1703, size: 64, offset: 832)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!85, !327, !1286}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1563, file: !14, line: 1930, baseType: !1707, size: 64, offset: 896)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!85, !1286, !1710}
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !318)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1563, file: !14, line: 1931, baseType: !1703, size: 64, offset: 960)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1563, file: !14, line: 1932, baseType: !1713, size: 64, offset: 1024)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!85, !1286, !488, !488, !85}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1563, file: !14, line: 1933, baseType: !1717, size: 64, offset: 1088)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!85, !85, !1286, !85}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1563, file: !14, line: 1934, baseType: !1721, size: 64, offset: 1152)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!85, !1286, !85, !1724}
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1563, file: !14, line: 1935, baseType: !1283, size: 64, offset: 1216)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1563, file: !14, line: 1936, baseType: !1728, size: 64, offset: 1280)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!85, !85}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1563, file: !14, line: 1937, baseType: !1721, size: 64, offset: 1344)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1563, file: !14, line: 1938, baseType: !1733, size: 64, offset: 1408)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!278, !1736, !1286, !1574, !293, !7}
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !602, line: 59, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1563, file: !14, line: 1939, baseType: !1739, size: 64, offset: 1472)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!278, !1286, !1574, !1736, !293, !7}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1563, file: !14, line: 1940, baseType: !1743, size: 64, offset: 1536)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{null, !1286}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1563, file: !14, line: 1941, baseType: !1747, size: 64, offset: 1600)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!85, !1286, !85, !1750, !1751}
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1563, file: !14, line: 1942, baseType: !1753, size: 64, offset: 1664)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!282, !1286, !85, !488, !488}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1563, file: !14, line: 1944, baseType: !1757, size: 64, offset: 1728)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{null, !600, !1286}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1563, file: !14, line: 1948, baseType: !1761, size: 64, offset: 1792)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!278, !1286, !488, !1286, !488, !293, !7}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1563, file: !14, line: 1950, baseType: !1765, size: 64, offset: 1856)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!488, !1286, !488, !1286, !488, !488, !7}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1563, file: !14, line: 1953, baseType: !1713, size: 64, offset: 1920)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1563, file: !14, line: 1954, baseType: !1770, size: 64, offset: 1984)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!85, !1773, !7}
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1563, file: !14, line: 1955, baseType: !1776, size: 64, offset: 2048)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!85, !1773, !1612, !7}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1287, file: !14, line: 1018, baseType: !400, size: 64, offset: 1472)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1287, file: !14, line: 1020, baseType: !318, size: 64, offset: 1536)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1287, file: !14, line: 1023, baseType: !318, size: 64, offset: 1600)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1287, file: !14, line: 1027, baseType: !1783, size: 64, offset: 1664)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1287, file: !14, line: 1029, baseType: !323, size: 64, offset: 1728)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1287, file: !14, line: 1030, baseType: !1786, size: 32, offset: 1792)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1787, line: 8, baseType: !396)
!1787 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1287, file: !14, line: 1031, baseType: !1786, size: 32, offset: 1824)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1263, file: !699, line: 756, baseType: !296, size: 64, offset: 704)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1263, file: !699, line: 757, baseType: !296, size: 64, offset: 768)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1263, file: !699, line: 760, baseType: !296, size: 64, offset: 832)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1263, file: !699, line: 761, baseType: !296, size: 64, offset: 896)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1263, file: !699, line: 763, baseType: !296, size: 64, offset: 960)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1263, file: !699, line: 764, baseType: !1795, size: 64, offset: 1024)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1659, line: 299, baseType: !1797)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1659, line: 299, size: 64, elements: !1798)
!1798 = !{!1799}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1797, file: !1659, line: 299, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1664, line: 18, baseType: !296)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1263, file: !699, line: 773, baseType: !196, size: 32, offset: 1088)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1263, file: !699, line: 785, baseType: !196, size: 32, offset: 1120)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1263, file: !699, line: 795, baseType: !1804, size: 64, offset: 1152)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !699, line: 726, size: 128, elements: !1806)
!1806 = !{!1807, !1808}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1805, file: !699, line: 727, baseType: !400, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1805, file: !699, line: 728, baseType: !85, size: 32, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1263, file: !699, line: 801, baseType: !296, size: 64, offset: 1216)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1263, file: !699, line: 804, baseType: !631, size: 64, offset: 1280)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1263, file: !699, line: 806, baseType: !85, size: 32, offset: 1344)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1263, file: !699, line: 808, baseType: !176, size: 32, offset: 1376)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1263, file: !699, line: 823, baseType: !841, size: 320, offset: 1408)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1263, file: !699, line: 825, baseType: !146, size: 128, offset: 1728)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1263, file: !699, line: 845, baseType: !85, size: 32, offset: 1856)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1263, file: !699, line: 849, baseType: !296, size: 64, offset: 1920)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1263, file: !699, line: 850, baseType: !296, size: 64, offset: 1984)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1263, file: !699, line: 852, baseType: !296, size: 64, offset: 2048)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1263, file: !699, line: 853, baseType: !296, size: 64, offset: 2112)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1263, file: !699, line: 854, baseType: !633, size: 64, offset: 2176)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1263, file: !699, line: 855, baseType: !296, size: 64, offset: 2240)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1263, file: !699, line: 856, baseType: !296, size: 64, offset: 2304)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1263, file: !699, line: 857, baseType: !296, size: 64, offset: 2368)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1263, file: !699, line: 858, baseType: !296, size: 64, offset: 2432)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1263, file: !699, line: 865, baseType: !373, size: 32, offset: 2496)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1263, file: !699, line: 867, baseType: !176, size: 32, offset: 2528)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1263, file: !699, line: 869, baseType: !296, size: 64, offset: 2560)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1263, file: !699, line: 869, baseType: !296, size: 64, offset: 2624)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1263, file: !699, line: 869, baseType: !296, size: 64, offset: 2688)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1263, file: !699, line: 869, baseType: !296, size: 64, offset: 2752)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1263, file: !699, line: 870, baseType: !296, size: 64, offset: 2816)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1263, file: !699, line: 870, baseType: !296, size: 64, offset: 2880)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1263, file: !699, line: 870, baseType: !296, size: 64, offset: 2944)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1263, file: !699, line: 871, baseType: !296, size: 64, offset: 3008)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1263, file: !699, line: 871, baseType: !296, size: 64, offset: 3072)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1263, file: !699, line: 871, baseType: !296, size: 64, offset: 3136)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1263, file: !699, line: 871, baseType: !296, size: 64, offset: 3200)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1263, file: !699, line: 873, baseType: !1839, size: 3328, offset: 3264)
!1839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 3328, elements: !1840)
!1840 = !{!1841}
!1841 = !DISubrange(count: 52)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1263, file: !699, line: 875, baseType: !1843, size: 1280, offset: 6592)
!1843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1505, size: 1280, elements: !1335)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1263, file: !699, line: 877, baseType: !1845, size: 64, offset: 7872)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !699, line: 877, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1263, file: !699, line: 880, baseType: !1848, size: 1088, offset: 7936)
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1849, line: 72, baseType: !1850)
!1849 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1849, line: 23, size: 1088, elements: !1851)
!1851 = !{!1852, !1853, !1854, !1855, !1856, !1859, !1860, !1861, !1862, !1889, !1890, !1891}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1850, file: !1849, line: 28, baseType: !400, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1850, file: !1849, line: 38, baseType: !633, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1850, file: !1849, line: 40, baseType: !296, size: 64, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1850, file: !1849, line: 43, baseType: !841, size: 320, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1850, file: !1849, line: 44, baseType: !1857, size: 64, offset: 512)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1849, line: 44, flags: DIFlagFwdDecl)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1850, file: !1849, line: 48, baseType: !296, size: 64, offset: 576)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1850, file: !1849, line: 59, baseType: !627, size: 256, offset: 640)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1850, file: !1849, line: 60, baseType: !318, size: 64, offset: 896)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1850, file: !1849, line: 61, baseType: !1863, size: 64, offset: 960)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1865)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1866, line: 13, size: 1216, elements: !1867)
!1866 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1867 = !{!1868, !1869, !1870, !1871, !1872, !1873, !1874, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1865, file: !1866, line: 14, baseType: !318, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1865, file: !1866, line: 15, baseType: !296, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1865, file: !1866, line: 17, baseType: !296, size: 64, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1865, file: !1866, line: 17, baseType: !296, size: 64, offset: 192)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1865, file: !1866, line: 18, baseType: !296, size: 64, offset: 256)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1865, file: !1866, line: 18, baseType: !296, size: 64, offset: 320)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1865, file: !1866, line: 19, baseType: !1875, size: 64, offset: 384)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1865, file: !1866, line: 21, baseType: !282, size: 64, offset: 448)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1865, file: !1866, line: 23, baseType: !282, size: 64, offset: 512)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1865, file: !1866, line: 24, baseType: !282, size: 64, offset: 576)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1865, file: !1866, line: 25, baseType: !282, size: 64, offset: 640)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1865, file: !1866, line: 26, baseType: !282, size: 64, offset: 704)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1865, file: !1866, line: 27, baseType: !282, size: 64, offset: 768)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1865, file: !1866, line: 28, baseType: !282, size: 64, offset: 832)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1865, file: !1866, line: 29, baseType: !282, size: 64, offset: 896)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1865, file: !1866, line: 30, baseType: !282, size: 64, offset: 960)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1865, file: !1866, line: 31, baseType: !282, size: 64, offset: 1024)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1865, file: !1866, line: 32, baseType: !282, size: 64, offset: 1088)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1865, file: !1866, line: 33, baseType: !282, size: 64, offset: 1152)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1850, file: !1849, line: 63, baseType: !196, size: 32, offset: 1024)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1850, file: !1849, line: 69, baseType: !214, size: 16, offset: 1056)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1850, file: !1849, line: 70, baseType: !1892, size: 16, offset: 1072)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !205, line: 18, baseType: !1893)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !207, line: 23, baseType: !1416)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1263, file: !699, line: 882, baseType: !296, size: 64, offset: 9024)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1263, file: !699, line: 885, baseType: !176, size: 32, offset: 9088)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1263, file: !699, line: 886, baseType: !1897, size: 64, offset: 9152)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !699, line: 732, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1263, file: !699, line: 901, baseType: !1530, size: 64, offset: 9216)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1263, file: !699, line: 904, baseType: !1286, size: 64, offset: 9280)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1263, file: !699, line: 906, baseType: !1902, size: 64, offset: 9344)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !699, line: 906, flags: DIFlagFwdDecl)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1263, file: !699, line: 930, baseType: !196, size: 32, offset: 9408)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1263, file: !699, line: 933, baseType: !196, size: 32, offset: 9440)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1263, file: !699, line: 935, baseType: !1907, size: 64, offset: 9472)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !1908)
!1908 = !{!1909}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1907, file: !44, line: 104, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1263, file: !699, line: 940, baseType: !631, size: 64, offset: 9536)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1263, file: !699, line: 942, baseType: !1914, size: 256, offset: 9600)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1915, line: 98, size: 256, elements: !1916)
!1915 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1916 = !{!1917, !1918, !1919}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1914, file: !1915, line: 99, baseType: !631, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1914, file: !1915, line: 100, baseType: !146, size: 128, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1914, file: !1915, line: 101, baseType: !1920, size: 64, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1915, line: 21, baseType: !1921)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{null, !1924}
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1260, file: !699, line: 986, baseType: !1926, offset: 10240)
!1926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, elements: !1348)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !957, file: !602, line: 882, baseType: !1259, size: 64, offset: 9792)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !957, file: !602, line: 884, baseType: !85, size: 32, offset: 9856)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !957, file: !602, line: 885, baseType: !85, size: 32, offset: 9888)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !957, file: !602, line: 886, baseType: !85, size: 32, offset: 9920)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !957, file: !602, line: 888, baseType: !85, size: 32, offset: 9952)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !957, file: !602, line: 890, baseType: !296, size: 64, offset: 9984)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !957, file: !602, line: 893, baseType: !7, size: 32, offset: 10048)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !957, file: !602, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !957, file: !602, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !957, file: !602, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !957, file: !602, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !957, file: !602, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !957, file: !602, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !957, file: !602, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !957, file: !602, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !957, file: !602, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !957, file: !602, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !957, file: !602, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !957, file: !602, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !957, file: !602, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !957, file: !602, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !957, file: !602, line: 969, baseType: !296, size: 64, offset: 10176)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !957, file: !602, line: 971, baseType: !1950, size: 448, offset: 10240)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !38, line: 25, size: 448, elements: !1951)
!1951 = !{!1952, !1953, !1958}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1950, file: !38, line: 26, baseType: !296, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1950, file: !38, line: 27, baseType: !1954, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!282, !1957}
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, scope: !1950, file: !38, line: 28, baseType: !1959, size: 320, offset: 128)
!1959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1950, file: !38, line: 28, size: 320, elements: !1960)
!1960 = !{!1961, !1971, !1996}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1959, file: !38, line: 37, baseType: !1962, size: 320)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1959, file: !38, line: 30, size: 320, elements: !1963)
!1963 = !{!1964, !1966, !1967, !1968, !1969, !1970}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1962, file: !38, line: 31, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1962, file: !38, line: 32, baseType: !396, size: 32, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1962, file: !38, line: 33, baseType: !396, size: 32, offset: 96)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1962, file: !38, line: 34, baseType: !396, size: 32, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1962, file: !38, line: 35, baseType: !400, size: 64, offset: 192)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1962, file: !38, line: 36, baseType: !1965, size: 64, offset: 256)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1959, file: !38, line: 47, baseType: !1972, size: 192)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1959, file: !38, line: 39, size: 192, elements: !1973)
!1973 = !{!1974, !1975, !1976, !1995}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1972, file: !38, line: 40, baseType: !1130, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1972, file: !38, line: 41, baseType: !37, size: 32, offset: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, scope: !1972, file: !38, line: 42, baseType: !1977, size: 64, offset: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1972, file: !38, line: 42, size: 64, elements: !1978)
!1978 = !{!1979, !1987}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1977, file: !38, line: 43, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1982, line: 7, size: 128, elements: !1983)
!1982 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1983 = !{!1984, !1986}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1981, file: !1982, line: 8, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !280, line: 93, baseType: !490)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1981, file: !1982, line: 9, baseType: !490, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1977, file: !38, line: 44, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1990, line: 7, size: 64, elements: !1991)
!1990 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1991 = !{!1992, !1994}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1989, file: !1990, line: 8, baseType: !1993, size: 32)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1990, line: 5, baseType: !1390)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1989, file: !1990, line: 9, baseType: !1390, size: 32, offset: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1972, file: !38, line: 46, baseType: !400, size: 64, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1959, file: !38, line: 55, baseType: !1997, size: 256)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1959, file: !38, line: 49, size: 256, elements: !1998)
!1998 = !{!1999, !2002, !2003, !2004, !2005}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1997, file: !38, line: 50, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !38, line: 14, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1997, file: !38, line: 51, baseType: !85, size: 32, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1997, file: !38, line: 52, baseType: !85, size: 32, offset: 96)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1997, file: !38, line: 53, baseType: !296, size: 64, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1997, file: !38, line: 54, baseType: !296, size: 64, offset: 192)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !957, file: !602, line: 973, baseType: !2007, size: 32, offset: 10688)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !147, line: 27, baseType: !2008)
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !280, line: 28, baseType: !85)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !957, file: !602, line: 974, baseType: !2007, size: 32, offset: 10720)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !957, file: !602, line: 978, baseType: !296, size: 64, offset: 10752)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !957, file: !602, line: 987, baseType: !956, size: 64, offset: 10816)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !957, file: !602, line: 990, baseType: !956, size: 64, offset: 10880)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !957, file: !602, line: 995, baseType: !146, size: 128, offset: 10944)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !957, file: !602, line: 996, baseType: !146, size: 128, offset: 11072)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !957, file: !602, line: 997, baseType: !956, size: 64, offset: 11200)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !957, file: !602, line: 1005, baseType: !146, size: 128, offset: 11264)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !957, file: !602, line: 1006, baseType: !146, size: 128, offset: 11392)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !957, file: !602, line: 1009, baseType: !1327, size: 64, offset: 11520)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !957, file: !602, line: 1010, baseType: !2020, size: 512, offset: 11584)
!2020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 512, elements: !1335)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !957, file: !602, line: 1011, baseType: !146, size: 128, offset: 12096)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !957, file: !602, line: 1012, baseType: !146, size: 128, offset: 12224)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !957, file: !602, line: 1014, baseType: !2024, size: 64, offset: 12352)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2026, line: 26, size: 256, elements: !2027)
!2026 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2027 = !{!2028, !2029}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2025, file: !2026, line: 27, baseType: !7, size: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2025, file: !2026, line: 28, baseType: !2030, size: 192, offset: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2031, line: 43, size: 192, elements: !2032)
!2031 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2032 = !{!2033, !2034}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2030, file: !2031, line: 44, baseType: !640, size: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2030, file: !2031, line: 45, baseType: !146, size: 128, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !957, file: !602, line: 1017, baseType: !594, size: 64, offset: 12416)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !957, file: !602, line: 1020, baseType: !594, size: 64, offset: 12480)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !957, file: !602, line: 1023, baseType: !318, size: 64, offset: 12544)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !957, file: !602, line: 1025, baseType: !400, size: 64, offset: 12608)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !957, file: !602, line: 1026, baseType: !400, size: 64, offset: 12672)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !957, file: !602, line: 1031, baseType: !400, size: 64, offset: 12736)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !957, file: !602, line: 1032, baseType: !2042, size: 192, offset: 12800)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !602, line: 324, size: 192, elements: !2043)
!2043 = !{!2044, !2045, !2046}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2042, file: !602, line: 326, baseType: !400, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2042, file: !602, line: 327, baseType: !400, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2042, file: !602, line: 328, baseType: !640, size: 32, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !957, file: !602, line: 1041, baseType: !296, size: 64, offset: 12992)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !957, file: !602, line: 1042, baseType: !296, size: 64, offset: 13056)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !957, file: !602, line: 1045, baseType: !400, size: 64, offset: 13120)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !957, file: !602, line: 1048, baseType: !400, size: 64, offset: 13184)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !957, file: !602, line: 1051, baseType: !296, size: 64, offset: 13248)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !957, file: !602, line: 1052, baseType: !296, size: 64, offset: 13312)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !957, file: !602, line: 1055, baseType: !2054, size: 640, offset: 13376)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2055, line: 132, size: 640, elements: !2056)
!2055 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2056 = !{!2057, !2063, !2064}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2054, file: !2055, line: 133, baseType: !2058, size: 576)
!2058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2059, size: 576, elements: !247)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2055, line: 117, size: 192, elements: !2060)
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2059, file: !2055, line: 118, baseType: !400, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2059, file: !2055, line: 119, baseType: !1139, size: 128, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2054, file: !2055, line: 134, baseType: !7, size: 32, offset: 576)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2054, file: !2055, line: 135, baseType: !7, size: 32, offset: 608)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !957, file: !602, line: 1058, baseType: !2066, size: 448, offset: 14016)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2055, line: 144, size: 448, elements: !2067)
!2067 = !{!2068, !2069, !2070}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2066, file: !2055, line: 145, baseType: !941, size: 128, align: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2066, file: !2055, line: 146, baseType: !627, size: 256, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2066, file: !2055, line: 147, baseType: !7, size: 32, offset: 384)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !957, file: !602, line: 1064, baseType: !1355, size: 64, offset: 14464)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !957, file: !602, line: 1067, baseType: !1355, size: 64, offset: 14528)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !957, file: !602, line: 1070, baseType: !1355, size: 64, offset: 14592)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !957, file: !602, line: 1074, baseType: !1382, size: 64, offset: 14656)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !957, file: !602, line: 1084, baseType: !2076, size: 128, offset: 14720)
!2076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 128, elements: !2077)
!2077 = !{!2078}
!2078 = !DISubrange(count: 16)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !957, file: !602, line: 1086, baseType: !2080, size: 64, offset: 14848)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !602, line: 55, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !957, file: !602, line: 1089, baseType: !2083, size: 64, offset: 14912)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2084, line: 12, size: 64, elements: !2085)
!2084 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2085 = !{!2086}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2083, file: !2084, line: 13, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2084, line: 8, flags: DIFlagFwdDecl)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !957, file: !602, line: 1090, baseType: !2090, size: 128, offset: 14976)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2091, line: 13, size: 128, elements: !2092)
!2091 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2092 = !{!2093}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2090, file: !2091, line: 14, baseType: !146, size: 128)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !957, file: !602, line: 1097, baseType: !2095, size: 64, offset: 15104)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !602, line: 50, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !957, file: !602, line: 1100, baseType: !2098, size: 64, offset: 15168)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !602, line: 1100, flags: DIFlagFwdDecl)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !957, file: !602, line: 1103, baseType: !2101, size: 64, offset: 15232)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !602, line: 53, flags: DIFlagFwdDecl)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !957, file: !602, line: 1107, baseType: !2104, size: 64, offset: 15296)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !602, line: 56, flags: DIFlagFwdDecl)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !957, file: !602, line: 1110, baseType: !2107, size: 64, offset: 15360)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2109, line: 93, size: 8768, elements: !2110)
!2109 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2110 = !{!2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2160, !2169, !2170, !2172, !2173, !2174, !2177, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2215, !2216, !2223, !2233, !2236, !2237, !2240, !2241, !2242, !2243, !2244, !2245}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2108, file: !2109, line: 94, baseType: !970, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2108, file: !2109, line: 95, baseType: !196, size: 32, offset: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2108, file: !2109, line: 96, baseType: !85, size: 32, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2108, file: !2109, line: 97, baseType: !85, size: 32, offset: 96)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2108, file: !2109, line: 98, baseType: !146, size: 128, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2108, file: !2109, line: 100, baseType: !934, size: 192, offset: 256)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2108, file: !2109, line: 103, baseType: !956, size: 64, offset: 448)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2108, file: !2109, line: 106, baseType: !2119, size: 192, offset: 512)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1535, line: 32, size: 192, elements: !2120)
!2120 = !{!2121, !2122}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2119, file: !1535, line: 33, baseType: !146, size: 128)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2119, file: !1535, line: 34, baseType: !2123, size: 64, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2124, line: 25, baseType: !2125)
!2124 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2124, line: 23, size: 64, elements: !2126)
!2126 = !{!2127}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2125, file: !2124, line: 24, baseType: !1210, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2108, file: !2109, line: 109, baseType: !519, size: 64, offset: 704)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2108, file: !2109, line: 112, baseType: !85, size: 32, offset: 768)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2108, file: !2109, line: 114, baseType: !85, size: 32, offset: 800)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2108, file: !2109, line: 115, baseType: !956, size: 64, offset: 832)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2108, file: !2109, line: 118, baseType: !85, size: 32, offset: 896)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2108, file: !2109, line: 119, baseType: !7, size: 32, offset: 928)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2108, file: !2109, line: 121, baseType: !2135, size: 64, offset: 960)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2109, line: 80, size: 448, elements: !2137)
!2137 = !{!2138, !2139, !2145}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2136, file: !2109, line: 81, baseType: !196, size: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2136, file: !2109, line: 82, baseType: !2140, size: 128, offset: 64)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2109, line: 75, size: 128, elements: !2141)
!2141 = !{!2142, !2143}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2140, file: !2109, line: 76, baseType: !956, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2140, file: !2109, line: 77, baseType: !2144, size: 64, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2136, file: !2109, line: 83, baseType: !2025, size: 256, offset: 192)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2108, file: !2109, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2108, file: !2109, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2108, file: !2109, line: 138, baseType: !7, size: 32, offset: 1056)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2108, file: !2109, line: 139, baseType: !146, size: 128, offset: 1088)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2108, file: !2109, line: 142, baseType: !1083, size: 512, offset: 1216)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2108, file: !2109, line: 143, baseType: !1091, size: 64, offset: 1728)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2108, file: !2109, line: 150, baseType: !2153, size: 256, offset: 1792)
!2153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2154, size: 256, elements: !2158)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2109, line: 38, size: 128, elements: !2155)
!2155 = !{!2156, !2157}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2154, file: !2109, line: 39, baseType: !400, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2154, file: !2109, line: 40, baseType: !400, size: 64, offset: 64)
!2158 = !{!2159}
!2159 = !DISubrange(count: 2)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2108, file: !2109, line: 156, baseType: !2161, size: 192, offset: 2048)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2109, line: 66, size: 192, elements: !2162)
!2162 = !{!2163}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2161, file: !2109, line: 67, baseType: !2164, size: 192)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2109, line: 47, size: 192, elements: !2165)
!2165 = !{!2166, !2167, !2168}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2164, file: !2109, line: 48, baseType: !633, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2164, file: !2109, line: 49, baseType: !633, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2164, file: !2109, line: 50, baseType: !633, size: 64, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2108, file: !2109, line: 160, baseType: !2054, size: 640, offset: 2240)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2108, file: !2109, line: 163, baseType: !2171, size: 256, offset: 2880)
!2171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1327, size: 256, elements: !1335)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2108, file: !2109, line: 169, baseType: !1327, size: 64, offset: 3136)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2108, file: !2109, line: 172, baseType: !85, size: 32, offset: 3200)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2108, file: !2109, line: 174, baseType: !2175, size: 64, offset: 3264)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2109, line: 174, flags: DIFlagFwdDecl)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2108, file: !2109, line: 185, baseType: !2178, size: 64, offset: 3328)
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !369, line: 860, baseType: !2179)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !369, line: 853, size: 64, elements: !2180)
!2180 = !{!2181, !2182}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2179, file: !369, line: 858, baseType: !368, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2179, file: !369, line: 859, baseType: !176, size: 32, offset: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2108, file: !2109, line: 186, baseType: !400, size: 64, offset: 3392)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2108, file: !2109, line: 186, baseType: !400, size: 64, offset: 3456)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2108, file: !2109, line: 186, baseType: !400, size: 64, offset: 3520)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2108, file: !2109, line: 186, baseType: !400, size: 64, offset: 3584)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2108, file: !2109, line: 187, baseType: !400, size: 64, offset: 3648)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2108, file: !2109, line: 188, baseType: !400, size: 64, offset: 3712)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2108, file: !2109, line: 189, baseType: !2042, size: 192, offset: 3776)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2108, file: !2109, line: 190, baseType: !296, size: 64, offset: 3968)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2108, file: !2109, line: 190, baseType: !296, size: 64, offset: 4032)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2108, file: !2109, line: 190, baseType: !296, size: 64, offset: 4096)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2108, file: !2109, line: 190, baseType: !296, size: 64, offset: 4160)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2108, file: !2109, line: 191, baseType: !296, size: 64, offset: 4224)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2108, file: !2109, line: 191, baseType: !296, size: 64, offset: 4288)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2108, file: !2109, line: 191, baseType: !296, size: 64, offset: 4352)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2108, file: !2109, line: 191, baseType: !296, size: 64, offset: 4416)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2108, file: !2109, line: 192, baseType: !296, size: 64, offset: 4480)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2108, file: !2109, line: 192, baseType: !296, size: 64, offset: 4544)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2108, file: !2109, line: 192, baseType: !296, size: 64, offset: 4608)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2108, file: !2109, line: 192, baseType: !296, size: 64, offset: 4672)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2108, file: !2109, line: 193, baseType: !296, size: 64, offset: 4736)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2108, file: !2109, line: 193, baseType: !296, size: 64, offset: 4800)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2108, file: !2109, line: 194, baseType: !2205, size: 448, offset: 4864)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2206, line: 12, size: 448, elements: !2207)
!2206 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2207 = !{!2208, !2209, !2210, !2211, !2212, !2213, !2214}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2205, file: !2206, line: 15, baseType: !400, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2205, file: !2206, line: 17, baseType: !400, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2205, file: !2206, line: 19, baseType: !400, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2205, file: !2206, line: 21, baseType: !400, size: 64, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2205, file: !2206, line: 29, baseType: !400, size: 64, offset: 256)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2205, file: !2206, line: 35, baseType: !400, size: 64, offset: 320)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2205, file: !2206, line: 44, baseType: !400, size: 64, offset: 384)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2108, file: !2109, line: 202, baseType: !402, size: 64, offset: 5312)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2108, file: !2109, line: 213, baseType: !2217, size: 2048, offset: 5376)
!2217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2218, size: 2048, elements: !2077)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2219, line: 43, size: 128, elements: !2220)
!2219 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2220 = !{!2221, !2222}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2218, file: !2219, line: 44, baseType: !295, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2218, file: !2219, line: 45, baseType: !295, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2108, file: !2109, line: 216, baseType: !2224, size: 448, offset: 7424)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2109, line: 30, size: 448, elements: !2225)
!2225 = !{!2226, !2227, !2228, !2229, !2230, !2231, !2232}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2224, file: !2109, line: 31, baseType: !85, size: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2224, file: !2109, line: 32, baseType: !282, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2224, file: !2109, line: 33, baseType: !296, size: 64, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2224, file: !2109, line: 34, baseType: !400, size: 64, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2224, file: !2109, line: 34, baseType: !400, size: 64, offset: 256)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2224, file: !2109, line: 35, baseType: !296, size: 64, offset: 320)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2224, file: !2109, line: 35, baseType: !296, size: 64, offset: 384)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2108, file: !2109, line: 219, baseType: !2234, size: 64, offset: 7872)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2109, line: 219, flags: DIFlagFwdDecl)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2108, file: !2109, line: 222, baseType: !7, size: 32, offset: 7936)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2108, file: !2109, line: 223, baseType: !2238, size: 64, offset: 8000)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2109, line: 223, flags: DIFlagFwdDecl)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2108, file: !2109, line: 230, baseType: !1447, size: 8, offset: 8064)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2108, file: !2109, line: 231, baseType: !1416, size: 16, offset: 8080)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2108, file: !2109, line: 232, baseType: !1416, size: 16, offset: 8096)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2108, file: !2109, line: 234, baseType: !1259, size: 64, offset: 8128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2108, file: !2109, line: 237, baseType: !627, size: 256, offset: 8192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2108, file: !2109, line: 243, baseType: !841, size: 320, offset: 8448)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !957, file: !602, line: 1111, baseType: !2247, size: 64, offset: 15424)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2109, line: 20, size: 16640, elements: !2249)
!2249 = !{!2250, !2251, !2252, !2253}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2248, file: !2109, line: 21, baseType: !176, size: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2248, file: !2109, line: 22, baseType: !970, size: 32, offset: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2248, file: !2109, line: 23, baseType: !934, size: 192, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2248, file: !2109, line: 24, baseType: !2254, size: 16384, offset: 256)
!2254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2255, size: 16384, elements: !251)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1535, line: 51, size: 256, elements: !2256)
!2256 = !{!2257}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2255, file: !1535, line: 52, baseType: !2258, size: 256)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1535, line: 37, size: 256, elements: !2259)
!2259 = !{!2260, !2267, !2268, !2274}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2258, file: !1535, line: 39, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2262, line: 83, baseType: !2263)
!2262 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2262, line: 82, baseType: !2265)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{null, !85}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2258, file: !1535, line: 40, baseType: !296, size: 64, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2258, file: !1535, line: 46, baseType: !2269, size: 64, offset: 128)
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2262, line: 86, baseType: !2270)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2262, line: 85, baseType: !2272)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{null}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2258, file: !1535, line: 48, baseType: !2123, size: 64, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !957, file: !602, line: 1112, baseType: !2123, size: 64, offset: 15488)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !957, file: !602, line: 1113, baseType: !2123, size: 64, offset: 15552)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !957, file: !602, line: 1115, baseType: !2123, size: 64, offset: 15616)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !957, file: !602, line: 1116, baseType: !2119, size: 192, offset: 15680)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !957, file: !602, line: 1117, baseType: !296, size: 64, offset: 15872)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !957, file: !602, line: 1118, baseType: !293, size: 64, offset: 15936)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !957, file: !602, line: 1119, baseType: !7, size: 32, offset: 16000)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !957, file: !602, line: 1121, baseType: !944, size: 64, offset: 16064)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !957, file: !602, line: 1125, baseType: !2284, size: 64, offset: 16128)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !602, line: 43, flags: DIFlagFwdDecl)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !957, file: !602, line: 1127, baseType: !333, size: 32, offset: 16192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !957, file: !602, line: 1128, baseType: !7, size: 32, offset: 16224)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !957, file: !602, line: 1130, baseType: !2289, size: 128, offset: 16256)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2290, line: 37, size: 128, elements: !2291)
!2290 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2291 = !{!2292, !2293, !2294}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2289, file: !2290, line: 38, baseType: !85, size: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2289, file: !2290, line: 39, baseType: !196, size: 32, offset: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2289, file: !2290, line: 40, baseType: !2295, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2290, line: 24, flags: DIFlagFwdDecl)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !957, file: !602, line: 1131, baseType: !2298, size: 256, offset: 16384)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2299, line: 12, size: 256, elements: !2300)
!2299 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2300 = !{!2301, !2302, !2303, !2304}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2298, file: !2299, line: 13, baseType: !246, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2298, file: !2299, line: 14, baseType: !296, size: 64, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2298, file: !2299, line: 15, baseType: !296, size: 64, offset: 128)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2298, file: !2299, line: 16, baseType: !1447, size: 8, offset: 192)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !957, file: !602, line: 1134, baseType: !400, size: 64, offset: 16640)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !957, file: !602, line: 1135, baseType: !400, size: 64, offset: 16704)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !957, file: !602, line: 1138, baseType: !176, size: 32, offset: 16768)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !957, file: !602, line: 1141, baseType: !640, size: 32, offset: 16800)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !957, file: !602, line: 1143, baseType: !2310, size: 64, offset: 16832)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !602, line: 735, size: 64, elements: !2311)
!2311 = !{!2312}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2310, file: !602, line: 736, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !957, file: !602, line: 1147, baseType: !1142, size: 128, offset: 16896)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !957, file: !602, line: 1149, baseType: !956, size: 64, offset: 17024)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !957, file: !602, line: 1151, baseType: !2317, size: 64, offset: 17088)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !602, line: 1151, flags: DIFlagFwdDecl)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !957, file: !602, line: 1188, baseType: !318, size: 64, offset: 17152)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !957, file: !602, line: 1191, baseType: !2321, size: 64, offset: 17216)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !602, line: 44, flags: DIFlagFwdDecl)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !957, file: !602, line: 1194, baseType: !2324, size: 64, offset: 17280)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !602, line: 45, flags: DIFlagFwdDecl)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !957, file: !602, line: 1197, baseType: !2327, size: 64, offset: 17344)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !602, line: 61, flags: DIFlagFwdDecl)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !957, file: !602, line: 1199, baseType: !2330, size: 64, offset: 17408)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2332, line: 99, size: 128, elements: !2333)
!2332 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2333 = !{!2334, !2335, !2336}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2331, file: !2332, line: 100, baseType: !631, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2331, file: !2332, line: 101, baseType: !196, size: 32, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2331, file: !2332, line: 103, baseType: !216, size: 16, offset: 96)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !957, file: !602, line: 1202, baseType: !2338, size: 64, offset: 17472)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !602, line: 48, flags: DIFlagFwdDecl)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !957, file: !602, line: 1205, baseType: !296, size: 64, offset: 17536)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !957, file: !602, line: 1206, baseType: !2342, size: 64, offset: 17600)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1535, line: 14, baseType: !2344)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1535, line: 12, size: 384, elements: !2345)
!2345 = !{!2346}
!2346 = !DIDerivedType(tag: DW_TAG_member, scope: !2344, file: !1535, line: 13, baseType: !2347, size: 384)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2344, file: !1535, line: 13, size: 384, elements: !2348)
!2348 = !{!2349, !2350, !2351, !2352}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2347, file: !1535, line: 13, baseType: !85, size: 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2347, file: !1535, line: 13, baseType: !85, size: 32, offset: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2347, file: !1535, line: 13, baseType: !85, size: 32, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2347, file: !1535, line: 13, baseType: !2353, size: 256, offset: 128)
!2353 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2354, line: 37, size: 256, elements: !2355)
!2354 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2355 = !{!2356, !2361, !2374, !2380, !2389, !2416, !2421}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2353, file: !2354, line: 42, baseType: !2357, size: 64)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2353, file: !2354, line: 39, size: 64, elements: !2358)
!2358 = !{!2359, !2360}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2357, file: !2354, line: 40, baseType: !2008, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2357, file: !2354, line: 41, baseType: !339, size: 32, offset: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2353, file: !2354, line: 50, baseType: !2362, size: 192)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2353, file: !2354, line: 45, size: 192, elements: !2363)
!2363 = !{!2364, !2366, !2367, !2373}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2362, file: !2354, line: 46, baseType: !2365, size: 32)
!2365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !280, line: 95, baseType: !85)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2362, file: !2354, line: 47, baseType: !85, size: 32, offset: 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2362, file: !2354, line: 48, baseType: !2368, size: 64, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2354, line: 11, baseType: !2369)
!2369 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2354, line: 8, size: 64, elements: !2370)
!2370 = !{!2371, !2372}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2369, file: !2354, line: 9, baseType: !85, size: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2369, file: !2354, line: 10, baseType: !318, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2362, file: !2354, line: 49, baseType: !85, size: 32, offset: 128)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2353, file: !2354, line: 57, baseType: !2375, size: 128)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2353, file: !2354, line: 53, size: 128, elements: !2376)
!2376 = !{!2377, !2378, !2379}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2375, file: !2354, line: 54, baseType: !2008, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2375, file: !2354, line: 55, baseType: !339, size: 32, offset: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2375, file: !2354, line: 56, baseType: !2368, size: 64, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2353, file: !2354, line: 66, baseType: !2381, size: 256)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2353, file: !2354, line: 60, size: 256, elements: !2382)
!2382 = !{!2383, !2384, !2385, !2386, !2388}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2381, file: !2354, line: 61, baseType: !2008, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2381, file: !2354, line: 62, baseType: !339, size: 32, offset: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2381, file: !2354, line: 63, baseType: !85, size: 32, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2381, file: !2354, line: 64, baseType: !2387, size: 64, offset: 128)
!2387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !280, line: 94, baseType: !281)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2381, file: !2354, line: 65, baseType: !2387, size: 64, offset: 192)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2353, file: !2354, line: 105, baseType: !2390, size: 256)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2353, file: !2354, line: 69, size: 256, elements: !2391)
!2391 = !{!2392, !2393}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2390, file: !2354, line: 70, baseType: !318, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, scope: !2390, file: !2354, line: 79, baseType: !2394, size: 192, offset: 64)
!2394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2390, file: !2354, line: 79, size: 192, elements: !2395)
!2395 = !{!2396, !2397, !2398, !2405, !2410}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2394, file: !2354, line: 81, baseType: !85, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2394, file: !2354, line: 86, baseType: !1416, size: 16)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2394, file: !2354, line: 92, baseType: !2399, size: 192)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2394, file: !2354, line: 88, size: 192, elements: !2400)
!2400 = !{!2401, !2403, !2404}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2399, file: !2354, line: 89, baseType: !2402, size: 64)
!2402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 64, elements: !1126)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2399, file: !2354, line: 90, baseType: !318, size: 64, offset: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2399, file: !2354, line: 91, baseType: !318, size: 64, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2394, file: !2354, line: 97, baseType: !2406, size: 96)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2394, file: !2354, line: 94, size: 96, elements: !2407)
!2407 = !{!2408, !2409}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2406, file: !2354, line: 95, baseType: !2402, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2406, file: !2354, line: 96, baseType: !397, size: 32, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2394, file: !2354, line: 103, baseType: !2411, size: 128)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2394, file: !2354, line: 99, size: 128, elements: !2412)
!2412 = !{!2413, !2414, !2415}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2411, file: !2354, line: 100, baseType: !296, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2411, file: !2354, line: 101, baseType: !397, size: 32, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2411, file: !2354, line: 102, baseType: !397, size: 32, offset: 96)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2353, file: !2354, line: 111, baseType: !2417, size: 128)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2353, file: !2354, line: 108, size: 128, elements: !2418)
!2418 = !{!2419, !2420}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2417, file: !2354, line: 109, baseType: !282, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2417, file: !2354, line: 110, baseType: !85, size: 32, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2353, file: !2354, line: 118, baseType: !2422, size: 128)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2353, file: !2354, line: 114, size: 128, elements: !2423)
!2423 = !{!2424, !2425, !2426}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2422, file: !2354, line: 115, baseType: !318, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2422, file: !2354, line: 116, baseType: !85, size: 32, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2422, file: !2354, line: 117, baseType: !7, size: 32, offset: 96)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !957, file: !602, line: 1208, baseType: !2205, size: 448, offset: 17664)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !957, file: !602, line: 1215, baseType: !400, size: 64, offset: 18112)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !957, file: !602, line: 1217, baseType: !400, size: 64, offset: 18176)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !957, file: !602, line: 1219, baseType: !400, size: 64, offset: 18240)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !957, file: !602, line: 1223, baseType: !2432, size: 64, offset: 18304)
!2432 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2433, line: 99, baseType: !2434)
!2433 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2433, line: 99, size: 64, elements: !2435)
!2435 = !{!2436}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2434, file: !2433, line: 99, baseType: !1210, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !957, file: !602, line: 1225, baseType: !368, size: 32, offset: 18368)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !957, file: !602, line: 1226, baseType: !85, size: 32, offset: 18400)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !957, file: !602, line: 1227, baseType: !85, size: 32, offset: 18432)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !957, file: !602, line: 1231, baseType: !2441, size: 64, offset: 18496)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !602, line: 1231, flags: DIFlagFwdDecl)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !957, file: !602, line: 1233, baseType: !146, size: 128, offset: 18560)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !957, file: !602, line: 1240, baseType: !2445, size: 64, offset: 18688)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !602, line: 62, flags: DIFlagFwdDecl)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !957, file: !602, line: 1242, baseType: !2448, size: 64, offset: 18752)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !602, line: 1242, flags: DIFlagFwdDecl)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !957, file: !602, line: 1244, baseType: !146, size: 128, offset: 18816)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !957, file: !602, line: 1245, baseType: !2452, size: 64, offset: 18944)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !602, line: 51, flags: DIFlagFwdDecl)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !957, file: !602, line: 1246, baseType: !627, size: 256, offset: 19008)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !957, file: !602, line: 1247, baseType: !7, size: 32, offset: 19264)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !957, file: !602, line: 1250, baseType: !2457, size: 64, offset: 19328)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !602, line: 57, flags: DIFlagFwdDecl)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !957, file: !602, line: 1251, baseType: !627, size: 256, offset: 19392)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !957, file: !602, line: 1252, baseType: !146, size: 128, offset: 19648)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !957, file: !602, line: 1259, baseType: !1697, size: 64, offset: 19776)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !957, file: !602, line: 1260, baseType: !1416, size: 16, offset: 19840)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !957, file: !602, line: 1261, baseType: !1416, size: 16, offset: 19856)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !957, file: !602, line: 1314, baseType: !2465, size: 64, offset: 19904)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2467, line: 62, size: 256, align: 256, elements: !2468)
!2467 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2468 = !{!2469, !2470, !2471, !2472, !2473, !2474, !2475}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2466, file: !2467, line: 75, baseType: !397, size: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2466, file: !2467, line: 90, baseType: !397, size: 32, offset: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2466, file: !2467, line: 112, baseType: !401, size: 64, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2466, file: !2467, line: 132, baseType: !397, size: 32, offset: 128)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2466, file: !2467, line: 140, baseType: !397, size: 32, offset: 160)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2466, file: !2467, line: 149, baseType: !397, size: 32, offset: 192)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2466, file: !2467, line: 154, baseType: !2476, offset: 224)
!2476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, elements: !1348)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !957, file: !602, line: 1315, baseType: !396, size: 32, offset: 19968)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !957, file: !602, line: 1316, baseType: !396, size: 32, offset: 20000)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !957, file: !602, line: 1321, baseType: !296, size: 64, offset: 20032)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !957, file: !602, line: 1325, baseType: !85, size: 32, offset: 20096)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !957, file: !602, line: 1326, baseType: !85, size: 32, offset: 20128)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !957, file: !602, line: 1327, baseType: !85, size: 32, offset: 20160)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !957, file: !602, line: 1328, baseType: !85, size: 32, offset: 20192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !957, file: !602, line: 1329, baseType: !941, size: 128, align: 64, offset: 20224)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !957, file: !602, line: 1332, baseType: !2486, size: 128, offset: 20352)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2487, line: 51, size: 128, elements: !2488)
!2487 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2488 = !{!2489, !2494, !2495}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2486, file: !2487, line: 60, baseType: !2490, size: 64)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2491, line: 7, size: 64, elements: !2492)
!2491 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2492 = !{!2493}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2490, file: !2491, line: 12, baseType: !1207, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2486, file: !2487, line: 63, baseType: !1447, size: 8, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2486, file: !2487, line: 70, baseType: !1447, size: 8, offset: 72)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !957, file: !602, line: 1335, baseType: !1736, size: 64, offset: 20480)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !957, file: !602, line: 1337, baseType: !2498, size: 128, offset: 20544)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2487, line: 39, size: 128, elements: !2499)
!2499 = !{!2500, !2561, !2562}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2498, file: !2487, line: 40, baseType: !2501, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !699, line: 74, size: 512, align: 128, elements: !2503)
!2503 = !{!2504, !2505, !2555, !2560}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2502, file: !699, line: 75, baseType: !296, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, scope: !2502, file: !699, line: 83, baseType: !2506, size: 320, offset: 64)
!2506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2502, file: !699, line: 83, size: 320, elements: !2507)
!2507 = !{!2508, !2529, !2543, !2547, !2554}
!2508 = !DIDerivedType(tag: DW_TAG_member, scope: !2506, file: !699, line: 84, baseType: !2509, size: 320)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2506, file: !699, line: 84, size: 320, elements: !2510)
!2510 = !{!2511, !2522, !2523, !2528}
!2511 = !DIDerivedType(tag: DW_TAG_member, scope: !2509, file: !699, line: 90, baseType: !2512, size: 128)
!2512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2509, file: !699, line: 90, size: 128, elements: !2513)
!2513 = !{!2514, !2515, !2520, !2521}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2512, file: !699, line: 91, baseType: !146, size: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, scope: !2512, file: !699, line: 94, baseType: !2516, size: 128)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2512, file: !699, line: 94, size: 128, elements: !2517)
!2517 = !{!2518, !2519}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2516, file: !699, line: 96, baseType: !318, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2516, file: !699, line: 98, baseType: !7, size: 32, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2512, file: !699, line: 102, baseType: !146, size: 128)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2512, file: !699, line: 103, baseType: !146, size: 128)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2509, file: !699, line: 106, baseType: !323, size: 64, offset: 128)
!2523 = !DIDerivedType(tag: DW_TAG_member, scope: !2509, file: !699, line: 107, baseType: !2524, size: 64, offset: 192)
!2524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2509, file: !699, line: 107, size: 64, elements: !2525)
!2525 = !{!2526, !2527}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2524, file: !699, line: 108, baseType: !296, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2524, file: !699, line: 109, baseType: !296, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2509, file: !699, line: 117, baseType: !296, size: 64, offset: 256)
!2529 = !DIDerivedType(tag: DW_TAG_member, scope: !2506, file: !699, line: 119, baseType: !2530, size: 320)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2506, file: !699, line: 119, size: 320, elements: !2531)
!2531 = !{!2532, !2533, !2536, !2537, !2538}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2530, file: !699, line: 124, baseType: !296, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2530, file: !699, line: 125, baseType: !2534, size: 64, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !699, line: 125, flags: DIFlagFwdDecl)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2530, file: !699, line: 126, baseType: !296, size: 64, offset: 128)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2530, file: !699, line: 127, baseType: !296, size: 64, offset: 192)
!2538 = !DIDerivedType(tag: DW_TAG_member, scope: !2530, file: !699, line: 128, baseType: !2539, size: 64, offset: 256)
!2539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2530, file: !699, line: 128, size: 64, elements: !2540)
!2540 = !{!2541, !2542}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2539, file: !699, line: 133, baseType: !296, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2539, file: !699, line: 138, baseType: !631, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, scope: !2506, file: !699, line: 141, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2506, file: !699, line: 141, size: 64, elements: !2545)
!2545 = !{!2546}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2544, file: !699, line: 142, baseType: !296, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, scope: !2506, file: !699, line: 144, baseType: !2548, size: 128)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2506, file: !699, line: 144, size: 128, elements: !2549)
!2549 = !{!2550, !2553}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2548, file: !699, line: 146, baseType: !2551, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !699, line: 146, flags: DIFlagFwdDecl)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2548, file: !699, line: 147, baseType: !318, size: 64, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2506, file: !699, line: 161, baseType: !941, size: 128, align: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, scope: !2502, file: !699, line: 164, baseType: !2556, size: 32, offset: 384)
!2556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2502, file: !699, line: 164, size: 32, elements: !2557)
!2557 = !{!2558, !2559}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2556, file: !699, line: 169, baseType: !196, size: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2556, file: !699, line: 177, baseType: !7, size: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2502, file: !699, line: 181, baseType: !196, size: 32, offset: 416)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2498, file: !2487, line: 42, baseType: !397, size: 32, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2498, file: !2487, line: 43, baseType: !397, size: 32, offset: 96)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !957, file: !602, line: 1340, baseType: !2564, size: 64, offset: 20672)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !602, line: 69, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !957, file: !602, line: 1351, baseType: !85, size: 32, offset: 20736)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !957, file: !602, line: 1352, baseType: !85, size: 32, offset: 20768)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !957, file: !602, line: 1354, baseType: !296, size: 64, offset: 20800)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !957, file: !602, line: 1364, baseType: !400, size: 64, offset: 20864)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !957, file: !602, line: 1365, baseType: !400, size: 64, offset: 20928)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !957, file: !602, line: 1412, baseType: !296, size: 64, offset: 20992)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !957, file: !602, line: 1453, baseType: !2573, size: 64, offset: 21056)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !602, line: 1453, flags: DIFlagFwdDecl)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !957, file: !602, line: 1457, baseType: !2576, size: 64, offset: 21120)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !2578)
!2578 = !{!2579, !2580, !2599, !2602, !2603, !2636, !2646}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2577, file: !44, line: 62, baseType: !43, size: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, scope: !2577, file: !44, line: 64, baseType: !2581, size: 192, offset: 64)
!2581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2577, file: !44, line: 64, size: 192, elements: !2582)
!2582 = !{!2583, !2594}
!2583 = !DIDerivedType(tag: DW_TAG_member, scope: !2581, file: !44, line: 65, baseType: !2584, size: 192)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2581, file: !44, line: 65, size: 192, elements: !2585)
!2585 = !{!2586, !2593}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2584, file: !44, line: 66, baseType: !2587, size: 128)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2588, line: 50, size: 128, elements: !2589)
!2588 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2589 = !{!2590, !2591, !2592}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2587, file: !2588, line: 52, baseType: !296, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2587, file: !2588, line: 54, baseType: !7, size: 32, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2587, file: !2588, line: 55, baseType: !7, size: 32, offset: 96)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2584, file: !44, line: 67, baseType: !296, size: 64, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, scope: !2581, file: !44, line: 70, baseType: !2595, size: 192)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2581, file: !44, line: 70, size: 192, elements: !2596)
!2596 = !{!2597, !2598}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2595, file: !44, line: 71, baseType: !941, size: 128, align: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2595, file: !44, line: 72, baseType: !296, size: 64, offset: 128)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2577, file: !44, line: 76, baseType: !2600, size: 64, offset: 256)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2577, file: !44, line: 77, baseType: !296, size: 64, offset: 320)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2577, file: !44, line: 79, baseType: !2604, size: 64, offset: 384)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2588, line: 25, size: 256, elements: !2606)
!2606 = !{!2607, !2613, !2617}
!2607 = !DIDerivedType(tag: DW_TAG_member, scope: !2605, file: !2588, line: 26, baseType: !2608, size: 128)
!2608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2605, file: !2588, line: 26, size: 128, elements: !2609)
!2609 = !{!2610, !2612}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2608, file: !2588, line: 27, baseType: !2611, size: 128)
!2611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 128, elements: !2077)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2608, file: !2588, line: 28, baseType: !2611, size: 128)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2605, file: !2588, line: 31, baseType: !2614, size: 64, offset: 128)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2616)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2588, line: 23, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, scope: !2605, file: !2588, line: 33, baseType: !2618, size: 64, offset: 192)
!2618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2605, file: !2588, line: 33, size: 64, elements: !2619)
!2619 = !{!2620, !2626, !2631}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2618, file: !2588, line: 38, baseType: !2621, size: 64)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2618, file: !2588, line: 34, size: 64, elements: !2622)
!2622 = !{!2623, !2624, !2625}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2621, file: !2588, line: 35, baseType: !1390, size: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2621, file: !2588, line: 36, baseType: !204, size: 8, offset: 32)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2621, file: !2588, line: 37, baseType: !204, size: 8, offset: 40)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2618, file: !2588, line: 42, baseType: !2627, size: 16)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2618, file: !2588, line: 39, size: 16, elements: !2628)
!2628 = !{!2629, !2630}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2627, file: !2588, line: 40, baseType: !204, size: 8)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2627, file: !2588, line: 41, baseType: !204, size: 8, offset: 8)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2618, file: !2588, line: 46, baseType: !2632, size: 16)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2618, file: !2588, line: 43, size: 16, elements: !2633)
!2633 = !{!2634, !2635}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2632, file: !2588, line: 44, baseType: !204, size: 8)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2632, file: !2588, line: 45, baseType: !204, size: 8, offset: 8)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2577, file: !44, line: 81, baseType: !2637, size: 64, offset: 448)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !2639)
!2639 = !{!2640, !2641, !2642, !2643, !2644, !2645}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2638, file: !44, line: 86, baseType: !2600, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2638, file: !44, line: 87, baseType: !296, size: 64, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2638, file: !44, line: 88, baseType: !296, size: 64, offset: 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2638, file: !44, line: 89, baseType: !296, size: 64, offset: 192)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2638, file: !44, line: 90, baseType: !1447, size: 8, offset: 256)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2638, file: !44, line: 92, baseType: !2637, size: 64, offset: 320)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2577, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !957, file: !602, line: 1463, baseType: !2648, offset: 21184)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !602, line: 739, elements: !531)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !957, file: !602, line: 1470, baseType: !941, size: 128, align: 64, offset: 21184)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !957, file: !602, line: 1471, baseType: !970, size: 32, offset: 21312)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !957, file: !602, line: 1472, baseType: !85, size: 32, offset: 21344)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !957, file: !602, line: 1474, baseType: !956, size: 64, offset: 21376)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !957, file: !602, line: 1475, baseType: !2654, size: 320, offset: 21440)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2655, line: 11, size: 320, elements: !2656)
!2655 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2656 = !{!2657, !2658, !2659, !2664}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2654, file: !2655, line: 16, baseType: !523, size: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2654, file: !2655, line: 17, baseType: !296, size: 64, offset: 128)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2654, file: !2655, line: 18, baseType: !2660, size: 64, offset: 192)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{null, !2663}
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2654, file: !2655, line: 19, baseType: !396, size: 32, offset: 256)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !957, file: !602, line: 1478, baseType: !2666, size: 64, offset: 21760)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !602, line: 1478, flags: DIFlagFwdDecl)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !957, file: !602, line: 1482, baseType: !970, size: 32, offset: 21824)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !957, file: !602, line: 1489, baseType: !318, size: 64, offset: 21888)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !957, file: !602, line: 1504, baseType: !318, size: 64, offset: 21952)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !957, file: !602, line: 1505, baseType: !401, size: 64, offset: 22016)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !957, file: !602, line: 1506, baseType: !400, size: 64, offset: 22080)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !957, file: !602, line: 1507, baseType: !401, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !957, file: !602, line: 1508, baseType: !401, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !957, file: !602, line: 1509, baseType: !401, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !957, file: !602, line: 1510, baseType: !941, size: 128, align: 64, offset: 22208)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !957, file: !602, line: 1511, baseType: !85, size: 32, offset: 22336)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !957, file: !602, line: 1515, baseType: !2679, size: 64, offset: 22400)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !983, line: 56, size: 64, elements: !2680)
!2680 = !{!2681}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2679, file: !983, line: 57, baseType: !986, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !957, file: !602, line: 1518, baseType: !2679, size: 64, offset: 22464)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !957, file: !602, line: 1528, baseType: !941, size: 128, align: 64, offset: 22528)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !957, file: !602, line: 1552, baseType: !2685, size: 35328, offset: 23040)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2686, line: 430, size: 35328, elements: !2687)
!2686 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2687 = !{!2688, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2717, !2718, !2719, !2720, !2721, !2722, !2725, !2726, !2727, !2728}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2685, file: !2686, line: 432, baseType: !2689, size: 192)
!2689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2690, size: 192, elements: !247)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2691, line: 16, size: 64, elements: !2692)
!2691 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2692 = !{!2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2690, file: !2691, line: 17, baseType: !214, size: 16)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2690, file: !2691, line: 18, baseType: !214, size: 16, offset: 16)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2690, file: !2691, line: 19, baseType: !214, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2690, file: !2691, line: 19, baseType: !214, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2690, file: !2691, line: 19, baseType: !214, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2690, file: !2691, line: 19, baseType: !214, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2690, file: !2691, line: 19, baseType: !214, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2690, file: !2691, line: 20, baseType: !214, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2690, file: !2691, line: 20, baseType: !214, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2690, file: !2691, line: 20, baseType: !214, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2690, file: !2691, line: 20, baseType: !214, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2690, file: !2691, line: 20, baseType: !214, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2690, file: !2691, line: 20, baseType: !214, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2685, file: !2686, line: 436, baseType: !296, size: 64, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2685, file: !2686, line: 440, baseType: !216, size: 16, offset: 256)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2685, file: !2686, line: 441, baseType: !216, size: 16, offset: 272)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2685, file: !2686, line: 442, baseType: !216, size: 16, offset: 288)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2685, file: !2686, line: 443, baseType: !216, size: 16, offset: 304)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2685, file: !2686, line: 447, baseType: !296, size: 64, offset: 320)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2685, file: !2686, line: 448, baseType: !296, size: 64, offset: 384)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2685, file: !2686, line: 459, baseType: !2714, size: 256, offset: 448)
!2714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2715, size: 256, elements: !1335)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2686, line: 428, flags: DIFlagFwdDecl)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2685, file: !2686, line: 461, baseType: !296, size: 64, offset: 704)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2685, file: !2686, line: 463, baseType: !296, size: 64, offset: 768)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2685, file: !2686, line: 465, baseType: !296, size: 64, offset: 832)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2685, file: !2686, line: 466, baseType: !296, size: 64, offset: 896)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2685, file: !2686, line: 467, baseType: !296, size: 64, offset: 960)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2685, file: !2686, line: 473, baseType: !2723, size: 64, offset: 1024)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2686, line: 10, flags: DIFlagFwdDecl)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2685, file: !2686, line: 480, baseType: !296, size: 64, offset: 1088)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2685, file: !2686, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2685, file: !2686, line: 491, baseType: !396, size: 32, offset: 1184)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2685, file: !2686, line: 501, baseType: !2729, size: 33792, offset: 1536)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2730, line: 448, size: 33792, elements: !2731)
!2730 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2731 = !{!2732, !2733, !2734, !2896, !2897, !2903, !2904}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2729, file: !2730, line: 461, baseType: !7, size: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2729, file: !2730, line: 468, baseType: !296, size: 64, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2729, file: !2730, line: 476, baseType: !2735, size: 64, offset: 128)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2730, line: 356, size: 33280, align: 512, elements: !2737)
!2737 = !{!2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2736, file: !2730, line: 358, baseType: !7, size: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2736, file: !2730, line: 361, baseType: !7, size: 32, offset: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2736, file: !2730, line: 364, baseType: !400, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2736, file: !2730, line: 367, baseType: !400, size: 64, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2736, file: !2730, line: 370, baseType: !400, size: 64, offset: 192)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2736, file: !2730, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2736, file: !2730, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2736, file: !2730, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2736, file: !2730, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2736, file: !2730, line: 397, baseType: !2748, size: 32768, offset: 512)
!2748 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2730, line: 348, size: 32768, elements: !2749)
!2749 = !{!2750, !2765, !2802, !2879, !2892}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2748, file: !2730, line: 349, baseType: !2751, size: 896)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2730, line: 12, size: 896, elements: !2752)
!2752 = !{!2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2764}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2751, file: !2730, line: 13, baseType: !396, size: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2751, file: !2730, line: 14, baseType: !396, size: 32, offset: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2751, file: !2730, line: 15, baseType: !396, size: 32, offset: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2751, file: !2730, line: 16, baseType: !396, size: 32, offset: 96)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2751, file: !2730, line: 17, baseType: !396, size: 32, offset: 128)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2751, file: !2730, line: 18, baseType: !396, size: 32, offset: 160)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2751, file: !2730, line: 19, baseType: !396, size: 32, offset: 192)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2751, file: !2730, line: 22, baseType: !2761, size: 640, offset: 224)
!2761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 640, elements: !2762)
!2762 = !{!2763}
!2763 = !DISubrange(count: 20)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2751, file: !2730, line: 25, baseType: !396, size: 32, offset: 864)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2748, file: !2730, line: 350, baseType: !2766, size: 4096, align: 128)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2730, line: 34, size: 4096, align: 128, elements: !2767)
!2767 = !{!2768, !2769, !2770, !2771, !2772, !2787, !2788, !2789, !2791, !2793, !2797}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2766, file: !2730, line: 35, baseType: !214, size: 16)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2766, file: !2730, line: 36, baseType: !214, size: 16, offset: 16)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2766, file: !2730, line: 37, baseType: !214, size: 16, offset: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2766, file: !2730, line: 38, baseType: !214, size: 16, offset: 48)
!2772 = !DIDerivedType(tag: DW_TAG_member, scope: !2766, file: !2730, line: 39, baseType: !2773, size: 128, offset: 64)
!2773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2766, file: !2730, line: 39, size: 128, elements: !2774)
!2774 = !{!2775, !2780}
!2775 = !DIDerivedType(tag: DW_TAG_member, scope: !2773, file: !2730, line: 40, baseType: !2776, size: 128)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2773, file: !2730, line: 40, size: 128, elements: !2777)
!2777 = !{!2778, !2779}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2776, file: !2730, line: 41, baseType: !400, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2776, file: !2730, line: 42, baseType: !400, size: 64, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, scope: !2773, file: !2730, line: 44, baseType: !2781, size: 128)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2773, file: !2730, line: 44, size: 128, elements: !2782)
!2782 = !{!2783, !2784, !2785, !2786}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2781, file: !2730, line: 45, baseType: !396, size: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2781, file: !2730, line: 46, baseType: !396, size: 32, offset: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2781, file: !2730, line: 47, baseType: !396, size: 32, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2781, file: !2730, line: 48, baseType: !396, size: 32, offset: 96)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2766, file: !2730, line: 51, baseType: !396, size: 32, offset: 192)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2766, file: !2730, line: 52, baseType: !396, size: 32, offset: 224)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2766, file: !2730, line: 55, baseType: !2790, size: 1024, offset: 256)
!2790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 1024, elements: !409)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2766, file: !2730, line: 58, baseType: !2792, size: 2048, offset: 1280)
!2792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 2048, elements: !251)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2766, file: !2730, line: 60, baseType: !2794, size: 384, offset: 3328)
!2794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 384, elements: !2795)
!2795 = !{!2796}
!2796 = !DISubrange(count: 12)
!2797 = !DIDerivedType(tag: DW_TAG_member, scope: !2766, file: !2730, line: 62, baseType: !2798, size: 384, offset: 3712)
!2798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2766, file: !2730, line: 62, size: 384, elements: !2799)
!2799 = !{!2800, !2801}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2798, file: !2730, line: 63, baseType: !2794, size: 384)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2798, file: !2730, line: 64, baseType: !2794, size: 384)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2748, file: !2730, line: 351, baseType: !2803, size: 1088)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2730, line: 79, size: 1088, elements: !2804)
!2804 = !{!2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2878}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2803, file: !2730, line: 80, baseType: !396, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2803, file: !2730, line: 81, baseType: !396, size: 32, offset: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2803, file: !2730, line: 82, baseType: !396, size: 32, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2803, file: !2730, line: 83, baseType: !396, size: 32, offset: 96)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2803, file: !2730, line: 84, baseType: !396, size: 32, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2803, file: !2730, line: 85, baseType: !396, size: 32, offset: 160)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2803, file: !2730, line: 86, baseType: !396, size: 32, offset: 192)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2803, file: !2730, line: 88, baseType: !2761, size: 640, offset: 224)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2803, file: !2730, line: 89, baseType: !204, size: 8, offset: 864)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2803, file: !2730, line: 90, baseType: !204, size: 8, offset: 872)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2803, file: !2730, line: 91, baseType: !204, size: 8, offset: 880)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2803, file: !2730, line: 92, baseType: !204, size: 8, offset: 888)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2803, file: !2730, line: 93, baseType: !204, size: 8, offset: 896)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2803, file: !2730, line: 94, baseType: !204, size: 8, offset: 904)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2803, file: !2730, line: 95, baseType: !2820, size: 64, offset: 960)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2822, line: 11, size: 128, elements: !2823)
!2822 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2823 = !{!2824, !2825}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2821, file: !2822, line: 12, baseType: !282, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2821, file: !2822, line: 13, baseType: !2826, size: 64, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2828, line: 103, size: 1344, elements: !2829)
!2828 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2829 = !{!2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2858, !2859, !2860}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2827, file: !2828, line: 109, baseType: !296, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2827, file: !2828, line: 110, baseType: !296, size: 64, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2827, file: !2828, line: 111, baseType: !296, size: 64, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2827, file: !2828, line: 112, baseType: !296, size: 64, offset: 192)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2827, file: !2828, line: 113, baseType: !296, size: 64, offset: 256)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2827, file: !2828, line: 114, baseType: !296, size: 64, offset: 320)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2827, file: !2828, line: 117, baseType: !296, size: 64, offset: 384)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2827, file: !2828, line: 118, baseType: !296, size: 64, offset: 448)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2827, file: !2828, line: 119, baseType: !296, size: 64, offset: 512)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2827, file: !2828, line: 120, baseType: !296, size: 64, offset: 576)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2827, file: !2828, line: 121, baseType: !296, size: 64, offset: 640)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2827, file: !2828, line: 122, baseType: !296, size: 64, offset: 704)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2827, file: !2828, line: 123, baseType: !296, size: 64, offset: 768)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2827, file: !2828, line: 124, baseType: !296, size: 64, offset: 832)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2827, file: !2828, line: 125, baseType: !296, size: 64, offset: 896)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2827, file: !2828, line: 139, baseType: !296, size: 64, offset: 960)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2827, file: !2828, line: 142, baseType: !296, size: 64, offset: 1024)
!2847 = !DIDerivedType(tag: DW_TAG_member, scope: !2827, file: !2828, line: 144, baseType: !2848, size: 64, offset: 1088)
!2848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2827, file: !2828, line: 144, size: 64, elements: !2849)
!2849 = !{!2850, !2851, !2852}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2848, file: !2828, line: 146, baseType: !214, size: 16)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2848, file: !2828, line: 148, baseType: !400, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2848, file: !2828, line: 150, baseType: !2853, size: 64)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2828, line: 59, size: 64, elements: !2854)
!2854 = !{!2855, !2856, !2857}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2853, file: !2828, line: 61, baseType: !400, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2853, file: !2828, line: 63, baseType: !400, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2853, file: !2828, line: 65, baseType: !400, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2827, file: !2828, line: 153, baseType: !296, size: 64, offset: 1152)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2827, file: !2828, line: 154, baseType: !296, size: 64, offset: 1216)
!2860 = !DIDerivedType(tag: DW_TAG_member, scope: !2827, file: !2828, line: 156, baseType: !2861, size: 64, offset: 1280)
!2861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2827, file: !2828, line: 156, size: 64, elements: !2862)
!2862 = !{!2863, !2864, !2865}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2861, file: !2828, line: 158, baseType: !214, size: 16)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2861, file: !2828, line: 160, baseType: !400, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2861, file: !2828, line: 162, baseType: !2866, size: 64)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2828, line: 69, size: 64, elements: !2867)
!2867 = !{!2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2866, file: !2828, line: 71, baseType: !400, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2866, file: !2828, line: 73, baseType: !400, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2866, file: !2828, line: 75, baseType: !400, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2866, file: !2828, line: 77, baseType: !400, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2866, file: !2828, line: 80, baseType: !400, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2866, file: !2828, line: 83, baseType: !400, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2866, file: !2828, line: 86, baseType: !400, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2866, file: !2828, line: 88, baseType: !400, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2866, file: !2828, line: 93, baseType: !400, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2866, file: !2828, line: 100, baseType: !400, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2803, file: !2730, line: 96, baseType: !396, size: 32, offset: 1024)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2748, file: !2730, line: 352, baseType: !2880, size: 4608, align: 512)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2730, line: 333, size: 4608, align: 512, elements: !2881)
!2881 = !{!2882, !2883, !2890}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2880, file: !2730, line: 334, baseType: !2766, size: 4096, align: 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2880, file: !2730, line: 335, baseType: !2884, size: 512, offset: 4096)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2730, line: 312, size: 512, elements: !2885)
!2885 = !{!2886, !2887, !2888}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2884, file: !2730, line: 313, baseType: !400, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2884, file: !2730, line: 314, baseType: !400, size: 64, offset: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2884, file: !2730, line: 315, baseType: !2889, size: 384, offset: 128)
!2889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 384, elements: !1434)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2880, file: !2730, line: 336, baseType: !2891, offset: 4608)
!2891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, elements: !1348)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2748, file: !2730, line: 353, baseType: !2893, size: 32768)
!2893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 32768, elements: !2894)
!2894 = !{!2895}
!2895 = !DISubrange(count: 4096)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2729, file: !2730, line: 484, baseType: !2735, size: 64, offset: 192)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2729, file: !2730, line: 491, baseType: !2898, size: 128, offset: 256)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2730, line: 404, size: 128, elements: !2899)
!2899 = !{!2900, !2901, !2902}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2898, file: !2730, line: 424, baseType: !400, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2898, file: !2730, line: 432, baseType: !7, size: 32, offset: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2898, file: !2730, line: 440, baseType: !7, size: 32, offset: 96)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2729, file: !2730, line: 498, baseType: !2898, size: 128, offset: 384)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2729, file: !2730, line: 508, baseType: !2736, size: 33280, align: 512, offset: 512)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !924, file: !925, line: 16, baseType: !934, size: 192, offset: 512)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !924, file: !925, line: 17, baseType: !196, size: 32, offset: 704)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !479, file: !14, line: 1240, baseType: !318, size: 64, offset: 6912)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !479, file: !14, line: 1243, baseType: !396, size: 32, offset: 6976)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !479, file: !14, line: 1245, baseType: !680, size: 64, offset: 7040)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !479, file: !14, line: 1246, baseType: !680, size: 64, offset: 7104)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !479, file: !14, line: 1248, baseType: !397, size: 32, offset: 7168)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !479, file: !14, line: 1249, baseType: !2913, size: 64, offset: 7232)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !479, file: !14, line: 1252, baseType: !2916, size: 256, offset: 7296)
!2916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 256, elements: !409)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !479, file: !14, line: 1253, baseType: !2918, size: 128, offset: 7552)
!2918 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2919, line: 21, baseType: !2920)
!2919 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2919, line: 19, size: 128, elements: !2921)
!2921 = !{!2922}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2920, file: !2919, line: 20, baseType: !2923, size: 128)
!2923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 128, elements: !2077)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !479, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !479, file: !14, line: 1261, baseType: !627, size: 256, offset: 7744)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !479, file: !14, line: 1267, baseType: !165, size: 64, offset: 8000)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !479, file: !14, line: 1269, baseType: !425, size: 64, offset: 8064)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !479, file: !14, line: 1271, baseType: !2929, size: 448, offset: 8128)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !689, line: 63, size: 448, elements: !2930)
!2930 = !{!2931, !2936, !2937, !2938, !2939, !2940, !2941}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2929, file: !689, line: 64, baseType: !2932, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!296, !2935, !687}
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2929, file: !689, line: 66, baseType: !2932, size: 64, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2929, file: !689, line: 69, baseType: !282, size: 64, offset: 128)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2929, file: !689, line: 70, baseType: !85, size: 32, offset: 192)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2929, file: !689, line: 71, baseType: !7, size: 32, offset: 224)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2929, file: !689, line: 74, baseType: !146, size: 128, offset: 256)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2929, file: !689, line: 85, baseType: !2942, size: 64, offset: 384)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !479, file: !14, line: 1274, baseType: !631, size: 64, offset: 8576)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !479, file: !14, line: 1280, baseType: !631, size: 64, offset: 8640)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !479, file: !14, line: 1283, baseType: !85, size: 32, offset: 8704)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !479, file: !14, line: 1286, baseType: !1786, size: 32, offset: 8736)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !479, file: !14, line: 1289, baseType: !2948, size: 64, offset: 8768)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1915, line: 18, flags: DIFlagFwdDecl)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !479, file: !14, line: 1290, baseType: !519, size: 64, offset: 8832)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !479, file: !14, line: 1297, baseType: !1530, size: 64, offset: 8896)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !479, file: !14, line: 1304, baseType: !2953, size: 64, offset: 8960)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2954, line: 49, size: 64, elements: !2955)
!2954 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2955 = !{!2956}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2953, file: !2954, line: 50, baseType: !2957, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2954, line: 41, size: 512, align: 512, elements: !2959)
!2959 = !{!2960, !2961, !2966}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2958, file: !2954, line: 43, baseType: !176, size: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2958, file: !2954, line: 45, baseType: !2962, size: 192, offset: 64)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2954, line: 29, size: 192, elements: !2963)
!2963 = !{!2964, !2965}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2962, file: !2954, line: 30, baseType: !146, size: 128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2962, file: !2954, line: 32, baseType: !282, size: 64, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2958, file: !2954, line: 46, baseType: !282, size: 64, offset: 256)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !479, file: !14, line: 1305, baseType: !2953, size: 64, offset: 9024)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !479, file: !14, line: 1306, baseType: !941, size: 128, align: 64, offset: 9088)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !479, file: !14, line: 1307, baseType: !1914, size: 256, offset: 9216)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !479, file: !14, line: 1309, baseType: !627, size: 256, offset: 9472)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !479, file: !14, line: 1314, baseType: !85, size: 32, offset: 9728)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !479, file: !14, line: 1317, baseType: !176, size: 32, align: 512, offset: 10240)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !479, file: !14, line: 1318, baseType: !146, size: 128, offset: 10304)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !479, file: !14, line: 1320, baseType: !176, size: 32, offset: 10432)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !479, file: !14, line: 1321, baseType: !146, size: 128, offset: 10496)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !473, file: !474, line: 73, baseType: !85, size: 32, offset: 128)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !473, file: !474, line: 74, baseType: !2978, size: 64, offset: 192)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1372, line: 42, flags: DIFlagFwdDecl)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !427, file: !364, line: 141, baseType: !2982, size: 64, offset: 704)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!85, !751, !1447}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !427, file: !364, line: 142, baseType: !2986, size: 64, offset: 768)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!362, !362, !2989}
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !363, file: !364, line: 96, baseType: !478, size: 64, offset: 832)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !363, file: !364, line: 97, baseType: !296, size: 64, offset: 896)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !363, file: !364, line: 98, baseType: !318, size: 64, offset: 960)
!2994 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !364, line: 100, baseType: !2995, size: 128, offset: 1024)
!2995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !363, file: !364, line: 100, size: 128, elements: !2996)
!2996 = !{!2997, !2998}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2995, file: !364, line: 101, baseType: !146, size: 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2995, file: !364, line: 102, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !363, file: !364, line: 104, baseType: !146, size: 128, offset: 1152)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !363, file: !364, line: 105, baseType: !146, size: 128, offset: 1280)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !363, file: !364, line: 113, baseType: !3003, size: 128, offset: 1408)
!3003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !363, file: !364, line: 109, size: 128, elements: !3004)
!3004 = !{!3005, !3006, !3007}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3003, file: !364, line: 110, baseType: !523, size: 128)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3003, file: !364, line: 111, baseType: !378, size: 128)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3003, file: !364, line: 112, baseType: !941, size: 128, align: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !356, file: !14, line: 1968, baseType: !3009, size: 64, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!165, !362, !327, !3012}
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3014, line: 10, size: 128, elements: !3015)
!3014 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3015 = !{!3016, !3020}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3013, file: !3014, line: 11, baseType: !3017, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{null, !318}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3013, file: !3014, line: 12, baseType: !318, size: 64, offset: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !356, file: !14, line: 1969, baseType: !3022, size: 64, offset: 128)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!85, !2978, !327, !85}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !356, file: !14, line: 1970, baseType: !3026, size: 64, offset: 192)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!350, !327, !85, !1447}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !356, file: !14, line: 1972, baseType: !3030, size: 64, offset: 256)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!85, !362, !246, !85}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !356, file: !14, line: 1974, baseType: !3034, size: 64, offset: 320)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!85, !2978, !327, !362, !288, !1447}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !356, file: !14, line: 1976, baseType: !3038, size: 64, offset: 384)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!85, !362, !327, !362}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !356, file: !14, line: 1977, baseType: !3042, size: 64, offset: 448)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!85, !327, !362}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !356, file: !14, line: 1978, baseType: !3046, size: 64, offset: 512)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!85, !2978, !327, !362, !165}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !356, file: !14, line: 1980, baseType: !3050, size: 64, offset: 576)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!85, !2978, !327, !362, !288}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !356, file: !14, line: 1982, baseType: !3042, size: 64, offset: 640)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !356, file: !14, line: 1983, baseType: !3055, size: 64, offset: 704)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!85, !2978, !327, !362, !288, !483}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !356, file: !14, line: 1985, baseType: !3059, size: 64, offset: 768)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!85, !2978, !327, !362, !327, !362, !7}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !356, file: !14, line: 1987, baseType: !3063, size: 64, offset: 832)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!85, !2978, !362, !3066}
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3068)
!3068 = !{!3069, !3070, !3071, !3081, !3090, !3091, !3096, !3097, !3098}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3067, file: !14, line: 227, baseType: !7, size: 32)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3067, file: !14, line: 228, baseType: !288, size: 16, offset: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, scope: !3067, file: !14, line: 241, baseType: !3072, size: 32, offset: 64)
!3072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3067, file: !14, line: 241, size: 32, elements: !3073)
!3073 = !{!3074, !3075}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3072, file: !14, line: 242, baseType: !333, size: 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3072, file: !14, line: 243, baseType: !3076, size: 32)
!3076 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3077, line: 16, baseType: !3078)
!3077 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3077, line: 14, size: 32, elements: !3079)
!3079 = !{!3080}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3078, file: !3077, line: 15, baseType: !338, size: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, scope: !3067, file: !14, line: 245, baseType: !3082, size: 32, offset: 96)
!3082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3067, file: !14, line: 245, size: 32, elements: !3083)
!3083 = !{!3084, !3085}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3082, file: !14, line: 246, baseType: !342, size: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3082, file: !14, line: 247, baseType: !3086, size: 32)
!3086 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3077, line: 20, baseType: !3087)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3077, line: 18, size: 32, elements: !3088)
!3088 = !{!3089}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3087, file: !3077, line: 19, baseType: !346, size: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3067, file: !14, line: 249, baseType: !488, size: 64, offset: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3067, file: !14, line: 250, baseType: !3092, size: 128, offset: 192)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !681, line: 13, size: 128, elements: !3093)
!3093 = !{!3094, !3095}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3092, file: !681, line: 14, baseType: !680, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3092, file: !681, line: 15, baseType: !282, size: 64, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3067, file: !14, line: 251, baseType: !3092, size: 128, offset: 320)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3067, file: !14, line: 252, baseType: !3092, size: 128, offset: 448)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3067, file: !14, line: 259, baseType: !1286, size: 64, offset: 576)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !356, file: !14, line: 1988, baseType: !3100, size: 64, offset: 896)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!85, !2978, !751, !3103, !396, !7}
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3105, line: 22, size: 1280, elements: !3106)
!3105 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3106 = !{!3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3104, file: !3105, line: 23, baseType: !396, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3104, file: !3105, line: 24, baseType: !288, size: 16, offset: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3104, file: !3105, line: 25, baseType: !7, size: 32, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3104, file: !3105, line: 26, baseType: !1412, size: 32, offset: 96)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3104, file: !3105, line: 27, baseType: !400, size: 64, offset: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3104, file: !3105, line: 28, baseType: !400, size: 64, offset: 192)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3104, file: !3105, line: 41, baseType: !400, size: 64, offset: 256)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3104, file: !3105, line: 42, baseType: !483, size: 32, offset: 320)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3104, file: !3105, line: 43, baseType: !483, size: 32, offset: 352)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3104, file: !3105, line: 44, baseType: !333, size: 32, offset: 384)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3104, file: !3105, line: 45, baseType: !342, size: 32, offset: 416)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3104, file: !3105, line: 46, baseType: !488, size: 64, offset: 448)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3104, file: !3105, line: 47, baseType: !3092, size: 128, offset: 512)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3104, file: !3105, line: 48, baseType: !3092, size: 128, offset: 640)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3104, file: !3105, line: 49, baseType: !3092, size: 128, offset: 768)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3104, file: !3105, line: 50, baseType: !3092, size: 128, offset: 896)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3104, file: !3105, line: 51, baseType: !400, size: 64, offset: 1024)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3104, file: !3105, line: 52, baseType: !400, size: 64, offset: 1088)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3104, file: !3105, line: 53, baseType: !396, size: 32, offset: 1152)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3104, file: !3105, line: 54, baseType: !396, size: 32, offset: 1184)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3104, file: !3105, line: 55, baseType: !400, size: 64, offset: 1216)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !356, file: !14, line: 1990, baseType: !3129, size: 64, offset: 960)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!278, !362, !246, !293}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !356, file: !14, line: 1991, baseType: !3133, size: 64, offset: 1024)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!85, !327, !3136, !400, !400}
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !356, file: !14, line: 1993, baseType: !3139, size: 64, offset: 1088)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!85, !327, !85}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !356, file: !14, line: 1994, baseType: !3143, size: 64, offset: 1152)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!85, !327, !362, !1286, !7, !288}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !356, file: !14, line: 1997, baseType: !3147, size: 64, offset: 1216)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!85, !2978, !327, !1286, !288}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !356, file: !14, line: 1999, baseType: !3151, size: 64, offset: 1280)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!350, !2978, !362, !85}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !356, file: !14, line: 2001, baseType: !3155, size: 64, offset: 1344)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!85, !2978, !362, !350, !85}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !356, file: !14, line: 2003, baseType: !3159, size: 64, offset: 1408)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!85, !2978, !362, !3162}
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !356, file: !14, line: 2005, baseType: !3165, size: 64, offset: 1472)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!85, !362, !3162}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !356, file: !14, line: 2006, baseType: !3169, size: 64, offset: 1536)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!3172, !327}
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3174)
!3174 = !{!3175, !3182}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3173, file: !14, line: 3193, baseType: !3176, size: 128)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3177, line: 296, size: 128, elements: !3178)
!3177 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3178 = !{!3179, !3180, !3181}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3176, file: !3177, line: 297, baseType: !176, size: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3176, file: !3177, line: 299, baseType: !692, size: 32, offset: 32)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3176, file: !3177, line: 300, baseType: !318, size: 64, offset: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3173, file: !14, line: 3194, baseType: !396, size: 32, offset: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !328, file: !14, line: 655, baseType: !478, size: 64, offset: 448)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !328, file: !14, line: 656, baseType: !323, size: 64, offset: 512)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !328, file: !14, line: 659, baseType: !318, size: 64, offset: 576)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !328, file: !14, line: 663, baseType: !296, size: 64, offset: 640)
!3187 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !14, line: 671, baseType: !3188, size: 32, offset: 704)
!3188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !14, line: 671, size: 32, elements: !3189)
!3189 = !{!3190, !3192}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3188, file: !14, line: 672, baseType: !3191, size: 32)
!3191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3188, file: !14, line: 673, baseType: !7, size: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !328, file: !14, line: 675, baseType: !483, size: 32, offset: 736)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !328, file: !14, line: 676, baseType: !488, size: 64, offset: 768)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !328, file: !14, line: 677, baseType: !3092, size: 128, offset: 832)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !328, file: !14, line: 678, baseType: !3092, size: 128, offset: 960)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !328, file: !14, line: 679, baseType: !3092, size: 128, offset: 1088)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !328, file: !14, line: 680, baseType: !176, size: 32, offset: 1216)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !328, file: !14, line: 681, baseType: !216, size: 16, offset: 1248)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !328, file: !14, line: 682, baseType: !204, size: 8, offset: 1264)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !328, file: !14, line: 683, baseType: !204, size: 8, offset: 1272)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !328, file: !14, line: 684, baseType: !829, size: 64, offset: 1280)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !328, file: !14, line: 691, baseType: !296, size: 64, offset: 1344)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !328, file: !14, line: 692, baseType: !841, size: 320, offset: 1408)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !328, file: !14, line: 694, baseType: !296, size: 64, offset: 1728)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !328, file: !14, line: 695, baseType: !296, size: 64, offset: 1792)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !328, file: !14, line: 697, baseType: !523, size: 128, offset: 1856)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !328, file: !14, line: 698, baseType: !146, size: 128, offset: 1984)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !328, file: !14, line: 707, baseType: !146, size: 128, offset: 2112)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !328, file: !14, line: 708, baseType: !146, size: 128, offset: 2240)
!3211 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !14, line: 709, baseType: !3212, size: 128, offset: 2368)
!3212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !14, line: 709, size: 128, elements: !3213)
!3213 = !{!3214, !3215}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3212, file: !14, line: 710, baseType: !519, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3212, file: !14, line: 711, baseType: !941, size: 128, align: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !328, file: !14, line: 713, baseType: !633, size: 64, offset: 2496)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !328, file: !14, line: 714, baseType: !633, size: 64, offset: 2560)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !328, file: !14, line: 715, baseType: !196, size: 32, offset: 2624)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !328, file: !14, line: 716, baseType: !196, size: 32, offset: 2656)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !328, file: !14, line: 717, baseType: !196, size: 32, offset: 2688)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !328, file: !14, line: 719, baseType: !196, size: 32, offset: 2720)
!3222 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !14, line: 721, baseType: !3223, size: 64, offset: 2752)
!3223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !14, line: 721, size: 64, elements: !3224)
!3224 = !{!3225, !3226}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3223, file: !14, line: 722, baseType: !1561, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3223, file: !14, line: 723, baseType: !550, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !328, file: !14, line: 725, baseType: !3228, size: 64, offset: 2816)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !328, file: !14, line: 726, baseType: !324, size: 1536, align: 64, offset: 2880)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !328, file: !14, line: 727, baseType: !146, size: 128, offset: 4416)
!3232 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !14, line: 728, baseType: !3233, size: 64, offset: 4544)
!3233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !14, line: 728, size: 64, elements: !3234)
!3234 = !{!3235, !3236, !3239, !3240}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3233, file: !14, line: 729, baseType: !1736, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3233, file: !14, line: 730, baseType: !3237, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3233, file: !14, line: 731, baseType: !246, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3233, file: !14, line: 732, baseType: !7, size: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !328, file: !14, line: 735, baseType: !397, size: 32, offset: 4608)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !328, file: !14, line: 738, baseType: !397, size: 32, offset: 4640)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !328, file: !14, line: 739, baseType: !2913, size: 64, offset: 4672)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !328, file: !14, line: 750, baseType: !318, size: 64, offset: 4736)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !324, file: !14, line: 474, baseType: !3176, size: 128, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !324, file: !14, line: 475, baseType: !841, size: 320, offset: 192)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !324, file: !14, line: 476, baseType: !692, size: 32, offset: 512)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !324, file: !14, line: 477, baseType: !196, size: 32, offset: 544)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !324, file: !14, line: 482, baseType: !1142, size: 128, offset: 576)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !324, file: !14, line: 483, baseType: !296, size: 64, offset: 704)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !324, file: !14, line: 484, baseType: !296, size: 64, offset: 768)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !324, file: !14, line: 485, baseType: !3253, size: 64, offset: 832)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3255)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3256)
!3256 = !{!3257, !3261, !3331, !3335, !3339, !3345, !3350, !3354, !3359, !3363, !3367, !3371, !3372, !3376, !3380, !3384, !3389, !3393, !3400, !3401}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3255, file: !14, line: 405, baseType: !3258, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!85, !2501, !562}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3255, file: !14, line: 406, baseType: !3262, size: 64, offset: 64)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!85, !1286, !3265}
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !699, line: 293, size: 1536, elements: !3267)
!3267 = !{!3268, !3298, !3312}
!3268 = !DIDerivedType(tag: DW_TAG_member, scope: !3266, file: !699, line: 295, baseType: !3269, size: 512)
!3269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3266, file: !699, line: 295, size: 512, elements: !3270)
!3270 = !{!3271, !3297}
!3271 = !DIDerivedType(tag: DW_TAG_member, scope: !3269, file: !699, line: 296, baseType: !3272, size: 448)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3269, file: !699, line: 296, size: 448, elements: !3273)
!3273 = !{!3274, !3275, !3284, !3285, !3286, !3295, !3296}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3272, file: !699, line: 298, baseType: !296, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, scope: !3272, file: !699, line: 299, baseType: !3276, size: 128, offset: 64)
!3276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3272, file: !699, line: 299, size: 128, elements: !3277)
!3277 = !{!3278, !3279}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3276, file: !699, line: 300, baseType: !146, size: 128)
!3279 = !DIDerivedType(tag: DW_TAG_member, scope: !3276, file: !699, line: 302, baseType: !3280, size: 128)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3276, file: !699, line: 302, size: 128, elements: !3281)
!3281 = !{!3282, !3283}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3280, file: !699, line: 303, baseType: !318, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3280, file: !699, line: 305, baseType: !7, size: 32, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3272, file: !699, line: 310, baseType: !323, size: 64, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3272, file: !699, line: 311, baseType: !296, size: 64, offset: 256)
!3286 = !DIDerivedType(tag: DW_TAG_member, scope: !3272, file: !699, line: 312, baseType: !3287, size: 64, offset: 320)
!3287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3272, file: !699, line: 312, size: 64, elements: !3288)
!3288 = !{!3289, !3290}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3287, file: !699, line: 313, baseType: !318, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3287, file: !699, line: 314, baseType: !3291, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !699, line: 257, baseType: !3292)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !699, line: 255, size: 64, elements: !3293)
!3293 = !{!3294}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3292, file: !699, line: 256, baseType: !296, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3272, file: !699, line: 316, baseType: !196, size: 32, offset: 384)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3272, file: !699, line: 317, baseType: !196, size: 32, offset: 416)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3269, file: !699, line: 323, baseType: !2502, size: 512, align: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, scope: !3266, file: !699, line: 325, baseType: !3299, size: 512, offset: 512)
!3299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3266, file: !699, line: 325, size: 512, elements: !3300)
!3300 = !{!3301, !3311}
!3301 = !DIDerivedType(tag: DW_TAG_member, scope: !3299, file: !699, line: 326, baseType: !3302, size: 320)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3299, file: !699, line: 326, size: 320, elements: !3303)
!3303 = !{!3304, !3305, !3306, !3307, !3308, !3309, !3310}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3302, file: !699, line: 327, baseType: !296, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3302, file: !699, line: 328, baseType: !296, size: 64, offset: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3302, file: !699, line: 329, baseType: !296, size: 64, offset: 128)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3302, file: !699, line: 331, baseType: !196, size: 32, offset: 192)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3302, file: !699, line: 332, baseType: !196, size: 32, offset: 224)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3302, file: !699, line: 333, baseType: !196, size: 32, offset: 256)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3302, file: !699, line: 335, baseType: !7, size: 32, offset: 288)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3299, file: !699, line: 339, baseType: !2502, size: 512, align: 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, scope: !3266, file: !699, line: 341, baseType: !3313, size: 512, offset: 1024)
!3313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3266, file: !699, line: 341, size: 512, elements: !3314)
!3314 = !{!3315, !3324, !3330}
!3315 = !DIDerivedType(tag: DW_TAG_member, scope: !3313, file: !699, line: 342, baseType: !3316, size: 384)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3313, file: !699, line: 342, size: 384, elements: !3317)
!3317 = !{!3318, !3319, !3320, !3321, !3322, !3323}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3316, file: !699, line: 343, baseType: !296, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3316, file: !699, line: 344, baseType: !296, size: 64, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3316, file: !699, line: 346, baseType: !318, size: 64, offset: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3316, file: !699, line: 347, baseType: !318, size: 64, offset: 192)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3316, file: !699, line: 348, baseType: !318, size: 64, offset: 256)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3316, file: !699, line: 349, baseType: !318, size: 64, offset: 320)
!3324 = !DIDerivedType(tag: DW_TAG_member, scope: !3313, file: !699, line: 352, baseType: !3325, size: 256)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3313, file: !699, line: 352, size: 256, elements: !3326)
!3326 = !{!3327, !3328, !3329}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3325, file: !699, line: 353, baseType: !296, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3325, file: !699, line: 354, baseType: !296, size: 64, offset: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3325, file: !699, line: 356, baseType: !146, size: 128, offset: 128)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3313, file: !699, line: 359, baseType: !2502, size: 512, align: 128)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3255, file: !14, line: 409, baseType: !3332, size: 64, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!85, !323, !562}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3255, file: !14, line: 412, baseType: !3336, size: 64, offset: 192)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!1447, !323, !3265}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3255, file: !14, line: 414, baseType: !3340, size: 64, offset: 256)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{null, !3343}
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3255, file: !14, line: 416, baseType: !3346, size: 64, offset: 320)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!85, !1286, !323, !488, !7, !3349, !1751}
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3255, file: !14, line: 419, baseType: !3351, size: 64, offset: 384)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!85, !1286, !323, !488, !7, !7, !2501, !318}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3255, file: !14, line: 424, baseType: !3355, size: 64, offset: 448)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!3358, !323, !3358}
!3358 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !147, line: 131, baseType: !400)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3255, file: !14, line: 425, baseType: !3360, size: 64, offset: 512)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{null, !3265, !293, !293}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3255, file: !14, line: 426, baseType: !3364, size: 64, offset: 576)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!1447, !3265, !692}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3255, file: !14, line: 427, baseType: !3368, size: 64, offset: 640)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{null, !3265}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3255, file: !14, line: 428, baseType: !1580, size: 64, offset: 704)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3255, file: !14, line: 433, baseType: !3373, size: 64, offset: 768)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!85, !323, !3265, !3265, !50}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3255, file: !14, line: 435, baseType: !3377, size: 64, offset: 832)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!85, !3265}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3255, file: !14, line: 436, baseType: !3381, size: 64, offset: 896)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!1447, !3265, !293, !293}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3255, file: !14, line: 438, baseType: !3385, size: 64, offset: 960)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{null, !3265, !3388, !3388}
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3255, file: !14, line: 439, baseType: !3390, size: 64, offset: 1024)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!85, !323, !2501}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3255, file: !14, line: 442, baseType: !3394, size: 64, offset: 1088)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!85, !3397, !1286, !3399}
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3255, file: !14, line: 444, baseType: !1743, size: 64, offset: 1152)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3255, file: !14, line: 445, baseType: !3402, size: 64, offset: 1216)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!85, !1583, !1605}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !324, file: !14, line: 486, baseType: !296, size: 64, offset: 896)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !324, file: !14, line: 487, baseType: !841, size: 320, offset: 960)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !324, file: !14, line: 488, baseType: !1786, size: 32, offset: 1280)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !324, file: !14, line: 489, baseType: !176, size: 32, offset: 1312)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !324, file: !14, line: 490, baseType: !146, size: 128, offset: 1344)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !324, file: !14, line: 491, baseType: !318, size: 64, offset: 1472)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !313, file: !272, line: 180, baseType: !3412, size: 64, offset: 320)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!278, !1286, !169, !312, !246, !488, !293}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !313, file: !272, line: 182, baseType: !3412, size: 64, offset: 384)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !313, file: !272, line: 184, baseType: !3417, size: 64, offset: 448)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!85, !1286, !169, !312, !1644}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !301, file: !272, line: 90, baseType: !3421, size: 64, offset: 192)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !301, file: !272, line: 91, baseType: !3423, size: 64, offset: 256)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !262, file: !162, line: 120, baseType: !3425, size: 64, offset: 192)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!3428, !229}
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3430)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !3431)
!3431 = !{!3432, !3433, !3437, !3441, !3447, !3451}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3430, file: !58, line: 40, baseType: !57, size: 32)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3430, file: !58, line: 41, baseType: !3434, size: 64, offset: 64)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!1447}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3430, file: !58, line: 42, baseType: !3438, size: 64, offset: 128)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!318}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3430, file: !58, line: 43, baseType: !3442, size: 64, offset: 192)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!1875, !3445}
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3430, file: !58, line: 44, baseType: !3448, size: 64, offset: 256)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!1875}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3430, file: !58, line: 45, baseType: !3017, size: 64, offset: 320)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !262, file: !162, line: 121, baseType: !3453, size: 64, offset: 256)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!1875, !229}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !262, file: !162, line: 122, baseType: !3457, size: 64, offset: 320)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{null, !229, !3460, !3461}
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !161, file: !162, line: 70, baseType: !3463, size: 64, offset: 384)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !503, line: 190, size: 1152, elements: !3465)
!3465 = !{!3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3557, !3558, !3559, !3560, !3561, !3564}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3464, file: !503, line: 191, baseType: !196, size: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3464, file: !503, line: 192, baseType: !196, size: 32, offset: 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3464, file: !503, line: 202, baseType: !3463, size: 64, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3464, file: !503, line: 203, baseType: !165, size: 64, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3464, file: !503, line: 205, baseType: !1013, size: 192, align: 64, offset: 192)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3464, file: !503, line: 207, baseType: !1875, size: 64, offset: 384)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3464, file: !503, line: 208, baseType: !7, size: 32, offset: 448)
!3473 = !DIDerivedType(tag: DW_TAG_member, scope: !3464, file: !503, line: 209, baseType: !3474, size: 256, offset: 512)
!3474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3464, file: !503, line: 209, size: 256, elements: !3475)
!3475 = !{!3476, !3485, !3489}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3474, file: !503, line: 210, baseType: !3477, size: 256)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !503, line: 153, size: 256, elements: !3478)
!3478 = !{!3479, !3480, !3481, !3484}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3477, file: !503, line: 154, baseType: !296, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3477, file: !503, line: 156, baseType: !1145, size: 64, offset: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3477, file: !503, line: 162, baseType: !3482, size: 64, offset: 128)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !503, line: 162, flags: DIFlagFwdDecl)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3477, file: !503, line: 167, baseType: !296, size: 64, offset: 192)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3474, file: !503, line: 211, baseType: !3486, size: 64)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !503, line: 170, size: 64, elements: !3487)
!3487 = !{!3488}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3486, file: !503, line: 171, baseType: !3463, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3474, file: !503, line: 212, baseType: !3490, size: 256)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !503, line: 174, size: 256, elements: !3491)
!3491 = !{!3492, !3552, !3555, !3556}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3490, file: !503, line: 175, baseType: !3493, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3495)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !503, line: 271, size: 768, elements: !3496)
!3496 = !{!3497, !3517, !3521, !3525, !3529, !3533, !3537, !3541, !3542, !3543, !3544, !3548}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3495, file: !503, line: 276, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!85, !3501}
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !503, line: 251, size: 1216, elements: !3503)
!3503 = !{!3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3502, file: !503, line: 253, baseType: !3463, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3502, file: !503, line: 254, baseType: !1286, size: 64, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3502, file: !503, line: 255, baseType: !600, size: 64, offset: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3502, file: !503, line: 256, baseType: !318, size: 64, offset: 192)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3502, file: !503, line: 259, baseType: !627, size: 256, offset: 256)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3502, file: !503, line: 260, baseType: !627, size: 256, offset: 512)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3502, file: !503, line: 261, baseType: !85, size: 32, offset: 768)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3502, file: !503, line: 262, baseType: !146, size: 128, offset: 832)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3502, file: !503, line: 263, baseType: !246, size: 64, offset: 960)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3502, file: !503, line: 265, baseType: !293, size: 64, offset: 1024)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3502, file: !503, line: 266, baseType: !1447, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3502, file: !503, line: 267, baseType: !1447, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3502, file: !503, line: 268, baseType: !1689, size: 64, offset: 1152)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3495, file: !503, line: 277, baseType: !3518, size: 64, offset: 64)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{null, !3501}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3495, file: !503, line: 290, baseType: !3522, size: 64, offset: 128)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!85, !600, !318}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3495, file: !503, line: 292, baseType: !3526, size: 64, offset: 192)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!318, !600, !1574}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3495, file: !503, line: 293, baseType: !3530, size: 64, offset: 256)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!318, !600, !318, !1574}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3495, file: !503, line: 294, baseType: !3534, size: 64, offset: 320)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{null, !600, !318}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3495, file: !503, line: 296, baseType: !3538, size: 64, offset: 384)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!278, !3501, !246, !293, !488}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3495, file: !503, line: 306, baseType: !293, size: 64, offset: 448)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3495, file: !503, line: 313, baseType: !1447, size: 8, offset: 512)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3495, file: !503, line: 314, baseType: !3538, size: 64, offset: 576)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3495, file: !503, line: 317, baseType: !3545, size: 64, offset: 640)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!1631, !3501, !1633}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3495, file: !503, line: 320, baseType: !3549, size: 64, offset: 704)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!85, !3501, !1644}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3490, file: !503, line: 176, baseType: !3553, size: 64, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !503, line: 35, flags: DIFlagFwdDecl)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3490, file: !503, line: 177, baseType: !488, size: 64, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3490, file: !503, line: 178, baseType: !3463, size: 64, offset: 192)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3464, file: !503, line: 215, baseType: !318, size: 64, offset: 768)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3464, file: !503, line: 221, baseType: !400, size: 64, offset: 832)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3464, file: !503, line: 223, baseType: !216, size: 16, offset: 896)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3464, file: !503, line: 224, baseType: !288, size: 16, offset: 912)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3464, file: !503, line: 225, baseType: !3562, size: 64, offset: 960)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !503, line: 36, flags: DIFlagFwdDecl)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3464, file: !503, line: 227, baseType: !941, size: 128, align: 64, offset: 1024)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !161, file: !162, line: 71, baseType: !3566, size: 32, offset: 448)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3567, line: 19, size: 32, elements: !3568)
!3567 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3568 = !{!3569}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3566, file: !3567, line: 20, baseType: !970, size: 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !161, file: !162, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !161, file: !162, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !161, file: !162, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !161, file: !162, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !161, file: !162, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !158, file: !6, line: 47, baseType: !141, size: 64, offset: 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !158, file: !6, line: 48, baseType: !169, size: 64, offset: 576)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !158, file: !6, line: 49, baseType: !3578, size: 64, offset: 640)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !158, file: !6, line: 50, baseType: !2024, size: 64, offset: 704)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !142, file: !6, line: 418, baseType: !3582, size: 64, offset: 1408)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3584)
!3584 = !{!3585, !3586, !3591, !3595, !3599, !3603}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3583, file: !6, line: 54, baseType: !284, size: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3583, file: !6, line: 55, baseType: !3587, size: 64, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!278, !3582, !3590, !246}
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3583, file: !6, line: 57, baseType: !3592, size: 64, offset: 192)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!278, !3582, !3590, !165, !293}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3583, file: !6, line: 59, baseType: !3596, size: 64, offset: 256)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{null, !141, !165}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3583, file: !6, line: 60, baseType: !3600, size: 64, offset: 320)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!85, !141}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3583, file: !6, line: 61, baseType: !3604, size: 64, offset: 384)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{null, !141}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !142, file: !6, line: 419, baseType: !165, size: 64, offset: 1472)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !142, file: !6, line: 420, baseType: !165, size: 64, offset: 1536)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !142, file: !6, line: 421, baseType: !169, size: 64, offset: 1600)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !142, file: !6, line: 424, baseType: !3611, size: 64, offset: 1664)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3613)
!3613 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !142, file: !6, line: 425, baseType: !3615, size: 64, offset: 1728)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1390)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !142, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !142, file: !6, line: 435, baseType: !627, size: 256, offset: 1856)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !142, file: !6, line: 437, baseType: !3620, size: 64, offset: 2112)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3622, line: 69, size: 320, elements: !3623)
!3622 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3623 = !{!3624, !3625, !3626, !3643, !3645, !3649, !3650}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3621, file: !3622, line: 70, baseType: !165, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3621, file: !3622, line: 71, baseType: !141, size: 64, offset: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3621, file: !3622, line: 72, baseType: !3627, size: 64, offset: 128)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3629)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3622, line: 47, size: 256, elements: !3630)
!3630 = !{!3631, !3632, !3638, !3642}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3629, file: !3622, line: 49, baseType: !7, size: 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3629, file: !3622, line: 51, baseType: !3633, size: 64, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!85, !165, !3636}
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3621)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3629, file: !3622, line: 53, baseType: !3639, size: 64, offset: 128)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!85, !246, !3636}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3629, file: !3622, line: 55, baseType: !3017, size: 64, offset: 192)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3621, file: !3622, line: 73, baseType: !3644, size: 16, offset: 192)
!3644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3621, file: !3622, line: 74, baseType: !3646, size: 8, offset: 208)
!3646 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !205, line: 16, baseType: !3647)
!3647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !207, line: 20, baseType: !3648)
!3648 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3621, file: !3622, line: 75, baseType: !204, size: 8, offset: 216)
!3650 = !DIDerivedType(tag: DW_TAG_member, scope: !3621, file: !3622, line: 76, baseType: !3651, size: 64, offset: 256)
!3651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3621, file: !3622, line: 76, size: 64, elements: !3652)
!3652 = !{!3653, !3654, !3661}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3651, file: !3622, line: 77, baseType: !318, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3651, file: !3622, line: 78, baseType: !3655, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3657)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3622, line: 86, size: 128, elements: !3658)
!3658 = !{!3659, !3660}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3657, file: !3622, line: 87, baseType: !7, size: 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3657, file: !3622, line: 88, baseType: !246, size: 64, offset: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3651, file: !3622, line: 79, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3664)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3622, line: 92, size: 256, elements: !3665)
!3665 = !{!3666, !3667, !3668, !3669, !3670}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3664, file: !3622, line: 94, baseType: !7, size: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3664, file: !3622, line: 95, baseType: !7, size: 32, offset: 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3664, file: !3622, line: 96, baseType: !950, size: 64, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3664, file: !3622, line: 97, baseType: !3627, size: 64, offset: 128)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3664, file: !3622, line: 98, baseType: !318, size: 64, offset: 192)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !142, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !142, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !142, file: !6, line: 442, baseType: !3611, size: 64, offset: 2240)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !142, file: !6, line: 443, baseType: !3615, size: 64, offset: 2304)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !142, file: !6, line: 444, baseType: !1447, size: 8, offset: 2368)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !142, file: !6, line: 451, baseType: !1447, size: 8, offset: 2376)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !142, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !142, file: !6, line: 455, baseType: !3679, size: 64, offset: 2432)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3681, line: 23, size: 96, elements: !3682)
!3681 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3682 = !{!3683, !3684, !3685}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3680, file: !3681, line: 24, baseType: !85, size: 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3680, file: !3681, line: 24, baseType: !85, size: 32, offset: 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3680, file: !3681, line: 24, baseType: !85, size: 32, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !142, file: !6, line: 458, baseType: !3687, size: 64, offset: 2496)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!85}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !142, file: !6, line: 460, baseType: !3691, size: 4032, align: 512, offset: 2560)
!3691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3692, size: 4032, elements: !3706)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3693)
!3693 = !{!3694, !3695, !3696}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3692, file: !6, line: 363, baseType: !318, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3692, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3692, file: !6, line: 367, baseType: !3697, size: 448, offset: 128)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3698)
!3698 = !{!3699, !3700}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3697, file: !6, line: 320, baseType: !141, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3697, file: !6, line: 321, baseType: !3701, size: 384, offset: 64)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3702, line: 40, size: 384, elements: !3703)
!3702 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3703 = !{!3704}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3701, file: !3702, line: 41, baseType: !3705, size: 384, align: 64)
!3705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1013, size: 384, align: 64, elements: !2158)
!3706 = !{!3707}
!3707 = !DISubrange(count: 7)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !142, file: !6, line: 463, baseType: !3709, size: 192, offset: 6592)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3710, line: 8, size: 192, elements: !3711)
!3710 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3711 = !{!3712, !3713, !3714}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3709, file: !3710, line: 10, baseType: !7, size: 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3709, file: !3710, line: 11, baseType: !594, size: 64, offset: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3709, file: !3710, line: 12, baseType: !3715, size: 64, offset: 128)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3717, line: 59, size: 48, elements: !3718)
!3717 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3718 = !{!3719, !3720, !3721, !3722, !3723, !3724}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3716, file: !3717, line: 60, baseType: !1892, size: 16)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3716, file: !3717, line: 61, baseType: !1892, size: 16, offset: 16)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3716, file: !3717, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3716, file: !3717, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3716, file: !3717, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3716, file: !3717, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !142, file: !6, line: 465, baseType: !296, size: 64, offset: 6784)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !142, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !142, file: !6, line: 470, baseType: !146, size: 128, offset: 6912)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !142, file: !6, line: 471, baseType: !3729, size: 64, offset: 7040)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3731, line: 33, size: 96, elements: !3732)
!3731 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3732 = !{!3733, !3734, !3735, !3736}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3730, file: !3731, line: 37, baseType: !85, size: 32)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3730, file: !3731, line: 43, baseType: !85, size: 32, offset: 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3730, file: !3731, line: 45, baseType: !216, size: 16, offset: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3730, file: !3731, line: 47, baseType: !216, size: 16, offset: 80)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !142, file: !6, line: 476, baseType: !3738, size: 64, offset: 7104)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !3740)
!3740 = !{!3741, !3757, !3758, !3759}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3739, file: !6, line: 379, baseType: !3742, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3744, line: 204, baseType: !3745)
!3744 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3744, line: 197, size: 192, elements: !3746)
!3746 = !{!3747, !3749, !3750, !3751, !3753, !3755}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3745, file: !3744, line: 198, baseType: !3748, size: 32)
!3748 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3744, line: 21, baseType: !397)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3745, file: !3744, line: 199, baseType: !208, size: 8, offset: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3745, file: !3744, line: 200, baseType: !208, size: 8, offset: 40)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3745, file: !3744, line: 201, baseType: !3752, size: 16, offset: 48)
!3752 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3744, line: 17, baseType: !215)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3745, file: !3744, line: 202, baseType: !3754, size: 64, offset: 64)
!3754 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3744, line: 16, baseType: !401)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3745, file: !3744, line: 203, baseType: !3756, size: 64, offset: 128)
!3756 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3744, line: 22, baseType: !401)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3739, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3739, file: !6, line: 381, baseType: !246, size: 64, offset: 128)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3739, file: !6, line: 382, baseType: !246, size: 64, offset: 192)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !142, file: !6, line: 477, baseType: !3739, size: 256, offset: 7168)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !142, file: !6, line: 480, baseType: !3762, size: 64, offset: 7424)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !142, file: !6, line: 483, baseType: !3765, size: 64, offset: 7488)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !142, file: !6, line: 488, baseType: !246, size: 64, offset: 7552)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !142, file: !6, line: 492, baseType: !318, size: 64, offset: 7616)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !142, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !142, file: !6, line: 495, baseType: !318, size: 64, offset: 7744)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !142, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !142, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !142, file: !6, line: 500, baseType: !3774, size: 64, offset: 7872)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3776, line: 45, baseType: !3777)
!3776 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !142, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !142, file: !6, line: 504, baseType: !3780, size: 64, offset: 8000)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3783, line: 96, size: 192, elements: !3784)
!3783 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3784 = !{!3785, !3786, !3829, !3831}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3782, file: !3783, line: 97, baseType: !7, size: 32)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3782, file: !3783, line: 98, baseType: !3787, size: 64, offset: 64)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3783, line: 24, size: 3072, elements: !3789)
!3789 = !{!3790, !3792, !3793, !3794, !3795, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3826, !3827, !3828}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3788, file: !3783, line: 26, baseType: !3791, size: 128)
!3791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 128, elements: !2158)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3788, file: !3783, line: 27, baseType: !3791, size: 128, offset: 128)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3788, file: !3783, line: 28, baseType: !85, size: 32, offset: 256)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3788, file: !3783, line: 31, baseType: !176, size: 32, align: 512, offset: 512)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3788, file: !3783, line: 32, baseType: !3796, size: 960, offset: 576)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3797, line: 206, size: 960, elements: !3798)
!3797 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3798 = !{!3799, !3800, !3803, !3805, !3806, !3808}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3796, file: !3797, line: 207, baseType: !944, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3796, file: !3797, line: 208, baseType: !3801, size: 256, offset: 64)
!3801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3802, size: 256, elements: !1335)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3796, file: !3797, line: 209, baseType: !3804, size: 256, offset: 320)
!3804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 256, elements: !1335)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3796, file: !3797, line: 213, baseType: !282, size: 64, offset: 576)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3796, file: !3797, line: 215, baseType: !3807, size: 256, offset: 640)
!3807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 256, elements: !1335)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3796, file: !3797, line: 216, baseType: !204, size: 8, offset: 896)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3788, file: !3783, line: 33, baseType: !296, size: 64, offset: 1536)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3788, file: !3783, line: 34, baseType: !296, size: 64, offset: 1600)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3788, file: !3783, line: 35, baseType: !1447, size: 8, offset: 1664)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3788, file: !3783, line: 36, baseType: !2654, size: 320, offset: 1728)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3788, file: !3783, line: 37, baseType: !1914, size: 256, offset: 2048)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3788, file: !3783, line: 38, baseType: !941, size: 128, align: 64, offset: 2304)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3788, file: !3783, line: 39, baseType: !3816, size: 64, offset: 2432)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3783, line: 49, size: 768, elements: !3818)
!3818 = !{!3819, !3820, !3821, !3822, !3823, !3824, !3825}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3817, file: !3783, line: 50, baseType: !176, size: 32)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3817, file: !3783, line: 51, baseType: !3804, size: 256, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3817, file: !3783, line: 53, baseType: !3804, size: 256, offset: 320)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3817, file: !3783, line: 54, baseType: !296, size: 64, offset: 576)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3817, file: !3783, line: 55, baseType: !3816, size: 64, offset: 640)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3817, file: !3783, line: 56, baseType: !85, size: 32, offset: 704)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3817, file: !3783, line: 57, baseType: !85, size: 32, offset: 736)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3788, file: !3783, line: 40, baseType: !296, size: 64, offset: 2496)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3788, file: !3783, line: 42, baseType: !85, size: 32, offset: 2560)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3788, file: !3783, line: 43, baseType: !3781, size: 64, offset: 2624)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3782, file: !3783, line: 99, baseType: !3830, offset: 128)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !530, line: 211, elements: !531)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3782, file: !3783, line: 100, baseType: !3832, size: 64, offset: 128)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3783, line: 63, size: 3008, elements: !3834)
!3834 = !{!3835, !3836, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3864}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3833, file: !3783, line: 64, baseType: !3816, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3833, file: !3783, line: 65, baseType: !3837, size: 192, offset: 64)
!3837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3816, size: 192, elements: !247)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3833, file: !3783, line: 67, baseType: !85, size: 32, offset: 256)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3833, file: !3783, line: 68, baseType: !627, size: 256, offset: 320)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3833, file: !3783, line: 69, baseType: !176, size: 32, offset: 576)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3833, file: !3783, line: 70, baseType: !627, size: 256, offset: 640)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3833, file: !3783, line: 71, baseType: !296, size: 64, offset: 896)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3833, file: !3783, line: 72, baseType: !296, size: 64, offset: 960)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3833, file: !3783, line: 73, baseType: !296, size: 64, offset: 1024)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3833, file: !3783, line: 74, baseType: !296, size: 64, offset: 1088)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3833, file: !3783, line: 75, baseType: !296, size: 64, offset: 1152)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3833, file: !3783, line: 76, baseType: !296, size: 64, offset: 1216)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3833, file: !3783, line: 77, baseType: !296, size: 64, offset: 1280)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3833, file: !3783, line: 78, baseType: !296, size: 64, offset: 1344)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3833, file: !3783, line: 79, baseType: !1447, size: 8, offset: 1408)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3833, file: !3783, line: 80, baseType: !296, size: 64, offset: 1472)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3833, file: !3783, line: 81, baseType: !627, size: 256, offset: 1536)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3833, file: !3783, line: 82, baseType: !2025, size: 256, offset: 1792)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3833, file: !3783, line: 84, baseType: !196, size: 32, offset: 2048)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3833, file: !3783, line: 87, baseType: !296, size: 64, offset: 2112)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3833, file: !3783, line: 88, baseType: !296, size: 64, offset: 2176)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3833, file: !3783, line: 89, baseType: !3858, size: 704, offset: 2240)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1915, line: 111, size: 704, elements: !3859)
!3859 = !{!3860, !3861, !3862, !3863}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3858, file: !1915, line: 112, baseType: !1914, size: 256)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3858, file: !1915, line: 113, baseType: !2654, size: 320, offset: 256)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3858, file: !1915, line: 116, baseType: !2948, size: 64, offset: 576)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3858, file: !1915, line: 117, baseType: !85, size: 32, offset: 640)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3833, file: !3783, line: 90, baseType: !3781, size: 64, offset: 2944)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !142, file: !6, line: 515, baseType: !3866, size: 64, offset: 8064)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3868, line: 117, size: 128, elements: !3869)
!3868 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3869 = !{!3870, !3871, !3872}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3867, file: !3868, line: 118, baseType: !1390, size: 32)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3867, file: !3868, line: 119, baseType: !1390, size: 32, offset: 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3867, file: !3868, line: 120, baseType: !282, size: 64, offset: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !142, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !142, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !142, file: !6, line: 520, baseType: !3876, size: 64, offset: 8192)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !142, file: !6, line: 523, baseType: !3878, size: 64, offset: 8256)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !142, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !142, file: !6, line: 525, baseType: !3883, size: 64, offset: 8384)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !142, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !142, file: !6, line: 533, baseType: !318, size: 64, offset: 8512)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !142, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !142, file: !6, line: 535, baseType: !3890, size: 64, offset: 8640)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !142, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !142, file: !6, line: 539, baseType: !85, size: 32, offset: 8736)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !142, file: !6, line: 540, baseType: !3894, size: 64, offset: 8768)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3896, line: 32, size: 64, elements: !3897)
!3896 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3897 = !{!3898, !3899}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3895, file: !3896, line: 33, baseType: !1390, size: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3895, file: !3896, line: 34, baseType: !1390, size: 32, offset: 32)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !142, file: !6, line: 563, baseType: !146, size: 128, offset: 8832)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !142, file: !6, line: 565, baseType: !146, size: 128, offset: 8960)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !142, file: !6, line: 568, baseType: !3903, size: 64, offset: 9088)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !142, file: !6, line: 570, baseType: !196, size: 32, offset: 9152)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwrng", file: !3907, line: 39, size: 1216, elements: !3908)
!3907 = !DIFile(filename: "./include/linux/hw_random.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e66921e144ab1b4c2bb77e5a2a5ce1d9")
!3908 = !{!3909, !3910, !3914, !3918, !3922, !3926, !3930, !3931, !3932, !3933, !3934, !3935}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3906, file: !3907, line: 40, baseType: !165, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !3906, file: !3907, line: 41, baseType: !3911, size: 64, offset: 64)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!85, !3905}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3906, file: !3907, line: 42, baseType: !3915, size: 64, offset: 128)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{null, !3905}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "data_present", scope: !3906, file: !3907, line: 43, baseType: !3919, size: 64, offset: 192)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!85, !3905, !85}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "data_read", scope: !3906, file: !3907, line: 44, baseType: !3923, size: 64, offset: 256)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!85, !3905, !1965}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3906, file: !3907, line: 45, baseType: !3927, size: 64, offset: 320)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!85, !3905, !318, !293, !1447}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3906, file: !3907, line: 46, baseType: !296, size: 64, offset: 384)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !3906, file: !3907, line: 47, baseType: !216, size: 16, offset: 448)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3906, file: !3907, line: 50, baseType: !146, size: 128, offset: 512)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3906, file: !3907, line: 51, baseType: !3566, size: 32, offset: 640)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_done", scope: !3906, file: !3907, line: 52, baseType: !2025, size: 256, offset: 704)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "dying", scope: !3906, file: !3907, line: 53, baseType: !2025, size: 256, offset: 960)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !147, line: 42, baseType: !296)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !150)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3945)
!3945 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !396)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3942)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3952 = !{!3953, !3955, !3960, !3965, !3967, !3969, !3974, !3976, !3978, !3983, !3985, !3987, !3989, !3991, !3996, !3998, !4002, !4007, !4012, !4017, !4019, !4021, !4023, !4026, !4028, !0, !4030, !4035, !4037, !4042, !4044, !4407, !4409, !4411, !4413, !4419, !4422, !4424, !4429, !4432, !4446, !4449, !4452, !4455, !4460, !4462, !4465, !4467, !4472, !4474, !4476, !4478, !4480, !4482, !4484, !4486, !4493, !4498, !4503}
!3953 = !DIGlobalVariableExpression(var: !3954, expr: !DIExpression())
!3954 = distinct !DIGlobalVariable(name: "__param_current_quality", scope: !2, file: !3, line: 48, type: !3637, isLocal: true, isDefinition: true, align: 64)
!3955 = !DIGlobalVariableExpression(var: !3956, expr: !DIExpression())
!3956 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_current_qualitytype267", scope: !2, file: !3, line: 48, type: !3957, isLocal: true, isDefinition: true, align: 8)
!3957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 328, elements: !3958)
!3958 = !{!3959}
!3959 = !DISubrange(count: 41)
!3960 = !DIGlobalVariableExpression(var: !3961, expr: !DIExpression())
!3961 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_current_quality268", scope: !2, file: !3, line: 49, type: !3962, isLocal: true, isDefinition: true, align: 8)
!3962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 984, elements: !3963)
!3963 = !{!3964}
!3964 = !DISubrange(count: 123)
!3965 = !DIGlobalVariableExpression(var: !3966, expr: !DIExpression())
!3966 = distinct !DIGlobalVariable(name: "__param_default_quality", scope: !2, file: !3, line: 51, type: !3637, isLocal: true, isDefinition: true, align: 64)
!3967 = !DIGlobalVariableExpression(var: !3968, expr: !DIExpression())
!3968 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_default_qualitytype269", scope: !2, file: !3, line: 51, type: !3957, isLocal: true, isDefinition: true, align: 8)
!3969 = !DIGlobalVariableExpression(var: !3970, expr: !DIExpression())
!3970 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_default_quality270", scope: !2, file: !3, line: 52, type: !3971, isLocal: true, isDefinition: true, align: 8)
!3971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 752, elements: !3972)
!3972 = !{!3973}
!3973 = !DISubrange(count: 94)
!3974 = !DIGlobalVariableExpression(var: !3975, expr: !DIExpression())
!3975 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hwrng_register275", scope: !2, file: !3, line: 603, type: !318, isLocal: true, isDefinition: true)
!3976 = !DIGlobalVariableExpression(var: !3977, expr: !DIExpression())
!3977 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hwrng_unregister276", scope: !2, file: !3, line: 639, type: !318, isLocal: true, isDefinition: true)
!3978 = !DIGlobalVariableExpression(var: !3979, expr: !DIExpression())
!3979 = distinct !DIGlobalVariable(scope: null, file: !3, line: 661, type: !3980, isLocal: true, isDefinition: true)
!3980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 152, elements: !3981)
!3981 = !{!3982}
!3982 = !DISubrange(count: 19)
!3983 = !DIGlobalVariableExpression(var: !3984, expr: !DIExpression())
!3984 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_hwrng_register277", scope: !2, file: !3, line: 675, type: !318, isLocal: true, isDefinition: true)
!3985 = !DIGlobalVariableExpression(var: !3986, expr: !DIExpression())
!3986 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_hwrng_unregister278", scope: !2, file: !3, line: 681, type: !318, isLocal: true, isDefinition: true)
!3987 = !DIGlobalVariableExpression(var: !3988, expr: !DIExpression())
!3988 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hwrng_msleep279", scope: !2, file: !3, line: 689, type: !318, isLocal: true, isDefinition: true)
!3989 = !DIGlobalVariableExpression(var: !3990, expr: !DIExpression())
!3990 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hwrng_yield280", scope: !2, file: !3, line: 695, type: !318, isLocal: true, isDefinition: true)
!3991 = !DIGlobalVariableExpression(var: !3992, expr: !DIExpression())
!3992 = distinct !DIGlobalVariable(scope: null, file: !3, line: 724, type: !3993, isLocal: true, isDefinition: true)
!3993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 240, elements: !3994)
!3994 = !{!3995}
!3995 = !DISubrange(count: 30)
!3996 = !DIGlobalVariableExpression(var: !3997, expr: !DIExpression())
!3997 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_rng_core__281_732_hwrng_modinit5282", scope: !2, file: !3, line: 732, type: !318, isLocal: true, isDefinition: true)
!3998 = !DIGlobalVariableExpression(var: !3999, expr: !DIExpression())
!3999 = distinct !DIGlobalVariable(name: "__exitcall_hwrng_modexit", scope: !2, file: !3, line: 733, type: !4000, isLocal: true, isDefinition: true)
!4000 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4001, line: 120, baseType: !3903)
!4001 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4002 = !DIGlobalVariableExpression(var: !4003, expr: !DIExpression())
!4003 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description283", scope: !2, file: !3, line: 735, type: !4004, isLocal: true, isDefinition: true, align: 8)
!4004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 496, elements: !4005)
!4005 = !{!4006}
!4006 = !DISubrange(count: 62)
!4007 = !DIGlobalVariableExpression(var: !4008, expr: !DIExpression())
!4008 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file284", scope: !2, file: !3, line: 736, type: !4009, isLocal: true, isDefinition: true, align: 8)
!4009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 368, elements: !4010)
!4010 = !{!4011}
!4011 = !DISubrange(count: 46)
!4012 = !DIGlobalVariableExpression(var: !4013, expr: !DIExpression())
!4013 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license285", scope: !2, file: !3, line: 736, type: !4014, isLocal: true, isDefinition: true, align: 8)
!4014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 168, elements: !4015)
!4015 = !{!4016}
!4016 = !DISubrange(count: 21)
!4017 = !DIGlobalVariableExpression(var: !4018, expr: !DIExpression())
!4018 = distinct !DIGlobalVariable(name: "current_rng", scope: !2, file: !3, line: 33, type: !3905, isLocal: true, isDefinition: true)
!4019 = !DIGlobalVariableExpression(var: !4020, expr: !DIExpression())
!4020 = distinct !DIGlobalVariable(name: "cur_rng_set_by_user", scope: !2, file: !3, line: 35, type: !85, isLocal: true, isDefinition: true)
!4021 = !DIGlobalVariableExpression(var: !4022, expr: !DIExpression())
!4022 = distinct !DIGlobalVariable(name: "hwrng_fill", scope: !2, file: !3, line: 36, type: !956, isLocal: true, isDefinition: true)
!4023 = !DIGlobalVariableExpression(var: !4024, expr: !DIExpression())
!4024 = distinct !DIGlobalVariable(name: "rng_buffer", scope: !2, file: !3, line: 44, type: !4025, isLocal: true, isDefinition: true)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!4026 = !DIGlobalVariableExpression(var: !4027, expr: !DIExpression())
!4027 = distinct !DIGlobalVariable(name: "rng_fillbuf", scope: !2, file: !3, line: 44, type: !4025, isLocal: true, isDefinition: true)
!4028 = !DIGlobalVariableExpression(var: !4029, expr: !DIExpression())
!4029 = distinct !DIGlobalVariable(name: "current_quality", scope: !2, file: !3, line: 45, type: !216, isLocal: true, isDefinition: true)
!4030 = !DIGlobalVariableExpression(var: !4031, expr: !DIExpression())
!4031 = distinct !DIGlobalVariable(name: "__param_str_default_quality", scope: !2, file: !3, line: 51, type: !4032, isLocal: true, isDefinition: true)
!4032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 200, elements: !4033)
!4033 = !{!4034}
!4034 = !DISubrange(count: 25)
!4035 = !DIGlobalVariableExpression(var: !4036, expr: !DIExpression())
!4036 = distinct !DIGlobalVariable(name: "default_quality", scope: !2, file: !3, line: 46, type: !216, isLocal: true, isDefinition: true)
!4037 = !DIGlobalVariableExpression(var: !4038, expr: !DIExpression())
!4038 = distinct !DIGlobalVariable(scope: null, file: !3, line: 304, type: !4039, isLocal: true, isDefinition: true)
!4039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 80, elements: !4040)
!4040 = !{!4041}
!4041 = !DISubrange(count: 10)
!4042 = !DIGlobalVariableExpression(var: !4043, expr: !DIExpression())
!4043 = distinct !DIGlobalVariable(scope: null, file: !3, line: 305, type: !1433, isLocal: true, isDefinition: true)
!4044 = !DIGlobalVariableExpression(var: !4045, expr: !DIExpression())
!4045 = distinct !DIGlobalVariable(name: "rng_miscdev", scope: !2, file: !3, line: 302, type: !4046, isLocal: true, isDefinition: true)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "miscdevice", file: !4047, line: 79, size: 640, elements: !4048)
!4047 = !DIFile(filename: "./include/linux/miscdevice.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a69389defd2997053c089e14bd956b02")
!4048 = !{!4049, !4050, !4051, !4052, !4053, !4403, !4404, !4405, !4406}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4046, file: !4047, line: 80, baseType: !85, size: 32)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4046, file: !4047, line: 81, baseType: !165, size: 64, offset: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4046, file: !4047, line: 82, baseType: !1561, size: 64, offset: 128)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4046, file: !4047, line: 83, baseType: !146, size: 128, offset: 192)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4046, file: !4047, line: 84, baseType: !4054, size: 64, offset: 320)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !4056)
!4056 = !{!4057, !4058, !4059, !4062, !4063, !4116, !4186, !4187, !4188, !4189, !4190, !4197, !4289, !4302, !4312, !4316, !4318, !4319, !4320, !4324, !4331, !4332, !4335, !4338, !4342, !4345, !4346, !4347, !4348, !4349, !4350, !4380, !4381, !4382, !4385, !4388, !4397, !4398, !4399, !4400, !4401, !4402}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4055, file: !70, line: 706, baseType: !161, size: 512)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4055, file: !70, line: 707, baseType: !4054, size: 64, offset: 512)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4055, file: !70, line: 709, baseType: !4060, size: 64, offset: 576)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4055, file: !70, line: 711, baseType: !165, size: 64, offset: 640)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4055, file: !70, line: 712, baseType: !4064, size: 64, offset: 704)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4066)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !4067)
!4067 = !{!4068, !4069, !4070, !4076, !4081, !4085}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4066, file: !70, line: 90, baseType: !165, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4066, file: !70, line: 91, baseType: !298, size: 64, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4066, file: !70, line: 92, baseType: !4071, size: 64, offset: 128)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!85, !4074, !241}
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4055)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4066, file: !70, line: 93, baseType: !4077, size: 64, offset: 192)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!246, !4074, !4080, !3460, !3461}
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4066, file: !70, line: 95, baseType: !4082, size: 64, offset: 256)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{null, !4054}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4066, file: !70, line: 97, baseType: !4086, size: 64, offset: 320)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4088)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !4089)
!4089 = !{!4090, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4088, file: !77, line: 287, baseType: !4091, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!85, !4054}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4088, file: !77, line: 288, baseType: !4082, size: 64, offset: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4088, file: !77, line: 289, baseType: !4091, size: 64, offset: 128)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4088, file: !77, line: 290, baseType: !4091, size: 64, offset: 192)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4088, file: !77, line: 291, baseType: !4091, size: 64, offset: 256)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4088, file: !77, line: 292, baseType: !4091, size: 64, offset: 320)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4088, file: !77, line: 293, baseType: !4091, size: 64, offset: 384)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4088, file: !77, line: 294, baseType: !4091, size: 64, offset: 448)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4088, file: !77, line: 295, baseType: !4091, size: 64, offset: 512)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4088, file: !77, line: 296, baseType: !4091, size: 64, offset: 576)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4088, file: !77, line: 297, baseType: !4091, size: 64, offset: 640)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4088, file: !77, line: 298, baseType: !4091, size: 64, offset: 704)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4088, file: !77, line: 299, baseType: !4091, size: 64, offset: 768)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4088, file: !77, line: 300, baseType: !4091, size: 64, offset: 832)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4088, file: !77, line: 301, baseType: !4091, size: 64, offset: 896)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4088, file: !77, line: 302, baseType: !4091, size: 64, offset: 960)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4088, file: !77, line: 303, baseType: !4091, size: 64, offset: 1024)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4088, file: !77, line: 304, baseType: !4091, size: 64, offset: 1088)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4088, file: !77, line: 305, baseType: !4091, size: 64, offset: 1152)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4088, file: !77, line: 306, baseType: !4091, size: 64, offset: 1216)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4088, file: !77, line: 307, baseType: !4091, size: 64, offset: 1280)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4088, file: !77, line: 308, baseType: !4091, size: 64, offset: 1344)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4088, file: !77, line: 309, baseType: !4091, size: 64, offset: 1408)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4055, file: !70, line: 714, baseType: !4117, size: 64, offset: 768)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4119)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4120, line: 80, size: 1344, elements: !4121)
!4120 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4121 = !{!4122, !4123, !4124, !4125, !4126, !4127, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4185}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4119, file: !4120, line: 81, baseType: !165, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4119, file: !4120, line: 82, baseType: !165, size: 64, offset: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4119, file: !4120, line: 83, baseType: !298, size: 64, offset: 128)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4119, file: !4120, line: 84, baseType: !298, size: 64, offset: 192)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4119, file: !4120, line: 85, baseType: !298, size: 64, offset: 256)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4119, file: !4120, line: 87, baseType: !4128, size: 64, offset: 320)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!85, !4054, !4131}
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !64, line: 96, size: 1152, elements: !4133)
!4133 = !{!4134, !4135, !4136, !4137, !4138, !4139, !4140, !4144, !4148, !4149, !4150, !4151, !4152, !4160, !4161, !4162, !4163, !4164, !4165}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4132, file: !64, line: 97, baseType: !165, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4132, file: !64, line: 98, baseType: !4117, size: 64, offset: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4132, file: !64, line: 100, baseType: !141, size: 64, offset: 128)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4132, file: !64, line: 101, baseType: !165, size: 64, offset: 192)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4132, file: !64, line: 103, baseType: !1447, size: 8, offset: 256)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4132, file: !64, line: 104, baseType: !63, size: 32, offset: 288)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4132, file: !64, line: 106, baseType: !4141, size: 64, offset: 320)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4143)
!4143 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !64, line: 106, flags: DIFlagFwdDecl)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4132, file: !64, line: 107, baseType: !4145, size: 64, offset: 384)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4147)
!4147 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !64, line: 107, flags: DIFlagFwdDecl)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4132, file: !64, line: 109, baseType: !4091, size: 64, offset: 448)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4132, file: !64, line: 110, baseType: !4082, size: 64, offset: 512)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4132, file: !64, line: 111, baseType: !4091, size: 64, offset: 576)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4132, file: !64, line: 112, baseType: !4082, size: 64, offset: 640)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4132, file: !64, line: 113, baseType: !4153, size: 64, offset: 704)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!85, !4054, !4156}
!4156 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4157)
!4157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4158)
!4158 = !{!4159}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4157, file: !77, line: 59, baseType: !85, size: 32)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4132, file: !64, line: 114, baseType: !4091, size: 64, offset: 768)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4132, file: !64, line: 115, baseType: !298, size: 64, offset: 832)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4132, file: !64, line: 116, baseType: !298, size: 64, offset: 896)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4132, file: !64, line: 118, baseType: !4086, size: 64, offset: 960)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4132, file: !64, line: 119, baseType: !4082, size: 64, offset: 1024)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4132, file: !64, line: 121, baseType: !4166, size: 64, offset: 1088)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !64, line: 121, flags: DIFlagFwdDecl)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4119, file: !4120, line: 88, baseType: !4071, size: 64, offset: 384)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4119, file: !4120, line: 89, baseType: !4091, size: 64, offset: 448)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4119, file: !4120, line: 90, baseType: !4082, size: 64, offset: 512)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4119, file: !4120, line: 91, baseType: !4082, size: 64, offset: 576)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4119, file: !4120, line: 92, baseType: !4082, size: 64, offset: 640)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4119, file: !4120, line: 94, baseType: !4091, size: 64, offset: 704)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4119, file: !4120, line: 95, baseType: !4091, size: 64, offset: 768)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4119, file: !4120, line: 97, baseType: !4153, size: 64, offset: 832)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4119, file: !4120, line: 98, baseType: !4091, size: 64, offset: 896)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4119, file: !4120, line: 100, baseType: !4091, size: 64, offset: 960)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4119, file: !4120, line: 102, baseType: !4091, size: 64, offset: 1024)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4119, file: !4120, line: 103, baseType: !4082, size: 64, offset: 1088)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4119, file: !4120, line: 105, baseType: !4086, size: 64, offset: 1152)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4119, file: !4120, line: 107, baseType: !4182, size: 64, offset: 1216)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4184)
!4184 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4120, line: 107, flags: DIFlagFwdDecl)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4119, file: !4120, line: 109, baseType: !1447, size: 8, offset: 1280)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4055, file: !70, line: 715, baseType: !4131, size: 64, offset: 832)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4055, file: !70, line: 717, baseType: !318, size: 64, offset: 896)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4055, file: !70, line: 719, baseType: !318, size: 64, offset: 960)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4055, file: !70, line: 721, baseType: !627, size: 256, offset: 1024)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4055, file: !70, line: 725, baseType: !4191, size: 448, offset: 1280)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4192)
!4192 = !{!4193, !4194, !4195, !4196}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4191, file: !70, line: 518, baseType: !146, size: 128)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4191, file: !70, line: 519, baseType: !146, size: 128, offset: 128)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4191, file: !70, line: 520, baseType: !146, size: 128, offset: 256)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4191, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4055, file: !70, line: 726, baseType: !4198, size: 2496, offset: 1728)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4199)
!4199 = !{!4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4282, !4286}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4198, file: !77, line: 664, baseType: !4156, size: 32)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4198, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4198, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4198, file: !77, line: 667, baseType: !1447, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4198, file: !77, line: 668, baseType: !1447, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4198, file: !77, line: 669, baseType: !1447, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4198, file: !77, line: 670, baseType: !1447, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4198, file: !77, line: 671, baseType: !1447, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4198, file: !77, line: 672, baseType: !1447, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4198, file: !77, line: 673, baseType: !1447, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4198, file: !77, line: 674, baseType: !1447, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4198, file: !77, line: 675, baseType: !396, size: 32, offset: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4198, file: !77, line: 676, baseType: !176, size: 32, offset: 96)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4198, file: !77, line: 678, baseType: !146, size: 128, offset: 128)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4198, file: !77, line: 679, baseType: !2025, size: 256, offset: 256)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4198, file: !77, line: 680, baseType: !4216, size: 64, offset: 512)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4218, line: 43, size: 1536, elements: !4219)
!4218 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4219 = !{!4220, !4221, !4222, !4223, !4224, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4217, file: !4218, line: 44, baseType: !165, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4217, file: !4218, line: 45, baseType: !85, size: 32, offset: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4217, file: !4218, line: 46, baseType: !146, size: 128, offset: 128)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4217, file: !4218, line: 47, baseType: !176, size: 32, offset: 256)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4217, file: !4218, line: 48, baseType: !4225, size: 64, offset: 320)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4217, file: !4218, line: 49, baseType: !2654, size: 320, offset: 384)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4217, file: !4218, line: 50, baseType: !296, size: 64, offset: 704)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4217, file: !4218, line: 51, baseType: !1091, size: 64, offset: 768)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4217, file: !4218, line: 52, baseType: !1091, size: 64, offset: 832)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4217, file: !4218, line: 53, baseType: !1091, size: 64, offset: 896)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4217, file: !4218, line: 54, baseType: !1091, size: 64, offset: 960)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4217, file: !4218, line: 55, baseType: !1091, size: 64, offset: 1024)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4217, file: !4218, line: 56, baseType: !296, size: 64, offset: 1088)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4217, file: !4218, line: 57, baseType: !296, size: 64, offset: 1152)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4217, file: !4218, line: 58, baseType: !296, size: 64, offset: 1216)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4217, file: !4218, line: 59, baseType: !296, size: 64, offset: 1280)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4217, file: !4218, line: 60, baseType: !296, size: 64, offset: 1344)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4217, file: !4218, line: 61, baseType: !4054, size: 64, offset: 1408)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4217, file: !4218, line: 62, baseType: !1447, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4217, file: !4218, line: 63, baseType: !1447, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4198, file: !77, line: 681, baseType: !1447, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4198, file: !77, line: 682, baseType: !1447, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4198, file: !77, line: 683, baseType: !1447, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4198, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4198, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4198, file: !77, line: 690, baseType: !1083, size: 512, offset: 640)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4198, file: !77, line: 691, baseType: !400, size: 64, offset: 1152)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4198, file: !77, line: 692, baseType: !1914, size: 256, offset: 1216)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4198, file: !77, line: 693, baseType: !934, size: 192, offset: 1472)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4198, file: !77, line: 694, baseType: !4225, size: 64, offset: 1664)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4198, file: !77, line: 695, baseType: !196, size: 32, offset: 1728)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4198, file: !77, line: 696, baseType: !196, size: 32, offset: 1760)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4198, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4198, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4198, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4198, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4198, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4198, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4198, file: !77, line: 703, baseType: !1447, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4198, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4198, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4198, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4198, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4198, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4198, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4198, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4198, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4198, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4198, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4198, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4198, file: !77, line: 715, baseType: !400, size: 64, offset: 2048)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4198, file: !77, line: 716, baseType: !400, size: 64, offset: 2112)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4198, file: !77, line: 717, baseType: !400, size: 64, offset: 2176)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4198, file: !77, line: 718, baseType: !400, size: 64, offset: 2240)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4198, file: !77, line: 720, baseType: !4277, size: 64, offset: 2304)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4279)
!4279 = !{!4280, !4281}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4278, file: !77, line: 633, baseType: !176, size: 32)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4278, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4198, file: !77, line: 721, baseType: !4283, size: 64, offset: 2368)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{null, !4054, !1390}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4198, file: !77, line: 722, baseType: !4287, size: 64, offset: 2432)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4055, file: !70, line: 727, baseType: !4290, size: 64, offset: 4224)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4292)
!4292 = !{!4293, !4294, !4295, !4299, !4300, !4301}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4291, file: !77, line: 743, baseType: !4088, size: 1472)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4291, file: !77, line: 744, baseType: !4091, size: 64, offset: 1472)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4291, file: !77, line: 745, baseType: !4296, size: 64, offset: 1536)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{null, !4054, !1447}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4291, file: !77, line: 746, baseType: !4091, size: 64, offset: 1600)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4291, file: !77, line: 747, baseType: !4082, size: 64, offset: 1664)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4291, file: !77, line: 748, baseType: !4082, size: 64, offset: 1728)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4055, file: !70, line: 736, baseType: !4303, size: 128, offset: 4288)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4304)
!4304 = !{!4305, !4309}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4303, file: !70, line: 531, baseType: !4306, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4308, line: 13, flags: DIFlagFwdDecl)
!4308 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4303, file: !70, line: 532, baseType: !4310, size: 64, offset: 64)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4055, file: !70, line: 738, baseType: !4313, size: 64, offset: 4416)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4315)
!4315 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4055, file: !70, line: 740, baseType: !4317, size: 64, offset: 4480)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4055, file: !70, line: 741, baseType: !400, size: 64, offset: 4544)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4055, file: !70, line: 746, baseType: !400, size: 64, offset: 4608)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4055, file: !70, line: 747, baseType: !4321, size: 64, offset: 4672)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4323)
!4323 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4055, file: !70, line: 749, baseType: !4325, size: 64, offset: 4736)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4327)
!4327 = !{!4328, !4329, !4330}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4326, file: !70, line: 433, baseType: !7, size: 32)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4326, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4326, file: !70, line: 435, baseType: !296, size: 64, offset: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4055, file: !70, line: 751, baseType: !146, size: 128, offset: 4800)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4055, file: !70, line: 762, baseType: !4333, size: 64, offset: 4928)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4055, file: !70, line: 770, baseType: !4336, offset: 4992)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4337, line: 5, elements: !531)
!4337 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4055, file: !70, line: 772, baseType: !4339, size: 64, offset: 4992)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4341, line: 18, flags: DIFlagFwdDecl)
!4341 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4055, file: !70, line: 773, baseType: !4343, size: 64, offset: 5056)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4120, line: 22, flags: DIFlagFwdDecl)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4055, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4055, file: !70, line: 778, baseType: !483, size: 32, offset: 5152)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4055, file: !70, line: 779, baseType: !396, size: 32, offset: 5184)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4055, file: !70, line: 781, baseType: !176, size: 32, offset: 5216)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4055, file: !70, line: 782, baseType: !146, size: 128, offset: 5248)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4055, file: !70, line: 784, baseType: !4351, size: 64, offset: 5376)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4353)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4354, line: 52, size: 768, elements: !4355)
!4354 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4355 = !{!4356, !4357, !4358, !4359, !4360, !4364, !4368, !4369, !4370, !4371, !4375, !4379}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4353, file: !4354, line: 53, baseType: !165, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4353, file: !4354, line: 55, baseType: !298, size: 64, offset: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4353, file: !4354, line: 56, baseType: !298, size: 64, offset: 128)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4353, file: !4354, line: 58, baseType: !4071, size: 64, offset: 192)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4353, file: !4354, line: 59, baseType: !4361, size: 64, offset: 256)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!246, !4074, !4080}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4353, file: !4354, line: 61, baseType: !4365, size: 64, offset: 320)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{null, !4351}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4353, file: !4354, line: 62, baseType: !4082, size: 64, offset: 384)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4353, file: !4354, line: 64, baseType: !4091, size: 64, offset: 448)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4353, file: !4354, line: 66, baseType: !3428, size: 64, offset: 512)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4353, file: !4354, line: 67, baseType: !4372, size: 64, offset: 576)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!1875, !4074}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4353, file: !4354, line: 69, baseType: !4376, size: 64, offset: 640)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{null, !4074, !3460, !3461}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4353, file: !4354, line: 71, baseType: !4086, size: 64, offset: 704)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4055, file: !70, line: 785, baseType: !298, size: 64, offset: 5440)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4055, file: !70, line: 787, baseType: !4082, size: 64, offset: 5504)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4055, file: !70, line: 788, baseType: !4383, size: 64, offset: 5568)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4055, file: !70, line: 789, baseType: !4386, size: 64, offset: 5632)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4055, file: !70, line: 791, baseType: !4389, size: 64, offset: 5696)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4391)
!4391 = !{!4392, !4393, !4394, !4395, !4396}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4390, file: !70, line: 598, baseType: !92, size: 32)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4390, file: !70, line: 599, baseType: !101, size: 32, offset: 32)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4390, file: !70, line: 600, baseType: !106, size: 32, offset: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4390, file: !70, line: 601, baseType: !1447, size: 8, offset: 96)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4390, file: !70, line: 602, baseType: !1447, size: 8, offset: 104)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4055, file: !70, line: 793, baseType: !111, size: 32, offset: 5760)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4055, file: !70, line: 795, baseType: !1447, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4055, file: !70, line: 796, baseType: !1447, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4055, file: !70, line: 797, baseType: !1447, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4055, file: !70, line: 798, baseType: !1447, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4055, file: !70, line: 799, baseType: !1447, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "this_device", scope: !4046, file: !4047, line: 85, baseType: !4054, size: 64, offset: 384)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4046, file: !4047, line: 86, baseType: !298, size: 64, offset: 448)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !4046, file: !4047, line: 87, baseType: !165, size: 64, offset: 512)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4046, file: !4047, line: 88, baseType: !288, size: 16, offset: 576)
!4407 = !DIGlobalVariableExpression(var: !4408, expr: !DIExpression())
!4408 = distinct !DIGlobalVariable(name: "rng_chrdev_ops", scope: !2, file: !3, line: 293, type: !1562, isLocal: true, isDefinition: true)
!4409 = !DIGlobalVariableExpression(var: !4410, expr: !DIExpression())
!4410 = distinct !DIGlobalVariable(name: "reading_mutex", scope: !2, file: !3, line: 42, type: !627, isLocal: true, isDefinition: true)
!4411 = !DIGlobalVariableExpression(var: !4412, expr: !DIExpression())
!4412 = distinct !DIGlobalVariable(name: "data_avail", scope: !2, file: !3, line: 43, type: !85, isLocal: true, isDefinition: true)
!4413 = !DIGlobalVariableExpression(var: !4414, expr: !DIExpression())
!4414 = distinct !DIGlobalVariable(scope: null, file: !4415, line: 249, type: !4416, isLocal: true, isDefinition: true)
!4415 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!4416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 224, elements: !4417)
!4417 = !{!4418}
!4418 = !DISubrange(count: 28)
!4419 = !DIGlobalVariableExpression(var: !4420, expr: !DIExpression())
!4420 = distinct !DIGlobalVariable(name: "rng_dev_groups", scope: !2, file: !3, line: 487, type: !4421, isLocal: true, isDefinition: true)
!4421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 128, elements: !2158)
!4422 = !DIGlobalVariableExpression(var: !4423, expr: !DIExpression())
!4423 = distinct !DIGlobalVariable(name: "rng_dev_group", scope: !2, file: !3, line: 487, type: !300, isLocal: true, isDefinition: true)
!4424 = !DIGlobalVariableExpression(var: !4425, expr: !DIExpression())
!4425 = distinct !DIGlobalVariable(name: "rng_dev_attrs", scope: !2, file: !3, line: 479, type: !4426, isLocal: true, isDefinition: true)
!4426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 320, elements: !4427)
!4427 = !{!4428}
!4428 = !DISubrange(count: 5)
!4429 = !DIGlobalVariableExpression(var: !4430, expr: !DIExpression())
!4430 = distinct !DIGlobalVariable(scope: null, file: !3, line: 474, type: !4431, isLocal: true, isDefinition: true)
!4431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 96, elements: !2795)
!4432 = !DIGlobalVariableExpression(var: !4433, expr: !DIExpression())
!4433 = distinct !DIGlobalVariable(name: "dev_attr_rng_current", scope: !2, file: !3, line: 474, type: !4434, isLocal: true, isDefinition: true)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !70, line: 106, size: 256, elements: !4435)
!4435 = !{!4436, !4437, !4442}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4434, file: !70, line: 107, baseType: !284, size: 128)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4434, file: !70, line: 108, baseType: !4438, size: 64, offset: 128)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!278, !4054, !4441, !246}
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4434, file: !70, line: 110, baseType: !4443, size: 64, offset: 192)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!278, !4054, !4441, !165, !293}
!4446 = !DIGlobalVariableExpression(var: !4447, expr: !DIExpression())
!4447 = distinct !DIGlobalVariable(scope: null, file: !3, line: 384, type: !4448, isLocal: true, isDefinition: true)
!4448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 32, elements: !1335)
!4449 = !DIGlobalVariableExpression(var: !4450, expr: !DIExpression())
!4450 = distinct !DIGlobalVariable(scope: null, file: !3, line: 384, type: !4451, isLocal: true, isDefinition: true)
!4451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 40, elements: !4427)
!4452 = !DIGlobalVariableExpression(var: !4453, expr: !DIExpression())
!4453 = distinct !DIGlobalVariable(scope: null, file: !3, line: 349, type: !4454, isLocal: true, isDefinition: true)
!4454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 8, elements: !1211)
!4455 = !DIGlobalVariableExpression(var: !4456, expr: !DIExpression())
!4456 = distinct !DIGlobalVariable(scope: null, file: !3, line: 475, type: !4457, isLocal: true, isDefinition: true)
!4457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 112, elements: !4458)
!4458 = !{!4459}
!4459 = !DISubrange(count: 14)
!4460 = !DIGlobalVariableExpression(var: !4461, expr: !DIExpression())
!4461 = distinct !DIGlobalVariable(name: "dev_attr_rng_available", scope: !2, file: !3, line: 475, type: !4434, isLocal: true, isDefinition: true)
!4462 = !DIGlobalVariableExpression(var: !4463, expr: !DIExpression())
!4463 = distinct !DIGlobalVariable(scope: null, file: !3, line: 403, type: !4464, isLocal: true, isDefinition: true)
!4464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 16, elements: !2158)
!4465 = !DIGlobalVariableExpression(var: !4466, expr: !DIExpression())
!4466 = distinct !DIGlobalVariable(scope: null, file: !3, line: 405, type: !4464, isLocal: true, isDefinition: true)
!4467 = !DIGlobalVariableExpression(var: !4468, expr: !DIExpression())
!4468 = distinct !DIGlobalVariable(scope: null, file: !3, line: 476, type: !4469, isLocal: true, isDefinition: true)
!4469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 104, elements: !4470)
!4470 = !{!4471}
!4471 = !DISubrange(count: 13)
!4472 = !DIGlobalVariableExpression(var: !4473, expr: !DIExpression())
!4473 = distinct !DIGlobalVariable(name: "dev_attr_rng_selected", scope: !2, file: !3, line: 476, type: !4434, isLocal: true, isDefinition: true)
!4474 = !DIGlobalVariableExpression(var: !4475, expr: !DIExpression())
!4475 = distinct !DIGlobalVariable(scope: null, file: !3, line: 415, type: !4448, isLocal: true, isDefinition: true)
!4476 = !DIGlobalVariableExpression(var: !4477, expr: !DIExpression())
!4477 = distinct !DIGlobalVariable(scope: null, file: !3, line: 477, type: !4431, isLocal: true, isDefinition: true)
!4478 = !DIGlobalVariableExpression(var: !4479, expr: !DIExpression())
!4479 = distinct !DIGlobalVariable(name: "dev_attr_rng_quality", scope: !2, file: !3, line: 477, type: !4434, isLocal: true, isDefinition: true)
!4480 = !DIGlobalVariableExpression(var: !4481, expr: !DIExpression())
!4481 = distinct !DIGlobalVariable(scope: null, file: !3, line: 432, type: !4451, isLocal: true, isDefinition: true)
!4482 = !DIGlobalVariableExpression(var: !4483, expr: !DIExpression())
!4483 = distinct !DIGlobalVariable(name: "rng_mutex", scope: !2, file: !3, line: 40, type: !627, isLocal: true, isDefinition: true)
!4484 = !DIGlobalVariableExpression(var: !4485, expr: !DIExpression())
!4485 = distinct !DIGlobalVariable(name: "rng_list", scope: !2, file: !3, line: 38, type: !146, isLocal: true, isDefinition: true)
!4486 = !DIGlobalVariableExpression(var: !4487, expr: !DIExpression())
!4487 = distinct !DIGlobalVariable(name: "__key", scope: !4488, file: !2026, line: 87, type: !529, isLocal: true, isDefinition: true)
!4488 = distinct !DISubprogram(name: "init_completion", scope: !2026, file: !2026, line: 84, type: !4489, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4491)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{null, !2024}
!4491 = !{!4492}
!4492 = !DILocalVariable(name: "x", arg: 1, scope: !4488, file: !2026, line: 84, type: !2024)
!4493 = !DIGlobalVariableExpression(var: !4494, expr: !DIExpression())
!4494 = distinct !DIGlobalVariable(scope: null, file: !2026, line: 87, type: !4495, isLocal: true, isDefinition: true)
!4495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 72, elements: !4496)
!4496 = !{!4497}
!4497 = !DISubrange(count: 9)
!4498 = !DIGlobalVariableExpression(var: !4499, expr: !DIExpression())
!4499 = distinct !DIGlobalVariable(scope: null, file: !3, line: 107, type: !4500, isLocal: true, isDefinition: true)
!4500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 296, elements: !4501)
!4501 = !{!4502}
!4502 = !DISubrange(count: 37)
!4503 = !DIGlobalVariableExpression(var: !4504, expr: !DIExpression())
!4504 = distinct !DIGlobalVariable(scope: null, file: !131, line: 480, type: !4505, isLocal: true, isDefinition: true)
!4505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 168, elements: !4015)
!4506 = !{i32 7, !"Dwarf Version", i32 5}
!4507 = !{i32 2, !"Debug Info Version", i32 3}
!4508 = !{i32 1, !"wchar_size", i32 2}
!4509 = !{i32 8, !"cf-protection-branch", i32 1}
!4510 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4511 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4512 = !{i32 1, !"Code Model", i32 2}
!4513 = !{i32 1, !"override-stack-alignment", i32 8}
!4514 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4515 = distinct !DISubprogram(name: "unregister_miscdev", scope: !3, file: !3, line: 489, type: !2272, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4516 = !DILocation(line: 491, column: 2, scope: !4515)
!4517 = !DILocation(line: 492, column: 1, scope: !4515)
!4518 = !DISubprogram(name: "misc_deregister", scope: !4047, file: !4047, line: 92, type: !4519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{null, !4521}
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4522 = distinct !DISubprogram(name: "hwrng_register", scope: !3, file: !3, line: 542, type: !3912, scopeLine: 543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4523)
!4523 = !{!4524, !4525, !4526, !4527, !4528, !4531, !4534, !4536, !4538, !4539, !4540, !4541}
!4524 = !DILocalVariable(name: "rng", arg: 1, scope: !4522, file: !3, line: 542, type: !3905)
!4525 = !DILocalVariable(name: "err", scope: !4522, file: !3, line: 544, type: !85)
!4526 = !DILocalVariable(name: "tmp", scope: !4522, file: !3, line: 545, type: !3905)
!4527 = !DILocalVariable(name: "is_new_current", scope: !4522, file: !3, line: 546, type: !1447)
!4528 = !DILocalVariable(name: "__mptr", scope: !4529, file: !3, line: 555, type: !318)
!4529 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 555, column: 2)
!4530 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 555, column: 2)
!4531 = !DILocalVariable(name: "__mptr", scope: !4532, file: !3, line: 555, type: !318)
!4532 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 555, column: 2)
!4533 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 555, column: 2)
!4534 = !DILocalVariable(name: "__UNIQUE_ID___x273", scope: !4535, file: !3, line: 566, type: !214)
!4535 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 566, column: 17)
!4536 = !DILocalVariable(name: "__UNIQUE_ID___x271", scope: !4537, file: !3, line: 566, type: !214)
!4537 = distinct !DILexicalBlock(scope: !4535, file: !3, line: 566, column: 17)
!4538 = !DILocalVariable(name: "__UNIQUE_ID___y272", scope: !4537, file: !3, line: 566, type: !214)
!4539 = !DILocalVariable(name: "__UNIQUE_ID___y274", scope: !4535, file: !3, line: 566, type: !214)
!4540 = !DILabel(scope: !4522, name: "out_unlock", file: !3, line: 598)
!4541 = !DILabel(scope: !4522, name: "out", file: !3, line: 600)
!4542 = !DILocation(line: 542, column: 34, scope: !4522)
!4543 = !DILocation(line: 544, column: 2, scope: !4522)
!4544 = !DILocation(line: 544, column: 6, scope: !4522)
!4545 = !DILocation(line: 545, column: 2, scope: !4522)
!4546 = !DILocation(line: 545, column: 16, scope: !4522)
!4547 = !DILocation(line: 546, column: 2, scope: !4522)
!4548 = !DILocation(line: 546, column: 7, scope: !4522)
!4549 = !DILocation(line: 548, column: 7, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 548, column: 6)
!4551 = !DILocation(line: 548, column: 12, scope: !4550)
!4552 = !DILocation(line: 548, column: 17, scope: !4550)
!4553 = !DILocation(line: 548, column: 22, scope: !4550)
!4554 = !DILocation(line: 548, column: 27, scope: !4550)
!4555 = !DILocation(line: 548, column: 37, scope: !4550)
!4556 = !DILocation(line: 548, column: 41, scope: !4550)
!4557 = !DILocation(line: 548, column: 46, scope: !4550)
!4558 = !DILocation(line: 548, column: 6, scope: !4522)
!4559 = !DILocation(line: 549, column: 3, scope: !4550)
!4560 = !DILocation(line: 551, column: 2, scope: !4522)
!4561 = !DILocation(line: 554, column: 6, scope: !4522)
!4562 = !DILocation(line: 555, column: 2, scope: !4529)
!4563 = !DILocation(line: 555, column: 2, scope: !4530)
!4564 = !DILocation(line: 555, column: 2, scope: !4533)
!4565 = !DILocation(line: 556, column: 14, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4567, file: !3, line: 556, column: 7)
!4567 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 555, column: 44)
!4568 = !DILocation(line: 556, column: 19, scope: !4566)
!4569 = !DILocation(line: 556, column: 25, scope: !4566)
!4570 = !DILocation(line: 556, column: 30, scope: !4566)
!4571 = !DILocation(line: 556, column: 7, scope: !4566)
!4572 = !DILocation(line: 556, column: 36, scope: !4566)
!4573 = !DILocation(line: 556, column: 7, scope: !4567)
!4574 = !DILocation(line: 557, column: 4, scope: !4566)
!4575 = !DILocation(line: 558, column: 2, scope: !4567)
!4576 = !DILocation(line: 555, column: 2, scope: !4532)
!4577 = distinct !{!4577, !4563, !4578, !4579, !4580}
!4578 = !DILocation(line: 558, column: 2, scope: !4530)
!4579 = !{!"llvm.loop.mustprogress"}
!4580 = !{!"llvm.loop.unroll.disable"}
!4581 = !DILocation(line: 559, column: 17, scope: !4522)
!4582 = !DILocation(line: 559, column: 22, scope: !4522)
!4583 = !DILocation(line: 559, column: 2, scope: !4522)
!4584 = !DILocation(line: 561, column: 19, scope: !4522)
!4585 = !DILocation(line: 561, column: 24, scope: !4522)
!4586 = !DILocation(line: 561, column: 2, scope: !4522)
!4587 = !DILocation(line: 562, column: 12, scope: !4522)
!4588 = !DILocation(line: 562, column: 17, scope: !4522)
!4589 = !DILocation(line: 562, column: 2, scope: !4522)
!4590 = !DILocation(line: 563, column: 19, scope: !4522)
!4591 = !DILocation(line: 563, column: 24, scope: !4522)
!4592 = !DILocation(line: 563, column: 2, scope: !4522)
!4593 = !DILocation(line: 566, column: 17, scope: !4535)
!4594 = !DILocation(line: 566, column: 17, scope: !4537)
!4595 = !DILocation(line: 566, column: 17, scope: !4522)
!4596 = !DILocation(line: 566, column: 2, scope: !4522)
!4597 = !DILocation(line: 566, column: 7, scope: !4522)
!4598 = !DILocation(line: 566, column: 15, scope: !4522)
!4599 = !DILocation(line: 568, column: 7, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 568, column: 6)
!4601 = !DILocation(line: 568, column: 19, scope: !4600)
!4602 = !DILocation(line: 569, column: 8, scope: !4600)
!4603 = !DILocation(line: 569, column: 28, scope: !4600)
!4604 = !DILocation(line: 569, column: 31, scope: !4600)
!4605 = !DILocation(line: 569, column: 36, scope: !4600)
!4606 = !DILocation(line: 569, column: 46, scope: !4600)
!4607 = !DILocation(line: 569, column: 59, scope: !4600)
!4608 = !DILocation(line: 569, column: 44, scope: !4600)
!4609 = !DILocation(line: 568, column: 6, scope: !4522)
!4610 = !DILocation(line: 575, column: 25, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4600, file: !3, line: 569, column: 69)
!4612 = !DILocation(line: 575, column: 9, scope: !4611)
!4613 = !DILocation(line: 575, column: 7, scope: !4611)
!4614 = !DILocation(line: 576, column: 7, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 576, column: 7)
!4616 = !DILocation(line: 576, column: 7, scope: !4611)
!4617 = !DILocation(line: 577, column: 4, scope: !4615)
!4618 = !DILocation(line: 581, column: 18, scope: !4611)
!4619 = !DILocation(line: 582, column: 13, scope: !4611)
!4620 = !DILocation(line: 582, column: 18, scope: !4611)
!4621 = !DILocation(line: 582, column: 3, scope: !4611)
!4622 = !DILocation(line: 583, column: 2, scope: !4611)
!4623 = !DILocation(line: 584, column: 2, scope: !4522)
!4624 = !DILocation(line: 585, column: 6, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 585, column: 6)
!4626 = !{i8 0, i8 2}
!4627 = !DILocation(line: 585, column: 21, scope: !4625)
!4628 = !DILocation(line: 585, column: 25, scope: !4625)
!4629 = !DILocation(line: 585, column: 30, scope: !4625)
!4630 = !DILocation(line: 585, column: 6, scope: !4522)
!4631 = !DILocation(line: 593, column: 24, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4625, file: !3, line: 585, column: 36)
!4633 = !DILocation(line: 593, column: 3, scope: !4632)
!4634 = !DILocation(line: 594, column: 2, scope: !4632)
!4635 = !DILocation(line: 595, column: 6, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 595, column: 6)
!4637 = !DILocation(line: 595, column: 6, scope: !4522)
!4638 = !DILocation(line: 596, column: 11, scope: !4636)
!4639 = !DILocation(line: 596, column: 3, scope: !4636)
!4640 = !DILocation(line: 597, column: 2, scope: !4522)
!4641 = !DILocation(line: 598, column: 1, scope: !4522)
!4642 = !DILocation(line: 599, column: 2, scope: !4522)
!4643 = !DILocation(line: 600, column: 1, scope: !4522)
!4644 = !DILocation(line: 601, column: 9, scope: !4522)
!4645 = !DILocation(line: 601, column: 2, scope: !4522)
!4646 = !DILocation(line: 602, column: 1, scope: !4522)
!4647 = !DISubprogram(name: "mutex_lock", scope: !628, file: !628, line: 227, type: !4648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{null, !4650}
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!4651 = !DISubprogram(name: "strcmp", scope: !4652, file: !4652, line: 88, type: !4653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4652 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!85, !165, !165}
!4655 = distinct !DISubprogram(name: "list_add_tail", scope: !4656, file: !4656, line: 181, type: !4657, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4659)
!4656 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4657 = !DISubroutineType(types: !4658)
!4658 = !{null, !150, !150}
!4659 = !{!4660, !4661}
!4660 = !DILocalVariable(name: "new", arg: 1, scope: !4655, file: !4656, line: 181, type: !150)
!4661 = !DILocalVariable(name: "head", arg: 2, scope: !4655, file: !4656, line: 181, type: !150)
!4662 = !DILocation(line: 181, column: 52, scope: !4655)
!4663 = !DILocation(line: 181, column: 75, scope: !4655)
!4664 = !DILocation(line: 183, column: 13, scope: !4655)
!4665 = !DILocation(line: 183, column: 18, scope: !4655)
!4666 = !DILocation(line: 183, column: 24, scope: !4655)
!4667 = !DILocation(line: 183, column: 30, scope: !4655)
!4668 = !DILocation(line: 183, column: 2, scope: !4655)
!4669 = !DILocation(line: 184, column: 1, scope: !4655)
!4670 = !DILocation(line: 84, column: 55, scope: !4488)
!4671 = !DILocation(line: 86, column: 2, scope: !4488)
!4672 = !DILocation(line: 86, column: 5, scope: !4488)
!4673 = !DILocation(line: 86, column: 10, scope: !4488)
!4674 = !DILocation(line: 87, column: 2, scope: !4488)
!4675 = !DILocation(line: 87, column: 2, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4488, file: !2026, line: 87, column: 2)
!4677 = !DILocation(line: 88, column: 1, scope: !4488)
!4678 = !DISubprogram(name: "complete", scope: !2026, file: !2026, line: 118, type: !4489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4679 = distinct !DISubprogram(name: "set_current_rng", scope: !3, file: !3, line: 90, type: !3912, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4680)
!4680 = !{!4681, !4682, !4683}
!4681 = !DILocalVariable(name: "rng", arg: 1, scope: !4679, file: !3, line: 90, type: !3905)
!4682 = !DILocalVariable(name: "err", scope: !4679, file: !3, line: 92, type: !85)
!4683 = !DILocalVariable(name: "__k", scope: !4684, file: !3, line: 105, type: !956)
!4684 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 105, column: 16)
!4685 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 104, column: 19)
!4686 = distinct !DILexicalBlock(scope: !4679, file: !3, line: 104, column: 6)
!4687 = !DILocation(line: 90, column: 42, scope: !4679)
!4688 = !DILocation(line: 92, column: 2, scope: !4679)
!4689 = !DILocation(line: 92, column: 6, scope: !4679)
!4690 = !DILocation(line: 94, column: 2, scope: !4679)
!4691 = !DILocation(line: 94, column: 2, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4693, file: !3, line: 94, column: 2)
!4693 = distinct !DILexicalBlock(scope: !4679, file: !3, line: 94, column: 2)
!4694 = !DILocation(line: 94, column: 2, scope: !4693)
!4695 = !DILocation(line: 94, column: 2, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4692, file: !3, line: 94, column: 2)
!4697 = !DILocation(line: 94, column: 2, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 94, column: 2)
!4699 = !DILocation(line: 94, column: 2, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 94, column: 2)
!4701 = !{i64 2153925362, i64 2153925391, i64 2153925437, i64 2153925495, i64 2153925549, i64 2153925603, i64 2153925658, i64 2153925689}
!4702 = !DILocation(line: 96, column: 19, scope: !4679)
!4703 = !DILocation(line: 96, column: 8, scope: !4679)
!4704 = !DILocation(line: 96, column: 6, scope: !4679)
!4705 = !DILocation(line: 97, column: 6, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4679, file: !3, line: 97, column: 6)
!4707 = !DILocation(line: 97, column: 6, scope: !4679)
!4708 = !DILocation(line: 98, column: 10, scope: !4706)
!4709 = !DILocation(line: 98, column: 3, scope: !4706)
!4710 = !DILocation(line: 100, column: 2, scope: !4679)
!4711 = !DILocation(line: 101, column: 16, scope: !4679)
!4712 = !DILocation(line: 101, column: 14, scope: !4679)
!4713 = !DILocation(line: 104, column: 7, scope: !4686)
!4714 = !DILocation(line: 104, column: 6, scope: !4679)
!4715 = !DILocation(line: 105, column: 16, scope: !4684)
!4716 = !DILocation(line: 105, column: 16, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 105, column: 16)
!4718 = !DILocation(line: 105, column: 16, scope: !4685)
!4719 = !DILocation(line: 105, column: 14, scope: !4685)
!4720 = !DILocation(line: 106, column: 14, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 106, column: 7)
!4722 = !DILocation(line: 106, column: 7, scope: !4721)
!4723 = !DILocation(line: 106, column: 7, scope: !4685)
!4724 = !DILocation(line: 107, column: 4, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4726, file: !3, line: 107, column: 4)
!4726 = distinct !DILexicalBlock(scope: !4721, file: !3, line: 106, column: 27)
!4727 = !DILocation(line: 107, column: 4, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 107, column: 4)
!4729 = !DILocation(line: 108, column: 15, scope: !4726)
!4730 = !DILocation(line: 109, column: 3, scope: !4726)
!4731 = !DILocation(line: 110, column: 2, scope: !4685)
!4732 = !DILocation(line: 112, column: 2, scope: !4679)
!4733 = !DILocation(line: 113, column: 1, scope: !4679)
!4734 = distinct !DISubprogram(name: "kref_get", scope: !3567, file: !3567, line: 43, type: !4735, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4738)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{null, !4737}
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!4738 = !{!4739}
!4739 = !DILocalVariable(name: "kref", arg: 1, scope: !4734, file: !3567, line: 43, type: !4737)
!4740 = !DILocation(line: 43, column: 42, scope: !4734)
!4741 = !DILocation(line: 45, column: 16, scope: !4734)
!4742 = !DILocation(line: 45, column: 22, scope: !4734)
!4743 = !DILocation(line: 45, column: 2, scope: !4734)
!4744 = !DILocation(line: 46, column: 1, scope: !4734)
!4745 = !DISubprogram(name: "mutex_unlock", scope: !628, file: !628, line: 246, type: !4648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4746 = distinct !DISubprogram(name: "add_early_randomness", scope: !3, file: !3, line: 67, type: !3916, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4747)
!4747 = !{!4748, !4749, !4750}
!4748 = !DILocalVariable(name: "rng", arg: 1, scope: !4746, file: !3, line: 67, type: !3905)
!4749 = !DILocalVariable(name: "bytes_read", scope: !4746, file: !3, line: 69, type: !85)
!4750 = !DILocalVariable(name: "entropy", scope: !4751, file: !3, line: 75, type: !293)
!4751 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 74, column: 22)
!4752 = distinct !DILexicalBlock(scope: !4746, file: !3, line: 74, column: 6)
!4753 = !DILocation(line: 67, column: 48, scope: !4746)
!4754 = !DILocation(line: 69, column: 2, scope: !4746)
!4755 = !DILocation(line: 69, column: 6, scope: !4746)
!4756 = !DILocation(line: 71, column: 2, scope: !4746)
!4757 = !DILocation(line: 72, column: 28, scope: !4746)
!4758 = !DILocation(line: 72, column: 33, scope: !4746)
!4759 = !DILocation(line: 72, column: 15, scope: !4746)
!4760 = !DILocation(line: 72, column: 13, scope: !4746)
!4761 = !DILocation(line: 73, column: 2, scope: !4746)
!4762 = !DILocation(line: 74, column: 6, scope: !4752)
!4763 = !DILocation(line: 74, column: 17, scope: !4752)
!4764 = !DILocation(line: 74, column: 6, scope: !4746)
!4765 = !DILocation(line: 75, column: 3, scope: !4751)
!4766 = !DILocation(line: 75, column: 10, scope: !4751)
!4767 = !DILocation(line: 75, column: 20, scope: !4751)
!4768 = !DILocation(line: 75, column: 31, scope: !4751)
!4769 = !DILocation(line: 75, column: 37, scope: !4751)
!4770 = !DILocation(line: 75, column: 42, scope: !4751)
!4771 = !DILocation(line: 75, column: 35, scope: !4751)
!4772 = !DILocation(line: 75, column: 50, scope: !4751)
!4773 = !DILocation(line: 76, column: 30, scope: !4751)
!4774 = !DILocation(line: 76, column: 43, scope: !4751)
!4775 = !DILocation(line: 76, column: 55, scope: !4751)
!4776 = !DILocation(line: 76, column: 3, scope: !4751)
!4777 = !DILocation(line: 77, column: 2, scope: !4752)
!4778 = !DILocation(line: 77, column: 2, scope: !4751)
!4779 = !DILocation(line: 78, column: 1, scope: !4746)
!4780 = distinct !DISubprogram(name: "put_rng", scope: !3, file: !3, line: 148, type: !3916, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4781)
!4781 = !{!4782}
!4782 = !DILocalVariable(name: "rng", arg: 1, scope: !4780, file: !3, line: 148, type: !3905)
!4783 = !DILocation(line: 148, column: 35, scope: !4780)
!4784 = !DILocation(line: 154, column: 2, scope: !4780)
!4785 = !DILocation(line: 155, column: 6, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 155, column: 6)
!4787 = !DILocation(line: 155, column: 6, scope: !4780)
!4788 = !DILocation(line: 156, column: 13, scope: !4786)
!4789 = !DILocation(line: 156, column: 18, scope: !4786)
!4790 = !DILocation(line: 156, column: 3, scope: !4786)
!4791 = !DILocation(line: 157, column: 2, scope: !4780)
!4792 = !DILocation(line: 158, column: 1, scope: !4780)
!4793 = distinct !DISubprogram(name: "hwrng_unregister", scope: !3, file: !3, line: 605, type: !3916, scopeLine: 606, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4794)
!4794 = !{!4795, !4796, !4797, !4798}
!4795 = !DILocalVariable(name: "rng", arg: 1, scope: !4793, file: !3, line: 605, type: !3905)
!4796 = !DILocalVariable(name: "old_rng", scope: !4793, file: !3, line: 607, type: !3905)
!4797 = !DILocalVariable(name: "new_rng", scope: !4793, file: !3, line: 607, type: !3905)
!4798 = !DILocalVariable(name: "err", scope: !4793, file: !3, line: 608, type: !85)
!4799 = !DILocation(line: 605, column: 37, scope: !4793)
!4800 = !DILocation(line: 607, column: 2, scope: !4793)
!4801 = !DILocation(line: 607, column: 16, scope: !4793)
!4802 = !DILocation(line: 607, column: 26, scope: !4793)
!4803 = !DILocation(line: 608, column: 2, scope: !4793)
!4804 = !DILocation(line: 608, column: 6, scope: !4793)
!4805 = !DILocation(line: 610, column: 2, scope: !4793)
!4806 = !DILocation(line: 612, column: 12, scope: !4793)
!4807 = !DILocation(line: 612, column: 10, scope: !4793)
!4808 = !DILocation(line: 613, column: 12, scope: !4793)
!4809 = !DILocation(line: 613, column: 17, scope: !4793)
!4810 = !DILocation(line: 613, column: 2, scope: !4793)
!4811 = !DILocation(line: 614, column: 16, scope: !4793)
!4812 = !DILocation(line: 614, column: 21, scope: !4793)
!4813 = !DILocation(line: 614, column: 2, scope: !4793)
!4814 = !DILocation(line: 615, column: 6, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 615, column: 6)
!4816 = !DILocation(line: 615, column: 21, scope: !4815)
!4817 = !DILocation(line: 615, column: 18, scope: !4815)
!4818 = !DILocation(line: 615, column: 6, scope: !4793)
!4819 = !DILocation(line: 616, column: 9, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 615, column: 26)
!4821 = !DILocation(line: 616, column: 7, scope: !4820)
!4822 = !DILocation(line: 617, column: 7, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 617, column: 7)
!4824 = !DILocation(line: 617, column: 7, scope: !4820)
!4825 = !DILocation(line: 618, column: 4, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4823, file: !3, line: 617, column: 12)
!4827 = !DILocation(line: 619, column: 24, scope: !4826)
!4828 = !DILocation(line: 620, column: 3, scope: !4826)
!4829 = !DILocation(line: 621, column: 2, scope: !4820)
!4830 = !DILocation(line: 623, column: 12, scope: !4793)
!4831 = !DILocation(line: 623, column: 10, scope: !4793)
!4832 = !DILocation(line: 624, column: 6, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 624, column: 6)
!4834 = !DILocation(line: 624, column: 6, scope: !4793)
!4835 = !DILocation(line: 625, column: 3, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 624, column: 29)
!4837 = !DILocation(line: 626, column: 7, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4836, file: !3, line: 626, column: 7)
!4839 = !DILocation(line: 626, column: 7, scope: !4836)
!4840 = !DILocation(line: 627, column: 17, scope: !4838)
!4841 = !DILocation(line: 627, column: 4, scope: !4838)
!4842 = !DILocation(line: 628, column: 2, scope: !4836)
!4843 = !DILocation(line: 629, column: 3, scope: !4833)
!4844 = !DILocation(line: 631, column: 6, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 631, column: 6)
!4846 = !DILocation(line: 631, column: 6, scope: !4793)
!4847 = !DILocation(line: 632, column: 7, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 632, column: 7)
!4849 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 631, column: 15)
!4850 = !DILocation(line: 632, column: 18, scope: !4848)
!4851 = !DILocation(line: 632, column: 15, scope: !4848)
!4852 = !DILocation(line: 632, column: 7, scope: !4849)
!4853 = !DILocation(line: 633, column: 25, scope: !4848)
!4854 = !DILocation(line: 633, column: 4, scope: !4848)
!4855 = !DILocation(line: 634, column: 11, scope: !4849)
!4856 = !DILocation(line: 634, column: 3, scope: !4849)
!4857 = !DILocation(line: 635, column: 2, scope: !4849)
!4858 = !DILocation(line: 637, column: 23, scope: !4793)
!4859 = !DILocation(line: 637, column: 28, scope: !4793)
!4860 = !DILocation(line: 637, column: 2, scope: !4793)
!4861 = !DILocation(line: 638, column: 1, scope: !4793)
!4862 = distinct !DISubprogram(name: "list_del", scope: !4656, file: !4656, line: 227, type: !4863, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4865)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{null, !150}
!4865 = !{!4866}
!4866 = !DILocalVariable(name: "entry", arg: 1, scope: !4862, file: !4656, line: 227, type: !150)
!4867 = !DILocation(line: 227, column: 47, scope: !4862)
!4868 = !DILocation(line: 229, column: 19, scope: !4862)
!4869 = !DILocation(line: 229, column: 2, scope: !4862)
!4870 = !DILocation(line: 230, column: 2, scope: !4862)
!4871 = !DILocation(line: 230, column: 9, scope: !4862)
!4872 = !DILocation(line: 230, column: 14, scope: !4862)
!4873 = !DILocation(line: 231, column: 2, scope: !4862)
!4874 = !DILocation(line: 231, column: 9, scope: !4862)
!4875 = !DILocation(line: 231, column: 14, scope: !4862)
!4876 = !DILocation(line: 232, column: 1, scope: !4862)
!4877 = !DISubprogram(name: "complete_all", scope: !2026, file: !2026, line: 120, type: !4489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4878 = distinct !DISubprogram(name: "enable_best_rng", scope: !3, file: !3, line: 310, type: !3688, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4879)
!4879 = !{!4880, !4881, !4882, !4883, !4886}
!4880 = !DILocalVariable(name: "rng", scope: !4878, file: !3, line: 312, type: !3905)
!4881 = !DILocalVariable(name: "new_rng", scope: !4878, file: !3, line: 312, type: !3905)
!4882 = !DILocalVariable(name: "ret", scope: !4878, file: !3, line: 313, type: !85)
!4883 = !DILocalVariable(name: "__mptr", scope: !4884, file: !3, line: 325, type: !318)
!4884 = distinct !DILexicalBlock(scope: !4885, file: !3, line: 325, column: 2)
!4885 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 325, column: 2)
!4886 = !DILocalVariable(name: "__mptr", scope: !4887, file: !3, line: 325, type: !318)
!4887 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 325, column: 2)
!4888 = distinct !DILexicalBlock(scope: !4885, file: !3, line: 325, column: 2)
!4889 = !DILocation(line: 312, column: 2, scope: !4878)
!4890 = !DILocation(line: 312, column: 16, scope: !4878)
!4891 = !DILocation(line: 312, column: 22, scope: !4878)
!4892 = !DILocation(line: 313, column: 2, scope: !4878)
!4893 = !DILocation(line: 313, column: 6, scope: !4878)
!4894 = !DILocation(line: 315, column: 2, scope: !4878)
!4895 = !DILocation(line: 315, column: 2, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4897, file: !3, line: 315, column: 2)
!4897 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 315, column: 2)
!4898 = !DILocation(line: 315, column: 2, scope: !4897)
!4899 = !DILocation(line: 315, column: 2, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4896, file: !3, line: 315, column: 2)
!4901 = !DILocation(line: 315, column: 2, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4900, file: !3, line: 315, column: 2)
!4903 = !DILocation(line: 315, column: 2, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4900, file: !3, line: 315, column: 2)
!4905 = !{i64 2153929797, i64 2153929826, i64 2153929872, i64 2153929930, i64 2153929984, i64 2153930038, i64 2153930093, i64 2153930124}
!4906 = !DILocation(line: 318, column: 6, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 318, column: 6)
!4908 = !DILocation(line: 318, column: 6, scope: !4878)
!4909 = !DILocation(line: 319, column: 3, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4907, file: !3, line: 318, column: 29)
!4911 = !DILocation(line: 320, column: 23, scope: !4910)
!4912 = !DILocation(line: 321, column: 3, scope: !4910)
!4913 = !DILocation(line: 325, column: 2, scope: !4884)
!4914 = !DILocation(line: 325, column: 2, scope: !4885)
!4915 = !DILocation(line: 325, column: 2, scope: !4888)
!4916 = !DILocation(line: 326, column: 8, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4918, file: !3, line: 326, column: 7)
!4918 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 325, column: 44)
!4919 = !DILocation(line: 326, column: 16, scope: !4917)
!4920 = !DILocation(line: 326, column: 19, scope: !4917)
!4921 = !DILocation(line: 326, column: 24, scope: !4917)
!4922 = !DILocation(line: 326, column: 34, scope: !4917)
!4923 = !DILocation(line: 326, column: 43, scope: !4917)
!4924 = !DILocation(line: 326, column: 32, scope: !4917)
!4925 = !DILocation(line: 326, column: 7, scope: !4918)
!4926 = !DILocation(line: 327, column: 14, scope: !4917)
!4927 = !DILocation(line: 327, column: 12, scope: !4917)
!4928 = !DILocation(line: 327, column: 4, scope: !4917)
!4929 = !DILocation(line: 328, column: 2, scope: !4918)
!4930 = !DILocation(line: 325, column: 2, scope: !4887)
!4931 = distinct !{!4931, !4914, !4932, !4579, !4580}
!4932 = !DILocation(line: 328, column: 2, scope: !4885)
!4933 = !DILocation(line: 330, column: 10, scope: !4878)
!4934 = !DILocation(line: 330, column: 21, scope: !4878)
!4935 = !DILocation(line: 330, column: 18, scope: !4878)
!4936 = !DILocation(line: 330, column: 9, scope: !4878)
!4937 = !DILocation(line: 330, column: 56, scope: !4878)
!4938 = !DILocation(line: 330, column: 40, scope: !4878)
!4939 = !DILocation(line: 330, column: 6, scope: !4878)
!4940 = !DILocation(line: 331, column: 7, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 331, column: 6)
!4942 = !DILocation(line: 331, column: 6, scope: !4878)
!4943 = !DILocation(line: 332, column: 23, scope: !4941)
!4944 = !DILocation(line: 332, column: 3, scope: !4941)
!4945 = !DILocation(line: 334, column: 9, scope: !4878)
!4946 = !DILocation(line: 334, column: 2, scope: !4878)
!4947 = !DILocation(line: 335, column: 1, scope: !4878)
!4948 = distinct !DISubprogram(name: "drop_current_rng", scope: !3, file: !3, line: 115, type: !2272, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4949 = !DILocation(line: 117, column: 2, scope: !4948)
!4950 = !DILocation(line: 117, column: 2, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4952, file: !3, line: 117, column: 2)
!4952 = distinct !DILexicalBlock(scope: !4948, file: !3, line: 117, column: 2)
!4953 = !DILocation(line: 117, column: 2, scope: !4952)
!4954 = !DILocation(line: 117, column: 2, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4951, file: !3, line: 117, column: 2)
!4956 = !DILocation(line: 117, column: 2, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 117, column: 2)
!4958 = !DILocation(line: 117, column: 2, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 117, column: 2)
!4960 = !{i64 2153927208, i64 2153927237, i64 2153927283, i64 2153927341, i64 2153927395, i64 2153927449, i64 2153927504, i64 2153927535}
!4961 = !DILocation(line: 118, column: 7, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4948, file: !3, line: 118, column: 6)
!4963 = !DILocation(line: 118, column: 6, scope: !4948)
!4964 = !DILocation(line: 119, column: 3, scope: !4962)
!4965 = !DILocation(line: 122, column: 12, scope: !4948)
!4966 = !DILocation(line: 122, column: 25, scope: !4948)
!4967 = !DILocation(line: 122, column: 2, scope: !4948)
!4968 = !DILocation(line: 123, column: 14, scope: !4948)
!4969 = !DILocation(line: 124, column: 1, scope: !4948)
!4970 = distinct !DISubprogram(name: "get_current_rng_nolock", scope: !3, file: !3, line: 127, type: !4971, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4971 = !DISubroutineType(types: !4972)
!4972 = !{!3905}
!4973 = !DILocation(line: 129, column: 6, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4970, file: !3, line: 129, column: 6)
!4975 = !DILocation(line: 129, column: 6, scope: !4970)
!4976 = !DILocation(line: 130, column: 13, scope: !4974)
!4977 = !DILocation(line: 130, column: 26, scope: !4974)
!4978 = !DILocation(line: 130, column: 3, scope: !4974)
!4979 = !DILocation(line: 132, column: 9, scope: !4970)
!4980 = !DILocation(line: 132, column: 2, scope: !4970)
!4981 = distinct !DISubprogram(name: "list_empty", scope: !4656, file: !4656, line: 371, type: !4982, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4986)
!4982 = !DISubroutineType(types: !4983)
!4983 = !{!85, !4984}
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!4986 = !{!4987}
!4987 = !DILocalVariable(name: "head", arg: 1, scope: !4981, file: !4656, line: 371, type: !4984)
!4988 = !DILocation(line: 371, column: 54, scope: !4981)
!4989 = !DILocation(line: 373, column: 9, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4981, file: !4656, line: 373, column: 9)
!4991 = !DILocation(line: 373, column: 9, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4990, file: !4656, line: 373, column: 9)
!4993 = !DILocation(line: 373, column: 34, scope: !4981)
!4994 = !DILocation(line: 373, column: 31, scope: !4981)
!4995 = !DILocation(line: 373, column: 2, scope: !4981)
!4996 = !DISubprogram(name: "kthread_stop", scope: !4997, file: !4997, line: 88, type: !4998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4997 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6109a4682a3e6e690ff3777556e2c944")
!4998 = !DISubroutineType(types: !4999)
!4999 = !{!85, !956}
!5000 = !DISubprogram(name: "wait_for_completion", scope: !2026, file: !2026, line: 102, type: !4489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5001 = distinct !DISubprogram(name: "devm_hwrng_register", scope: !3, file: !3, line: 656, type: !5002, scopeLine: 657, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5004)
!5002 = !DISubroutineType(types: !5003)
!5003 = !{!85, !4054, !3905}
!5004 = !{!5005, !5006, !5007, !5008}
!5005 = !DILocalVariable(name: "dev", arg: 1, scope: !5001, file: !3, line: 656, type: !4054)
!5006 = !DILocalVariable(name: "rng", arg: 2, scope: !5001, file: !3, line: 656, type: !3905)
!5007 = !DILocalVariable(name: "ptr", scope: !5001, file: !3, line: 658, type: !3951)
!5008 = !DILocalVariable(name: "error", scope: !5001, file: !3, line: 659, type: !85)
!5009 = !DILocation(line: 656, column: 40, scope: !5001)
!5010 = !DILocation(line: 656, column: 59, scope: !5001)
!5011 = !DILocation(line: 658, column: 2, scope: !5001)
!5012 = !DILocation(line: 658, column: 17, scope: !5001)
!5013 = !DILocation(line: 659, column: 2, scope: !5001)
!5014 = !DILocation(line: 659, column: 6, scope: !5001)
!5015 = !DILocation(line: 661, column: 8, scope: !5001)
!5016 = !DILocation(line: 661, column: 6, scope: !5001)
!5017 = !DILocation(line: 662, column: 7, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !5001, file: !3, line: 662, column: 6)
!5019 = !DILocation(line: 662, column: 6, scope: !5001)
!5020 = !DILocation(line: 663, column: 3, scope: !5018)
!5021 = !DILocation(line: 665, column: 25, scope: !5001)
!5022 = !DILocation(line: 665, column: 10, scope: !5001)
!5023 = !DILocation(line: 665, column: 8, scope: !5001)
!5024 = !DILocation(line: 666, column: 6, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !5001, file: !3, line: 666, column: 6)
!5026 = !DILocation(line: 666, column: 6, scope: !5001)
!5027 = !DILocation(line: 667, column: 15, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 666, column: 13)
!5029 = !DILocation(line: 667, column: 3, scope: !5028)
!5030 = !DILocation(line: 668, column: 10, scope: !5028)
!5031 = !DILocation(line: 668, column: 3, scope: !5028)
!5032 = !DILocation(line: 671, column: 9, scope: !5001)
!5033 = !DILocation(line: 671, column: 3, scope: !5001)
!5034 = !DILocation(line: 671, column: 7, scope: !5001)
!5035 = !DILocation(line: 672, column: 13, scope: !5001)
!5036 = !DILocation(line: 672, column: 18, scope: !5001)
!5037 = !DILocation(line: 672, column: 2, scope: !5001)
!5038 = !DILocation(line: 673, column: 2, scope: !5001)
!5039 = !DILocation(line: 674, column: 1, scope: !5001)
!5040 = !DISubprogram(name: "__devres_alloc_node", scope: !70, file: !70, line: 274, type: !5041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{!318, !5043, !293, !692, !85, !165}
!5043 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !70, line: 271, baseType: !5044)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{null, !4054, !318}
!5047 = distinct !DISubprogram(name: "devm_hwrng_release", scope: !3, file: !3, line: 641, type: !5045, scopeLine: 642, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5048)
!5048 = !{!5049, !5050}
!5049 = !DILocalVariable(name: "dev", arg: 1, scope: !5047, file: !3, line: 641, type: !4054)
!5050 = !DILocalVariable(name: "res", arg: 2, scope: !5047, file: !3, line: 641, type: !318)
!5051 = !DILocation(line: 641, column: 47, scope: !5047)
!5052 = !DILocation(line: 641, column: 58, scope: !5047)
!5053 = !DILocation(line: 643, column: 37, scope: !5047)
!5054 = !DILocation(line: 643, column: 19, scope: !5047)
!5055 = !DILocation(line: 643, column: 2, scope: !5047)
!5056 = !DILocation(line: 644, column: 1, scope: !5047)
!5057 = !DISubprogram(name: "devres_free", scope: !70, file: !70, line: 285, type: !3018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5058 = !DISubprogram(name: "devres_add", scope: !70, file: !70, line: 286, type: !5045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5059 = distinct !DISubprogram(name: "devm_hwrng_unregister", scope: !3, file: !3, line: 677, type: !5060, scopeLine: 678, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5062)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{null, !4054, !3905}
!5062 = !{!5063, !5064}
!5063 = !DILocalVariable(name: "dev", arg: 1, scope: !5059, file: !3, line: 677, type: !4054)
!5064 = !DILocalVariable(name: "rng", arg: 2, scope: !5059, file: !3, line: 677, type: !3905)
!5065 = !DILocation(line: 677, column: 43, scope: !5059)
!5066 = !DILocation(line: 677, column: 62, scope: !5059)
!5067 = !DILocation(line: 679, column: 17, scope: !5059)
!5068 = !DILocation(line: 679, column: 60, scope: !5059)
!5069 = !DILocation(line: 679, column: 2, scope: !5059)
!5070 = !DILocation(line: 680, column: 1, scope: !5059)
!5071 = !DISubprogram(name: "devres_release", scope: !70, file: !70, line: 295, type: !5072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!85, !4054, !5043, !5074, !318}
!5074 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_match_t", file: !70, line: 272, baseType: !5075)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{!85, !4054, !318, !318}
!5078 = distinct !DISubprogram(name: "devm_hwrng_match", scope: !3, file: !3, line: 646, type: !5076, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5079)
!5079 = !{!5080, !5081, !5082, !5083, !5084, !5087}
!5080 = !DILocalVariable(name: "dev", arg: 1, scope: !5078, file: !3, line: 646, type: !4054)
!5081 = !DILocalVariable(name: "res", arg: 2, scope: !5078, file: !3, line: 646, type: !318)
!5082 = !DILocalVariable(name: "data", arg: 3, scope: !5078, file: !3, line: 646, type: !318)
!5083 = !DILocalVariable(name: "r", scope: !5078, file: !3, line: 648, type: !3951)
!5084 = !DILocalVariable(name: "__ret_warn_on", scope: !5085, file: !3, line: 650, type: !85)
!5085 = distinct !DILexicalBlock(scope: !5086, file: !3, line: 650, column: 6)
!5086 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 650, column: 6)
!5087 = !DILocalVariable(name: "__flags", scope: !5088, file: !3, line: 650, type: !85)
!5088 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 650, column: 6)
!5089 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 650, column: 6)
!5090 = !DILocation(line: 646, column: 44, scope: !5078)
!5091 = !DILocation(line: 646, column: 55, scope: !5078)
!5092 = !DILocation(line: 646, column: 66, scope: !5078)
!5093 = !DILocation(line: 648, column: 2, scope: !5078)
!5094 = !DILocation(line: 648, column: 17, scope: !5078)
!5095 = !DILocation(line: 648, column: 21, scope: !5078)
!5096 = !DILocation(line: 650, column: 6, scope: !5085)
!5097 = !DILocation(line: 650, column: 6, scope: !5089)
!5098 = !DILocation(line: 650, column: 6, scope: !5088)
!5099 = !DILocation(line: 650, column: 6, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5088, file: !3, line: 650, column: 6)
!5101 = !DILocation(line: 650, column: 6, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5088, file: !3, line: 650, column: 6)
!5103 = !{i64 2154172077, i64 2154172106, i64 2154172152, i64 2154172210, i64 2154172264, i64 2154172318, i64 2154172373, i64 2154172404, i64 2154172712, i64 2154172718, i64 2154172765, i64 2154172788, i64 2154172814}
!5104 = !DILocation(line: 650, column: 6, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5088, file: !3, line: 650, column: 6)
!5106 = !DILocation(line: 650, column: 6, scope: !5086)
!5107 = !DILocation(line: 650, column: 6, scope: !5078)
!5108 = !DILocation(line: 651, column: 3, scope: !5086)
!5109 = !DILocation(line: 653, column: 10, scope: !5078)
!5110 = !DILocation(line: 653, column: 9, scope: !5078)
!5111 = !DILocation(line: 653, column: 15, scope: !5078)
!5112 = !DILocation(line: 653, column: 12, scope: !5078)
!5113 = !DILocation(line: 653, column: 2, scope: !5078)
!5114 = !DILocation(line: 654, column: 1, scope: !5078)
!5115 = distinct !DISubprogram(name: "hwrng_msleep", scope: !3, file: !3, line: 683, type: !5116, scopeLine: 684, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5118)
!5116 = !DISubroutineType(types: !5117)
!5117 = !{!282, !3905, !7}
!5118 = !{!5119, !5120, !5121}
!5119 = !DILocalVariable(name: "rng", arg: 1, scope: !5115, file: !3, line: 683, type: !3905)
!5120 = !DILocalVariable(name: "msecs", arg: 2, scope: !5115, file: !3, line: 683, type: !7)
!5121 = !DILocalVariable(name: "timeout", scope: !5115, file: !3, line: 685, type: !296)
!5122 = !DILocation(line: 683, column: 33, scope: !5115)
!5123 = !DILocation(line: 683, column: 51, scope: !5115)
!5124 = !DILocation(line: 685, column: 2, scope: !5115)
!5125 = !DILocation(line: 685, column: 16, scope: !5115)
!5126 = !DILocation(line: 685, column: 43, scope: !5115)
!5127 = !DILocation(line: 685, column: 26, scope: !5115)
!5128 = !DILocation(line: 685, column: 50, scope: !5115)
!5129 = !DILocation(line: 687, column: 52, scope: !5115)
!5130 = !DILocation(line: 687, column: 57, scope: !5115)
!5131 = !DILocation(line: 687, column: 64, scope: !5115)
!5132 = !DILocation(line: 687, column: 9, scope: !5115)
!5133 = !DILocation(line: 688, column: 1, scope: !5115)
!5134 = !DILocation(line: 687, column: 2, scope: !5115)
!5135 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !5136, file: !5136, line: 515, type: !5137, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5139)
!5136 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!5137 = !DISubroutineType(types: !5138)
!5138 = !{!296, !3191}
!5139 = !{!5140}
!5140 = !DILocalVariable(name: "m", arg: 1, scope: !5135, file: !5136, line: 515, type: !3191)
!5141 = !DILocation(line: 515, column: 74, scope: !5135)
!5142 = !DILocation(line: 517, column: 27, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5135, file: !5136, line: 517, column: 6)
!5144 = !DILocation(line: 517, column: 6, scope: !5143)
!5145 = !DILocation(line: 517, column: 6, scope: !5135)
!5146 = !DILocation(line: 518, column: 12, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5148, file: !5136, line: 518, column: 7)
!5148 = distinct !DILexicalBlock(scope: !5143, file: !5136, line: 517, column: 31)
!5149 = !DILocation(line: 518, column: 14, scope: !5147)
!5150 = !DILocation(line: 518, column: 7, scope: !5148)
!5151 = !DILocation(line: 519, column: 4, scope: !5147)
!5152 = !DILocation(line: 520, column: 28, scope: !5148)
!5153 = !DILocation(line: 520, column: 10, scope: !5148)
!5154 = !DILocation(line: 520, column: 3, scope: !5148)
!5155 = !DILocation(line: 522, column: 29, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5143, file: !5136, line: 521, column: 9)
!5157 = !DILocation(line: 522, column: 10, scope: !5156)
!5158 = !DILocation(line: 522, column: 3, scope: !5156)
!5159 = !DILocation(line: 524, column: 1, scope: !5135)
!5160 = !DISubprogram(name: "wait_for_completion_interruptible_timeout", scope: !2026, file: !2026, line: 111, type: !5161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5161 = !DISubroutineType(types: !5162)
!5162 = !{!282, !2024, !296}
!5163 = distinct !DISubprogram(name: "hwrng_yield", scope: !3, file: !3, line: 691, type: !5164, scopeLine: 692, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5166)
!5164 = !DISubroutineType(types: !5165)
!5165 = !{!282, !3905}
!5166 = !{!5167}
!5167 = !DILocalVariable(name: "rng", arg: 1, scope: !5163, file: !3, line: 691, type: !3905)
!5168 = !DILocation(line: 691, column: 32, scope: !5163)
!5169 = !DILocation(line: 693, column: 52, scope: !5163)
!5170 = !DILocation(line: 693, column: 57, scope: !5163)
!5171 = !DILocation(line: 693, column: 9, scope: !5163)
!5172 = !DILocation(line: 693, column: 2, scope: !5163)
!5173 = distinct !DISubprogram(name: "hwrng_modexit", scope: !3, file: !3, line: 721, type: !2272, scopeLine: 722, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5174 = !DILocation(line: 723, column: 2, scope: !5173)
!5175 = !DILocation(line: 724, column: 2, scope: !5173)
!5176 = !DILocation(line: 724, column: 2, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5178, file: !3, line: 724, column: 2)
!5178 = distinct !DILexicalBlock(scope: !5173, file: !3, line: 724, column: 2)
!5179 = !DILocation(line: 724, column: 2, scope: !5178)
!5180 = !DILocation(line: 724, column: 2, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5177, file: !3, line: 724, column: 2)
!5182 = !DILocation(line: 724, column: 2, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 724, column: 2)
!5184 = !DILocation(line: 724, column: 2, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 724, column: 2)
!5186 = !{i64 2154185556, i64 2154185585, i64 2154185631, i64 2154185689, i64 2154185743, i64 2154185797, i64 2154185852, i64 2154185883}
!5187 = !DILocation(line: 725, column: 8, scope: !5173)
!5188 = !DILocation(line: 725, column: 2, scope: !5173)
!5189 = !DILocation(line: 726, column: 8, scope: !5173)
!5190 = !DILocation(line: 726, column: 2, scope: !5173)
!5191 = !DILocation(line: 727, column: 2, scope: !5173)
!5192 = !DILocation(line: 729, column: 2, scope: !5173)
!5193 = !DILocation(line: 730, column: 1, scope: !5173)
!5194 = !DISubprogram(name: "kfree", scope: !131, file: !131, line: 227, type: !5195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{null, !1875}
!5197 = distinct !DISubprogram(name: "__initstub__kmod_rng_core__281_732_hwrng_modinit5", scope: !3, file: !3, line: 732, type: !3688, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5198 = !DILocation(line: 732, column: 1, scope: !5197)
!5199 = distinct !DISubprogram(name: "hwrng_modinit", scope: !3, file: !3, line: 697, type: !3688, scopeLine: 698, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5200)
!5200 = !{!5201}
!5201 = !DILocalVariable(name: "ret", scope: !5199, file: !3, line: 699, type: !85)
!5202 = !DILocation(line: 699, column: 2, scope: !5199)
!5203 = !DILocation(line: 699, column: 6, scope: !5199)
!5204 = !DILocation(line: 702, column: 23, scope: !5199)
!5205 = !DILocation(line: 702, column: 15, scope: !5199)
!5206 = !DILocation(line: 702, column: 13, scope: !5199)
!5207 = !DILocation(line: 703, column: 7, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 703, column: 6)
!5209 = !DILocation(line: 703, column: 6, scope: !5199)
!5210 = !DILocation(line: 704, column: 3, scope: !5208)
!5211 = !DILocation(line: 706, column: 24, scope: !5199)
!5212 = !DILocation(line: 706, column: 16, scope: !5199)
!5213 = !DILocation(line: 706, column: 14, scope: !5199)
!5214 = !DILocation(line: 707, column: 7, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 707, column: 6)
!5216 = !DILocation(line: 707, column: 6, scope: !5199)
!5217 = !DILocation(line: 708, column: 9, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 707, column: 20)
!5219 = !DILocation(line: 708, column: 3, scope: !5218)
!5220 = !DILocation(line: 709, column: 3, scope: !5218)
!5221 = !DILocation(line: 712, column: 8, scope: !5199)
!5222 = !DILocation(line: 712, column: 6, scope: !5199)
!5223 = !DILocation(line: 713, column: 6, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 713, column: 6)
!5225 = !DILocation(line: 713, column: 6, scope: !5199)
!5226 = !DILocation(line: 714, column: 9, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 713, column: 11)
!5228 = !DILocation(line: 714, column: 3, scope: !5227)
!5229 = !DILocation(line: 715, column: 9, scope: !5227)
!5230 = !DILocation(line: 715, column: 3, scope: !5227)
!5231 = !DILocation(line: 716, column: 2, scope: !5227)
!5232 = !DILocation(line: 718, column: 9, scope: !5199)
!5233 = !DILocation(line: 718, column: 2, scope: !5199)
!5234 = !DILocation(line: 719, column: 1, scope: !5199)
!5235 = distinct !DISubprogram(name: "rng_dev_read", scope: !3, file: !3, line: 211, type: !1572, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5236)
!5236 = !{!5237, !5238, !5239, !5240, !5241, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250}
!5237 = !DILocalVariable(name: "filp", arg: 1, scope: !5235, file: !3, line: 211, type: !1286)
!5238 = !DILocalVariable(name: "buf", arg: 2, scope: !5235, file: !3, line: 211, type: !246)
!5239 = !DILocalVariable(name: "size", arg: 3, scope: !5235, file: !3, line: 212, type: !293)
!5240 = !DILocalVariable(name: "offp", arg: 4, scope: !5235, file: !3, line: 212, type: !1574)
!5241 = !DILocalVariable(name: "buffer", scope: !5235, file: !3, line: 214, type: !5242)
!5242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 512, elements: !251)
!5243 = !DILocalVariable(name: "ret", scope: !5235, file: !3, line: 215, type: !278)
!5244 = !DILocalVariable(name: "err", scope: !5235, file: !3, line: 216, type: !85)
!5245 = !DILocalVariable(name: "bytes_read", scope: !5235, file: !3, line: 217, type: !85)
!5246 = !DILocalVariable(name: "len", scope: !5235, file: !3, line: 217, type: !85)
!5247 = !DILocalVariable(name: "rng", scope: !5235, file: !3, line: 218, type: !3905)
!5248 = !DILabel(scope: !5235, name: "out", file: !3, line: 282)
!5249 = !DILabel(scope: !5235, name: "out_unlock_reading", file: !3, line: 286)
!5250 = !DILabel(scope: !5235, name: "out_put", file: !3, line: 288)
!5251 = !DILocation(line: 211, column: 42, scope: !5235)
!5252 = !DILocation(line: 211, column: 61, scope: !5235)
!5253 = !DILocation(line: 212, column: 15, scope: !5235)
!5254 = !DILocation(line: 212, column: 29, scope: !5235)
!5255 = !DILocation(line: 214, column: 2, scope: !5235)
!5256 = !DILocation(line: 214, column: 5, scope: !5235)
!5257 = !DILocation(line: 215, column: 2, scope: !5235)
!5258 = !DILocation(line: 215, column: 10, scope: !5235)
!5259 = !DILocation(line: 216, column: 2, scope: !5235)
!5260 = !DILocation(line: 216, column: 6, scope: !5235)
!5261 = !DILocation(line: 217, column: 2, scope: !5235)
!5262 = !DILocation(line: 217, column: 6, scope: !5235)
!5263 = !DILocation(line: 217, column: 18, scope: !5235)
!5264 = !DILocation(line: 218, column: 2, scope: !5235)
!5265 = !DILocation(line: 218, column: 16, scope: !5235)
!5266 = !DILocation(line: 220, column: 2, scope: !5235)
!5267 = !DILocation(line: 220, column: 9, scope: !5235)
!5268 = !DILocation(line: 221, column: 9, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 220, column: 15)
!5270 = !DILocation(line: 221, column: 7, scope: !5269)
!5271 = !DILocation(line: 222, column: 14, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 222, column: 7)
!5273 = !DILocation(line: 222, column: 7, scope: !5272)
!5274 = !DILocation(line: 222, column: 7, scope: !5269)
!5275 = !DILocation(line: 223, column: 18, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5272, file: !3, line: 222, column: 20)
!5277 = !DILocation(line: 223, column: 10, scope: !5276)
!5278 = !DILocation(line: 223, column: 8, scope: !5276)
!5279 = !DILocation(line: 224, column: 4, scope: !5276)
!5280 = !DILocation(line: 226, column: 8, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 226, column: 7)
!5282 = !DILocation(line: 226, column: 7, scope: !5269)
!5283 = !DILocation(line: 227, column: 8, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5281, file: !3, line: 226, column: 13)
!5285 = !DILocation(line: 228, column: 4, scope: !5284)
!5286 = !DILocation(line: 231, column: 7, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 231, column: 7)
!5288 = !DILocation(line: 231, column: 7, scope: !5269)
!5289 = !DILocation(line: 232, column: 8, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 231, column: 49)
!5291 = !DILocation(line: 233, column: 4, scope: !5290)
!5292 = !DILocation(line: 235, column: 8, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 235, column: 7)
!5294 = !DILocation(line: 235, column: 7, scope: !5269)
!5295 = !DILocation(line: 236, column: 30, scope: !5296)
!5296 = distinct !DILexicalBlock(scope: !5293, file: !3, line: 235, column: 20)
!5297 = !DILocation(line: 236, column: 35, scope: !5296)
!5298 = !DILocation(line: 237, column: 5, scope: !5296)
!5299 = !DILocation(line: 238, column: 7, scope: !5296)
!5300 = !DILocation(line: 238, column: 13, scope: !5296)
!5301 = !DILocation(line: 238, column: 21, scope: !5296)
!5302 = !DILocation(line: 238, column: 5, scope: !5296)
!5303 = !DILocation(line: 236, column: 17, scope: !5296)
!5304 = !DILocation(line: 236, column: 15, scope: !5296)
!5305 = !DILocation(line: 239, column: 8, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5296, file: !3, line: 239, column: 8)
!5307 = !DILocation(line: 239, column: 19, scope: !5306)
!5308 = !DILocation(line: 239, column: 8, scope: !5296)
!5309 = !DILocation(line: 240, column: 11, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 239, column: 24)
!5311 = !DILocation(line: 240, column: 9, scope: !5310)
!5312 = !DILocation(line: 241, column: 5, scope: !5310)
!5313 = !DILocation(line: 242, column: 15, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 242, column: 15)
!5315 = !DILocation(line: 242, column: 26, scope: !5314)
!5316 = !DILocation(line: 242, column: 31, scope: !5314)
!5317 = !DILocation(line: 243, column: 9, scope: !5314)
!5318 = !DILocation(line: 243, column: 15, scope: !5314)
!5319 = !DILocation(line: 243, column: 23, scope: !5314)
!5320 = !DILocation(line: 242, column: 15, scope: !5306)
!5321 = !DILocation(line: 244, column: 9, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 243, column: 38)
!5323 = !DILocation(line: 245, column: 5, scope: !5322)
!5324 = !DILocation(line: 248, column: 17, scope: !5296)
!5325 = !DILocation(line: 248, column: 15, scope: !5296)
!5326 = !DILocation(line: 249, column: 3, scope: !5296)
!5327 = !DILocation(line: 251, column: 9, scope: !5269)
!5328 = !DILocation(line: 251, column: 7, scope: !5269)
!5329 = !DILocation(line: 252, column: 7, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 252, column: 7)
!5331 = !DILocation(line: 252, column: 7, scope: !5269)
!5332 = !DILocation(line: 253, column: 8, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5334, file: !3, line: 253, column: 8)
!5334 = distinct !DILexicalBlock(scope: !5330, file: !3, line: 252, column: 12)
!5335 = !DILocation(line: 253, column: 14, scope: !5333)
!5336 = !DILocation(line: 253, column: 12, scope: !5333)
!5337 = !DILocation(line: 253, column: 8, scope: !5334)
!5338 = !DILocation(line: 254, column: 11, scope: !5333)
!5339 = !DILocation(line: 254, column: 9, scope: !5333)
!5340 = !DILocation(line: 254, column: 5, scope: !5333)
!5341 = !DILocation(line: 256, column: 18, scope: !5334)
!5342 = !DILocation(line: 256, column: 15, scope: !5334)
!5343 = !DILocation(line: 258, column: 4, scope: !5334)
!5344 = !DILocation(line: 258, column: 19, scope: !5334)
!5345 = !DILocation(line: 258, column: 32, scope: !5334)
!5346 = !DILocation(line: 258, column: 30, scope: !5334)
!5347 = !DILocation(line: 258, column: 44, scope: !5334)
!5348 = !DILocation(line: 259, column: 3, scope: !5334)
!5349 = !DILocation(line: 260, column: 3, scope: !5269)
!5350 = !DILocation(line: 261, column: 11, scope: !5269)
!5351 = !DILocation(line: 261, column: 3, scope: !5269)
!5352 = !DILocation(line: 263, column: 7, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 263, column: 7)
!5354 = !DILocation(line: 263, column: 7, scope: !5269)
!5355 = !DILocation(line: 264, column: 21, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 264, column: 8)
!5357 = distinct !DILexicalBlock(scope: !5353, file: !3, line: 263, column: 12)
!5358 = !DILocation(line: 264, column: 27, scope: !5356)
!5359 = !DILocation(line: 264, column: 25, scope: !5356)
!5360 = !DILocation(line: 264, column: 32, scope: !5356)
!5361 = !DILocation(line: 264, column: 40, scope: !5356)
!5362 = !DILocation(line: 264, column: 8, scope: !5356)
!5363 = !DILocation(line: 264, column: 8, scope: !5357)
!5364 = !DILocation(line: 265, column: 9, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5356, file: !3, line: 264, column: 46)
!5366 = !DILocation(line: 266, column: 5, scope: !5365)
!5367 = !DILocation(line: 269, column: 12, scope: !5357)
!5368 = !DILocation(line: 269, column: 9, scope: !5357)
!5369 = !DILocation(line: 270, column: 11, scope: !5357)
!5370 = !DILocation(line: 270, column: 8, scope: !5357)
!5371 = !DILocation(line: 271, column: 3, scope: !5357)
!5372 = !DILocation(line: 274, column: 7, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 274, column: 7)
!5374 = !DILocation(line: 274, column: 7, scope: !5269)
!5375 = !DILocation(line: 275, column: 4, scope: !5373)
!5376 = !DILocation(line: 277, column: 22, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 277, column: 7)
!5378 = !DILocation(line: 277, column: 7, scope: !5377)
!5379 = !DILocation(line: 277, column: 7, scope: !5269)
!5380 = !DILocation(line: 278, column: 8, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 277, column: 32)
!5382 = !DILocation(line: 279, column: 4, scope: !5381)
!5383 = distinct !{!5383, !5266, !5384, !4579, !4580}
!5384 = !DILocation(line: 281, column: 2, scope: !5235)
!5385 = !DILocation(line: 282, column: 1, scope: !5235)
!5386 = !DILocation(line: 283, column: 19, scope: !5235)
!5387 = !DILocation(line: 283, column: 2, scope: !5235)
!5388 = !DILocation(line: 284, column: 9, scope: !5235)
!5389 = !DILocation(line: 284, column: 17, scope: !5235)
!5390 = !DILocation(line: 291, column: 1, scope: !5235)
!5391 = !DILocation(line: 284, column: 2, scope: !5235)
!5392 = !DILocation(line: 286, column: 1, scope: !5235)
!5393 = !DILocation(line: 287, column: 2, scope: !5235)
!5394 = !DILocation(line: 288, column: 1, scope: !5235)
!5395 = !DILocation(line: 289, column: 10, scope: !5235)
!5396 = !DILocation(line: 289, column: 2, scope: !5235)
!5397 = !DILocation(line: 290, column: 2, scope: !5235)
!5398 = distinct !DISubprogram(name: "rng_dev_open", scope: !3, file: !3, line: 182, type: !1704, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5399)
!5399 = !{!5400, !5401}
!5400 = !DILocalVariable(name: "inode", arg: 1, scope: !5398, file: !3, line: 182, type: !327)
!5401 = !DILocalVariable(name: "filp", arg: 2, scope: !5398, file: !3, line: 182, type: !1286)
!5402 = !DILocation(line: 182, column: 39, scope: !5398)
!5403 = !DILocation(line: 182, column: 59, scope: !5398)
!5404 = !DILocation(line: 185, column: 7, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 185, column: 6)
!5406 = !DILocation(line: 185, column: 13, scope: !5405)
!5407 = !DILocation(line: 185, column: 20, scope: !5405)
!5408 = !DILocation(line: 185, column: 34, scope: !5405)
!5409 = !DILocation(line: 185, column: 6, scope: !5398)
!5410 = !DILocation(line: 186, column: 3, scope: !5405)
!5411 = !DILocation(line: 187, column: 6, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 187, column: 6)
!5413 = !DILocation(line: 187, column: 12, scope: !5412)
!5414 = !DILocation(line: 187, column: 19, scope: !5412)
!5415 = !DILocation(line: 187, column: 6, scope: !5398)
!5416 = !DILocation(line: 188, column: 3, scope: !5412)
!5417 = !DILocation(line: 189, column: 2, scope: !5398)
!5418 = !DILocation(line: 190, column: 1, scope: !5398)
!5419 = distinct !DISubprogram(name: "get_current_rng", scope: !3, file: !3, line: 135, type: !4971, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5420)
!5420 = !{!5421}
!5421 = !DILocalVariable(name: "rng", scope: !5419, file: !3, line: 137, type: !3905)
!5422 = !DILocation(line: 137, column: 2, scope: !5419)
!5423 = !DILocation(line: 137, column: 16, scope: !5419)
!5424 = !DILocation(line: 139, column: 6, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5419, file: !3, line: 139, column: 6)
!5426 = !DILocation(line: 139, column: 6, scope: !5419)
!5427 = !DILocation(line: 140, column: 10, scope: !5425)
!5428 = !DILocation(line: 140, column: 3, scope: !5425)
!5429 = !DILocation(line: 142, column: 8, scope: !5419)
!5430 = !DILocation(line: 142, column: 6, scope: !5419)
!5431 = !DILocation(line: 144, column: 2, scope: !5419)
!5432 = !DILocation(line: 145, column: 9, scope: !5419)
!5433 = !DILocation(line: 145, column: 2, scope: !5419)
!5434 = !DILocation(line: 146, column: 1, scope: !5419)
!5435 = distinct !DISubprogram(name: "IS_ERR", scope: !5436, file: !5436, line: 59, type: !5437, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5439)
!5436 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5437 = !DISubroutineType(types: !5438)
!5438 = !{!1447, !1875}
!5439 = !{!5440}
!5440 = !DILocalVariable(name: "ptr", arg: 1, scope: !5435, file: !5436, line: 59, type: !1875)
!5441 = !DILocation(line: 59, column: 60, scope: !5435)
!5442 = !DILocation(line: 61, column: 9, scope: !5435)
!5443 = !DILocation(line: 61, column: 2, scope: !5435)
!5444 = distinct !DISubprogram(name: "PTR_ERR", scope: !5436, file: !5436, line: 49, type: !5445, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5447)
!5445 = !DISubroutineType(types: !5446)
!5446 = !{!282, !1875}
!5447 = !{!5448}
!5448 = !DILocalVariable(name: "ptr", arg: 1, scope: !5444, file: !5436, line: 49, type: !1875)
!5449 = !DILocation(line: 49, column: 61, scope: !5444)
!5450 = !DILocation(line: 51, column: 16, scope: !5444)
!5451 = !DILocation(line: 51, column: 9, scope: !5444)
!5452 = !DILocation(line: 51, column: 2, scope: !5444)
!5453 = !DISubprogram(name: "mutex_lock_interruptible", scope: !628, file: !628, line: 228, type: !5454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5454 = !DISubroutineType(types: !5455)
!5455 = !{!85, !4650}
!5456 = distinct !DISubprogram(name: "rng_get_data", scope: !3, file: !3, line: 192, type: !5457, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5459)
!5457 = !DISubroutineType(types: !5458)
!5458 = !{!85, !3905, !4025, !293, !85}
!5459 = !{!5460, !5461, !5462, !5463, !5464}
!5460 = !DILocalVariable(name: "rng", arg: 1, scope: !5456, file: !3, line: 192, type: !3905)
!5461 = !DILocalVariable(name: "buffer", arg: 2, scope: !5456, file: !3, line: 192, type: !4025)
!5462 = !DILocalVariable(name: "size", arg: 3, scope: !5456, file: !3, line: 192, type: !293)
!5463 = !DILocalVariable(name: "wait", arg: 4, scope: !5456, file: !3, line: 193, type: !85)
!5464 = !DILocalVariable(name: "present", scope: !5456, file: !3, line: 194, type: !85)
!5465 = !DILocation(line: 192, column: 46, scope: !5456)
!5466 = !DILocation(line: 192, column: 55, scope: !5456)
!5467 = !DILocation(line: 192, column: 70, scope: !5456)
!5468 = !DILocation(line: 193, column: 8, scope: !5456)
!5469 = !DILocation(line: 194, column: 2, scope: !5456)
!5470 = !DILocation(line: 194, column: 6, scope: !5456)
!5471 = !DILocation(line: 196, column: 2, scope: !5456)
!5472 = !DILocation(line: 196, column: 2, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5474, file: !3, line: 196, column: 2)
!5474 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 196, column: 2)
!5475 = !DILocation(line: 196, column: 2, scope: !5474)
!5476 = !DILocation(line: 196, column: 2, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 196, column: 2)
!5478 = !DILocation(line: 196, column: 2, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 196, column: 2)
!5480 = !DILocation(line: 196, column: 2, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 196, column: 2)
!5482 = !{i64 2153928473, i64 2153928502, i64 2153928548, i64 2153928606, i64 2153928660, i64 2153928714, i64 2153928769, i64 2153928800}
!5483 = !DILocation(line: 197, column: 6, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 197, column: 6)
!5485 = !DILocation(line: 197, column: 11, scope: !5484)
!5486 = !DILocation(line: 197, column: 6, scope: !5456)
!5487 = !DILocation(line: 198, column: 10, scope: !5484)
!5488 = !DILocation(line: 198, column: 15, scope: !5484)
!5489 = !DILocation(line: 198, column: 20, scope: !5484)
!5490 = !DILocation(line: 198, column: 33, scope: !5484)
!5491 = !DILocation(line: 198, column: 41, scope: !5484)
!5492 = !DILocation(line: 198, column: 47, scope: !5484)
!5493 = !DILocation(line: 198, column: 3, scope: !5484)
!5494 = !DILocation(line: 200, column: 6, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 200, column: 6)
!5496 = !DILocation(line: 200, column: 11, scope: !5495)
!5497 = !DILocation(line: 200, column: 6, scope: !5456)
!5498 = !DILocation(line: 201, column: 13, scope: !5495)
!5499 = !DILocation(line: 201, column: 18, scope: !5495)
!5500 = !DILocation(line: 201, column: 31, scope: !5495)
!5501 = !DILocation(line: 201, column: 36, scope: !5495)
!5502 = !DILocation(line: 201, column: 11, scope: !5495)
!5503 = !DILocation(line: 201, column: 3, scope: !5495)
!5504 = !DILocation(line: 203, column: 11, scope: !5495)
!5505 = !DILocation(line: 205, column: 6, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 205, column: 6)
!5507 = !DILocation(line: 205, column: 6, scope: !5456)
!5508 = !DILocation(line: 206, column: 10, scope: !5506)
!5509 = !DILocation(line: 206, column: 15, scope: !5506)
!5510 = !DILocation(line: 206, column: 25, scope: !5506)
!5511 = !DILocation(line: 206, column: 37, scope: !5506)
!5512 = !DILocation(line: 206, column: 3, scope: !5506)
!5513 = !DILocation(line: 208, column: 2, scope: !5456)
!5514 = !DILocation(line: 209, column: 1, scope: !5456)
!5515 = distinct !DISubprogram(name: "rng_buffer_size", scope: !3, file: !3, line: 62, type: !5516, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5516 = !DISubroutineType(types: !5517)
!5517 = !{!293}
!5518 = !DILocation(line: 64, column: 2, scope: !5515)
!5519 = distinct !DISubprogram(name: "copy_to_user", scope: !5520, file: !5520, line: 188, type: !5521, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5523)
!5520 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!5521 = !DISubroutineType(types: !5522)
!5522 = !{!296, !318, !1875, !296}
!5523 = !{!5524, !5525, !5526}
!5524 = !DILocalVariable(name: "to", arg: 1, scope: !5519, file: !5520, line: 188, type: !318)
!5525 = !DILocalVariable(name: "from", arg: 2, scope: !5519, file: !5520, line: 188, type: !1875)
!5526 = !DILocalVariable(name: "n", arg: 3, scope: !5519, file: !5520, line: 188, type: !296)
!5527 = !DILocation(line: 188, column: 27, scope: !5519)
!5528 = !DILocation(line: 188, column: 43, scope: !5519)
!5529 = !DILocation(line: 188, column: 63, scope: !5519)
!5530 = !DILocation(line: 190, column: 22, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5519, file: !5520, line: 190, column: 6)
!5532 = !DILocation(line: 190, column: 28, scope: !5531)
!5533 = !DILocation(line: 190, column: 6, scope: !5531)
!5534 = !DILocation(line: 190, column: 6, scope: !5519)
!5535 = !DILocation(line: 191, column: 21, scope: !5531)
!5536 = !DILocation(line: 191, column: 25, scope: !5531)
!5537 = !DILocation(line: 191, column: 31, scope: !5531)
!5538 = !DILocation(line: 191, column: 7, scope: !5531)
!5539 = !DILocation(line: 191, column: 5, scope: !5531)
!5540 = !DILocation(line: 191, column: 3, scope: !5531)
!5541 = !DILocation(line: 192, column: 9, scope: !5519)
!5542 = !DILocation(line: 192, column: 2, scope: !5519)
!5543 = distinct !DISubprogram(name: "need_resched", scope: !602, file: !602, line: 2260, type: !3435, scopeLine: 2261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5544 = !DILocation(line: 2262, column: 9, scope: !5543)
!5545 = !DILocation(line: 2262, column: 2, scope: !5543)
!5546 = !DISubprogram(name: "schedule_timeout_interruptible", scope: !602, file: !602, line: 299, type: !5547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5547 = !DISubroutineType(types: !5548)
!5548 = !{!282, !282}
!5549 = distinct !DISubprogram(name: "signal_pending", scope: !2109, file: !2109, line: 392, type: !4998, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5550)
!5550 = !{!5551}
!5551 = !DILocalVariable(name: "p", arg: 1, scope: !5549, file: !2109, line: 392, type: !956)
!5552 = !DILocation(line: 392, column: 54, scope: !5549)
!5553 = !DILocation(line: 399, column: 6, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5549, file: !2109, line: 399, column: 6)
!5555 = !DILocation(line: 399, column: 6, scope: !5549)
!5556 = !DILocation(line: 400, column: 3, scope: !5554)
!5557 = !DILocation(line: 401, column: 25, scope: !5549)
!5558 = !DILocation(line: 401, column: 9, scope: !5549)
!5559 = !DILocation(line: 401, column: 2, scope: !5549)
!5560 = !DILocation(line: 402, column: 1, scope: !5549)
!5561 = distinct !DISubprogram(name: "get_current", scope: !5562, file: !5562, line: 39, type: !5563, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5565)
!5562 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5563 = !DISubroutineType(types: !5564)
!5564 = !{!956}
!5565 = !{!5566, !5568, !5570}
!5566 = !DILocalVariable(name: "pscr_ret__", scope: !5567, file: !5562, line: 41, type: !956)
!5567 = distinct !DILexicalBlock(scope: !5561, file: !5562, line: 41, column: 9)
!5568 = !DILocalVariable(name: "__vpp_verify", scope: !5569, file: !5562, line: 41, type: !1875)
!5569 = distinct !DILexicalBlock(scope: !5567, file: !5562, line: 41, column: 9)
!5570 = !DILocalVariable(name: "pfo_val__", scope: !5571, file: !5562, line: 41, type: !400)
!5571 = distinct !DILexicalBlock(scope: !5567, file: !5562, line: 41, column: 9)
!5572 = !DILocation(line: 41, column: 9, scope: !5567)
!5573 = !DILocation(line: 41, column: 9, scope: !5569)
!5574 = !DILocation(line: 41, column: 9, scope: !5571)
!5575 = !{i64 2148207285}
!5576 = !DILocation(line: 41, column: 9, scope: !5561)
!5577 = !DILocation(line: 41, column: 2, scope: !5561)
!5578 = distinct !DISubprogram(name: "memzero_explicit", scope: !4652, file: !4652, line: 276, type: !5579, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5581)
!5579 = !DISubroutineType(types: !5580)
!5580 = !{null, !318, !293}
!5581 = !{!5582, !5583}
!5582 = !DILocalVariable(name: "s", arg: 1, scope: !5578, file: !4652, line: 276, type: !318)
!5583 = !DILocalVariable(name: "count", arg: 2, scope: !5578, file: !4652, line: 276, type: !293)
!5584 = !DILocation(line: 276, column: 43, scope: !5578)
!5585 = !DILocation(line: 276, column: 53, scope: !5578)
!5586 = !DILocation(line: 278, column: 9, scope: !5578)
!5587 = !DILocation(line: 278, column: 15, scope: !5578)
!5588 = !DILocation(line: 278, column: 2, scope: !5578)
!5589 = !DILocation(line: 279, column: 2, scope: !5578)
!5590 = !{i64 2149453112}
!5591 = !DILocation(line: 280, column: 1, scope: !5578)
!5592 = distinct !DISubprogram(name: "ERR_PTR", scope: !5436, file: !5436, line: 39, type: !5593, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5595)
!5593 = !DISubroutineType(types: !5594)
!5594 = !{!318, !282}
!5595 = !{!5596}
!5596 = !DILocalVariable(name: "error", arg: 1, scope: !5592, file: !5436, line: 39, type: !282)
!5597 = !DILocation(line: 39, column: 48, scope: !5592)
!5598 = !DILocation(line: 41, column: 18, scope: !5592)
!5599 = !DILocation(line: 41, column: 9, scope: !5592)
!5600 = !DILocation(line: 41, column: 2, scope: !5592)
!5601 = !DISubprogram(name: "mutex_is_locked", scope: !628, file: !628, line: 130, type: !5602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5602 = !DISubroutineType(types: !5603)
!5603 = !{!1447, !4650}
!5604 = distinct !DISubprogram(name: "check_copy_size", scope: !4415, file: !4415, line: 237, type: !5605, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5607)
!5605 = !DISubroutineType(types: !5606)
!5606 = !{!1447, !1875, !293, !1447}
!5607 = !{!5608, !5609, !5610, !5611, !5612, !5615}
!5608 = !DILocalVariable(name: "addr", arg: 1, scope: !5604, file: !4415, line: 237, type: !1875)
!5609 = !DILocalVariable(name: "bytes", arg: 2, scope: !5604, file: !4415, line: 237, type: !293)
!5610 = !DILocalVariable(name: "is_source", arg: 3, scope: !5604, file: !4415, line: 237, type: !1447)
!5611 = !DILocalVariable(name: "sz", scope: !5604, file: !4415, line: 239, type: !85)
!5612 = !DILocalVariable(name: "__ret_warn_on", scope: !5613, file: !4415, line: 249, type: !85)
!5613 = distinct !DILexicalBlock(scope: !5614, file: !4415, line: 249, column: 6)
!5614 = distinct !DILexicalBlock(scope: !5604, file: !4415, line: 249, column: 6)
!5615 = !DILocalVariable(name: "__flags", scope: !5616, file: !4415, line: 249, type: !85)
!5616 = distinct !DILexicalBlock(scope: !5617, file: !4415, line: 249, column: 6)
!5617 = distinct !DILexicalBlock(scope: !5613, file: !4415, line: 249, column: 6)
!5618 = !DILocation(line: 237, column: 29, scope: !5604)
!5619 = !DILocation(line: 237, column: 42, scope: !5604)
!5620 = !DILocation(line: 237, column: 54, scope: !5604)
!5621 = !DILocation(line: 239, column: 2, scope: !5604)
!5622 = !DILocation(line: 239, column: 6, scope: !5604)
!5623 = !DILocation(line: 239, column: 33, scope: !5604)
!5624 = !DILocation(line: 239, column: 11, scope: !5604)
!5625 = !DILocation(line: 240, column: 6, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5604, file: !4415, line: 240, column: 6)
!5627 = !DILocation(line: 0, scope: !5626)
!5628 = !DILocation(line: 240, column: 6, scope: !5604)
!5629 = !DILocation(line: 241, column: 29, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5631, file: !4415, line: 241, column: 7)
!5631 = distinct !DILexicalBlock(scope: !5626, file: !4415, line: 240, column: 39)
!5632 = !DILocation(line: 241, column: 8, scope: !5630)
!5633 = !DILocation(line: 241, column: 7, scope: !5631)
!5634 = !DILocation(line: 242, column: 18, scope: !5630)
!5635 = !DILocation(line: 242, column: 22, scope: !5630)
!5636 = !DILocation(line: 242, column: 4, scope: !5630)
!5637 = !DILocation(line: 243, column: 12, scope: !5638)
!5638 = distinct !DILexicalBlock(scope: !5630, file: !4415, line: 243, column: 12)
!5639 = !DILocation(line: 243, column: 12, scope: !5630)
!5640 = !DILocation(line: 244, column: 4, scope: !5638)
!5641 = !{i32 1621696}
!5642 = !DILocation(line: 246, column: 4, scope: !5638)
!5643 = !{i32 1621725}
!5644 = !DILocation(line: 247, column: 3, scope: !5631)
!5645 = !DILocation(line: 249, column: 6, scope: !5613)
!5646 = !DILocation(line: 249, column: 6, scope: !5617)
!5647 = !DILocation(line: 249, column: 6, scope: !5616)
!5648 = !DILocation(line: 249, column: 6, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5616, file: !4415, line: 249, column: 6)
!5650 = !DILocation(line: 249, column: 6, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5616, file: !4415, line: 249, column: 6)
!5652 = !{i64 2149592619, i64 2149592648, i64 2149592694, i64 2149592752, i64 2149592806, i64 2149592860, i64 2149592915, i64 2149592946, i64 2149593254, i64 2149593260, i64 2149593307, i64 2149593330, i64 2149593356}
!5653 = !DILocation(line: 249, column: 6, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5616, file: !4415, line: 249, column: 6)
!5655 = !DILocation(line: 249, column: 6, scope: !5614)
!5656 = !DILocation(line: 249, column: 6, scope: !5604)
!5657 = !DILocation(line: 250, column: 3, scope: !5614)
!5658 = !DILocation(line: 251, column: 20, scope: !5604)
!5659 = !DILocation(line: 251, column: 26, scope: !5604)
!5660 = !DILocation(line: 251, column: 33, scope: !5604)
!5661 = !DILocation(line: 251, column: 2, scope: !5604)
!5662 = !DILocation(line: 252, column: 2, scope: !5604)
!5663 = !DILocation(line: 253, column: 1, scope: !5604)
!5664 = !DISubprogram(name: "_copy_to_user", scope: !5520, file: !5520, line: 176, type: !5521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5665 = distinct !DISubprogram(name: "copy_overflow", scope: !4415, file: !4415, line: 230, type: !5666, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5668)
!5666 = !DISubroutineType(types: !5667)
!5667 = !{null, !85, !296}
!5668 = !{!5669, !5670}
!5669 = !DILocalVariable(name: "size", arg: 1, scope: !5665, file: !4415, line: 230, type: !85)
!5670 = !DILocalVariable(name: "count", arg: 2, scope: !5665, file: !4415, line: 230, type: !296)
!5671 = !DILocation(line: 230, column: 38, scope: !5665)
!5672 = !DILocation(line: 230, column: 58, scope: !5665)
!5673 = !DILocation(line: 233, column: 19, scope: !5674)
!5674 = distinct !DILexicalBlock(scope: !5665, file: !4415, line: 232, column: 6)
!5675 = !DILocation(line: 233, column: 25, scope: !5674)
!5676 = !DILocation(line: 233, column: 3, scope: !5674)
!5677 = !DILocation(line: 234, column: 1, scope: !5665)
!5678 = !DISubprogram(name: "__bad_copy_from", scope: !4415, file: !4415, line: 224, type: !2272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5679 = !DISubprogram(name: "__bad_copy_to", scope: !4415, file: !4415, line: 226, type: !2272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5680 = distinct !DISubprogram(name: "check_object_size", scope: !4415, file: !4415, line: 218, type: !5681, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5683)
!5681 = !DISubroutineType(types: !5682)
!5682 = !{null, !1875, !296, !1447}
!5683 = !{!5684, !5685, !5686}
!5684 = !DILocalVariable(name: "ptr", arg: 1, scope: !5680, file: !4415, line: 218, type: !1875)
!5685 = !DILocalVariable(name: "n", arg: 2, scope: !5680, file: !4415, line: 218, type: !296)
!5686 = !DILocalVariable(name: "to_user", arg: 3, scope: !5680, file: !4415, line: 219, type: !1447)
!5687 = !DILocation(line: 218, column: 50, scope: !5680)
!5688 = !DILocation(line: 218, column: 69, scope: !5680)
!5689 = !DILocation(line: 219, column: 15, scope: !5680)
!5690 = !DILocation(line: 220, column: 3, scope: !5680)
!5691 = !DISubprogram(name: "__copy_overflow", scope: !4415, file: !4415, line: 228, type: !5666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5692 = distinct !DISubprogram(name: "tif_need_resched", scope: !4415, file: !4415, line: 182, type: !3435, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5693 = !DILocation(line: 185, column: 28, scope: !5692)
!5694 = !DILocation(line: 185, column: 51, scope: !5692)
!5695 = !DILocation(line: 184, column: 9, scope: !5692)
!5696 = !DILocation(line: 184, column: 2, scope: !5692)
!5697 = distinct !DISubprogram(name: "arch_test_bit", scope: !5698, file: !5698, line: 237, type: !5699, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5704)
!5698 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5699 = !DISubroutineType(types: !5700)
!5700 = !{!1447, !296, !5701}
!5701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5702, size: 64)
!5702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5703)
!5703 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !296)
!5704 = !{!5705, !5706}
!5705 = !DILocalVariable(name: "nr", arg: 1, scope: !5697, file: !5698, line: 237, type: !296)
!5706 = !DILocalVariable(name: "addr", arg: 2, scope: !5697, file: !5698, line: 237, type: !5701)
!5707 = !DILocation(line: 237, column: 29, scope: !5697)
!5708 = !DILocation(line: 237, column: 63, scope: !5697)
!5709 = !DILocation(line: 239, column: 30, scope: !5697)
!5710 = !DILocation(line: 239, column: 9, scope: !5697)
!5711 = !DILocation(line: 239, column: 54, scope: !5697)
!5712 = !DILocation(line: 239, column: 58, scope: !5697)
!5713 = !DILocation(line: 239, column: 36, scope: !5697)
!5714 = !DILocation(line: 240, column: 26, scope: !5697)
!5715 = !DILocation(line: 240, column: 30, scope: !5697)
!5716 = !DILocation(line: 240, column: 8, scope: !5697)
!5717 = !DILocation(line: 239, column: 2, scope: !5697)
!5718 = distinct !DISubprogram(name: "constant_test_bit", scope: !5698, file: !5698, line: 204, type: !5719, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5721)
!5719 = !DISubroutineType(types: !5720)
!5720 = !{!1447, !282, !5701}
!5721 = !{!5722, !5723}
!5722 = !DILocalVariable(name: "nr", arg: 1, scope: !5718, file: !5698, line: 204, type: !282)
!5723 = !DILocalVariable(name: "addr", arg: 2, scope: !5718, file: !5698, line: 204, type: !5701)
!5724 = !DILocation(line: 204, column: 52, scope: !5718)
!5725 = !DILocation(line: 204, column: 86, scope: !5718)
!5726 = !DILocation(line: 206, column: 19, scope: !5718)
!5727 = !DILocation(line: 206, column: 22, scope: !5718)
!5728 = !DILocation(line: 206, column: 15, scope: !5718)
!5729 = !DILocation(line: 207, column: 4, scope: !5718)
!5730 = !DILocation(line: 207, column: 9, scope: !5718)
!5731 = !DILocation(line: 207, column: 12, scope: !5718)
!5732 = !DILocation(line: 206, column: 44, scope: !5718)
!5733 = !DILocation(line: 207, column: 37, scope: !5718)
!5734 = !DILocation(line: 206, column: 2, scope: !5718)
!5735 = distinct !DISubprogram(name: "variable_test_bit", scope: !5698, file: !5698, line: 224, type: !5719, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5736)
!5736 = !{!5737, !5738, !5739}
!5737 = !DILocalVariable(name: "nr", arg: 1, scope: !5735, file: !5698, line: 224, type: !282)
!5738 = !DILocalVariable(name: "addr", arg: 2, scope: !5735, file: !5698, line: 224, type: !5701)
!5739 = !DILocalVariable(name: "oldbit", scope: !5735, file: !5698, line: 226, type: !1447)
!5740 = !DILocation(line: 224, column: 52, scope: !5735)
!5741 = !DILocation(line: 224, column: 86, scope: !5735)
!5742 = !DILocation(line: 226, column: 2, scope: !5735)
!5743 = !DILocation(line: 226, column: 7, scope: !5735)
!5744 = !DILocation(line: 231, column: 33, scope: !5735)
!5745 = !DILocation(line: 231, column: 46, scope: !5735)
!5746 = !DILocation(line: 228, column: 2, scope: !5735)
!5747 = !{i64 2147932181, i64 2147932255}
!5748 = !DILocation(line: 233, column: 9, scope: !5735)
!5749 = !DILocation(line: 234, column: 1, scope: !5735)
!5750 = !DILocation(line: 233, column: 2, scope: !5735)
!5751 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !602, file: !602, line: 2066, type: !5752, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5754)
!5752 = !DISubroutineType(types: !5753)
!5753 = !{!85, !956, !85}
!5754 = !{!5755, !5756}
!5755 = !DILocalVariable(name: "tsk", arg: 1, scope: !5751, file: !602, line: 2066, type: !956)
!5756 = !DILocalVariable(name: "flag", arg: 2, scope: !5751, file: !602, line: 2066, type: !85)
!5757 = !DILocation(line: 2066, column: 60, scope: !5751)
!5758 = !DILocation(line: 2066, column: 69, scope: !5751)
!5759 = !DILocation(line: 2068, column: 29, scope: !5751)
!5760 = !DILocation(line: 2068, column: 52, scope: !5751)
!5761 = !DILocation(line: 2068, column: 9, scope: !5751)
!5762 = !DILocation(line: 2068, column: 2, scope: !5751)
!5763 = distinct !DISubprogram(name: "task_sigpending", scope: !2109, file: !2109, line: 387, type: !4998, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5764)
!5764 = !{!5765}
!5765 = !DILocalVariable(name: "p", arg: 1, scope: !5763, file: !2109, line: 387, type: !956)
!5766 = !DILocation(line: 387, column: 55, scope: !5763)
!5767 = !DILocation(line: 389, column: 9, scope: !5763)
!5768 = !DILocation(line: 389, column: 2, scope: !5763)
!5769 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !4415, file: !4415, line: 116, type: !5770, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5772)
!5770 = !DISubroutineType(types: !5771)
!5771 = !{!85, !3936, !85}
!5772 = !{!5773, !5774}
!5773 = !DILocalVariable(name: "ti", arg: 1, scope: !5769, file: !4415, line: 116, type: !3936)
!5774 = !DILocalVariable(name: "flag", arg: 2, scope: !5769, file: !4415, line: 116, type: !85)
!5775 = !DILocation(line: 116, column: 59, scope: !5769)
!5776 = !DILocation(line: 116, column: 67, scope: !5769)
!5777 = !DILocation(line: 118, column: 9, scope: !5769)
!5778 = !DILocation(line: 118, column: 2, scope: !5769)
!5779 = distinct !DISubprogram(name: "const_test_bit", scope: !5780, file: !5780, line: 166, type: !5699, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5781)
!5780 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5781 = !{!5782, !5783, !5784, !5785, !5786}
!5782 = !DILocalVariable(name: "nr", arg: 1, scope: !5779, file: !5780, line: 166, type: !296)
!5783 = !DILocalVariable(name: "addr", arg: 2, scope: !5779, file: !5780, line: 166, type: !5701)
!5784 = !DILocalVariable(name: "p", scope: !5779, file: !5780, line: 168, type: !3938)
!5785 = !DILocalVariable(name: "mask", scope: !5779, file: !5780, line: 169, type: !296)
!5786 = !DILocalVariable(name: "val", scope: !5779, file: !5780, line: 170, type: !296)
!5787 = !DILocation(line: 166, column: 30, scope: !5779)
!5788 = !DILocation(line: 166, column: 64, scope: !5779)
!5789 = !DILocation(line: 168, column: 2, scope: !5779)
!5790 = !DILocation(line: 168, column: 23, scope: !5779)
!5791 = !DILocation(line: 168, column: 50, scope: !5779)
!5792 = !DILocation(line: 168, column: 57, scope: !5779)
!5793 = !DILocation(line: 168, column: 55, scope: !5779)
!5794 = !DILocation(line: 169, column: 2, scope: !5779)
!5795 = !DILocation(line: 169, column: 16, scope: !5779)
!5796 = !DILocation(line: 169, column: 23, scope: !5779)
!5797 = !DILocation(line: 170, column: 2, scope: !5779)
!5798 = !DILocation(line: 170, column: 16, scope: !5779)
!5799 = !DILocation(line: 170, column: 23, scope: !5779)
!5800 = !DILocation(line: 170, column: 22, scope: !5779)
!5801 = !DILocation(line: 172, column: 12, scope: !5779)
!5802 = !DILocation(line: 172, column: 18, scope: !5779)
!5803 = !DILocation(line: 172, column: 16, scope: !5779)
!5804 = !DILocation(line: 172, column: 10, scope: !5779)
!5805 = !DILocation(line: 172, column: 9, scope: !5779)
!5806 = !DILocation(line: 173, column: 1, scope: !5779)
!5807 = !DILocation(line: 172, column: 2, scope: !5779)
!5808 = distinct !DISubprogram(name: "_test_bit", scope: !5809, file: !5809, line: 139, type: !5699, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5810)
!5809 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5810 = !{!5811, !5812}
!5811 = !DILocalVariable(name: "nr", arg: 1, scope: !5808, file: !5809, line: 139, type: !296)
!5812 = !DILocalVariable(name: "addr", arg: 2, scope: !5808, file: !5809, line: 139, type: !5701)
!5813 = !DILocation(line: 139, column: 25, scope: !5808)
!5814 = !DILocation(line: 139, column: 59, scope: !5808)
!5815 = !DILocation(line: 141, column: 25, scope: !5808)
!5816 = !DILocation(line: 141, column: 32, scope: !5808)
!5817 = !DILocation(line: 141, column: 30, scope: !5808)
!5818 = !DILocation(line: 141, column: 2, scope: !5808)
!5819 = !DILocation(line: 142, column: 23, scope: !5808)
!5820 = !DILocation(line: 142, column: 27, scope: !5808)
!5821 = !DILocation(line: 142, column: 9, scope: !5808)
!5822 = !DILocation(line: 142, column: 2, scope: !5808)
!5823 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5824, file: !5824, line: 66, type: !5825, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5830)
!5824 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5825 = !DISubroutineType(types: !5826)
!5826 = !{null, !5827, !293}
!5827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5828, size: 64)
!5828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5829)
!5829 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5830 = !{!5831, !5832}
!5831 = !DILocalVariable(name: "v", arg: 1, scope: !5823, file: !5824, line: 66, type: !5827)
!5832 = !DILocalVariable(name: "size", arg: 2, scope: !5823, file: !5824, line: 66, type: !293)
!5833 = !DILocation(line: 66, column: 73, scope: !5823)
!5834 = !DILocation(line: 66, column: 83, scope: !5823)
!5835 = !DILocation(line: 68, column: 19, scope: !5823)
!5836 = !DILocation(line: 68, column: 22, scope: !5823)
!5837 = !DILocation(line: 68, column: 2, scope: !5823)
!5838 = !DILocation(line: 69, column: 2, scope: !5823)
!5839 = !DILocation(line: 70, column: 1, scope: !5823)
!5840 = distinct !DISubprogram(name: "kasan_check_read", scope: !5841, file: !5841, line: 40, type: !5842, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5844)
!5841 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5842 = !DISubroutineType(types: !5843)
!5843 = !{!1447, !5827, !7}
!5844 = !{!5845, !5846}
!5845 = !DILocalVariable(name: "p", arg: 1, scope: !5840, file: !5841, line: 40, type: !5827)
!5846 = !DILocalVariable(name: "size", arg: 2, scope: !5840, file: !5841, line: 40, type: !7)
!5847 = !DILocation(line: 40, column: 58, scope: !5840)
!5848 = !DILocation(line: 40, column: 74, scope: !5840)
!5849 = !DILocation(line: 42, column: 2, scope: !5840)
!5850 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5851, file: !5851, line: 229, type: !5852, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5854)
!5851 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5852 = !DISubroutineType(types: !5853)
!5853 = !{null, !5827, !293, !85}
!5854 = !{!5855, !5856, !5857}
!5855 = !DILocalVariable(name: "ptr", arg: 1, scope: !5850, file: !5851, line: 229, type: !5827)
!5856 = !DILocalVariable(name: "size", arg: 2, scope: !5850, file: !5851, line: 229, type: !293)
!5857 = !DILocalVariable(name: "type", arg: 3, scope: !5850, file: !5851, line: 230, type: !85)
!5858 = !DILocation(line: 229, column: 60, scope: !5850)
!5859 = !DILocation(line: 229, column: 72, scope: !5850)
!5860 = !DILocation(line: 230, column: 15, scope: !5850)
!5861 = !DILocation(line: 230, column: 23, scope: !5850)
!5862 = distinct !DISubprogram(name: "rng_current_show", scope: !3, file: !3, line: 373, type: !4439, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5863)
!5863 = !{!5864, !5865, !5866, !5867, !5868}
!5864 = !DILocalVariable(name: "dev", arg: 1, scope: !5862, file: !3, line: 373, type: !4054)
!5865 = !DILocalVariable(name: "attr", arg: 2, scope: !5862, file: !3, line: 374, type: !4441)
!5866 = !DILocalVariable(name: "buf", arg: 3, scope: !5862, file: !3, line: 375, type: !246)
!5867 = !DILocalVariable(name: "ret", scope: !5862, file: !3, line: 377, type: !278)
!5868 = !DILocalVariable(name: "rng", scope: !5862, file: !3, line: 378, type: !3905)
!5869 = !DILocation(line: 373, column: 48, scope: !5862)
!5870 = !DILocation(line: 374, column: 30, scope: !5862)
!5871 = !DILocation(line: 375, column: 11, scope: !5862)
!5872 = !DILocation(line: 377, column: 2, scope: !5862)
!5873 = !DILocation(line: 377, column: 10, scope: !5862)
!5874 = !DILocation(line: 378, column: 2, scope: !5862)
!5875 = !DILocation(line: 378, column: 16, scope: !5862)
!5876 = !DILocation(line: 380, column: 8, scope: !5862)
!5877 = !DILocation(line: 380, column: 6, scope: !5862)
!5878 = !DILocation(line: 381, column: 13, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5862, file: !3, line: 381, column: 6)
!5880 = !DILocation(line: 381, column: 6, scope: !5879)
!5881 = !DILocation(line: 381, column: 6, scope: !5862)
!5882 = !DILocation(line: 382, column: 18, scope: !5879)
!5883 = !DILocation(line: 382, column: 10, scope: !5879)
!5884 = !DILocation(line: 382, column: 3, scope: !5879)
!5885 = !DILocation(line: 384, column: 17, scope: !5862)
!5886 = !DILocation(line: 384, column: 41, scope: !5862)
!5887 = !DILocation(line: 384, column: 47, scope: !5862)
!5888 = !DILocation(line: 384, column: 52, scope: !5862)
!5889 = !DILocation(line: 384, column: 8, scope: !5862)
!5890 = !DILocation(line: 384, column: 6, scope: !5862)
!5891 = !DILocation(line: 385, column: 10, scope: !5862)
!5892 = !DILocation(line: 385, column: 2, scope: !5862)
!5893 = !DILocation(line: 387, column: 9, scope: !5862)
!5894 = !DILocation(line: 387, column: 2, scope: !5862)
!5895 = !DILocation(line: 388, column: 1, scope: !5862)
!5896 = distinct !DISubprogram(name: "rng_current_store", scope: !3, file: !3, line: 337, type: !4444, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5897)
!5897 = !{!5898, !5899, !5900, !5901, !5902, !5903, !5904, !5905, !5906, !5911}
!5898 = !DILocalVariable(name: "dev", arg: 1, scope: !5896, file: !3, line: 337, type: !4054)
!5899 = !DILocalVariable(name: "attr", arg: 2, scope: !5896, file: !3, line: 338, type: !4441)
!5900 = !DILocalVariable(name: "buf", arg: 3, scope: !5896, file: !3, line: 339, type: !165)
!5901 = !DILocalVariable(name: "len", arg: 4, scope: !5896, file: !3, line: 339, type: !293)
!5902 = !DILocalVariable(name: "err", scope: !5896, file: !3, line: 341, type: !85)
!5903 = !DILocalVariable(name: "rng", scope: !5896, file: !3, line: 342, type: !3905)
!5904 = !DILocalVariable(name: "old_rng", scope: !5896, file: !3, line: 342, type: !3905)
!5905 = !DILocalVariable(name: "new_rng", scope: !5896, file: !3, line: 342, type: !3905)
!5906 = !DILocalVariable(name: "__mptr", scope: !5907, file: !3, line: 352, type: !318)
!5907 = distinct !DILexicalBlock(scope: !5908, file: !3, line: 352, column: 3)
!5908 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 352, column: 3)
!5909 = distinct !DILexicalBlock(scope: !5910, file: !3, line: 351, column: 9)
!5910 = distinct !DILexicalBlock(scope: !5896, file: !3, line: 349, column: 6)
!5911 = !DILocalVariable(name: "__mptr", scope: !5912, file: !3, line: 352, type: !318)
!5912 = distinct !DILexicalBlock(scope: !5913, file: !3, line: 352, column: 3)
!5913 = distinct !DILexicalBlock(scope: !5908, file: !3, line: 352, column: 3)
!5914 = !DILocation(line: 337, column: 49, scope: !5896)
!5915 = !DILocation(line: 338, column: 31, scope: !5896)
!5916 = !DILocation(line: 339, column: 18, scope: !5896)
!5917 = !DILocation(line: 339, column: 30, scope: !5896)
!5918 = !DILocation(line: 341, column: 2, scope: !5896)
!5919 = !DILocation(line: 341, column: 6, scope: !5896)
!5920 = !DILocation(line: 342, column: 2, scope: !5896)
!5921 = !DILocation(line: 342, column: 16, scope: !5896)
!5922 = !DILocation(line: 342, column: 22, scope: !5896)
!5923 = !DILocation(line: 342, column: 32, scope: !5896)
!5924 = !DILocation(line: 344, column: 8, scope: !5896)
!5925 = !DILocation(line: 344, column: 6, scope: !5896)
!5926 = !DILocation(line: 345, column: 6, scope: !5927)
!5927 = distinct !DILexicalBlock(scope: !5896, file: !3, line: 345, column: 6)
!5928 = !DILocation(line: 345, column: 6, scope: !5896)
!5929 = !DILocation(line: 346, column: 3, scope: !5927)
!5930 = !DILocation(line: 348, column: 12, scope: !5896)
!5931 = !DILocation(line: 348, column: 10, scope: !5896)
!5932 = !DILocation(line: 349, column: 18, scope: !5910)
!5933 = !DILocation(line: 349, column: 6, scope: !5910)
!5934 = !DILocation(line: 349, column: 6, scope: !5896)
!5935 = !DILocation(line: 350, column: 9, scope: !5936)
!5936 = distinct !DILexicalBlock(scope: !5910, file: !3, line: 349, column: 28)
!5937 = !DILocation(line: 350, column: 7, scope: !5936)
!5938 = !DILocation(line: 351, column: 2, scope: !5936)
!5939 = !DILocation(line: 352, column: 3, scope: !5907)
!5940 = !DILocation(line: 352, column: 3, scope: !5908)
!5941 = !DILocation(line: 352, column: 3, scope: !5913)
!5942 = !DILocation(line: 353, column: 20, scope: !5943)
!5943 = distinct !DILexicalBlock(scope: !5944, file: !3, line: 353, column: 8)
!5944 = distinct !DILexicalBlock(scope: !5913, file: !3, line: 352, column: 45)
!5945 = !DILocation(line: 353, column: 25, scope: !5943)
!5946 = !DILocation(line: 353, column: 31, scope: !5943)
!5947 = !DILocation(line: 353, column: 8, scope: !5943)
!5948 = !DILocation(line: 353, column: 8, scope: !5944)
!5949 = !DILocation(line: 354, column: 27, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 353, column: 37)
!5951 = !DILocation(line: 354, column: 11, scope: !5950)
!5952 = !DILocation(line: 354, column: 9, scope: !5950)
!5953 = !DILocation(line: 355, column: 10, scope: !5954)
!5954 = distinct !DILexicalBlock(scope: !5950, file: !3, line: 355, column: 9)
!5955 = !DILocation(line: 355, column: 9, scope: !5950)
!5956 = !DILocation(line: 356, column: 26, scope: !5954)
!5957 = !DILocation(line: 356, column: 6, scope: !5954)
!5958 = !DILocation(line: 357, column: 5, scope: !5950)
!5959 = !DILocation(line: 359, column: 3, scope: !5944)
!5960 = !DILocation(line: 352, column: 3, scope: !5912)
!5961 = distinct !{!5961, !5940, !5962, !4579, !4580}
!5962 = !DILocation(line: 359, column: 3, scope: !5908)
!5963 = !DILocation(line: 361, column: 12, scope: !5896)
!5964 = !DILocation(line: 361, column: 10, scope: !5896)
!5965 = !DILocation(line: 362, column: 2, scope: !5896)
!5966 = !DILocation(line: 364, column: 6, scope: !5967)
!5967 = distinct !DILexicalBlock(scope: !5896, file: !3, line: 364, column: 6)
!5968 = !DILocation(line: 364, column: 6, scope: !5896)
!5969 = !DILocation(line: 365, column: 7, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5971, file: !3, line: 365, column: 7)
!5971 = distinct !DILexicalBlock(scope: !5967, file: !3, line: 364, column: 15)
!5972 = !DILocation(line: 365, column: 18, scope: !5970)
!5973 = !DILocation(line: 365, column: 15, scope: !5970)
!5974 = !DILocation(line: 365, column: 7, scope: !5971)
!5975 = !DILocation(line: 366, column: 25, scope: !5970)
!5976 = !DILocation(line: 366, column: 4, scope: !5970)
!5977 = !DILocation(line: 367, column: 11, scope: !5971)
!5978 = !DILocation(line: 367, column: 3, scope: !5971)
!5979 = !DILocation(line: 368, column: 2, scope: !5971)
!5980 = !DILocation(line: 370, column: 9, scope: !5896)
!5981 = !DILocation(line: 370, column: 17, scope: !5896)
!5982 = !DILocation(line: 370, column: 2, scope: !5896)
!5983 = !DILocation(line: 371, column: 1, scope: !5896)
!5984 = !DISubprogram(name: "snprintf", scope: !5985, file: !5985, line: 12, type: !5986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5985 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5986 = !DISubroutineType(types: !5987)
!5987 = !{!85, !246, !293, !165, null}
!5988 = !DISubprogram(name: "sysfs_streq", scope: !4652, file: !4652, line: 226, type: !5989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5989 = !DISubroutineType(types: !5990)
!5990 = !{!1447, !165, !165}
!5991 = distinct !DISubprogram(name: "rng_available_show", scope: !3, file: !3, line: 390, type: !4439, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5992)
!5992 = !{!5993, !5994, !5995, !5996, !5997, !5998, !6001}
!5993 = !DILocalVariable(name: "dev", arg: 1, scope: !5991, file: !3, line: 390, type: !4054)
!5994 = !DILocalVariable(name: "attr", arg: 2, scope: !5991, file: !3, line: 391, type: !4441)
!5995 = !DILocalVariable(name: "buf", arg: 3, scope: !5991, file: !3, line: 392, type: !246)
!5996 = !DILocalVariable(name: "err", scope: !5991, file: !3, line: 394, type: !85)
!5997 = !DILocalVariable(name: "rng", scope: !5991, file: !3, line: 395, type: !3905)
!5998 = !DILocalVariable(name: "__mptr", scope: !5999, file: !3, line: 401, type: !318)
!5999 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 401, column: 2)
!6000 = distinct !DILexicalBlock(scope: !5991, file: !3, line: 401, column: 2)
!6001 = !DILocalVariable(name: "__mptr", scope: !6002, file: !3, line: 401, type: !318)
!6002 = distinct !DILexicalBlock(scope: !6003, file: !3, line: 401, column: 2)
!6003 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 401, column: 2)
!6004 = !DILocation(line: 390, column: 50, scope: !5991)
!6005 = !DILocation(line: 391, column: 32, scope: !5991)
!6006 = !DILocation(line: 392, column: 13, scope: !5991)
!6007 = !DILocation(line: 394, column: 2, scope: !5991)
!6008 = !DILocation(line: 394, column: 6, scope: !5991)
!6009 = !DILocation(line: 395, column: 2, scope: !5991)
!6010 = !DILocation(line: 395, column: 16, scope: !5991)
!6011 = !DILocation(line: 397, column: 8, scope: !5991)
!6012 = !DILocation(line: 397, column: 6, scope: !5991)
!6013 = !DILocation(line: 398, column: 6, scope: !6014)
!6014 = distinct !DILexicalBlock(scope: !5991, file: !3, line: 398, column: 6)
!6015 = !DILocation(line: 398, column: 6, scope: !5991)
!6016 = !DILocation(line: 399, column: 3, scope: !6014)
!6017 = !DILocation(line: 400, column: 2, scope: !5991)
!6018 = !DILocation(line: 400, column: 9, scope: !5991)
!6019 = !DILocation(line: 401, column: 2, scope: !5999)
!6020 = !DILocation(line: 401, column: 2, scope: !6000)
!6021 = !DILocation(line: 401, column: 2, scope: !6003)
!6022 = !DILocation(line: 402, column: 11, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !6003, file: !3, line: 401, column: 44)
!6024 = !DILocation(line: 402, column: 16, scope: !6023)
!6025 = !DILocation(line: 402, column: 21, scope: !6023)
!6026 = !DILocation(line: 402, column: 3, scope: !6023)
!6027 = !DILocation(line: 403, column: 11, scope: !6023)
!6028 = !DILocation(line: 403, column: 3, scope: !6023)
!6029 = !DILocation(line: 404, column: 2, scope: !6023)
!6030 = !DILocation(line: 401, column: 2, scope: !6002)
!6031 = distinct !{!6031, !6020, !6032, !4579, !4580}
!6032 = !DILocation(line: 404, column: 2, scope: !6000)
!6033 = !DILocation(line: 405, column: 10, scope: !5991)
!6034 = !DILocation(line: 405, column: 2, scope: !5991)
!6035 = !DILocation(line: 406, column: 2, scope: !5991)
!6036 = !DILocation(line: 408, column: 16, scope: !5991)
!6037 = !DILocation(line: 408, column: 9, scope: !5991)
!6038 = !DILocation(line: 408, column: 2, scope: !5991)
!6039 = !DILocation(line: 409, column: 1, scope: !5991)
!6040 = !DISubprogram(name: "strlcat", scope: !4652, file: !4652, line: 85, type: !6041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6041 = !DISubroutineType(types: !6042)
!6042 = !{!293, !246, !165, !294}
!6043 = !DISubprogram(name: "strlen", scope: !4652, file: !4652, line: 128, type: !6044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6044 = !DISubroutineType(types: !6045)
!6045 = !{!296, !165}
!6046 = distinct !DISubprogram(name: "rng_selected_show", scope: !3, file: !3, line: 411, type: !4439, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6047)
!6047 = !{!6048, !6049, !6050}
!6048 = !DILocalVariable(name: "dev", arg: 1, scope: !6046, file: !3, line: 411, type: !4054)
!6049 = !DILocalVariable(name: "attr", arg: 2, scope: !6046, file: !3, line: 412, type: !4441)
!6050 = !DILocalVariable(name: "buf", arg: 3, scope: !6046, file: !3, line: 413, type: !246)
!6051 = !DILocation(line: 411, column: 49, scope: !6046)
!6052 = !DILocation(line: 412, column: 31, scope: !6046)
!6053 = !DILocation(line: 413, column: 12, scope: !6046)
!6054 = !DILocation(line: 415, column: 20, scope: !6046)
!6055 = !DILocation(line: 415, column: 33, scope: !6046)
!6056 = !DILocation(line: 415, column: 9, scope: !6046)
!6057 = !DILocation(line: 415, column: 2, scope: !6046)
!6058 = !DISubprogram(name: "sysfs_emit", scope: !272, file: !272, line: 357, type: !6059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6059 = !DISubroutineType(types: !6060)
!6060 = !{!85, !246, !165, null}
!6061 = distinct !DISubprogram(name: "rng_quality_show", scope: !3, file: !3, line: 418, type: !4439, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6062)
!6062 = !{!6063, !6064, !6065, !6066, !6067}
!6063 = !DILocalVariable(name: "dev", arg: 1, scope: !6061, file: !3, line: 418, type: !4054)
!6064 = !DILocalVariable(name: "attr", arg: 2, scope: !6061, file: !3, line: 419, type: !4441)
!6065 = !DILocalVariable(name: "buf", arg: 3, scope: !6061, file: !3, line: 420, type: !246)
!6066 = !DILocalVariable(name: "ret", scope: !6061, file: !3, line: 422, type: !278)
!6067 = !DILocalVariable(name: "rng", scope: !6061, file: !3, line: 423, type: !3905)
!6068 = !DILocation(line: 418, column: 48, scope: !6061)
!6069 = !DILocation(line: 419, column: 30, scope: !6061)
!6070 = !DILocation(line: 420, column: 11, scope: !6061)
!6071 = !DILocation(line: 422, column: 2, scope: !6061)
!6072 = !DILocation(line: 422, column: 10, scope: !6061)
!6073 = !DILocation(line: 423, column: 2, scope: !6061)
!6074 = !DILocation(line: 423, column: 16, scope: !6061)
!6075 = !DILocation(line: 425, column: 8, scope: !6061)
!6076 = !DILocation(line: 425, column: 6, scope: !6061)
!6077 = !DILocation(line: 426, column: 13, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 426, column: 6)
!6079 = !DILocation(line: 426, column: 6, scope: !6078)
!6080 = !DILocation(line: 426, column: 6, scope: !6061)
!6081 = !DILocation(line: 427, column: 18, scope: !6078)
!6082 = !DILocation(line: 427, column: 10, scope: !6078)
!6083 = !DILocation(line: 427, column: 3, scope: !6078)
!6084 = !DILocation(line: 429, column: 7, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 429, column: 6)
!6086 = !DILocation(line: 429, column: 6, scope: !6061)
!6087 = !DILocation(line: 430, column: 3, scope: !6085)
!6088 = !DILocation(line: 432, column: 19, scope: !6061)
!6089 = !DILocation(line: 432, column: 33, scope: !6061)
!6090 = !DILocation(line: 432, column: 38, scope: !6061)
!6091 = !DILocation(line: 432, column: 8, scope: !6061)
!6092 = !DILocation(line: 432, column: 6, scope: !6061)
!6093 = !DILocation(line: 433, column: 10, scope: !6061)
!6094 = !DILocation(line: 433, column: 2, scope: !6061)
!6095 = !DILocation(line: 435, column: 9, scope: !6061)
!6096 = !DILocation(line: 435, column: 2, scope: !6061)
!6097 = !DILocation(line: 436, column: 1, scope: !6061)
!6098 = distinct !DISubprogram(name: "rng_quality_store", scope: !3, file: !3, line: 438, type: !4444, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6099)
!6099 = !{!6100, !6101, !6102, !6103, !6104, !6105, !6106}
!6100 = !DILocalVariable(name: "dev", arg: 1, scope: !6098, file: !3, line: 438, type: !4054)
!6101 = !DILocalVariable(name: "attr", arg: 2, scope: !6098, file: !3, line: 439, type: !4441)
!6102 = !DILocalVariable(name: "buf", arg: 3, scope: !6098, file: !3, line: 440, type: !165)
!6103 = !DILocalVariable(name: "len", arg: 4, scope: !6098, file: !3, line: 440, type: !293)
!6104 = !DILocalVariable(name: "quality", scope: !6098, file: !3, line: 442, type: !214)
!6105 = !DILocalVariable(name: "ret", scope: !6098, file: !3, line: 443, type: !85)
!6106 = !DILabel(scope: !6098, name: "out", file: !3, line: 469)
!6107 = !DILocation(line: 438, column: 49, scope: !6098)
!6108 = !DILocation(line: 439, column: 31, scope: !6098)
!6109 = !DILocation(line: 440, column: 18, scope: !6098)
!6110 = !DILocation(line: 440, column: 30, scope: !6098)
!6111 = !DILocation(line: 442, column: 2, scope: !6098)
!6112 = !DILocation(line: 442, column: 6, scope: !6098)
!6113 = !DILocation(line: 443, column: 2, scope: !6098)
!6114 = !DILocation(line: 443, column: 6, scope: !6098)
!6115 = !DILocation(line: 445, column: 6, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6098, file: !3, line: 445, column: 6)
!6117 = !DILocation(line: 445, column: 10, scope: !6116)
!6118 = !DILocation(line: 445, column: 6, scope: !6098)
!6119 = !DILocation(line: 446, column: 3, scope: !6116)
!6120 = !DILocation(line: 448, column: 8, scope: !6098)
!6121 = !DILocation(line: 448, column: 6, scope: !6098)
!6122 = !DILocation(line: 449, column: 6, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6098, file: !3, line: 449, column: 6)
!6124 = !DILocation(line: 449, column: 6, scope: !6098)
!6125 = !DILocation(line: 450, column: 3, scope: !6123)
!6126 = !DILocation(line: 452, column: 18, scope: !6098)
!6127 = !DILocation(line: 452, column: 8, scope: !6098)
!6128 = !DILocation(line: 452, column: 6, scope: !6098)
!6129 = !DILocation(line: 453, column: 6, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6098, file: !3, line: 453, column: 6)
!6131 = !DILocation(line: 453, column: 10, scope: !6130)
!6132 = !DILocation(line: 453, column: 13, scope: !6130)
!6133 = !DILocation(line: 453, column: 21, scope: !6130)
!6134 = !DILocation(line: 453, column: 6, scope: !6098)
!6135 = !DILocation(line: 454, column: 7, scope: !6136)
!6136 = distinct !DILexicalBlock(scope: !6130, file: !3, line: 453, column: 29)
!6137 = !DILocation(line: 455, column: 3, scope: !6136)
!6138 = !DILocation(line: 458, column: 7, scope: !6139)
!6139 = distinct !DILexicalBlock(scope: !6098, file: !3, line: 458, column: 6)
!6140 = !DILocation(line: 458, column: 6, scope: !6098)
!6141 = !DILocation(line: 459, column: 7, scope: !6142)
!6142 = distinct !DILexicalBlock(scope: !6139, file: !3, line: 458, column: 20)
!6143 = !DILocation(line: 460, column: 3, scope: !6142)
!6144 = !DILocation(line: 463, column: 25, scope: !6098)
!6145 = !DILocation(line: 463, column: 2, scope: !6098)
!6146 = !DILocation(line: 463, column: 15, scope: !6098)
!6147 = !DILocation(line: 463, column: 23, scope: !6098)
!6148 = !DILocation(line: 464, column: 20, scope: !6098)
!6149 = !DILocation(line: 464, column: 18, scope: !6098)
!6150 = !DILocation(line: 467, column: 8, scope: !6098)
!6151 = !DILocation(line: 467, column: 6, scope: !6098)
!6152 = !DILocation(line: 467, column: 2, scope: !6098)
!6153 = !DILocation(line: 469, column: 1, scope: !6098)
!6154 = !DILocation(line: 470, column: 2, scope: !6098)
!6155 = !DILocation(line: 471, column: 9, scope: !6098)
!6156 = !DILocation(line: 471, column: 15, scope: !6098)
!6157 = !DILocation(line: 471, column: 21, scope: !6098)
!6158 = !DILocation(line: 471, column: 2, scope: !6098)
!6159 = !DILocation(line: 472, column: 1, scope: !6098)
!6160 = !DISubprogram(name: "kstrtou16", scope: !6161, file: !6161, line: 94, type: !6162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6161 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!6162 = !DISubroutineType(types: !6163)
!6163 = !{!85, !165, !7, !6164}
!6164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!6165 = distinct !DISubprogram(name: "__list_add", scope: !4656, file: !4656, line: 146, type: !6166, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6168)
!6166 = !DISubroutineType(types: !6167)
!6167 = !{null, !150, !150, !150}
!6168 = !{!6169, !6170, !6171}
!6169 = !DILocalVariable(name: "new", arg: 1, scope: !6165, file: !4656, line: 146, type: !150)
!6170 = !DILocalVariable(name: "prev", arg: 2, scope: !6165, file: !4656, line: 147, type: !150)
!6171 = !DILocalVariable(name: "next", arg: 3, scope: !6165, file: !4656, line: 148, type: !150)
!6172 = !DILocation(line: 146, column: 49, scope: !6165)
!6173 = !DILocation(line: 147, column: 28, scope: !6165)
!6174 = !DILocation(line: 148, column: 28, scope: !6165)
!6175 = !DILocation(line: 150, column: 24, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6165, file: !4656, line: 150, column: 6)
!6177 = !DILocation(line: 150, column: 29, scope: !6176)
!6178 = !DILocation(line: 150, column: 35, scope: !6176)
!6179 = !DILocation(line: 150, column: 7, scope: !6176)
!6180 = !DILocation(line: 150, column: 6, scope: !6165)
!6181 = !DILocation(line: 151, column: 3, scope: !6176)
!6182 = !DILocation(line: 153, column: 15, scope: !6165)
!6183 = !DILocation(line: 153, column: 2, scope: !6165)
!6184 = !DILocation(line: 153, column: 8, scope: !6165)
!6185 = !DILocation(line: 153, column: 13, scope: !6165)
!6186 = !DILocation(line: 154, column: 14, scope: !6165)
!6187 = !DILocation(line: 154, column: 2, scope: !6165)
!6188 = !DILocation(line: 154, column: 7, scope: !6165)
!6189 = !DILocation(line: 154, column: 12, scope: !6165)
!6190 = !DILocation(line: 155, column: 14, scope: !6165)
!6191 = !DILocation(line: 155, column: 2, scope: !6165)
!6192 = !DILocation(line: 155, column: 7, scope: !6165)
!6193 = !DILocation(line: 155, column: 12, scope: !6165)
!6194 = !DILocation(line: 156, column: 2, scope: !6165)
!6195 = !DILocation(line: 156, column: 2, scope: !6196)
!6196 = distinct !DILexicalBlock(scope: !6165, file: !4656, line: 156, column: 2)
!6197 = !DILocation(line: 156, column: 2, scope: !6198)
!6198 = distinct !DILexicalBlock(scope: !6196, file: !4656, line: 156, column: 2)
!6199 = !DILocation(line: 156, column: 2, scope: !6200)
!6200 = distinct !DILexicalBlock(scope: !6196, file: !4656, line: 156, column: 2)
!6201 = !DILocation(line: 157, column: 1, scope: !6165)
!6202 = distinct !DISubprogram(name: "__list_add_valid", scope: !4656, file: !4656, line: 128, type: !6203, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6205)
!6203 = !DISubroutineType(types: !6204)
!6204 = !{!1447, !150, !150, !150}
!6205 = !{!6206, !6207, !6208}
!6206 = !DILocalVariable(name: "new", arg: 1, scope: !6202, file: !4656, line: 128, type: !150)
!6207 = !DILocalVariable(name: "prev", arg: 2, scope: !6202, file: !4656, line: 129, type: !150)
!6208 = !DILocalVariable(name: "next", arg: 3, scope: !6202, file: !4656, line: 130, type: !150)
!6209 = !DILocation(line: 128, column: 55, scope: !6202)
!6210 = !DILocation(line: 129, column: 23, scope: !6202)
!6211 = !DILocation(line: 130, column: 23, scope: !6202)
!6212 = !DILocation(line: 132, column: 2, scope: !6202)
!6213 = !DISubprogram(name: "__init_swait_queue_head", scope: !2031, file: !2031, line: 69, type: !6214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6214 = !DISubroutineType(types: !6215)
!6215 = !{null, !6216, !165, !6217}
!6216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!6217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!6218 = distinct !DISubprogram(name: "hwrng_init", scope: !3, file: !3, line: 160, type: !3912, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6219)
!6219 = !{!6220, !6221, !6224}
!6220 = !DILocalVariable(name: "rng", arg: 1, scope: !6218, file: !3, line: 160, type: !3905)
!6221 = !DILocalVariable(name: "ret", scope: !6222, file: !3, line: 166, type: !85)
!6222 = distinct !DILexicalBlock(scope: !6223, file: !3, line: 165, column: 17)
!6223 = distinct !DILexicalBlock(scope: !6218, file: !3, line: 165, column: 6)
!6224 = !DILabel(scope: !6218, name: "skip_init", file: !3, line: 176)
!6225 = !DILocation(line: 160, column: 37, scope: !6218)
!6226 = !DILocation(line: 162, column: 28, scope: !6227)
!6227 = distinct !DILexicalBlock(scope: !6218, file: !3, line: 162, column: 6)
!6228 = !DILocation(line: 162, column: 33, scope: !6227)
!6229 = !DILocation(line: 162, column: 6, scope: !6227)
!6230 = !DILocation(line: 162, column: 6, scope: !6218)
!6231 = !DILocation(line: 163, column: 3, scope: !6227)
!6232 = !DILocation(line: 165, column: 6, scope: !6223)
!6233 = !DILocation(line: 165, column: 11, scope: !6223)
!6234 = !DILocation(line: 165, column: 6, scope: !6218)
!6235 = !DILocation(line: 166, column: 3, scope: !6222)
!6236 = !DILocation(line: 166, column: 7, scope: !6222)
!6237 = !DILocation(line: 168, column: 10, scope: !6222)
!6238 = !DILocation(line: 168, column: 15, scope: !6222)
!6239 = !DILocation(line: 168, column: 20, scope: !6222)
!6240 = !DILocation(line: 168, column: 7, scope: !6222)
!6241 = !DILocation(line: 169, column: 7, scope: !6242)
!6242 = distinct !DILexicalBlock(scope: !6222, file: !3, line: 169, column: 7)
!6243 = !DILocation(line: 169, column: 7, scope: !6222)
!6244 = !DILocation(line: 170, column: 11, scope: !6242)
!6245 = !DILocation(line: 170, column: 4, scope: !6242)
!6246 = !DILocation(line: 171, column: 2, scope: !6223)
!6247 = !DILocation(line: 171, column: 2, scope: !6222)
!6248 = !DILocation(line: 173, column: 13, scope: !6218)
!6249 = !DILocation(line: 173, column: 18, scope: !6218)
!6250 = !DILocation(line: 173, column: 2, scope: !6218)
!6251 = !DILocation(line: 174, column: 21, scope: !6218)
!6252 = !DILocation(line: 174, column: 26, scope: !6218)
!6253 = !DILocation(line: 174, column: 2, scope: !6218)
!6254 = !DILocation(line: 176, column: 1, scope: !6218)
!6255 = !DILocation(line: 177, column: 20, scope: !6218)
!6256 = !DILocation(line: 177, column: 25, scope: !6218)
!6257 = !DILocation(line: 177, column: 18, scope: !6218)
!6258 = !DILocation(line: 179, column: 2, scope: !6218)
!6259 = !DILocation(line: 180, column: 1, scope: !6218)
!6260 = !DISubprogram(name: "kthread_create_on_node", scope: !4997, file: !4997, line: 11, type: !6261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6261 = !DISubroutineType(types: !6262)
!6262 = !{!956, !6263, !318, !85, !165, null}
!6263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6264, size: 64)
!6264 = !DISubroutineType(types: !6265)
!6265 = !{!85, !318}
!6266 = distinct !DISubprogram(name: "hwrng_fillfn", scope: !3, file: !3, line: 499, type: !6264, scopeLine: 500, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6267)
!6267 = !{!6268, !6269, !6270, !6271, !6272, !6274}
!6268 = !DILocalVariable(name: "unused", arg: 1, scope: !6266, file: !3, line: 499, type: !318)
!6269 = !DILocalVariable(name: "entropy", scope: !6266, file: !3, line: 501, type: !293)
!6270 = !DILocalVariable(name: "entropy_credit", scope: !6266, file: !3, line: 501, type: !293)
!6271 = !DILocalVariable(name: "rc", scope: !6266, file: !3, line: 502, type: !282)
!6272 = !DILocalVariable(name: "quality", scope: !6273, file: !3, line: 505, type: !216)
!6273 = distinct !DILexicalBlock(scope: !6266, file: !3, line: 504, column: 33)
!6274 = !DILocalVariable(name: "rng", scope: !6273, file: !3, line: 506, type: !3905)
!6275 = !DILocation(line: 499, column: 31, scope: !6266)
!6276 = !DILocation(line: 501, column: 2, scope: !6266)
!6277 = !DILocation(line: 501, column: 9, scope: !6266)
!6278 = !DILocation(line: 501, column: 18, scope: !6266)
!6279 = !DILocation(line: 502, column: 2, scope: !6266)
!6280 = !DILocation(line: 502, column: 7, scope: !6266)
!6281 = !DILocation(line: 504, column: 2, scope: !6266)
!6282 = !DILocation(line: 504, column: 10, scope: !6266)
!6283 = !DILocation(line: 504, column: 9, scope: !6266)
!6284 = !DILocation(line: 505, column: 3, scope: !6273)
!6285 = !DILocation(line: 505, column: 18, scope: !6273)
!6286 = !DILocation(line: 506, column: 3, scope: !6273)
!6287 = !DILocation(line: 506, column: 17, scope: !6273)
!6288 = !DILocation(line: 508, column: 9, scope: !6273)
!6289 = !DILocation(line: 508, column: 7, scope: !6273)
!6290 = !DILocation(line: 509, column: 14, scope: !6291)
!6291 = distinct !DILexicalBlock(scope: !6273, file: !3, line: 509, column: 7)
!6292 = !DILocation(line: 509, column: 7, scope: !6291)
!6293 = !DILocation(line: 509, column: 19, scope: !6291)
!6294 = !DILocation(line: 509, column: 23, scope: !6291)
!6295 = !DILocation(line: 509, column: 7, scope: !6273)
!6296 = !DILocation(line: 510, column: 4, scope: !6291)
!6297 = !DILocation(line: 511, column: 3, scope: !6273)
!6298 = !DILocation(line: 512, column: 21, scope: !6273)
!6299 = !DILocation(line: 512, column: 26, scope: !6273)
!6300 = !DILocation(line: 513, column: 7, scope: !6273)
!6301 = !DILocation(line: 512, column: 8, scope: !6273)
!6302 = !DILocation(line: 512, column: 6, scope: !6273)
!6303 = !DILocation(line: 514, column: 7, scope: !6304)
!6304 = distinct !DILexicalBlock(scope: !6273, file: !3, line: 514, column: 7)
!6305 = !DILocation(line: 514, column: 26, scope: !6304)
!6306 = !DILocation(line: 514, column: 31, scope: !6304)
!6307 = !DILocation(line: 514, column: 23, scope: !6304)
!6308 = !DILocation(line: 514, column: 7, scope: !6273)
!6309 = !DILocation(line: 515, column: 19, scope: !6304)
!6310 = !DILocation(line: 515, column: 4, scope: !6304)
!6311 = !DILocation(line: 515, column: 9, scope: !6304)
!6312 = !DILocation(line: 515, column: 17, scope: !6304)
!6313 = !DILocation(line: 516, column: 13, scope: !6273)
!6314 = !DILocation(line: 516, column: 18, scope: !6273)
!6315 = !DILocation(line: 516, column: 11, scope: !6273)
!6316 = !DILocation(line: 517, column: 3, scope: !6273)
!6317 = !DILocation(line: 519, column: 7, scope: !6318)
!6318 = distinct !DILexicalBlock(scope: !6273, file: !3, line: 519, column: 7)
!6319 = !DILocation(line: 519, column: 10, scope: !6318)
!6320 = !DILocation(line: 519, column: 7, scope: !6273)
!6321 = !DILocation(line: 520, column: 17, scope: !6318)
!6322 = !DILocation(line: 520, column: 4, scope: !6318)
!6323 = !DILocation(line: 522, column: 11, scope: !6273)
!6324 = !DILocation(line: 522, column: 3, scope: !6273)
!6325 = !DILocation(line: 524, column: 7, scope: !6326)
!6326 = distinct !DILexicalBlock(scope: !6273, file: !3, line: 524, column: 7)
!6327 = !DILocation(line: 524, column: 10, scope: !6326)
!6328 = !DILocation(line: 524, column: 7, scope: !6273)
!6329 = !DILocation(line: 525, column: 4, scope: !6326)
!6330 = distinct !{!6330, !6281, !6331, !4579, !4580}
!6331 = !DILocation(line: 537, column: 2, scope: !6266)
!6332 = !DILocation(line: 530, column: 13, scope: !6273)
!6333 = !DILocation(line: 530, column: 18, scope: !6273)
!6334 = !DILocation(line: 530, column: 16, scope: !6273)
!6335 = !DILocation(line: 530, column: 26, scope: !6273)
!6336 = !DILocation(line: 530, column: 32, scope: !6273)
!6337 = !DILocation(line: 530, column: 30, scope: !6273)
!6338 = !DILocation(line: 530, column: 11, scope: !6273)
!6339 = !DILocation(line: 531, column: 8, scope: !6340)
!6340 = distinct !DILexicalBlock(scope: !6273, file: !3, line: 531, column: 7)
!6341 = !DILocation(line: 531, column: 16, scope: !6340)
!6342 = !DILocation(line: 531, column: 23, scope: !6340)
!6343 = !DILocation(line: 531, column: 7, scope: !6273)
!6344 = !DILocation(line: 532, column: 21, scope: !6340)
!6345 = !DILocation(line: 532, column: 19, scope: !6340)
!6346 = !DILocation(line: 532, column: 4, scope: !6340)
!6347 = !DILocation(line: 535, column: 38, scope: !6273)
!6348 = !DILocation(line: 535, column: 51, scope: !6273)
!6349 = !DILocation(line: 536, column: 9, scope: !6273)
!6350 = !DILocation(line: 536, column: 17, scope: !6273)
!6351 = !DILocation(line: 535, column: 3, scope: !6273)
!6352 = !DILocation(line: 538, column: 13, scope: !6266)
!6353 = !DILocation(line: 540, column: 1, scope: !6266)
!6354 = !DILocation(line: 539, column: 2, scope: !6266)
!6355 = !DISubprogram(name: "wake_up_process", scope: !602, file: !602, line: 1998, type: !4998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6356 = !DISubprogram(name: "_printk", scope: !6357, file: !6357, line: 153, type: !6358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6357 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6358 = !DISubroutineType(types: !6359)
!6359 = !{!85, !165, null}
!6360 = distinct !DISubprogram(name: "kref_get_unless_zero", scope: !3567, file: !3567, line: 109, type: !6361, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6363)
!6361 = !DISubroutineType(types: !6362)
!6362 = !{!85, !4737}
!6363 = !{!6364}
!6364 = !DILocalVariable(name: "kref", arg: 1, scope: !6360, file: !3567, line: 109, type: !4737)
!6365 = !DILocation(line: 109, column: 66, scope: !6360)
!6366 = !DILocation(line: 111, column: 32, scope: !6360)
!6367 = !DILocation(line: 111, column: 38, scope: !6360)
!6368 = !DILocation(line: 111, column: 9, scope: !6360)
!6369 = !DILocation(line: 111, column: 2, scope: !6360)
!6370 = distinct !DISubprogram(name: "kref_init", scope: !3567, file: !3567, line: 29, type: !4735, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6371)
!6371 = !{!6372}
!6372 = !DILocalVariable(name: "kref", arg: 1, scope: !6370, file: !3567, line: 29, type: !4737)
!6373 = !DILocation(line: 29, column: 43, scope: !6370)
!6374 = !DILocation(line: 31, column: 16, scope: !6370)
!6375 = !DILocation(line: 31, column: 22, scope: !6370)
!6376 = !DILocation(line: 31, column: 2, scope: !6370)
!6377 = !DILocation(line: 32, column: 1, scope: !6370)
!6378 = distinct !DISubprogram(name: "reinit_completion", scope: !2026, file: !2026, line: 97, type: !4489, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6379)
!6379 = !{!6380}
!6380 = !DILocalVariable(name: "x", arg: 1, scope: !6378, file: !2026, line: 97, type: !2024)
!6381 = !DILocation(line: 97, column: 57, scope: !6378)
!6382 = !DILocation(line: 99, column: 2, scope: !6378)
!6383 = !DILocation(line: 99, column: 5, scope: !6378)
!6384 = !DILocation(line: 99, column: 10, scope: !6378)
!6385 = !DILocation(line: 100, column: 1, scope: !6378)
!6386 = distinct !DISubprogram(name: "refcount_inc_not_zero", scope: !123, file: !123, line: 243, type: !6387, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6390)
!6387 = !DISubroutineType(types: !6388)
!6388 = !{!1447, !6389}
!6389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!6390 = !{!6391}
!6391 = !DILocalVariable(name: "r", arg: 1, scope: !6386, file: !123, line: 243, type: !6389)
!6392 = !DILocation(line: 243, column: 67, scope: !6386)
!6393 = !DILocation(line: 245, column: 33, scope: !6386)
!6394 = !DILocation(line: 245, column: 9, scope: !6386)
!6395 = !DILocation(line: 245, column: 2, scope: !6386)
!6396 = distinct !DISubprogram(name: "__refcount_inc_not_zero", scope: !123, file: !123, line: 225, type: !6397, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6399)
!6397 = !DISubroutineType(types: !6398)
!6398 = !{!1447, !6389, !594}
!6399 = !{!6400, !6401}
!6400 = !DILocalVariable(name: "r", arg: 1, scope: !6396, file: !123, line: 225, type: !6389)
!6401 = !DILocalVariable(name: "oldp", arg: 2, scope: !6396, file: !123, line: 225, type: !594)
!6402 = !DILocation(line: 225, column: 69, scope: !6396)
!6403 = !DILocation(line: 225, column: 77, scope: !6396)
!6404 = !DILocation(line: 227, column: 36, scope: !6396)
!6405 = !DILocation(line: 227, column: 39, scope: !6396)
!6406 = !DILocation(line: 227, column: 9, scope: !6396)
!6407 = !DILocation(line: 227, column: 2, scope: !6396)
!6408 = distinct !DISubprogram(name: "__refcount_add_not_zero", scope: !123, file: !123, line: 150, type: !6409, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6411)
!6409 = !DISubroutineType(types: !6410)
!6410 = !{!1447, !85, !6389, !594}
!6411 = !{!6412, !6413, !6414, !6415}
!6412 = !DILocalVariable(name: "i", arg: 1, scope: !6408, file: !123, line: 150, type: !85)
!6413 = !DILocalVariable(name: "r", arg: 2, scope: !6408, file: !123, line: 150, type: !6389)
!6414 = !DILocalVariable(name: "oldp", arg: 3, scope: !6408, file: !123, line: 150, type: !594)
!6415 = !DILocalVariable(name: "old", scope: !6408, file: !123, line: 152, type: !85)
!6416 = !DILocation(line: 150, column: 61, scope: !6408)
!6417 = !DILocation(line: 150, column: 76, scope: !6408)
!6418 = !DILocation(line: 150, column: 84, scope: !6408)
!6419 = !DILocation(line: 152, column: 2, scope: !6408)
!6420 = !DILocation(line: 152, column: 6, scope: !6408)
!6421 = !DILocation(line: 152, column: 26, scope: !6408)
!6422 = !DILocation(line: 152, column: 12, scope: !6408)
!6423 = !DILocation(line: 154, column: 2, scope: !6408)
!6424 = !DILocation(line: 155, column: 8, scope: !6425)
!6425 = distinct !DILexicalBlock(scope: !6426, file: !123, line: 155, column: 7)
!6426 = distinct !DILexicalBlock(scope: !6408, file: !123, line: 154, column: 5)
!6427 = !DILocation(line: 155, column: 7, scope: !6426)
!6428 = !DILocation(line: 156, column: 4, scope: !6425)
!6429 = !DILocation(line: 157, column: 2, scope: !6426)
!6430 = !DILocation(line: 157, column: 40, scope: !6408)
!6431 = !DILocation(line: 157, column: 43, scope: !6408)
!6432 = !DILocation(line: 157, column: 55, scope: !6408)
!6433 = !DILocation(line: 157, column: 61, scope: !6408)
!6434 = !DILocation(line: 157, column: 59, scope: !6408)
!6435 = !DILocation(line: 157, column: 12, scope: !6408)
!6436 = !DILocation(line: 157, column: 11, scope: !6408)
!6437 = distinct !{!6437, !6423, !6438, !4579, !4580}
!6438 = !DILocation(line: 157, column: 63, scope: !6408)
!6439 = !DILocation(line: 159, column: 6, scope: !6440)
!6440 = distinct !DILexicalBlock(scope: !6408, file: !123, line: 159, column: 6)
!6441 = !DILocation(line: 159, column: 6, scope: !6408)
!6442 = !DILocation(line: 160, column: 11, scope: !6440)
!6443 = !DILocation(line: 160, column: 4, scope: !6440)
!6444 = !DILocation(line: 160, column: 9, scope: !6440)
!6445 = !DILocation(line: 160, column: 3, scope: !6440)
!6446 = !DILocation(line: 162, column: 6, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6408, file: !123, line: 162, column: 6)
!6448 = !DILocation(line: 162, column: 6, scope: !6408)
!6449 = !DILocation(line: 163, column: 26, scope: !6447)
!6450 = !DILocation(line: 163, column: 3, scope: !6447)
!6451 = !DILocation(line: 165, column: 9, scope: !6408)
!6452 = !DILocation(line: 166, column: 1, scope: !6408)
!6453 = !DILocation(line: 165, column: 2, scope: !6408)
!6454 = distinct !DISubprogram(name: "refcount_read", scope: !123, file: !123, line: 145, type: !6455, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6459)
!6455 = !DISubroutineType(types: !6456)
!6456 = !{!7, !6457}
!6457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6458, size: 64)
!6458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !970)
!6459 = !{!6460}
!6460 = !DILocalVariable(name: "r", arg: 1, scope: !6454, file: !123, line: 145, type: !6457)
!6461 = !DILocation(line: 145, column: 60, scope: !6454)
!6462 = !DILocation(line: 147, column: 22, scope: !6454)
!6463 = !DILocation(line: 147, column: 25, scope: !6454)
!6464 = !DILocation(line: 147, column: 9, scope: !6454)
!6465 = !DILocation(line: 147, column: 2, scope: !6454)
!6466 = distinct !DISubprogram(name: "atomic_try_cmpxchg_relaxed", scope: !6467, file: !6467, line: 1335, type: !6468, scopeLine: 1336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6471)
!6467 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6468 = !DISubroutineType(types: !6469)
!6469 = !{!1447, !6470, !594, !85}
!6470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!6471 = !{!6472, !6473, !6474}
!6472 = !DILocalVariable(name: "v", arg: 1, scope: !6466, file: !6467, line: 1335, type: !6470)
!6473 = !DILocalVariable(name: "old", arg: 2, scope: !6466, file: !6467, line: 1335, type: !594)
!6474 = !DILocalVariable(name: "new", arg: 3, scope: !6466, file: !6467, line: 1335, type: !85)
!6475 = !DILocation(line: 1335, column: 38, scope: !6466)
!6476 = !DILocation(line: 1335, column: 46, scope: !6466)
!6477 = !DILocation(line: 1335, column: 55, scope: !6466)
!6478 = !DILocation(line: 1337, column: 31, scope: !6466)
!6479 = !DILocation(line: 1337, column: 2, scope: !6466)
!6480 = !DILocation(line: 1338, column: 31, scope: !6466)
!6481 = !DILocation(line: 1338, column: 2, scope: !6466)
!6482 = !DILocation(line: 1339, column: 40, scope: !6466)
!6483 = !DILocation(line: 1339, column: 43, scope: !6466)
!6484 = !DILocation(line: 1339, column: 48, scope: !6466)
!6485 = !DILocation(line: 1339, column: 9, scope: !6466)
!6486 = !DILocation(line: 1339, column: 2, scope: !6466)
!6487 = !DISubprogram(name: "refcount_warn_saturate", scope: !123, file: !123, line: 127, type: !6488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6488 = !DISubroutineType(types: !6489)
!6489 = !{null, !6389, !122}
!6490 = distinct !DISubprogram(name: "atomic_read", scope: !6467, file: !6467, line: 30, type: !6491, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6495)
!6491 = !DISubroutineType(types: !6492)
!6492 = !{!85, !6493}
!6493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6494, size: 64)
!6494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!6495 = !{!6496}
!6496 = !DILocalVariable(name: "v", arg: 1, scope: !6490, file: !6467, line: 30, type: !6493)
!6497 = !DILocation(line: 30, column: 29, scope: !6490)
!6498 = !DILocation(line: 32, column: 25, scope: !6490)
!6499 = !DILocation(line: 32, column: 2, scope: !6490)
!6500 = !DILocation(line: 33, column: 25, scope: !6490)
!6501 = !DILocation(line: 33, column: 9, scope: !6490)
!6502 = !DILocation(line: 33, column: 2, scope: !6490)
!6503 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6504, file: !6504, line: 442, type: !6491, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6505)
!6504 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6505 = !{!6506}
!6506 = !DILocalVariable(name: "v", arg: 1, scope: !6503, file: !6504, line: 442, type: !6493)
!6507 = !DILocation(line: 442, column: 33, scope: !6503)
!6508 = !DILocation(line: 444, column: 26, scope: !6503)
!6509 = !DILocation(line: 444, column: 9, scope: !6503)
!6510 = !DILocation(line: 444, column: 2, scope: !6503)
!6511 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6512, file: !6512, line: 17, type: !6491, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6513)
!6512 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6513 = !{!6514}
!6514 = !DILocalVariable(name: "v", arg: 1, scope: !6511, file: !6512, line: 17, type: !6493)
!6515 = !DILocation(line: 17, column: 61, scope: !6511)
!6516 = !DILocation(line: 23, column: 9, scope: !6511)
!6517 = !DILocation(line: 23, column: 2, scope: !6511)
!6518 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5824, file: !5824, line: 94, type: !5825, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6519)
!6519 = !{!6520, !6521}
!6520 = !DILocalVariable(name: "v", arg: 1, scope: !6518, file: !5824, line: 94, type: !5827)
!6521 = !DILocalVariable(name: "size", arg: 2, scope: !6518, file: !5824, line: 94, type: !293)
!6522 = !DILocation(line: 94, column: 79, scope: !6518)
!6523 = !DILocation(line: 94, column: 89, scope: !6518)
!6524 = !DILocation(line: 96, column: 20, scope: !6518)
!6525 = !DILocation(line: 96, column: 23, scope: !6518)
!6526 = !DILocation(line: 96, column: 2, scope: !6518)
!6527 = !DILocation(line: 97, column: 2, scope: !6518)
!6528 = !DILocation(line: 98, column: 1, scope: !6518)
!6529 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg_relaxed", scope: !6504, file: !6504, line: 2207, type: !6468, scopeLine: 2208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6530)
!6530 = !{!6531, !6532, !6533}
!6531 = !DILocalVariable(name: "v", arg: 1, scope: !6529, file: !6504, line: 2207, type: !6470)
!6532 = !DILocalVariable(name: "old", arg: 2, scope: !6529, file: !6504, line: 2207, type: !594)
!6533 = !DILocalVariable(name: "new", arg: 3, scope: !6529, file: !6504, line: 2207, type: !85)
!6534 = !DILocation(line: 2207, column: 42, scope: !6529)
!6535 = !DILocation(line: 2207, column: 50, scope: !6529)
!6536 = !DILocation(line: 2207, column: 59, scope: !6529)
!6537 = !DILocation(line: 2212, column: 33, scope: !6529)
!6538 = !DILocation(line: 2212, column: 36, scope: !6529)
!6539 = !DILocation(line: 2212, column: 41, scope: !6529)
!6540 = !DILocation(line: 2212, column: 9, scope: !6529)
!6541 = !DILocation(line: 2212, column: 2, scope: !6529)
!6542 = distinct !DISubprogram(name: "kasan_check_write", scope: !5841, file: !5841, line: 44, type: !5842, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6543)
!6543 = !{!6544, !6545}
!6544 = !DILocalVariable(name: "p", arg: 1, scope: !6542, file: !5841, line: 44, type: !5827)
!6545 = !DILocalVariable(name: "size", arg: 2, scope: !6542, file: !5841, line: 44, type: !7)
!6546 = !DILocation(line: 44, column: 59, scope: !6542)
!6547 = !DILocation(line: 44, column: 75, scope: !6542)
!6548 = !DILocation(line: 46, column: 2, scope: !6542)
!6549 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !6512, file: !6512, line: 113, type: !6468, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6550)
!6550 = !{!6551, !6552, !6553, !6554, !6556, !6557, !6558, !6559}
!6551 = !DILocalVariable(name: "v", arg: 1, scope: !6549, file: !6512, line: 113, type: !6470)
!6552 = !DILocalVariable(name: "old", arg: 2, scope: !6549, file: !6512, line: 113, type: !594)
!6553 = !DILocalVariable(name: "new", arg: 3, scope: !6549, file: !6512, line: 113, type: !85)
!6554 = !DILocalVariable(name: "success", scope: !6555, file: !6512, line: 115, type: !1447)
!6555 = distinct !DILexicalBlock(scope: !6549, file: !6512, line: 115, column: 9)
!6556 = !DILocalVariable(name: "_old", scope: !6555, file: !6512, line: 115, type: !594)
!6557 = !DILocalVariable(name: "__old", scope: !6555, file: !6512, line: 115, type: !85)
!6558 = !DILocalVariable(name: "__new", scope: !6555, file: !6512, line: 115, type: !85)
!6559 = !DILocalVariable(name: "__ptr", scope: !6555, file: !6512, line: 115, type: !3946)
!6560 = !DILocation(line: 113, column: 63, scope: !6549)
!6561 = !DILocation(line: 113, column: 71, scope: !6549)
!6562 = !DILocation(line: 113, column: 80, scope: !6549)
!6563 = !DILocation(line: 115, column: 9, scope: !6555)
!6564 = !{i64 2148432681, i64 2148432720, i64 2148432741, i64 2148432778, i64 2148432801, i64 2148432810, i64 2148433108}
!6565 = !DILocation(line: 115, column: 9, scope: !6566)
!6566 = distinct !DILexicalBlock(scope: !6555, file: !6512, line: 115, column: 9)
!6567 = !DILocation(line: 115, column: 9, scope: !6549)
!6568 = !DILocation(line: 115, column: 2, scope: !6549)
!6569 = distinct !DISubprogram(name: "refcount_set", scope: !123, file: !123, line: 134, type: !6570, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6572)
!6570 = !DISubroutineType(types: !6571)
!6571 = !{null, !6389, !85}
!6572 = !{!6573, !6574}
!6573 = !DILocalVariable(name: "r", arg: 1, scope: !6569, file: !123, line: 134, type: !6389)
!6574 = !DILocalVariable(name: "n", arg: 2, scope: !6569, file: !123, line: 134, type: !85)
!6575 = !DILocation(line: 134, column: 45, scope: !6569)
!6576 = !DILocation(line: 134, column: 52, scope: !6569)
!6577 = !DILocation(line: 136, column: 14, scope: !6569)
!6578 = !DILocation(line: 136, column: 17, scope: !6569)
!6579 = !DILocation(line: 136, column: 23, scope: !6569)
!6580 = !DILocation(line: 136, column: 2, scope: !6569)
!6581 = !DILocation(line: 137, column: 1, scope: !6569)
!6582 = distinct !DISubprogram(name: "atomic_set", scope: !6467, file: !6467, line: 65, type: !6583, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6585)
!6583 = !DISubroutineType(types: !6584)
!6584 = !{null, !6470, !85}
!6585 = !{!6586, !6587}
!6586 = !DILocalVariable(name: "v", arg: 1, scope: !6582, file: !6467, line: 65, type: !6470)
!6587 = !DILocalVariable(name: "i", arg: 2, scope: !6582, file: !6467, line: 65, type: !85)
!6588 = !DILocation(line: 65, column: 22, scope: !6582)
!6589 = !DILocation(line: 65, column: 29, scope: !6582)
!6590 = !DILocation(line: 67, column: 26, scope: !6582)
!6591 = !DILocation(line: 67, column: 2, scope: !6582)
!6592 = !DILocation(line: 68, column: 17, scope: !6582)
!6593 = !DILocation(line: 68, column: 20, scope: !6582)
!6594 = !DILocation(line: 68, column: 2, scope: !6582)
!6595 = !DILocation(line: 69, column: 1, scope: !6582)
!6596 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5824, file: !5824, line: 80, type: !5825, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6597)
!6597 = !{!6598, !6599}
!6598 = !DILocalVariable(name: "v", arg: 1, scope: !6596, file: !5824, line: 80, type: !5827)
!6599 = !DILocalVariable(name: "size", arg: 2, scope: !6596, file: !5824, line: 80, type: !293)
!6600 = !DILocation(line: 80, column: 74, scope: !6596)
!6601 = !DILocation(line: 80, column: 84, scope: !6596)
!6602 = !DILocation(line: 82, column: 20, scope: !6596)
!6603 = !DILocation(line: 82, column: 23, scope: !6596)
!6604 = !DILocation(line: 82, column: 2, scope: !6596)
!6605 = !DILocation(line: 83, column: 2, scope: !6596)
!6606 = !DILocation(line: 84, column: 1, scope: !6596)
!6607 = distinct !DISubprogram(name: "raw_atomic_set", scope: !6504, file: !6504, line: 488, type: !6583, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6608)
!6608 = !{!6609, !6610}
!6609 = !DILocalVariable(name: "v", arg: 1, scope: !6607, file: !6504, line: 488, type: !6470)
!6610 = !DILocalVariable(name: "i", arg: 2, scope: !6607, file: !6504, line: 488, type: !85)
!6611 = !DILocation(line: 488, column: 26, scope: !6607)
!6612 = !DILocation(line: 488, column: 33, scope: !6607)
!6613 = !DILocation(line: 490, column: 18, scope: !6607)
!6614 = !DILocation(line: 490, column: 21, scope: !6607)
!6615 = !DILocation(line: 490, column: 2, scope: !6607)
!6616 = !DILocation(line: 491, column: 1, scope: !6607)
!6617 = distinct !DISubprogram(name: "arch_atomic_set", scope: !6512, file: !6512, line: 26, type: !6583, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6618)
!6618 = !{!6619, !6620}
!6619 = !DILocalVariable(name: "v", arg: 1, scope: !6617, file: !6512, line: 26, type: !6470)
!6620 = !DILocalVariable(name: "i", arg: 2, scope: !6617, file: !6512, line: 26, type: !85)
!6621 = !DILocation(line: 26, column: 55, scope: !6617)
!6622 = !DILocation(line: 26, column: 62, scope: !6617)
!6623 = !DILocation(line: 28, column: 2, scope: !6617)
!6624 = !DILocation(line: 28, column: 2, scope: !6625)
!6625 = distinct !DILexicalBlock(scope: !6617, file: !6512, line: 28, column: 2)
!6626 = !DILocation(line: 29, column: 1, scope: !6617)
!6627 = !DISubprogram(name: "kthread_should_stop", scope: !4997, file: !4997, line: 90, type: !3435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6628 = !DISubprogram(name: "add_hwgenerator_randomness", scope: !6629, file: !6629, line: 19, type: !6630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6629 = !DIFile(filename: "./include/linux/random.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ff56c5c661379ff0da8775246644d01")
!6630 = !DISubroutineType(types: !6631)
!6631 = !{null, !1875, !293, !293, !1447}
!6632 = distinct !DISubprogram(name: "refcount_inc", scope: !123, file: !123, line: 265, type: !6633, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6635)
!6633 = !DISubroutineType(types: !6634)
!6634 = !{null, !6389}
!6635 = !{!6636}
!6636 = !DILocalVariable(name: "r", arg: 1, scope: !6632, file: !123, line: 265, type: !6389)
!6637 = !DILocation(line: 265, column: 45, scope: !6632)
!6638 = !DILocation(line: 267, column: 17, scope: !6632)
!6639 = !DILocation(line: 267, column: 2, scope: !6632)
!6640 = !DILocation(line: 268, column: 1, scope: !6632)
!6641 = distinct !DISubprogram(name: "__refcount_inc", scope: !123, file: !123, line: 248, type: !6642, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6644)
!6642 = !DISubroutineType(types: !6643)
!6643 = !{null, !6389, !594}
!6644 = !{!6645, !6646}
!6645 = !DILocalVariable(name: "r", arg: 1, scope: !6641, file: !123, line: 248, type: !6389)
!6646 = !DILocalVariable(name: "oldp", arg: 2, scope: !6641, file: !123, line: 248, type: !594)
!6647 = !DILocation(line: 248, column: 47, scope: !6641)
!6648 = !DILocation(line: 248, column: 55, scope: !6641)
!6649 = !DILocation(line: 250, column: 20, scope: !6641)
!6650 = !DILocation(line: 250, column: 23, scope: !6641)
!6651 = !DILocation(line: 250, column: 2, scope: !6641)
!6652 = !DILocation(line: 251, column: 1, scope: !6641)
!6653 = distinct !DISubprogram(name: "__refcount_add", scope: !123, file: !123, line: 191, type: !6654, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6656)
!6654 = !DISubroutineType(types: !6655)
!6655 = !{null, !85, !6389, !594}
!6656 = !{!6657, !6658, !6659, !6660}
!6657 = !DILocalVariable(name: "i", arg: 1, scope: !6653, file: !123, line: 191, type: !85)
!6658 = !DILocalVariable(name: "r", arg: 2, scope: !6653, file: !123, line: 191, type: !6389)
!6659 = !DILocalVariable(name: "oldp", arg: 3, scope: !6653, file: !123, line: 191, type: !594)
!6660 = !DILocalVariable(name: "old", scope: !6653, file: !123, line: 193, type: !85)
!6661 = !DILocation(line: 191, column: 39, scope: !6653)
!6662 = !DILocation(line: 191, column: 54, scope: !6653)
!6663 = !DILocation(line: 191, column: 62, scope: !6653)
!6664 = !DILocation(line: 193, column: 2, scope: !6653)
!6665 = !DILocation(line: 193, column: 6, scope: !6653)
!6666 = !DILocation(line: 193, column: 37, scope: !6653)
!6667 = !DILocation(line: 193, column: 41, scope: !6653)
!6668 = !DILocation(line: 193, column: 44, scope: !6653)
!6669 = !DILocation(line: 193, column: 12, scope: !6653)
!6670 = !DILocation(line: 195, column: 6, scope: !6671)
!6671 = distinct !DILexicalBlock(scope: !6653, file: !123, line: 195, column: 6)
!6672 = !DILocation(line: 195, column: 6, scope: !6653)
!6673 = !DILocation(line: 196, column: 11, scope: !6671)
!6674 = !DILocation(line: 196, column: 4, scope: !6671)
!6675 = !DILocation(line: 196, column: 9, scope: !6671)
!6676 = !DILocation(line: 196, column: 3, scope: !6671)
!6677 = !DILocation(line: 198, column: 6, scope: !6678)
!6678 = distinct !DILexicalBlock(scope: !6653, file: !123, line: 198, column: 6)
!6679 = !DILocation(line: 198, column: 6, scope: !6653)
!6680 = !DILocation(line: 199, column: 26, scope: !6678)
!6681 = !DILocation(line: 199, column: 3, scope: !6678)
!6682 = !DILocation(line: 200, column: 11, scope: !6683)
!6683 = distinct !DILexicalBlock(scope: !6678, file: !123, line: 200, column: 11)
!6684 = !DILocation(line: 200, column: 11, scope: !6678)
!6685 = !DILocation(line: 201, column: 26, scope: !6683)
!6686 = !DILocation(line: 201, column: 3, scope: !6683)
!6687 = !DILocation(line: 202, column: 1, scope: !6653)
!6688 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !6467, file: !6467, line: 250, type: !6689, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6691)
!6689 = !DISubroutineType(types: !6690)
!6690 = !{!85, !85, !6470}
!6691 = !{!6692, !6693}
!6692 = !DILocalVariable(name: "i", arg: 1, scope: !6688, file: !6467, line: 250, type: !85)
!6693 = !DILocalVariable(name: "v", arg: 2, scope: !6688, file: !6467, line: 250, type: !6470)
!6694 = !DILocation(line: 250, column: 30, scope: !6688)
!6695 = !DILocation(line: 250, column: 43, scope: !6688)
!6696 = !DILocation(line: 252, column: 31, scope: !6688)
!6697 = !DILocation(line: 252, column: 2, scope: !6688)
!6698 = !DILocation(line: 253, column: 38, scope: !6688)
!6699 = !DILocation(line: 253, column: 41, scope: !6688)
!6700 = !DILocation(line: 253, column: 9, scope: !6688)
!6701 = !DILocation(line: 253, column: 2, scope: !6688)
!6702 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !6504, file: !6504, line: 731, type: !6689, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6703)
!6703 = !{!6704, !6705}
!6704 = !DILocalVariable(name: "i", arg: 1, scope: !6702, file: !6504, line: 731, type: !85)
!6705 = !DILocalVariable(name: "v", arg: 2, scope: !6702, file: !6504, line: 731, type: !6470)
!6706 = !DILocation(line: 731, column: 34, scope: !6702)
!6707 = !DILocation(line: 731, column: 47, scope: !6702)
!6708 = !DILocation(line: 736, column: 31, scope: !6702)
!6709 = !DILocation(line: 736, column: 34, scope: !6702)
!6710 = !DILocation(line: 736, column: 9, scope: !6702)
!6711 = !DILocation(line: 736, column: 2, scope: !6702)
!6712 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !6512, file: !6512, line: 95, type: !6689, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6713)
!6713 = !{!6714, !6715, !6716}
!6714 = !DILocalVariable(name: "i", arg: 1, scope: !6712, file: !6512, line: 95, type: !85)
!6715 = !DILocalVariable(name: "v", arg: 2, scope: !6712, file: !6512, line: 95, type: !6470)
!6716 = !DILocalVariable(name: "__ret", scope: !6717, file: !6512, line: 97, type: !85)
!6717 = distinct !DILexicalBlock(scope: !6712, file: !6512, line: 97, column: 9)
!6718 = !DILocation(line: 95, column: 54, scope: !6712)
!6719 = !DILocation(line: 95, column: 67, scope: !6712)
!6720 = !DILocation(line: 97, column: 9, scope: !6717)
!6721 = !{i64 2148424789, i64 2148424828, i64 2148424849, i64 2148424886, i64 2148424909, i64 2148424918}
!6722 = !DILocation(line: 97, column: 9, scope: !6712)
!6723 = !DILocation(line: 97, column: 2, scope: !6712)
!6724 = distinct !DISubprogram(name: "kref_put", scope: !3567, file: !3567, line: 62, type: !6725, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6728)
!6725 = !DISubroutineType(types: !6726)
!6726 = !{!85, !4737, !6727}
!6727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!6728 = !{!6729, !6730}
!6729 = !DILocalVariable(name: "kref", arg: 1, scope: !6724, file: !3567, line: 62, type: !4737)
!6730 = !DILocalVariable(name: "release", arg: 2, scope: !6724, file: !3567, line: 62, type: !6727)
!6731 = !DILocation(line: 62, column: 41, scope: !6724)
!6732 = !DILocation(line: 62, column: 54, scope: !6724)
!6733 = !DILocation(line: 64, column: 29, scope: !6734)
!6734 = distinct !DILexicalBlock(scope: !6724, file: !3567, line: 64, column: 6)
!6735 = !DILocation(line: 64, column: 35, scope: !6734)
!6736 = !DILocation(line: 64, column: 6, scope: !6734)
!6737 = !DILocation(line: 64, column: 6, scope: !6724)
!6738 = !DILocation(line: 65, column: 3, scope: !6739)
!6739 = distinct !DILexicalBlock(scope: !6734, file: !3567, line: 64, column: 46)
!6740 = !DILocation(line: 65, column: 11, scope: !6739)
!6741 = !DILocation(line: 66, column: 3, scope: !6739)
!6742 = !DILocation(line: 68, column: 2, scope: !6724)
!6743 = !DILocation(line: 69, column: 1, scope: !6724)
!6744 = distinct !DISubprogram(name: "cleanup_rng", scope: !3, file: !3, line: 80, type: !4735, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6745)
!6745 = !{!6746, !6747, !6748}
!6746 = !DILocalVariable(name: "kref", arg: 1, scope: !6744, file: !3, line: 80, type: !4737)
!6747 = !DILocalVariable(name: "rng", scope: !6744, file: !3, line: 82, type: !3905)
!6748 = !DILocalVariable(name: "__mptr", scope: !6749, file: !3, line: 82, type: !318)
!6749 = distinct !DILexicalBlock(scope: !6744, file: !3, line: 82, column: 22)
!6750 = !DILocation(line: 80, column: 45, scope: !6744)
!6751 = !DILocation(line: 82, column: 2, scope: !6744)
!6752 = !DILocation(line: 82, column: 16, scope: !6744)
!6753 = !DILocation(line: 82, column: 22, scope: !6749)
!6754 = !DILocation(line: 82, column: 22, scope: !6744)
!6755 = !DILocation(line: 84, column: 6, scope: !6756)
!6756 = distinct !DILexicalBlock(scope: !6744, file: !3, line: 84, column: 6)
!6757 = !DILocation(line: 84, column: 11, scope: !6756)
!6758 = !DILocation(line: 84, column: 6, scope: !6744)
!6759 = !DILocation(line: 85, column: 3, scope: !6756)
!6760 = !DILocation(line: 85, column: 8, scope: !6756)
!6761 = !DILocation(line: 85, column: 16, scope: !6756)
!6762 = !DILocation(line: 87, column: 12, scope: !6744)
!6763 = !DILocation(line: 87, column: 17, scope: !6744)
!6764 = !DILocation(line: 87, column: 2, scope: !6744)
!6765 = !DILocation(line: 88, column: 1, scope: !6744)
!6766 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !123, file: !123, line: 331, type: !6387, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6767)
!6767 = !{!6768}
!6768 = !DILocalVariable(name: "r", arg: 1, scope: !6766, file: !123, line: 331, type: !6389)
!6769 = !DILocation(line: 331, column: 67, scope: !6766)
!6770 = !DILocation(line: 333, column: 33, scope: !6766)
!6771 = !DILocation(line: 333, column: 9, scope: !6766)
!6772 = !DILocation(line: 333, column: 2, scope: !6766)
!6773 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !123, file: !123, line: 313, type: !6397, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6774)
!6774 = !{!6775, !6776}
!6775 = !DILocalVariable(name: "r", arg: 1, scope: !6773, file: !123, line: 313, type: !6389)
!6776 = !DILocalVariable(name: "oldp", arg: 2, scope: !6773, file: !123, line: 313, type: !594)
!6777 = !DILocation(line: 313, column: 69, scope: !6773)
!6778 = !DILocation(line: 313, column: 77, scope: !6773)
!6779 = !DILocation(line: 315, column: 36, scope: !6773)
!6780 = !DILocation(line: 315, column: 39, scope: !6773)
!6781 = !DILocation(line: 315, column: 9, scope: !6773)
!6782 = !DILocation(line: 315, column: 2, scope: !6773)
!6783 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !123, file: !123, line: 270, type: !6409, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6784)
!6784 = !{!6785, !6786, !6787, !6788}
!6785 = !DILocalVariable(name: "i", arg: 1, scope: !6783, file: !123, line: 270, type: !85)
!6786 = !DILocalVariable(name: "r", arg: 2, scope: !6783, file: !123, line: 270, type: !6389)
!6787 = !DILocalVariable(name: "oldp", arg: 3, scope: !6783, file: !123, line: 270, type: !594)
!6788 = !DILocalVariable(name: "old", scope: !6783, file: !123, line: 272, type: !85)
!6789 = !DILocation(line: 270, column: 61, scope: !6783)
!6790 = !DILocation(line: 270, column: 76, scope: !6783)
!6791 = !DILocation(line: 270, column: 84, scope: !6783)
!6792 = !DILocation(line: 272, column: 2, scope: !6783)
!6793 = !DILocation(line: 272, column: 6, scope: !6783)
!6794 = !DILocation(line: 272, column: 37, scope: !6783)
!6795 = !DILocation(line: 272, column: 41, scope: !6783)
!6796 = !DILocation(line: 272, column: 44, scope: !6783)
!6797 = !DILocation(line: 272, column: 12, scope: !6783)
!6798 = !DILocation(line: 274, column: 6, scope: !6799)
!6799 = distinct !DILexicalBlock(scope: !6783, file: !123, line: 274, column: 6)
!6800 = !DILocation(line: 274, column: 6, scope: !6783)
!6801 = !DILocation(line: 275, column: 11, scope: !6799)
!6802 = !DILocation(line: 275, column: 4, scope: !6799)
!6803 = !DILocation(line: 275, column: 9, scope: !6799)
!6804 = !DILocation(line: 275, column: 3, scope: !6799)
!6805 = !DILocation(line: 277, column: 6, scope: !6806)
!6806 = distinct !DILexicalBlock(scope: !6783, file: !123, line: 277, column: 6)
!6807 = !DILocation(line: 277, column: 13, scope: !6806)
!6808 = !DILocation(line: 277, column: 10, scope: !6806)
!6809 = !DILocation(line: 277, column: 6, scope: !6783)
!6810 = !DILocation(line: 278, column: 3, scope: !6811)
!6811 = distinct !DILexicalBlock(scope: !6806, file: !123, line: 277, column: 16)
!6812 = !DILocation(line: 278, column: 3, scope: !6813)
!6813 = distinct !DILexicalBlock(scope: !6811, file: !123, line: 278, column: 3)
!6814 = !DILocation(line: 278, column: 3, scope: !6815)
!6815 = distinct !DILexicalBlock(scope: !6813, file: !123, line: 278, column: 3)
!6816 = !DILocation(line: 278, column: 3, scope: !6817)
!6817 = distinct !DILexicalBlock(scope: !6813, file: !123, line: 278, column: 3)
!6818 = !DILocation(line: 278, column: 3, scope: !6819)
!6819 = distinct !DILexicalBlock(scope: !6817, file: !123, line: 278, column: 3)
!6820 = !{i64 2150132003}
!6821 = !DILocation(line: 279, column: 3, scope: !6811)
!6822 = !DILocation(line: 282, column: 6, scope: !6823)
!6823 = distinct !DILexicalBlock(scope: !6783, file: !123, line: 282, column: 6)
!6824 = !DILocation(line: 282, column: 6, scope: !6783)
!6825 = !DILocation(line: 283, column: 26, scope: !6823)
!6826 = !DILocation(line: 283, column: 3, scope: !6823)
!6827 = !DILocation(line: 285, column: 2, scope: !6783)
!6828 = !DILocation(line: 286, column: 1, scope: !6783)
!6829 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !6467, file: !6467, line: 397, type: !6689, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6830)
!6830 = !{!6831, !6832}
!6831 = !DILocalVariable(name: "i", arg: 1, scope: !6829, file: !6467, line: 397, type: !85)
!6832 = !DILocalVariable(name: "v", arg: 2, scope: !6829, file: !6467, line: 397, type: !6470)
!6833 = !DILocation(line: 397, column: 30, scope: !6829)
!6834 = !DILocation(line: 397, column: 43, scope: !6829)
!6835 = !DILocation(line: 399, column: 2, scope: !6829)
!6836 = !DILocation(line: 399, column: 2, scope: !6837)
!6837 = distinct !DILexicalBlock(scope: !6829, file: !6467, line: 399, column: 2)
!6838 = !DILocation(line: 400, column: 31, scope: !6829)
!6839 = !DILocation(line: 400, column: 2, scope: !6829)
!6840 = !DILocation(line: 401, column: 38, scope: !6829)
!6841 = !DILocation(line: 401, column: 41, scope: !6829)
!6842 = !DILocation(line: 401, column: 9, scope: !6829)
!6843 = !DILocation(line: 401, column: 2, scope: !6829)
!6844 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !6504, file: !6504, line: 928, type: !6689, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6845)
!6845 = !{!6846, !6847}
!6846 = !DILocalVariable(name: "i", arg: 1, scope: !6844, file: !6504, line: 928, type: !85)
!6847 = !DILocalVariable(name: "v", arg: 2, scope: !6844, file: !6504, line: 928, type: !6470)
!6848 = !DILocation(line: 928, column: 34, scope: !6844)
!6849 = !DILocation(line: 928, column: 47, scope: !6844)
!6850 = !DILocation(line: 936, column: 31, scope: !6844)
!6851 = !DILocation(line: 936, column: 34, scope: !6844)
!6852 = !DILocation(line: 936, column: 9, scope: !6844)
!6853 = !DILocation(line: 936, column: 2, scope: !6844)
!6854 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !6512, file: !6512, line: 101, type: !6689, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6855)
!6855 = !{!6856, !6857, !6858}
!6856 = !DILocalVariable(name: "i", arg: 1, scope: !6854, file: !6512, line: 101, type: !85)
!6857 = !DILocalVariable(name: "v", arg: 2, scope: !6854, file: !6512, line: 101, type: !6470)
!6858 = !DILocalVariable(name: "__ret", scope: !6859, file: !6512, line: 103, type: !85)
!6859 = distinct !DILexicalBlock(scope: !6854, file: !6512, line: 103, column: 9)
!6860 = !DILocation(line: 101, column: 54, scope: !6854)
!6861 = !DILocation(line: 101, column: 67, scope: !6854)
!6862 = !DILocation(line: 103, column: 9, scope: !6859)
!6863 = !{i64 2148426974, i64 2148427013, i64 2148427034, i64 2148427071, i64 2148427094, i64 2148427103}
!6864 = !DILocation(line: 103, column: 9, scope: !6854)
!6865 = !DILocation(line: 103, column: 2, scope: !6854)
!6866 = distinct !DISubprogram(name: "__list_del_entry", scope: !4656, file: !4656, line: 213, type: !4863, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6867)
!6867 = !{!6868}
!6868 = !DILocalVariable(name: "entry", arg: 1, scope: !6866, file: !4656, line: 213, type: !150)
!6869 = !DILocation(line: 213, column: 55, scope: !6866)
!6870 = !DILocation(line: 215, column: 30, scope: !6871)
!6871 = distinct !DILexicalBlock(scope: !6866, file: !4656, line: 215, column: 6)
!6872 = !DILocation(line: 215, column: 7, scope: !6871)
!6873 = !DILocation(line: 215, column: 6, scope: !6866)
!6874 = !DILocation(line: 216, column: 3, scope: !6871)
!6875 = !DILocation(line: 218, column: 13, scope: !6866)
!6876 = !DILocation(line: 218, column: 20, scope: !6866)
!6877 = !DILocation(line: 218, column: 26, scope: !6866)
!6878 = !DILocation(line: 218, column: 33, scope: !6866)
!6879 = !DILocation(line: 218, column: 2, scope: !6866)
!6880 = !DILocation(line: 219, column: 1, scope: !6866)
!6881 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4656, file: !4656, line: 134, type: !6882, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6884)
!6882 = !DISubroutineType(types: !6883)
!6883 = !{!1447, !150}
!6884 = !{!6885}
!6885 = !DILocalVariable(name: "entry", arg: 1, scope: !6881, file: !4656, line: 134, type: !150)
!6886 = !DILocation(line: 134, column: 61, scope: !6881)
!6887 = !DILocation(line: 136, column: 2, scope: !6881)
!6888 = distinct !DISubprogram(name: "__list_del", scope: !4656, file: !4656, line: 193, type: !4657, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6889)
!6889 = !{!6890, !6891}
!6890 = !DILocalVariable(name: "prev", arg: 1, scope: !6888, file: !4656, line: 193, type: !150)
!6891 = !DILocalVariable(name: "next", arg: 2, scope: !6888, file: !4656, line: 193, type: !150)
!6892 = !DILocation(line: 193, column: 50, scope: !6888)
!6893 = !DILocation(line: 193, column: 75, scope: !6888)
!6894 = !DILocation(line: 195, column: 15, scope: !6888)
!6895 = !DILocation(line: 195, column: 2, scope: !6888)
!6896 = !DILocation(line: 195, column: 8, scope: !6888)
!6897 = !DILocation(line: 195, column: 13, scope: !6888)
!6898 = !DILocation(line: 196, column: 2, scope: !6888)
!6899 = !DILocation(line: 196, column: 2, scope: !6900)
!6900 = distinct !DILexicalBlock(scope: !6888, file: !4656, line: 196, column: 2)
!6901 = !DILocation(line: 196, column: 2, scope: !6902)
!6902 = distinct !DILexicalBlock(scope: !6900, file: !4656, line: 196, column: 2)
!6903 = !DILocation(line: 196, column: 2, scope: !6904)
!6904 = distinct !DILexicalBlock(scope: !6900, file: !4656, line: 196, column: 2)
!6905 = !DILocation(line: 197, column: 1, scope: !6888)
!6906 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !5136, file: !5136, line: 458, type: !5137, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6907)
!6907 = !{!6908}
!6908 = !DILocalVariable(name: "m", arg: 1, scope: !6906, file: !5136, line: 458, type: !3191)
!6909 = !DILocation(line: 458, column: 66, scope: !6906)
!6910 = !DILocation(line: 460, column: 10, scope: !6906)
!6911 = !DILocation(line: 460, column: 12, scope: !6906)
!6912 = !DILocation(line: 460, column: 34, scope: !6906)
!6913 = !DILocation(line: 460, column: 39, scope: !6906)
!6914 = !DILocation(line: 460, column: 2, scope: !6906)
!6915 = !DISubprogram(name: "__msecs_to_jiffies", scope: !5136, file: !5136, line: 451, type: !5137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6916 = distinct !DISubprogram(name: "kmalloc", scope: !131, file: !131, line: 591, type: !6917, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6919)
!6917 = !DISubroutineType(types: !6918)
!6918 = !{!318, !293, !692}
!6919 = !{!6920, !6921, !6922}
!6920 = !DILocalVariable(name: "size", arg: 1, scope: !6916, file: !131, line: 591, type: !293)
!6921 = !DILocalVariable(name: "flags", arg: 2, scope: !6916, file: !131, line: 591, type: !692)
!6922 = !DILocalVariable(name: "index", scope: !6923, file: !131, line: 594, type: !7)
!6923 = distinct !DILexicalBlock(scope: !6924, file: !131, line: 593, column: 42)
!6924 = distinct !DILexicalBlock(scope: !6916, file: !131, line: 593, column: 6)
!6925 = !DILocation(line: 591, column: 61, scope: !6916)
!6926 = !DILocation(line: 591, column: 73, scope: !6916)
!6927 = !DILocation(line: 593, column: 27, scope: !6924)
!6928 = !DILocation(line: 593, column: 6, scope: !6924)
!6929 = !DILocation(line: 593, column: 33, scope: !6924)
!6930 = !DILocation(line: 593, column: 36, scope: !6924)
!6931 = !DILocation(line: 593, column: 6, scope: !6916)
!6932 = !DILocation(line: 594, column: 3, scope: !6923)
!6933 = !DILocation(line: 594, column: 16, scope: !6923)
!6934 = !DILocation(line: 596, column: 7, scope: !6935)
!6935 = distinct !DILexicalBlock(scope: !6923, file: !131, line: 596, column: 7)
!6936 = !DILocation(line: 596, column: 12, scope: !6935)
!6937 = !DILocation(line: 596, column: 7, scope: !6923)
!6938 = !DILocation(line: 597, column: 25, scope: !6935)
!6939 = !DILocation(line: 597, column: 31, scope: !6935)
!6940 = !DILocation(line: 597, column: 11, scope: !6935)
!6941 = !DILocation(line: 597, column: 4, scope: !6935)
!6942 = !DILocation(line: 599, column: 11, scope: !6923)
!6943 = !DILocation(line: 599, column: 9, scope: !6923)
!6944 = !DILocation(line: 601, column: 33, scope: !6923)
!6945 = !DILocation(line: 601, column: 40, scope: !6923)
!6946 = !DILocation(line: 601, column: 20, scope: !6923)
!6947 = !DILocation(line: 601, column: 5, scope: !6923)
!6948 = !DILocation(line: 601, column: 51, scope: !6923)
!6949 = !DILocation(line: 602, column: 5, scope: !6923)
!6950 = !DILocation(line: 602, column: 12, scope: !6923)
!6951 = !DILocation(line: 600, column: 10, scope: !6923)
!6952 = !DILocation(line: 600, column: 3, scope: !6923)
!6953 = !DILocation(line: 603, column: 2, scope: !6924)
!6954 = !DILocation(line: 604, column: 19, scope: !6916)
!6955 = !DILocation(line: 604, column: 25, scope: !6916)
!6956 = !DILocation(line: 604, column: 9, scope: !6916)
!6957 = !DILocation(line: 604, column: 2, scope: !6916)
!6958 = !DILocation(line: 605, column: 1, scope: !6916)
!6959 = distinct !DISubprogram(name: "register_miscdev", scope: !3, file: !3, line: 494, type: !3688, scopeLine: 495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6960 = !DILocation(line: 496, column: 9, scope: !6959)
!6961 = !DILocation(line: 496, column: 2, scope: !6959)
!6962 = !DISubprogram(name: "kmalloc_large", scope: !131, file: !131, line: 531, type: !6917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6963 = distinct !DISubprogram(name: "__kmalloc_index", scope: !131, file: !131, line: 444, type: !6964, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6966)
!6964 = !DISubroutineType(types: !6965)
!6965 = !{!7, !293, !1447}
!6966 = !{!6967, !6968}
!6967 = !DILocalVariable(name: "size", arg: 1, scope: !6963, file: !131, line: 444, type: !293)
!6968 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6963, file: !131, line: 445, type: !1447)
!6969 = !DILocation(line: 444, column: 60, scope: !6963)
!6970 = !DILocation(line: 445, column: 16, scope: !6963)
!6971 = !DILocation(line: 447, column: 7, scope: !6972)
!6972 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 447, column: 6)
!6973 = !DILocation(line: 447, column: 6, scope: !6963)
!6974 = !DILocation(line: 448, column: 3, scope: !6972)
!6975 = !DILocation(line: 450, column: 6, scope: !6976)
!6976 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 450, column: 6)
!6977 = !DILocation(line: 450, column: 11, scope: !6976)
!6978 = !DILocation(line: 450, column: 6, scope: !6963)
!6979 = !DILocation(line: 451, column: 3, scope: !6976)
!6980 = !DILocation(line: 453, column: 32, scope: !6981)
!6981 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 453, column: 6)
!6982 = !DILocation(line: 453, column: 37, scope: !6981)
!6983 = !DILocation(line: 453, column: 42, scope: !6981)
!6984 = !DILocation(line: 453, column: 45, scope: !6981)
!6985 = !DILocation(line: 453, column: 50, scope: !6981)
!6986 = !DILocation(line: 453, column: 6, scope: !6963)
!6987 = !DILocation(line: 454, column: 3, scope: !6981)
!6988 = !DILocation(line: 455, column: 32, scope: !6989)
!6989 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 455, column: 6)
!6990 = !DILocation(line: 455, column: 37, scope: !6989)
!6991 = !DILocation(line: 455, column: 43, scope: !6989)
!6992 = !DILocation(line: 455, column: 46, scope: !6989)
!6993 = !DILocation(line: 455, column: 51, scope: !6989)
!6994 = !DILocation(line: 455, column: 6, scope: !6963)
!6995 = !DILocation(line: 456, column: 3, scope: !6989)
!6996 = !DILocation(line: 457, column: 6, scope: !6997)
!6997 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 457, column: 6)
!6998 = !DILocation(line: 457, column: 11, scope: !6997)
!6999 = !DILocation(line: 457, column: 6, scope: !6963)
!7000 = !DILocation(line: 457, column: 26, scope: !6997)
!7001 = !DILocation(line: 458, column: 6, scope: !7002)
!7002 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 458, column: 6)
!7003 = !DILocation(line: 458, column: 11, scope: !7002)
!7004 = !DILocation(line: 458, column: 6, scope: !6963)
!7005 = !DILocation(line: 458, column: 26, scope: !7002)
!7006 = !DILocation(line: 459, column: 6, scope: !7007)
!7007 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 459, column: 6)
!7008 = !DILocation(line: 459, column: 11, scope: !7007)
!7009 = !DILocation(line: 459, column: 6, scope: !6963)
!7010 = !DILocation(line: 459, column: 26, scope: !7007)
!7011 = !DILocation(line: 460, column: 6, scope: !7012)
!7012 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 460, column: 6)
!7013 = !DILocation(line: 460, column: 11, scope: !7012)
!7014 = !DILocation(line: 460, column: 6, scope: !6963)
!7015 = !DILocation(line: 460, column: 26, scope: !7012)
!7016 = !DILocation(line: 461, column: 6, scope: !7017)
!7017 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 461, column: 6)
!7018 = !DILocation(line: 461, column: 11, scope: !7017)
!7019 = !DILocation(line: 461, column: 6, scope: !6963)
!7020 = !DILocation(line: 461, column: 26, scope: !7017)
!7021 = !DILocation(line: 462, column: 6, scope: !7022)
!7022 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 462, column: 6)
!7023 = !DILocation(line: 462, column: 11, scope: !7022)
!7024 = !DILocation(line: 462, column: 6, scope: !6963)
!7025 = !DILocation(line: 462, column: 26, scope: !7022)
!7026 = !DILocation(line: 463, column: 6, scope: !7027)
!7027 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 463, column: 6)
!7028 = !DILocation(line: 463, column: 11, scope: !7027)
!7029 = !DILocation(line: 463, column: 6, scope: !6963)
!7030 = !DILocation(line: 463, column: 26, scope: !7027)
!7031 = !DILocation(line: 464, column: 6, scope: !7032)
!7032 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 464, column: 6)
!7033 = !DILocation(line: 464, column: 11, scope: !7032)
!7034 = !DILocation(line: 464, column: 6, scope: !6963)
!7035 = !DILocation(line: 464, column: 26, scope: !7032)
!7036 = !DILocation(line: 465, column: 6, scope: !7037)
!7037 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 465, column: 6)
!7038 = !DILocation(line: 465, column: 11, scope: !7037)
!7039 = !DILocation(line: 465, column: 6, scope: !6963)
!7040 = !DILocation(line: 465, column: 26, scope: !7037)
!7041 = !DILocation(line: 466, column: 6, scope: !7042)
!7042 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 466, column: 6)
!7043 = !DILocation(line: 466, column: 11, scope: !7042)
!7044 = !DILocation(line: 466, column: 6, scope: !6963)
!7045 = !DILocation(line: 466, column: 26, scope: !7042)
!7046 = !DILocation(line: 467, column: 6, scope: !7047)
!7047 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 467, column: 6)
!7048 = !DILocation(line: 467, column: 11, scope: !7047)
!7049 = !DILocation(line: 467, column: 6, scope: !6963)
!7050 = !DILocation(line: 467, column: 26, scope: !7047)
!7051 = !DILocation(line: 468, column: 6, scope: !7052)
!7052 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 468, column: 6)
!7053 = !DILocation(line: 468, column: 11, scope: !7052)
!7054 = !DILocation(line: 468, column: 6, scope: !6963)
!7055 = !DILocation(line: 468, column: 26, scope: !7052)
!7056 = !DILocation(line: 469, column: 6, scope: !7057)
!7057 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 469, column: 6)
!7058 = !DILocation(line: 469, column: 11, scope: !7057)
!7059 = !DILocation(line: 469, column: 6, scope: !6963)
!7060 = !DILocation(line: 469, column: 26, scope: !7057)
!7061 = !DILocation(line: 470, column: 6, scope: !7062)
!7062 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 470, column: 6)
!7063 = !DILocation(line: 470, column: 11, scope: !7062)
!7064 = !DILocation(line: 470, column: 6, scope: !6963)
!7065 = !DILocation(line: 470, column: 26, scope: !7062)
!7066 = !DILocation(line: 471, column: 6, scope: !7067)
!7067 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 471, column: 6)
!7068 = !DILocation(line: 471, column: 11, scope: !7067)
!7069 = !DILocation(line: 471, column: 6, scope: !6963)
!7070 = !DILocation(line: 471, column: 26, scope: !7067)
!7071 = !DILocation(line: 472, column: 6, scope: !7072)
!7072 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 472, column: 6)
!7073 = !DILocation(line: 472, column: 11, scope: !7072)
!7074 = !DILocation(line: 472, column: 6, scope: !6963)
!7075 = !DILocation(line: 472, column: 26, scope: !7072)
!7076 = !DILocation(line: 473, column: 6, scope: !7077)
!7077 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 473, column: 6)
!7078 = !DILocation(line: 473, column: 11, scope: !7077)
!7079 = !DILocation(line: 473, column: 6, scope: !6963)
!7080 = !DILocation(line: 473, column: 26, scope: !7077)
!7081 = !DILocation(line: 474, column: 6, scope: !7082)
!7082 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 474, column: 6)
!7083 = !DILocation(line: 474, column: 11, scope: !7082)
!7084 = !DILocation(line: 474, column: 6, scope: !6963)
!7085 = !DILocation(line: 474, column: 27, scope: !7082)
!7086 = !DILocation(line: 475, column: 6, scope: !7087)
!7087 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 475, column: 6)
!7088 = !DILocation(line: 475, column: 11, scope: !7087)
!7089 = !DILocation(line: 475, column: 6, scope: !6963)
!7090 = !DILocation(line: 475, column: 32, scope: !7087)
!7091 = !DILocation(line: 477, column: 50, scope: !7092)
!7092 = distinct !DILexicalBlock(scope: !6963, file: !131, line: 477, column: 6)
!7093 = !DILocation(line: 477, column: 6, scope: !6963)
!7094 = !DILocation(line: 478, column: 3, scope: !7092)
!7095 = !DILocation(line: 478, column: 3, scope: !7096)
!7096 = distinct !DILexicalBlock(scope: !7097, file: !131, line: 478, column: 3)
!7097 = distinct !DILexicalBlock(scope: !7092, file: !131, line: 478, column: 3)
!7098 = !{i32 -2141187507}
!7099 = !DILocation(line: 478, column: 3, scope: !7097)
!7100 = !DILocation(line: 480, column: 3, scope: !7092)
!7101 = !DILocation(line: 480, column: 3, scope: !7102)
!7102 = distinct !DILexicalBlock(scope: !7092, file: !131, line: 480, column: 3)
!7103 = !DILocation(line: 480, column: 3, scope: !7104)
!7104 = distinct !DILexicalBlock(scope: !7102, file: !131, line: 480, column: 3)
!7105 = !DILocation(line: 480, column: 3, scope: !7106)
!7106 = distinct !DILexicalBlock(scope: !7102, file: !131, line: 480, column: 3)
!7107 = !{i64 2153779992, i64 2153780021, i64 2153780067, i64 2153780125, i64 2153780179, i64 2153780233, i64 2153780288, i64 2153780319}
!7108 = !DILocation(line: 483, column: 2, scope: !6963)
!7109 = !DILocation(line: 484, column: 1, scope: !6963)
!7110 = !DISubprogram(name: "kmalloc_trace", scope: !131, file: !131, line: 525, type: !7111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7111 = !DISubroutineType(types: !7112)
!7112 = !{!318, !7113, !692, !293}
!7113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7114, size: 64)
!7114 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !7115, line: 325, flags: DIFlagFwdDecl)
!7115 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!7116 = distinct !DISubprogram(name: "kmalloc_type", scope: !131, file: !131, line: 401, type: !7117, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7119)
!7117 = !DISubroutineType(types: !7118)
!7118 = !{!130, !692, !296}
!7119 = !{!7120, !7121}
!7120 = !DILocalVariable(name: "flags", arg: 1, scope: !7116, file: !131, line: 401, type: !692)
!7121 = !DILocalVariable(name: "caller", arg: 2, scope: !7116, file: !131, line: 401, type: !296)
!7122 = !DILocation(line: 401, column: 67, scope: !7116)
!7123 = !DILocation(line: 401, column: 88, scope: !7116)
!7124 = !DILocation(line: 407, column: 6, scope: !7125)
!7125 = distinct !DILexicalBlock(scope: !7116, file: !131, line: 407, column: 6)
!7126 = !DILocation(line: 407, column: 6, scope: !7116)
!7127 = !DILocation(line: 413, column: 3, scope: !7125)
!7128 = !DILocation(line: 423, column: 38, scope: !7129)
!7129 = distinct !DILexicalBlock(scope: !7116, file: !131, line: 423, column: 6)
!7130 = !DILocation(line: 423, column: 44, scope: !7129)
!7131 = !DILocation(line: 423, column: 6, scope: !7116)
!7132 = !DILocation(line: 424, column: 3, scope: !7129)
!7133 = !DILocation(line: 426, column: 3, scope: !7134)
!7134 = distinct !DILexicalBlock(scope: !7116, file: !131, line: 425, column: 6)
!7135 = !DILocation(line: 429, column: 1, scope: !7116)
!7136 = !DISubprogram(name: "__kmalloc", scope: !131, file: !131, line: 488, type: !6917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7137 = !DISubprogram(name: "__compiletime_assert_263", scope: !131, file: !131, line: 478, type: !2272, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7138 = !DISubprogram(name: "misc_register", scope: !4047, file: !4047, line: 91, type: !7139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7139 = !DISubroutineType(types: !7140)
!7140 = !{!85, !4521}
