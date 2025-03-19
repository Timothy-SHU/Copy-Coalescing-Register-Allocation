; ModuleID = 'kernel/irq/irqdesc.c'
source_filename = "kernel/irq/irqdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nr_irqs: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad nr_irqs ; .previous"
module asm ".section\09\22.initcall2.init..kmod_irqdesc__208_369_irq_sysfs_init\22, \22a\22\09\09"
module asm "__initcall__kmod_irqdesc__208_369_irq_sysfs_init2:\09\09\09"
module asm ".long\09__initstub__kmod_irqdesc__208_369_irq_sysfs_init2 - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_generic_handle_irq: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad generic_handle_irq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_generic_handle_irq_safe: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad generic_handle_irq_safe ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_generic_handle_domain_irq: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad generic_handle_domain_irq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_generic_handle_domain_irq_safe: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad generic_handle_domain_irq_safe ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_irq_free_descs: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad irq_free_descs ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___irq_alloc_descs: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __irq_alloc_descs ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_irq_get_percpu_devid_partition: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad irq_get_percpu_devid_partition ; .previous"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.maple_tree = type { %union.anon.13, i32, ptr }
%union.anon.13 = type { %struct.spinlock }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nodemask_t = type { [1 x i64] }
%struct.cpumask = type { [1 x i64] }
%struct.pcpu_hot = type { %union.anon.14 }
%union.anon.14 = type { %struct.anon.15, [16 x i8] }
%struct.anon.15 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.lock_class_key = type {}
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.ma_state = type { ptr, i64, i64, ptr, i64, i64, ptr, i8, i8, i8 }
%struct.class_rcu_t = type { ptr }
%struct.kernel_stat = type { i64, [10 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, [1 x %struct.cpumask], i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, %struct.hlist_node, [24 x i8] }
%struct.irq_common_data = type { i32, i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask] }
%struct.irq_data = type { i32, i32, i64, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%struct.irqaction = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, ptr, ptr, [32 x i8] }

@__setup_str_irq_affinity_setup = internal constant [13 x i8] c"irqaffinity=\00", section ".init.rodata", align 1, !dbg !0
@__setup_irq_affinity_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_irq_affinity_setup, ptr @irq_affinity_setup, i32 0 }, section ".init.setup", align 8, !dbg !3276
@nr_irqs = hidden global i32 4352, align 4, !dbg !3287
@__UNIQUE_ID___addressable_nr_irqs206 = internal global ptr @nr_irqs, section ".discard.addressable", align 8, !dbg !3289
@__UNIQUE_ID___addressable___initstub__kmod_irqdesc__208_369_irq_sysfs_init2209 = internal global ptr @__initstub__kmod_irqdesc__208_369_irq_sysfs_init2, section ".discard.addressable", align 8, !dbg !3291
@sparse_irqs = internal global %struct.maple_tree { %union.anon.13 zeroinitializer, i32 771, ptr null }, align 8, !dbg !3335
@sparse_irq_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sparse_irq_lock, i64 16), ptr getelementptr (i8, ptr @sparse_irq_lock, i64 16) } }, align 8, !dbg !3337
@node_states = external dso_local global [6 x %struct.nodemask_t], align 16
@.str = private unnamed_addr constant [51 x i8] c"\016NR_IRQS: %d, nr_irqs: %d, preallocated irqs: %d\0A\00", align 1, !dbg !3293
@.str.1 = private unnamed_addr constant [21 x i8] c"kernel/irq/irqdesc.c\00", align 1, !dbg !3298
@__UNIQUE_ID___addressable_generic_handle_irq210 = internal global ptr @generic_handle_irq, section ".discard.addressable", align 8, !dbg !3303
@__UNIQUE_ID___addressable_generic_handle_irq_safe211 = internal global ptr @generic_handle_irq_safe, section ".discard.addressable", align 8, !dbg !3305
@__UNIQUE_ID___addressable_generic_handle_domain_irq212 = internal global ptr @generic_handle_domain_irq, section ".discard.addressable", align 8, !dbg !3307
@__UNIQUE_ID___addressable_generic_handle_domain_irq_safe213 = internal global ptr @generic_handle_domain_irq_safe, section ".discard.addressable", align 8, !dbg !3309
@__UNIQUE_ID___addressable_irq_free_descs214 = internal global ptr @irq_free_descs, section ".discard.addressable", align 8, !dbg !3311
@__UNIQUE_ID___addressable___irq_alloc_descs215 = internal global ptr @__irq_alloc_descs, section ".discard.addressable", align 8, !dbg !3313
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@__UNIQUE_ID___addressable_irq_get_percpu_devid_partition216 = internal global ptr @irq_get_percpu_devid_partition, section ".discard.addressable", align 8, !dbg !3315
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@irq_default_affinity = external dso_local global [1 x %struct.cpumask], align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !3317
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@nr_cpu_ids = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"irq\00", align 1, !dbg !3322
@kernel_kobj = external dso_local global ptr, align 8
@irq_kobj_base = internal global ptr null, align 8, !dbg !3325
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !3327
@.str.5 = private unnamed_addr constant [36 x i8] c"\014Failed to add kobject for irq %d\0A\00", align 1, !dbg !3330
@irq_desc_lock_class = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3365
@alloc_desc.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3339
@.str.6 = private unnamed_addr constant [21 x i8] c"&desc->request_mutex\00", align 1, !dbg !3354
@alloc_desc.__key.7 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3356
@.str.8 = private unnamed_addr constant [24 x i8] c"&desc->wait_for_threads\00", align 1, !dbg !3358
@irq_kobj_type = internal constant %struct.kobj_type { ptr @irq_kobj_release, ptr @kobj_sysfs_ops, ptr @irq_groups, ptr null, ptr null, ptr null }, align 8, !dbg !3367
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3363
@no_irq_chip = external dso_local global %struct.irq_chip, align 8
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 8
@irq_groups = internal global [2 x ptr] [ptr @irq_group, ptr null], align 16, !dbg !3369
@irq_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @irq_attrs, ptr null }, align 8, !dbg !3372
@irq_attrs = internal global [8 x ptr] [ptr @per_cpu_count_attr, ptr @chip_name_attr, ptr @hwirq_attr, ptr @type_attr, ptr @wakeup_attr, ptr @name_attr, ptr @actions_attr, ptr null], align 16, !dbg !3374
@per_cpu_count_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @per_cpu_count_show, ptr null }, align 8, !dbg !3382
@chip_name_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @chip_name_show, ptr null }, align 8, !dbg !3411
@hwirq_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.17, i16 292 }, ptr @hwirq_show, ptr null }, align 8, !dbg !3418
@type_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @type_show, ptr null }, align 8, !dbg !3424
@wakeup_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @wakeup_show, ptr null }, align 8, !dbg !3433
@name_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.25, i16 292 }, ptr @name_show, ptr null }, align 8, !dbg !3444
@actions_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @actions_show, ptr null }, align 8, !dbg !3448
@.str.10 = private unnamed_addr constant [14 x i8] c"per_cpu_count\00", align 1, !dbg !3377
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !3396
@.str.12 = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1, !dbg !3399
@.str.13 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !3401
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !3404
@.str.15 = private unnamed_addr constant [10 x i8] c"chip_name\00", align 1, !dbg !3406
@.str.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !3413
@.str.17 = private unnamed_addr constant [6 x i8] c"hwirq\00", align 1, !dbg !3415
@.str.18 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1, !dbg !3420
@.str.19 = private unnamed_addr constant [5 x i8] c"type\00", align 1, !dbg !3422
@.str.20 = private unnamed_addr constant [6 x i8] c"level\00", align 1, !dbg !3426
@.str.21 = private unnamed_addr constant [5 x i8] c"edge\00", align 1, !dbg !3428
@.str.22 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1, !dbg !3430
@.str.23 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1, !dbg !3435
@.str.24 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1, !dbg !3437
@.str.25 = private unnamed_addr constant [5 x i8] c"name\00", align 1, !dbg !3442
@.str.26 = private unnamed_addr constant [8 x i8] c"actions\00", align 1, !dbg !3446
@.str.27 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1, !dbg !3450
@__const.irq_find_free_area.mas = private unnamed_addr constant %struct.ma_state { ptr @sparse_irqs, i64 0, i64 0, ptr inttoptr (i64 1 to ptr), i64 0, i64 -1, ptr null, i8 0, i8 0, i8 0 }, align 8
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@__const.class_rcu_constructor._t = private unnamed_addr constant %struct.class_rcu_t { ptr inttoptr (i64 1 to ptr) }, align 8
@.str.28 = private unnamed_addr constant [4 x i8] c"add\00", align 1, !dbg !3452
@kstat = external dso_local global %struct.kernel_stat, section ".data..percpu", align 8
@llvm.compiler.used = appending global [10 x ptr] [ptr @__setup_irq_affinity_setup, ptr @__UNIQUE_ID___addressable_nr_irqs206, ptr @__UNIQUE_ID___addressable___initstub__kmod_irqdesc__208_369_irq_sysfs_init2209, ptr @__UNIQUE_ID___addressable_generic_handle_irq210, ptr @__UNIQUE_ID___addressable_generic_handle_irq_safe211, ptr @__UNIQUE_ID___addressable_generic_handle_domain_irq212, ptr @__UNIQUE_ID___addressable_generic_handle_domain_irq_safe213, ptr @__UNIQUE_ID___addressable_irq_free_descs214, ptr @__UNIQUE_ID___addressable___irq_alloc_descs215, ptr @__UNIQUE_ID___addressable_irq_get_percpu_devid_partition216], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @irq_affinity_setup(ptr noundef %str) #0 section ".init.text" align 16 !dbg !3466 {
entry:
  %str.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !3468, metadata !DIExpression()), !dbg !3476
  call void @alloc_bootmem_cpumask_var(ptr noundef @irq_default_affinity) #19, !dbg !3477
  %0 = load ptr, ptr %str.addr, align 8, !dbg !3478
  %call = call i32 @cpulist_parse(ptr noundef %0, ptr noundef @irq_default_affinity) #19, !dbg !3479
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #19, !dbg !3480
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #20, !dbg !3481
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !3469, metadata !DIExpression()), !dbg !3481
  br label %do.body, !dbg !3481

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #20, !dbg !3482
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3472, metadata !DIExpression()), !dbg !3482
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3482
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !3482
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #20, !dbg !3481
  br label %do.cond, !dbg !3482

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3482

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #20, !dbg !3483
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3474, metadata !DIExpression()), !dbg !3483
  %2 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 2)) #21, !dbg !3483, !srcloc !3484
  store i32 %2, ptr %pfo_val__, align 4, !dbg !3483
  %3 = load i32, ptr %pfo_val__, align 4, !dbg !3483
  %conv = zext i32 %3 to i64, !dbg !3483
  %conv2 = trunc i64 %conv to i32, !dbg !3483
  store i32 %conv2, ptr %tmp1, align 4, !dbg !3483
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #20, !dbg !3481
  %4 = load i32, ptr %tmp1, align 4, !dbg !3483
  store i32 %4, ptr %pscr_ret__, align 4, !dbg !3481
  %5 = load i32, ptr %pscr_ret__, align 4, !dbg !3481
  store i32 %5, ptr %tmp3, align 4, !dbg !3481
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #20, !dbg !3480
  %6 = load i32, ptr %tmp3, align 4, !dbg !3481
  store i32 %6, ptr %tmp, align 4, !dbg !3480
  %7 = load i32, ptr %tmp, align 4, !dbg !3480
  call void @cpumask_set_cpu(i32 noundef %7, ptr noundef @irq_default_affinity) #19, !dbg !3485
  ret i32 1, !dbg !3486
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_irqdesc__208_369_irq_sysfs_init2() #0 section ".init.text" align 16 !dbg !3487 {
entry:
  %call = call i32 @irq_sysfs_init() #22, !dbg !3488
  ret i32 %call, !dbg !3488
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @irq_sysfs_init() #0 section ".init.text" align 16 !dbg !3489 {
entry:
  %retval = alloca i32, align 4
  %desc = alloca ptr, align 8
  %irq = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #20, !dbg !3493
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !3491, metadata !DIExpression()), !dbg !3494
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq) #20, !dbg !3495
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !3492, metadata !DIExpression()), !dbg !3496
  call void @irq_lock_sparse() #19, !dbg !3497
  %0 = load ptr, ptr @kernel_kobj, align 8, !dbg !3498
  %call = call ptr @kobject_create_and_add(ptr noundef @.str.3, ptr noundef %0) #19, !dbg !3499
  store ptr %call, ptr @irq_kobj_base, align 8, !dbg !3500
  %1 = load ptr, ptr @irq_kobj_base, align 8, !dbg !3501
  %tobool = icmp ne ptr %1, null, !dbg !3501
  br i1 %tobool, label %if.end, label %if.then, !dbg !3503

if.then:                                          ; preds = %entry
  call void @irq_unlock_sparse() #19, !dbg !3504
  store i32 -12, ptr %retval, align 4, !dbg !3506
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3506

if.end:                                           ; preds = %entry
  store i32 0, ptr %irq, align 4, !dbg !3507
  %2 = load i32, ptr %irq, align 4, !dbg !3507
  %call1 = call ptr @irq_to_desc(i32 noundef %2) #19, !dbg !3507
  store ptr %call1, ptr %desc, align 8, !dbg !3507
  br label %for.cond, !dbg !3507

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %irq, align 4, !dbg !3509
  %4 = load i32, ptr @nr_irqs, align 4, !dbg !3509
  %cmp = icmp slt i32 %3, %4, !dbg !3509
  br i1 %cmp, label %for.body, label %for.end, !dbg !3507

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %desc, align 8, !dbg !3511
  %tobool2 = icmp ne ptr %5, null, !dbg !3511
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !3509

if.then3:                                         ; preds = %for.body
  br label %if.end4, !dbg !3509

if.else:                                          ; preds = %for.body
  %6 = load i32, ptr %irq, align 4, !dbg !3513
  %7 = load ptr, ptr %desc, align 8, !dbg !3514
  call void @irq_sysfs_add(i32 noundef %6, ptr noundef %7) #19, !dbg !3515
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  br label %for.inc, !dbg !3511

for.inc:                                          ; preds = %if.end4
  %8 = load i32, ptr %irq, align 4, !dbg !3509
  %inc = add i32 %8, 1, !dbg !3509
  store i32 %inc, ptr %irq, align 4, !dbg !3509
  %9 = load i32, ptr %irq, align 4, !dbg !3509
  %call5 = call ptr @irq_to_desc(i32 noundef %9) #19, !dbg !3509
  store ptr %call5, ptr %desc, align 8, !dbg !3509
  br label %for.cond, !dbg !3509, !llvm.loop !3516

for.end:                                          ; preds = %for.cond
  call void @irq_unlock_sparse() #19, !dbg !3520
  store i32 0, ptr %retval, align 4, !dbg !3521
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3521

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq) #20, !dbg !3522
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #20, !dbg !3522
  %10 = load i32, ptr %retval, align 4, !dbg !3522
  ret i32 %10, !dbg !3522
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @irq_to_desc(i32 noundef %irq) #1 align 16 !dbg !3523 {
entry:
  %irq.addr = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !3527, metadata !DIExpression()), !dbg !3528
  %0 = load i32, ptr %irq.addr, align 4, !dbg !3529
  %conv = zext i32 %0 to i64, !dbg !3529
  %call = call ptr @mtree_load(ptr noundef @sparse_irqs, i64 noundef %conv) #19, !dbg !3530
  ret ptr %call, !dbg !3531
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3532 dso_local ptr @mtree_load(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @irq_lock_sparse() #1 align 16 !dbg !3536 {
entry:
  call void @mutex_lock(ptr noundef @sparse_irq_lock) #19, !dbg !3537
  ret void, !dbg !3538
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3539 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @irq_unlock_sparse() #1 align 16 !dbg !3543 {
entry:
  call void @mutex_unlock(ptr noundef @sparse_irq_lock) #19, !dbg !3544
  ret void, !dbg !3545
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3546 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @early_irq_init() #0 section ".init.text" align 16 !dbg !3547 {
entry:
  %i = alloca i32, align 4
  %initcnt = alloca i32, align 4
  %node = alloca i32, align 4
  %desc = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp21 = alloca i64, align 8
  %__ret_warn_on32 = alloca i32, align 4
  %__flags49 = alloca i32, align 4
  %tmp62 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #20, !dbg !3565
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3549, metadata !DIExpression()), !dbg !3566
  call void @llvm.lifetime.start.p0(i64 4, ptr %initcnt) #20, !dbg !3565
  call void @llvm.dbg.declare(metadata ptr %initcnt, metadata !3550, metadata !DIExpression()), !dbg !3567
  call void @llvm.lifetime.start.p0(i64 4, ptr %node) #20, !dbg !3565
  call void @llvm.dbg.declare(metadata ptr %node, metadata !3551, metadata !DIExpression()), !dbg !3568
  %call = call i32 @__first_node(ptr noundef getelementptr inbounds ([6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 1)) #19, !dbg !3569
  store i32 %call, ptr %node, align 4, !dbg !3568
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #20, !dbg !3570
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !3552, metadata !DIExpression()), !dbg !3571
  call void @init_irq_default_affinity() #22, !dbg !3572
  %call1 = call i32 @arch_probe_nr_irqs() #19, !dbg !3573
  store i32 %call1, ptr %initcnt, align 4, !dbg !3574
  br label %do.body, !dbg !3575

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3577

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3577

do.end:                                           ; preds = %do.cond
  %0 = load i32, ptr @nr_irqs, align 4, !dbg !3575
  %1 = load i32, ptr %initcnt, align 4, !dbg !3575
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef 4352, i32 noundef %0, i32 noundef %1) #22, !dbg !3575
  store i32 %call2, ptr %tmp, align 4, !dbg !3577
  %2 = load i32, ptr %tmp, align 4, !dbg !3575
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #20, !dbg !3579
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3553, metadata !DIExpression()), !dbg !3579
  %3 = load i32, ptr @nr_irqs, align 4, !dbg !3579
  %cmp = icmp sgt i32 %3, 2147483647, !dbg !3579
  %lnot = xor i1 %cmp, true, !dbg !3579
  %lnot3 = xor i1 %lnot, true, !dbg !3579
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3579
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3579
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !3580
  %tobool = icmp ne i32 %4, 0, !dbg !3580
  %lnot4 = xor i1 %tobool, true, !dbg !3580
  %lnot6 = xor i1 %lnot4, true, !dbg !3580
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !3580
  %conv = sext i32 %lnot.ext7 to i64, !dbg !3580
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3580
  %tobool8 = icmp ne i64 %expval, 0, !dbg !3580
  br i1 %tobool8, label %if.then, label %if.end, !dbg !3579

if.then:                                          ; preds = %do.end
  br label %do.body9, !dbg !3580

do.body9:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #20, !dbg !3581
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3556, metadata !DIExpression()), !dbg !3581
  store i32 2305, ptr %__flags, align 4, !dbg !3581
  br label %do.body10, !dbg !3581

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !3582

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !3582

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !3581

do.body13:                                        ; preds = %do.end12
  %5 = load i32, ptr %__flags, align 4, !dbg !3584
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 561, i32 %5, i64 12) #20, !dbg !3584, !srcloc !3586
  br label %do.cond14, !dbg !3584

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !3584

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !3581

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !3587

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !3587

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #20, !dbg !3580
  br label %do.cond19, !dbg !3581

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !3581

do.end20:                                         ; preds = %do.cond19
  br label %if.end, !dbg !3581

if.end:                                           ; preds = %do.end20, %do.end
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !3579
  %tobool22 = icmp ne i32 %6, 0, !dbg !3579
  %lnot23 = xor i1 %tobool22, true, !dbg !3579
  %lnot25 = xor i1 %lnot23, true, !dbg !3579
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !3579
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !3579
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !3579
  store i64 %expval28, ptr %tmp21, align 8, !dbg !3580
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #20, !dbg !3589
  %7 = load i64, ptr %tmp21, align 8, !dbg !3579
  %tobool29 = icmp ne i64 %7, 0, !dbg !3589
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !3590

if.then30:                                        ; preds = %if.end
  store i32 2147483647, ptr @nr_irqs, align 4, !dbg !3591
  br label %if.end31, !dbg !3592

if.end31:                                         ; preds = %if.then30, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on32) #20, !dbg !3593
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on32, metadata !3559, metadata !DIExpression()), !dbg !3593
  %8 = load i32, ptr %initcnt, align 4, !dbg !3593
  %cmp33 = icmp sgt i32 %8, 2147483647, !dbg !3593
  %lnot35 = xor i1 %cmp33, true, !dbg !3593
  %lnot37 = xor i1 %lnot35, true, !dbg !3593
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !3593
  store i32 %lnot.ext38, ptr %__ret_warn_on32, align 4, !dbg !3593
  %9 = load i32, ptr %__ret_warn_on32, align 4, !dbg !3594
  %tobool39 = icmp ne i32 %9, 0, !dbg !3594
  %lnot40 = xor i1 %tobool39, true, !dbg !3594
  %lnot42 = xor i1 %lnot40, true, !dbg !3594
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !3594
  %conv44 = sext i32 %lnot.ext43 to i64, !dbg !3594
  %expval45 = call i64 @llvm.expect.i64(i64 %conv44, i64 0), !dbg !3594
  %tobool46 = icmp ne i64 %expval45, 0, !dbg !3594
  br i1 %tobool46, label %if.then47, label %if.end61, !dbg !3593

if.then47:                                        ; preds = %if.end31
  br label %do.body48, !dbg !3594

do.body48:                                        ; preds = %if.then47
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags49) #20, !dbg !3595
  call void @llvm.dbg.declare(metadata ptr %__flags49, metadata !3562, metadata !DIExpression()), !dbg !3595
  store i32 2305, ptr %__flags49, align 4, !dbg !3595
  br label %do.body50, !dbg !3595

do.body50:                                        ; preds = %do.body48
  br label %do.cond51, !dbg !3596

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !3596

do.end52:                                         ; preds = %do.cond51
  br label %do.body53, !dbg !3595

do.body53:                                        ; preds = %do.end52
  %10 = load i32, ptr %__flags49, align 4, !dbg !3598
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 564, i32 %10, i64 12) #20, !dbg !3598, !srcloc !3600
  br label %do.cond54, !dbg !3598

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !3598

do.end55:                                         ; preds = %do.cond54
  br label %do.body56, !dbg !3595

do.body56:                                        ; preds = %do.end55
  br label %do.cond57, !dbg !3601

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !3601

do.end58:                                         ; preds = %do.cond57
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags49) #20, !dbg !3594
  br label %do.cond59, !dbg !3595

do.cond59:                                        ; preds = %do.end58
  br label %do.end60, !dbg !3595

do.end60:                                         ; preds = %do.cond59
  br label %if.end61, !dbg !3595

if.end61:                                         ; preds = %do.end60, %if.end31
  %11 = load i32, ptr %__ret_warn_on32, align 4, !dbg !3593
  %tobool63 = icmp ne i32 %11, 0, !dbg !3593
  %lnot64 = xor i1 %tobool63, true, !dbg !3593
  %lnot66 = xor i1 %lnot64, true, !dbg !3593
  %lnot.ext67 = zext i1 %lnot66 to i32, !dbg !3593
  %conv68 = sext i32 %lnot.ext67 to i64, !dbg !3593
  %expval69 = call i64 @llvm.expect.i64(i64 %conv68, i64 0), !dbg !3593
  store i64 %expval69, ptr %tmp62, align 8, !dbg !3594
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on32) #20, !dbg !3603
  %12 = load i64, ptr %tmp62, align 8, !dbg !3593
  %tobool70 = icmp ne i64 %12, 0, !dbg !3603
  br i1 %tobool70, label %if.then71, label %if.end72, !dbg !3604

if.then71:                                        ; preds = %if.end61
  store i32 2147483647, ptr %initcnt, align 4, !dbg !3605
  br label %if.end72, !dbg !3606

if.end72:                                         ; preds = %if.then71, %if.end61
  %13 = load i32, ptr %initcnt, align 4, !dbg !3607
  %14 = load i32, ptr @nr_irqs, align 4, !dbg !3609
  %cmp73 = icmp sgt i32 %13, %14, !dbg !3610
  br i1 %cmp73, label %if.then75, label %if.end76, !dbg !3611

if.then75:                                        ; preds = %if.end72
  %15 = load i32, ptr %initcnt, align 4, !dbg !3612
  store i32 %15, ptr @nr_irqs, align 4, !dbg !3613
  br label %if.end76, !dbg !3614

if.end76:                                         ; preds = %if.then75, %if.end72
  store i32 0, ptr %i, align 4, !dbg !3615
  br label %for.cond, !dbg !3617

for.cond:                                         ; preds = %for.inc, %if.end76
  %16 = load i32, ptr %i, align 4, !dbg !3618
  %17 = load i32, ptr %initcnt, align 4, !dbg !3620
  %cmp77 = icmp slt i32 %16, %17, !dbg !3621
  br i1 %cmp77, label %for.body, label %for.end, !dbg !3622

for.body:                                         ; preds = %for.cond
  %18 = load i32, ptr %i, align 4, !dbg !3623
  %19 = load i32, ptr %node, align 4, !dbg !3625
  %call79 = call ptr @alloc_desc(i32 noundef %18, i32 noundef %19, i32 noundef 0, ptr noundef null, ptr noundef null) #19, !dbg !3626
  store ptr %call79, ptr %desc, align 8, !dbg !3627
  %20 = load i32, ptr %i, align 4, !dbg !3628
  %21 = load ptr, ptr %desc, align 8, !dbg !3629
  call void @irq_insert_desc(i32 noundef %20, ptr noundef %21) #19, !dbg !3630
  br label %for.inc, !dbg !3631

for.inc:                                          ; preds = %for.body
  %22 = load i32, ptr %i, align 4, !dbg !3632
  %inc = add i32 %22, 1, !dbg !3632
  store i32 %inc, ptr %i, align 4, !dbg !3632
  br label %for.cond, !dbg !3633, !llvm.loop !3634

for.end:                                          ; preds = %for.cond
  %call80 = call i32 @arch_early_irq_init() #19, !dbg !3636
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #20, !dbg !3637
  call void @llvm.lifetime.end.p0(i64 4, ptr %node) #20, !dbg !3637
  call void @llvm.lifetime.end.p0(i64 4, ptr %initcnt) #20, !dbg !3637
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #20, !dbg !3637
  ret i32 %call80, !dbg !3638
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__first_node(ptr noundef %srcp) #5 align 16 !dbg !3639 {
entry:
  %srcp.addr = alloca ptr, align 8
  %__UNIQUE_ID___x83 = alloca i32, align 4
  %__UNIQUE_ID___y84 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !3645, metadata !DIExpression()), !dbg !3649
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x83) #20, !dbg !3650
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x83, metadata !3646, metadata !DIExpression()), !dbg !3650
  store i32 64, ptr %__UNIQUE_ID___x83, align 4, !dbg !3650
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y84) #20, !dbg !3650
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y84, metadata !3648, metadata !DIExpression()), !dbg !3650
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !3650
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %0, i32 0, i32 0, !dbg !3650
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3650
  %call = call i64 @find_first_bit(ptr noundef %arraydecay, i64 noundef 64) #19, !dbg !3650
  %conv = trunc i64 %call to i32, !dbg !3650
  store i32 %conv, ptr %__UNIQUE_ID___y84, align 4, !dbg !3650
  %1 = load i32, ptr %__UNIQUE_ID___x83, align 4, !dbg !3650
  %2 = load i32, ptr %__UNIQUE_ID___y84, align 4, !dbg !3650
  %cmp = icmp ult i32 %1, %2, !dbg !3650
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3650

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %__UNIQUE_ID___x83, align 4, !dbg !3650
  br label %cond.end, !dbg !3650

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %__UNIQUE_ID___y84, align 4, !dbg !3650
  br label %cond.end, !dbg !3650

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !3650
  store i32 %cond, ptr %tmp, align 4, !dbg !3650
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y84) #20, !dbg !3651
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x83) #20, !dbg !3651
  %5 = load i32, ptr %tmp, align 4, !dbg !3650
  ret i32 %5, !dbg !3652
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @init_irq_default_affinity() #0 section ".init.text" align 16 !dbg !3653 {
entry:
  %call = call zeroext i1 @cpumask_available(ptr noundef @irq_default_affinity) #19, !dbg !3654
  br i1 %call, label %if.end, label %if.then, !dbg !3656

if.then:                                          ; preds = %entry
  %call1 = call zeroext i1 @zalloc_cpumask_var(ptr noundef @irq_default_affinity, i32 noundef 2048) #19, !dbg !3657
  br label %if.end, !dbg !3657

if.end:                                           ; preds = %if.then, %entry
  %call2 = call zeroext i1 @cpumask_empty(ptr noundef @irq_default_affinity) #19, !dbg !3658
  br i1 %call2, label %if.then3, label %if.end4, !dbg !3660

if.then3:                                         ; preds = %if.end
  call void @cpumask_setall(ptr noundef @irq_default_affinity) #19, !dbg !3661
  br label %if.end4, !dbg !3661

if.end4:                                          ; preds = %if.then3, %if.end
  ret void, !dbg !3662
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3663 dso_local i32 @arch_probe_nr_irqs() #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3664 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_desc(i32 noundef %irq, i32 noundef %node, i32 noundef %flags, ptr noundef %affinity, ptr noundef %owner) #1 align 16 !dbg !3341 {
entry:
  %retval = alloca ptr, align 8
  %irq.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %affinity.addr = alloca ptr, align 8
  %owner.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.raw_spinlock, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !3345, metadata !DIExpression()), !dbg !3668
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3346, metadata !DIExpression()), !dbg !3669
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3347, metadata !DIExpression()), !dbg !3670
  store ptr %affinity, ptr %affinity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %affinity.addr, metadata !3348, metadata !DIExpression()), !dbg !3671
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !3349, metadata !DIExpression()), !dbg !3672
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #20, !dbg !3673
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !3350, metadata !DIExpression()), !dbg !3674
  %0 = load i32, ptr %node.addr, align 4, !dbg !3675
  %call = call noalias ptr @kzalloc_node(i64 noundef 448, i32 noundef 3264, i32 noundef %0) #23, !dbg !3676
  store ptr %call, ptr %desc, align 8, !dbg !3677
  %1 = load ptr, ptr %desc, align 8, !dbg !3678
  %tobool = icmp ne ptr %1, null, !dbg !3678
  br i1 %tobool, label %if.end, label %if.then, !dbg !3680

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3681
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3681

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @__alloc_percpu(i64 noundef 4, i64 noundef 4) #23, !dbg !3682
  %2 = load ptr, ptr %desc, align 8, !dbg !3683
  %kstat_irqs = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 2, !dbg !3684
  store ptr %call1, ptr %kstat_irqs, align 32, !dbg !3685
  %3 = load ptr, ptr %desc, align 8, !dbg !3686
  %kstat_irqs2 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 2, !dbg !3688
  %4 = load ptr, ptr %kstat_irqs2, align 32, !dbg !3688
  %tobool3 = icmp ne ptr %4, null, !dbg !3686
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !3689

if.then4:                                         ; preds = %if.end
  br label %err_desc, !dbg !3690

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %desc, align 8, !dbg !3691
  %6 = load i32, ptr %node.addr, align 4, !dbg !3693
  %call6 = call i32 @alloc_masks(ptr noundef %5, i32 noundef %6) #19, !dbg !3694
  %tobool7 = icmp ne i32 %call6, 0, !dbg !3694
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !3695

if.then8:                                         ; preds = %if.end5
  br label %err_kstat, !dbg !3696

if.end9:                                          ; preds = %if.end5
  br label %do.body, !dbg !3697

do.body:                                          ; preds = %if.end9
  %7 = load ptr, ptr %desc, align 8, !dbg !3698
  %lock = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 15, !dbg !3698
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !3698
  %8 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !3698
  %counter = getelementptr inbounds %struct.atomic_t, ptr %8, i32 0, i32 0, !dbg !3698
  store i32 0, ptr %counter, align 4, !dbg !3698
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %lock, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !3698
  br label %do.cond, !dbg !3698

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3698

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !3700

do.body10:                                        ; preds = %do.end
  br label %do.cond11, !dbg !3701

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !3701

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !3703

do.body13:                                        ; preds = %do.end12
  %9 = load ptr, ptr %desc, align 8, !dbg !3704
  %request_mutex = getelementptr inbounds %struct.irq_desc, ptr %9, i32 0, i32 31, !dbg !3704
  call void @__mutex_init(ptr noundef %request_mutex, ptr noundef @.str.6, ptr noundef @alloc_desc.__key) #19, !dbg !3704
  br label %do.cond14, !dbg !3704

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !3704

do.end15:                                         ; preds = %do.cond14
  %10 = load ptr, ptr %desc, align 8, !dbg !3706
  %rcu = getelementptr inbounds %struct.irq_desc, ptr %10, i32 0, i32 29, !dbg !3707
  call void @init_rcu_head(ptr noundef %rcu) #19, !dbg !3708
  br label %do.body16, !dbg !3709

do.body16:                                        ; preds = %do.end15
  %11 = load ptr, ptr %desc, align 8, !dbg !3710
  %wait_for_threads = getelementptr inbounds %struct.irq_desc, ptr %11, i32 0, i32 23, !dbg !3710
  call void @__init_waitqueue_head(ptr noundef %wait_for_threads, ptr noundef @.str.8, ptr noundef @alloc_desc.__key.7) #19, !dbg !3710
  br label %do.cond17, !dbg !3710

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !3710

do.end18:                                         ; preds = %do.cond17
  %12 = load i32, ptr %irq.addr, align 4, !dbg !3712
  %13 = load ptr, ptr %desc, align 8, !dbg !3713
  %14 = load i32, ptr %node.addr, align 4, !dbg !3714
  %15 = load ptr, ptr %affinity.addr, align 8, !dbg !3715
  %16 = load ptr, ptr %owner.addr, align 8, !dbg !3716
  call void @desc_set_defaults(i32 noundef %12, ptr noundef %13, i32 noundef %14, ptr noundef %15, ptr noundef %16) #19, !dbg !3717
  %17 = load ptr, ptr %desc, align 8, !dbg !3718
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %17, i32 0, i32 1, !dbg !3719
  %18 = load i32, ptr %flags.addr, align 4, !dbg !3720
  call void @irqd_set(ptr noundef %irq_data, i32 noundef %18) #19, !dbg !3721
  %19 = load ptr, ptr %desc, align 8, !dbg !3722
  %kobj = getelementptr inbounds %struct.irq_desc, ptr %19, i32 0, i32 30, !dbg !3723
  call void @kobject_init(ptr noundef %kobj, ptr noundef @irq_kobj_type) #19, !dbg !3724
  %20 = load ptr, ptr %desc, align 8, !dbg !3725
  call void @irq_resend_init(ptr noundef %20) #19, !dbg !3726
  %21 = load ptr, ptr %desc, align 8, !dbg !3727
  store ptr %21, ptr %retval, align 8, !dbg !3728
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3728

err_kstat:                                        ; preds = %if.then8
  call void @llvm.dbg.label(metadata !3351), !dbg !3729
  %22 = load ptr, ptr %desc, align 8, !dbg !3730
  %kstat_irqs19 = getelementptr inbounds %struct.irq_desc, ptr %22, i32 0, i32 2, !dbg !3731
  %23 = load ptr, ptr %kstat_irqs19, align 32, !dbg !3731
  call void @free_percpu(ptr noundef %23) #19, !dbg !3732
  br label %err_desc, !dbg !3732

err_desc:                                         ; preds = %err_kstat, %if.then4
  call void @llvm.dbg.label(metadata !3352), !dbg !3733
  %24 = load ptr, ptr %desc, align 8, !dbg !3734
  call void @kfree(ptr noundef %24) #19, !dbg !3735
  store ptr null, ptr %retval, align 8, !dbg !3736
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3736

cleanup:                                          ; preds = %err_desc, %do.end18, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #20, !dbg !3737
  %25 = load ptr, ptr %retval, align 8, !dbg !3737
  ret ptr %25, !dbg !3737
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irq_insert_desc(i32 noundef %irq, ptr noundef %desc) #1 align 16 !dbg !3738 {
entry:
  %irq.addr = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  %mas = alloca %struct.ma_state, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !3742, metadata !DIExpression()), !dbg !3772
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !3743, metadata !DIExpression()), !dbg !3773
  call void @llvm.lifetime.start.p0(i64 64, ptr %mas) #20, !dbg !3774
  call void @llvm.dbg.declare(metadata ptr %mas, metadata !3744, metadata !DIExpression()), !dbg !3774
  %tree = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 0, !dbg !3774
  store ptr @sparse_irqs, ptr %tree, align 8, !dbg !3774
  %index = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 1, !dbg !3774
  %0 = load i32, ptr %irq.addr, align 4, !dbg !3774
  %conv = zext i32 %0 to i64, !dbg !3774
  store i64 %conv, ptr %index, align 8, !dbg !3774
  %last = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 2, !dbg !3774
  %1 = load i32, ptr %irq.addr, align 4, !dbg !3774
  %conv1 = zext i32 %1 to i64, !dbg !3774
  store i64 %conv1, ptr %last, align 8, !dbg !3774
  %node = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 3, !dbg !3774
  store ptr inttoptr (i64 1 to ptr), ptr %node, align 8, !dbg !3774
  %min = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 4, !dbg !3774
  store i64 0, ptr %min, align 8, !dbg !3774
  %max = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 5, !dbg !3774
  store i64 -1, ptr %max, align 8, !dbg !3774
  %alloc = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 6, !dbg !3774
  store ptr null, ptr %alloc, align 8, !dbg !3774
  %depth = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 7, !dbg !3774
  store i8 0, ptr %depth, align 8, !dbg !3774
  %offset = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 8, !dbg !3774
  store i8 0, ptr %offset, align 1, !dbg !3774
  %mas_flags = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 9, !dbg !3774
  store i8 0, ptr %mas_flags, align 2, !dbg !3774
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #20, !dbg !3775
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3767, metadata !DIExpression()), !dbg !3775
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !3775
  %call = call i32 @mas_store_gfp(ptr noundef %mas, ptr noundef %2, i32 noundef 3264) #19, !dbg !3775
  %cmp = icmp ne i32 %call, 0, !dbg !3775
  %lnot = xor i1 %cmp, true, !dbg !3775
  %lnot3 = xor i1 %lnot, true, !dbg !3775
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3775
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3775
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !3776
  %tobool = icmp ne i32 %3, 0, !dbg !3776
  %lnot4 = xor i1 %tobool, true, !dbg !3776
  %lnot6 = xor i1 %lnot4, true, !dbg !3776
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !3776
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !3776
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !3776
  %tobool9 = icmp ne i64 %expval, 0, !dbg !3776
  br i1 %tobool9, label %if.then, label %if.end, !dbg !3775

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3776

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #20, !dbg !3777
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3769, metadata !DIExpression()), !dbg !3777
  store i32 2305, ptr %__flags, align 4, !dbg !3777
  br label %do.body10, !dbg !3777

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !3778

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !3778

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !3777

do.body11:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !3780
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 162, i32 %4, i64 12) #20, !dbg !3780, !srcloc !3782
  br label %do.cond12, !dbg !3780

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !3780

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !3777

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !3783

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !3783

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #20, !dbg !3776
  br label %do.cond17, !dbg !3777

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !3777

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !3777

if.end:                                           ; preds = %do.end18, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !3775
  %tobool19 = icmp ne i32 %5, 0, !dbg !3775
  %lnot20 = xor i1 %tobool19, true, !dbg !3775
  %lnot22 = xor i1 %lnot20, true, !dbg !3775
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !3775
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !3775
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !3775
  store i64 %expval25, ptr %tmp, align 8, !dbg !3776
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #20, !dbg !3785
  %6 = load i64, ptr %tmp, align 8, !dbg !3775
  call void @llvm.lifetime.end.p0(i64 64, ptr %mas) #20, !dbg !3786
  ret void, !dbg !3786
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3787 dso_local i32 @arch_early_irq_init() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @handle_irq_desc(ptr noundef %desc) #1 align 16 !dbg !3788 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !3792, metadata !DIExpression()), !dbg !3800
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #20, !dbg !3801
  call void @llvm.dbg.declare(metadata ptr %data, metadata !3793, metadata !DIExpression()), !dbg !3802
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !3803
  %tobool = icmp ne ptr %0, null, !dbg !3803
  br i1 %tobool, label %if.end, label %if.then, !dbg !3805

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !3806
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3806

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !3807
  %call = call ptr @irq_desc_get_irq_data(ptr noundef %1) #19, !dbg !3808
  store ptr %call, ptr %data, align 8, !dbg !3809
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #20, !dbg !3810
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3794, metadata !DIExpression()), !dbg !3810
  %call1 = call i32 @preempt_count() #19, !dbg !3810
  %conv = sext i32 %call1 to i64, !dbg !3810
  %and = and i64 %conv, 983040, !dbg !3810
  %tobool2 = icmp ne i64 %and, 0, !dbg !3810
  br i1 %tobool2, label %land.end, label %land.rhs, !dbg !3810

land.rhs:                                         ; preds = %if.end
  %2 = load ptr, ptr %data, align 8, !dbg !3810
  %call3 = call zeroext i1 @handle_enforce_irqctx(ptr noundef %2) #19, !dbg !3810
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %3 = phi i1 [ false, %if.end ], [ %call3, %land.rhs ], !dbg !3811
  %lnot = xor i1 %3, true, !dbg !3810
  %lnot5 = xor i1 %lnot, true, !dbg !3810
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !3810
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3810
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !3812
  %tobool6 = icmp ne i32 %4, 0, !dbg !3812
  %lnot7 = xor i1 %tobool6, true, !dbg !3812
  %lnot9 = xor i1 %lnot7, true, !dbg !3812
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !3812
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !3812
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !3812
  %tobool12 = icmp ne i64 %expval, 0, !dbg !3812
  br i1 %tobool12, label %if.then13, label %if.end23, !dbg !3810

if.then13:                                        ; preds = %land.end
  br label %do.body, !dbg !3812

do.body:                                          ; preds = %if.then13
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #20, !dbg !3813
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3797, metadata !DIExpression()), !dbg !3813
  store i32 2307, ptr %__flags, align 4, !dbg !3813
  br label %do.body14, !dbg !3813

do.body14:                                        ; preds = %do.body
  br label %do.cond, !dbg !3814

do.cond:                                          ; preds = %do.body14
  br label %do.end, !dbg !3814

do.end:                                           ; preds = %do.cond
  br label %do.body15, !dbg !3813

do.body15:                                        ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !3816
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 673, i32 %5, i64 12) #20, !dbg !3816, !srcloc !3818
  br label %do.cond16, !dbg !3816

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !3816

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !3813

do.body18:                                        ; preds = %do.end17
  br label %do.cond19, !dbg !3819

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !3819

do.end20:                                         ; preds = %do.cond19
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #20, !dbg !3812
  br label %do.cond21, !dbg !3813

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !3813

do.end22:                                         ; preds = %do.cond21
  br label %if.end23, !dbg !3813

if.end23:                                         ; preds = %do.end22, %land.end
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !3810
  %tobool24 = icmp ne i32 %6, 0, !dbg !3810
  %lnot25 = xor i1 %tobool24, true, !dbg !3810
  %lnot27 = xor i1 %lnot25, true, !dbg !3810
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !3810
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !3810
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !3810
  store i64 %expval30, ptr %tmp, align 8, !dbg !3812
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #20, !dbg !3821
  %7 = load i64, ptr %tmp, align 8, !dbg !3810
  %tobool31 = icmp ne i64 %7, 0, !dbg !3821
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !3822

if.then32:                                        ; preds = %if.end23
  store i32 -1, ptr %retval, align 4, !dbg !3823
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3823

if.end33:                                         ; preds = %if.end23
  %8 = load ptr, ptr %desc.addr, align 8, !dbg !3824
  call void @generic_handle_irq_desc(ptr noundef %8) #19, !dbg !3825
  store i32 0, ptr %retval, align 4, !dbg !3826
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3826

cleanup:                                          ; preds = %if.end33, %if.then32, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #20, !dbg !3827
  %9 = load i32, ptr %retval, align 4, !dbg !3827
  ret i32 %9, !dbg !3827
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @irq_desc_get_irq_data(ptr noundef %desc) #5 align 16 !dbg !3828 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !3832, metadata !DIExpression()), !dbg !3833
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !3834
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, !dbg !3835
  ret ptr %irq_data, !dbg !3836
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @preempt_count() #8 align 16 !dbg !3837 {
entry:
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #20, !dbg !3842
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3840, metadata !DIExpression()), !dbg !3842
  %0 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.15, ptr @pcpu_hot, i32 0, i32 1)) #21, !dbg !3842, !srcloc !3843
  store i32 %0, ptr %pfo_val__, align 4, !dbg !3842
  %1 = load i32, ptr %pfo_val__, align 4, !dbg !3842
  %conv = zext i32 %1 to i64, !dbg !3842
  %conv1 = trunc i64 %conv to i32, !dbg !3842
  store i32 %conv1, ptr %tmp, align 4, !dbg !3842
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #20, !dbg !3844
  %2 = load i32, ptr %tmp, align 4, !dbg !3842
  %and = and i32 %2, 2147483647, !dbg !3845
  ret i32 %and, !dbg !3846
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @handle_enforce_irqctx(ptr noundef %data) #5 align 16 !dbg !3847 {
entry:
  %data.addr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !3851, metadata !DIExpression()), !dbg !3852
  %0 = load ptr, ptr %data.addr, align 8, !dbg !3853
  %call = call zeroext i1 @irqd_is_handle_enforce_irqctx(ptr noundef %0) #19, !dbg !3854
  ret i1 %call, !dbg !3855
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic_handle_irq_desc(ptr noundef %desc) #5 align 16 !dbg !3856 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !3858, metadata !DIExpression()), !dbg !3859
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !3860
  %handle_irq = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 3, !dbg !3861
  %1 = load ptr, ptr %handle_irq, align 8, !dbg !3861
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !3862
  call void %1(ptr noundef %2) #19, !dbg !3860
  ret void, !dbg !3863
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @generic_handle_irq(i32 noundef %irq) #1 align 16 !dbg !3864 {
entry:
  %irq.addr = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !3868, metadata !DIExpression()), !dbg !3869
  %0 = load i32, ptr %irq.addr, align 4, !dbg !3870
  %call = call ptr @irq_to_desc(i32 noundef %0) #19, !dbg !3871
  %call1 = call i32 @handle_irq_desc(ptr noundef %call) #19, !dbg !3872
  ret i32 %call1, !dbg !3873
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @generic_handle_irq_safe(i32 noundef %irq) #1 align 16 !dbg !3874 {
entry:
  %irq.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !3876, metadata !DIExpression()), !dbg !3889
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #20, !dbg !3890
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3877, metadata !DIExpression()), !dbg !3891
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #20, !dbg !3892
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3878, metadata !DIExpression()), !dbg !3893
  br label %do.body, !dbg !3894

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3895

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #20, !dbg !3896
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !3879, metadata !DIExpression()), !dbg !3896
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #20, !dbg !3896
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !3883, metadata !DIExpression()), !dbg !3896
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !3896
  %conv = zext i1 %cmp to i32, !dbg !3896
  store i32 1, ptr %tmp, align 4, !dbg !3896
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #20, !dbg !3897
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #20, !dbg !3897
  %0 = load i32, ptr %tmp, align 4, !dbg !3896
  %call = call i64 @arch_local_irq_save() #19, !dbg !3897
  store i64 %call, ptr %flags, align 8, !dbg !3897
  br label %do.cond, !dbg !3897

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !3897

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !3895

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !3895

do.end3:                                          ; preds = %do.cond2
  %1 = load i32, ptr %irq.addr, align 4, !dbg !3898
  %call4 = call ptr @irq_to_desc(i32 noundef %1) #19, !dbg !3899
  %call5 = call i32 @handle_irq_desc(ptr noundef %call4) #19, !dbg !3900
  store i32 %call5, ptr %ret, align 4, !dbg !3901
  br label %do.body6, !dbg !3902

do.body6:                                         ; preds = %do.end3
  br label %do.body7, !dbg !3903

do.body7:                                         ; preds = %do.body6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy8) #20, !dbg !3904
  call void @llvm.dbg.declare(metadata ptr %__dummy8, metadata !3884, metadata !DIExpression()), !dbg !3904
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy29) #20, !dbg !3904
  call void @llvm.dbg.declare(metadata ptr %__dummy29, metadata !3888, metadata !DIExpression()), !dbg !3904
  %cmp10 = icmp eq ptr %__dummy8, %__dummy29, !dbg !3904
  %conv11 = zext i1 %cmp10 to i32, !dbg !3904
  store i32 1, ptr %tmp12, align 4, !dbg !3904
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy29) #20, !dbg !3905
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy8) #20, !dbg !3905
  %2 = load i32, ptr %tmp12, align 4, !dbg !3904
  br label %do.body13, !dbg !3905

do.body13:                                        ; preds = %do.body7
  br label %do.cond14, !dbg !3906

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !3906

do.end15:                                         ; preds = %do.cond14
  %3 = load i64, ptr %flags, align 8, !dbg !3905
  call void @arch_local_irq_restore(i64 noundef %3) #19, !dbg !3905
  br label %do.cond16, !dbg !3905

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !3905

do.end17:                                         ; preds = %do.cond16
  br label %do.cond18, !dbg !3903

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !3903

do.end19:                                         ; preds = %do.cond18
  %4 = load i32, ptr %ret, align 4, !dbg !3908
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #20, !dbg !3909
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #20, !dbg !3909
  ret i32 %4, !dbg !3910
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #8 align 16 !dbg !3911 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #20, !dbg !3917
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3916, metadata !DIExpression()), !dbg !3918
  %call = call i64 @arch_local_save_flags() #19, !dbg !3919
  store i64 %call, ptr %flags, align 8, !dbg !3918
  call void @arch_local_irq_disable() #19, !dbg !3920
  %0 = load i64, ptr %flags, align 8, !dbg !3921
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #20, !dbg !3922
  ret i64 %0, !dbg !3923
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #8 align 16 !dbg !3924 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3928, metadata !DIExpression()), !dbg !3929
  %0 = load i64, ptr %flags.addr, align 8, !dbg !3930
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #19, !dbg !3932
  %tobool = icmp ne i32 %call, 0, !dbg !3932
  br i1 %tobool, label %if.end, label %if.then, !dbg !3933

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #19, !dbg !3934
  br label %if.end, !dbg !3934

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3935
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @generic_handle_domain_irq(ptr noundef %domain, i32 noundef %hwirq) #1 align 16 !dbg !3936 {
entry:
  %domain.addr = alloca ptr, align 8
  %hwirq.addr = alloca i32, align 4
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !3940, metadata !DIExpression()), !dbg !3942
  store i32 %hwirq, ptr %hwirq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hwirq.addr, metadata !3941, metadata !DIExpression()), !dbg !3943
  %0 = load ptr, ptr %domain.addr, align 8, !dbg !3944
  %1 = load i32, ptr %hwirq.addr, align 4, !dbg !3945
  %conv = zext i32 %1 to i64, !dbg !3945
  %call = call ptr @irq_resolve_mapping(ptr noundef %0, i64 noundef %conv) #19, !dbg !3946
  %call1 = call i32 @handle_irq_desc(ptr noundef %call) #19, !dbg !3947
  ret i32 %call1, !dbg !3948
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @irq_resolve_mapping(ptr noundef %domain, i64 noundef %hwirq) #5 align 16 !dbg !3949 {
entry:
  %domain.addr = alloca ptr, align 8
  %hwirq.addr = alloca i64, align 8
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !3953, metadata !DIExpression()), !dbg !3955
  store i64 %hwirq, ptr %hwirq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hwirq.addr, metadata !3954, metadata !DIExpression()), !dbg !3956
  %0 = load ptr, ptr %domain.addr, align 8, !dbg !3957
  %1 = load i64, ptr %hwirq.addr, align 8, !dbg !3958
  %call = call ptr @__irq_resolve_mapping(ptr noundef %0, i64 noundef %1, ptr noundef null) #19, !dbg !3959
  ret ptr %call, !dbg !3960
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @generic_handle_domain_irq_safe(ptr noundef %domain, i32 noundef %hwirq) #1 align 16 !dbg !3961 {
entry:
  %domain.addr = alloca ptr, align 8
  %hwirq.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy9 = alloca i64, align 8
  %__dummy210 = alloca i64, align 8
  %tmp13 = alloca i32, align 4
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !3963, metadata !DIExpression()), !dbg !3977
  store i32 %hwirq, ptr %hwirq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hwirq.addr, metadata !3964, metadata !DIExpression()), !dbg !3978
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #20, !dbg !3979
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3965, metadata !DIExpression()), !dbg !3980
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #20, !dbg !3981
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3966, metadata !DIExpression()), !dbg !3982
  br label %do.body, !dbg !3983

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3984

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #20, !dbg !3985
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !3967, metadata !DIExpression()), !dbg !3985
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #20, !dbg !3985
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !3971, metadata !DIExpression()), !dbg !3985
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !3985
  %conv = zext i1 %cmp to i32, !dbg !3985
  store i32 1, ptr %tmp, align 4, !dbg !3985
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #20, !dbg !3986
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #20, !dbg !3986
  %0 = load i32, ptr %tmp, align 4, !dbg !3985
  %call = call i64 @arch_local_irq_save() #19, !dbg !3986
  store i64 %call, ptr %flags, align 8, !dbg !3986
  br label %do.cond, !dbg !3986

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !3986

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !3984

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !3984

do.end3:                                          ; preds = %do.cond2
  %1 = load ptr, ptr %domain.addr, align 8, !dbg !3987
  %2 = load i32, ptr %hwirq.addr, align 4, !dbg !3988
  %conv4 = zext i32 %2 to i64, !dbg !3988
  %call5 = call ptr @irq_resolve_mapping(ptr noundef %1, i64 noundef %conv4) #19, !dbg !3989
  %call6 = call i32 @handle_irq_desc(ptr noundef %call5) #19, !dbg !3990
  store i32 %call6, ptr %ret, align 4, !dbg !3991
  br label %do.body7, !dbg !3992

do.body7:                                         ; preds = %do.end3
  br label %do.body8, !dbg !3993

do.body8:                                         ; preds = %do.body7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy9) #20, !dbg !3994
  call void @llvm.dbg.declare(metadata ptr %__dummy9, metadata !3972, metadata !DIExpression()), !dbg !3994
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy210) #20, !dbg !3994
  call void @llvm.dbg.declare(metadata ptr %__dummy210, metadata !3976, metadata !DIExpression()), !dbg !3994
  %cmp11 = icmp eq ptr %__dummy9, %__dummy210, !dbg !3994
  %conv12 = zext i1 %cmp11 to i32, !dbg !3994
  store i32 1, ptr %tmp13, align 4, !dbg !3994
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy210) #20, !dbg !3995
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy9) #20, !dbg !3995
  %3 = load i32, ptr %tmp13, align 4, !dbg !3994
  br label %do.body14, !dbg !3995

do.body14:                                        ; preds = %do.body8
  br label %do.cond15, !dbg !3996

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !3996

do.end16:                                         ; preds = %do.cond15
  %4 = load i64, ptr %flags, align 8, !dbg !3995
  call void @arch_local_irq_restore(i64 noundef %4) #19, !dbg !3995
  br label %do.cond17, !dbg !3995

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !3995

do.end18:                                         ; preds = %do.cond17
  br label %do.cond19, !dbg !3993

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !3993

do.end20:                                         ; preds = %do.cond19
  %5 = load i32, ptr %ret, align 4, !dbg !3998
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #20, !dbg !3999
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #20, !dbg !3999
  ret i32 %5, !dbg !4000
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @generic_handle_domain_nmi(ptr noundef %domain, i32 noundef %hwirq) #1 align 16 !dbg !4001 {
entry:
  %domain.addr = alloca ptr, align 8
  %hwirq.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !4003, metadata !DIExpression()), !dbg !4010
  store i32 %hwirq, ptr %hwirq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hwirq.addr, metadata !4004, metadata !DIExpression()), !dbg !4011
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #20, !dbg !4012
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4005, metadata !DIExpression()), !dbg !4012
  %call = call i32 @preempt_count() #19, !dbg !4012
  %conv = sext i32 %call to i64, !dbg !4012
  %and = and i64 %conv, 15728640, !dbg !4012
  %tobool = icmp ne i64 %and, 0, !dbg !4012
  %lnot = xor i1 %tobool, true, !dbg !4012
  %lnot1 = xor i1 %lnot, true, !dbg !4012
  %lnot2 = xor i1 %lnot1, true, !dbg !4012
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4012
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4012
  %0 = load i32, ptr %__ret_warn_on, align 4, !dbg !4013
  %tobool3 = icmp ne i32 %0, 0, !dbg !4013
  %lnot4 = xor i1 %tobool3, true, !dbg !4013
  %lnot6 = xor i1 %lnot4, true, !dbg !4013
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4013
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !4013
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !4013
  %tobool9 = icmp ne i64 %expval, 0, !dbg !4013
  br i1 %tobool9, label %if.then, label %if.end, !dbg !4012

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4013

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #20, !dbg !4014
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4007, metadata !DIExpression()), !dbg !4014
  store i32 2307, ptr %__flags, align 4, !dbg !4014
  br label %do.body10, !dbg !4014

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !4015

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !4015

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !4014

do.body11:                                        ; preds = %do.end
  %1 = load i32, ptr %__flags, align 4, !dbg !4017
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 773, i32 %1, i64 12) #20, !dbg !4017, !srcloc !4019
  br label %do.cond12, !dbg !4017

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4017

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !4014

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !4020

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !4020

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #20, !dbg !4013
  br label %do.cond17, !dbg !4014

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !4014

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !4014

if.end:                                           ; preds = %do.end18, %entry
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !4012
  %tobool19 = icmp ne i32 %2, 0, !dbg !4012
  %lnot20 = xor i1 %tobool19, true, !dbg !4012
  %lnot22 = xor i1 %lnot20, true, !dbg !4012
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !4012
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !4012
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !4012
  store i64 %expval25, ptr %tmp, align 8, !dbg !4013
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #20, !dbg !4022
  %3 = load i64, ptr %tmp, align 8, !dbg !4012
  %4 = load ptr, ptr %domain.addr, align 8, !dbg !4023
  %5 = load i32, ptr %hwirq.addr, align 4, !dbg !4024
  %conv26 = zext i32 %5 to i64, !dbg !4024
  %call27 = call ptr @irq_resolve_mapping(ptr noundef %4, i64 noundef %conv26) #19, !dbg !4025
  %call28 = call i32 @handle_irq_desc(ptr noundef %call27) #19, !dbg !4026
  ret i32 %call28, !dbg !4027
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @irq_free_descs(i32 noundef %from, i32 noundef %cnt) #1 align 16 !dbg !4028 {
entry:
  %from.addr = alloca i32, align 4
  %cnt.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %from, ptr %from.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !4032, metadata !DIExpression()), !dbg !4035
  store i32 %cnt, ptr %cnt.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cnt.addr, metadata !4033, metadata !DIExpression()), !dbg !4036
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #20, !dbg !4037
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4034, metadata !DIExpression()), !dbg !4038
  %0 = load i32, ptr %from.addr, align 4, !dbg !4039
  %1 = load i32, ptr @nr_irqs, align 4, !dbg !4041
  %cmp = icmp uge i32 %0, %1, !dbg !4042
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4043

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %from.addr, align 4, !dbg !4044
  %3 = load i32, ptr %cnt.addr, align 4, !dbg !4045
  %add = add i32 %2, %3, !dbg !4046
  %4 = load i32, ptr @nr_irqs, align 4, !dbg !4047
  %cmp1 = icmp ugt i32 %add, %4, !dbg !4048
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4049

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4050

if.end:                                           ; preds = %lor.lhs.false
  call void @mutex_lock(ptr noundef @sparse_irq_lock) #19, !dbg !4051
  store i32 0, ptr %i, align 4, !dbg !4052
  br label %for.cond, !dbg !4054

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4, !dbg !4055
  %6 = load i32, ptr %cnt.addr, align 4, !dbg !4057
  %cmp2 = icmp ult i32 %5, %6, !dbg !4058
  br i1 %cmp2, label %for.body, label %for.end, !dbg !4059

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %from.addr, align 4, !dbg !4060
  %8 = load i32, ptr %i, align 4, !dbg !4061
  %add3 = add i32 %7, %8, !dbg !4062
  call void @free_desc(i32 noundef %add3) #19, !dbg !4063
  br label %for.inc, !dbg !4063

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !dbg !4064
  %inc = add i32 %9, 1, !dbg !4064
  store i32 %inc, ptr %i, align 4, !dbg !4064
  br label %for.cond, !dbg !4065, !llvm.loop !4066

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @sparse_irq_lock) #19, !dbg !4068
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4069
  br label %cleanup, !dbg !4069

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #20, !dbg !4069
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4069

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_desc(i32 noundef %irq) #1 align 16 !dbg !4070 {
entry:
  %irq.addr = alloca i32, align 4
  %desc = alloca ptr, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !4074, metadata !DIExpression()), !dbg !4076
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #20, !dbg !4077
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4075, metadata !DIExpression()), !dbg !4078
  %0 = load i32, ptr %irq.addr, align 4, !dbg !4079
  %call = call ptr @irq_to_desc(i32 noundef %0) #19, !dbg !4080
  store ptr %call, ptr %desc, align 8, !dbg !4078
  %1 = load ptr, ptr %desc, align 8, !dbg !4081
  call void @irq_remove_debugfs_entry(ptr noundef %1) #19, !dbg !4082
  %2 = load i32, ptr %irq.addr, align 4, !dbg !4083
  %3 = load ptr, ptr %desc, align 8, !dbg !4084
  call void @unregister_irq_proc(i32 noundef %2, ptr noundef %3) #19, !dbg !4085
  %4 = load ptr, ptr %desc, align 8, !dbg !4086
  call void @irq_sysfs_del(ptr noundef %4) #19, !dbg !4087
  %5 = load i32, ptr %irq.addr, align 4, !dbg !4088
  call void @delete_irq_desc(i32 noundef %5) #19, !dbg !4089
  %6 = load ptr, ptr %desc, align 8, !dbg !4090
  %rcu = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 29, !dbg !4091
  call void @call_rcu(ptr noundef %rcu, ptr noundef @delayed_free_desc) #19, !dbg !4092
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #20, !dbg !4093
  ret void, !dbg !4093
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__irq_alloc_descs(i32 noundef %irq, i32 noundef %from, i32 noundef %cnt, i32 noundef %node, ptr noundef %owner, ptr noundef %affinity) #9 section ".ref.text" align 16 !dbg !4094 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %from.addr = alloca i32, align 4
  %cnt.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  %owner.addr = alloca ptr, align 8
  %affinity.addr = alloca ptr, align 8
  %start = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !4104, metadata !DIExpression()), !dbg !4113
  store i32 %from, ptr %from.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !4105, metadata !DIExpression()), !dbg !4114
  store i32 %cnt, ptr %cnt.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cnt.addr, metadata !4106, metadata !DIExpression()), !dbg !4115
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4107, metadata !DIExpression()), !dbg !4116
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !4108, metadata !DIExpression()), !dbg !4117
  store ptr %affinity, ptr %affinity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %affinity.addr, metadata !4109, metadata !DIExpression()), !dbg !4118
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #20, !dbg !4119
  call void @llvm.dbg.declare(metadata ptr %start, metadata !4110, metadata !DIExpression()), !dbg !4120
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #20, !dbg !4119
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4111, metadata !DIExpression()), !dbg !4121
  %0 = load i32, ptr %cnt.addr, align 4, !dbg !4122
  %tobool = icmp ne i32 %0, 0, !dbg !4122
  br i1 %tobool, label %if.end, label %if.then, !dbg !4124

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4125

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %irq.addr, align 4, !dbg !4126
  %cmp = icmp sge i32 %1, 0, !dbg !4128
  br i1 %cmp, label %if.then1, label %if.else, !dbg !4129

if.then1:                                         ; preds = %if.end
  %2 = load i32, ptr %from.addr, align 4, !dbg !4130
  %3 = load i32, ptr %irq.addr, align 4, !dbg !4133
  %cmp2 = icmp ugt i32 %2, %3, !dbg !4134
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !4135

if.then3:                                         ; preds = %if.then1
  store i32 -22, ptr %retval, align 4, !dbg !4136
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4136

if.end4:                                          ; preds = %if.then1
  %4 = load i32, ptr %irq.addr, align 4, !dbg !4137
  store i32 %4, ptr %from.addr, align 4, !dbg !4138
  br label %if.end5, !dbg !4139

if.else:                                          ; preds = %if.end
  %5 = load i32, ptr %from.addr, align 4, !dbg !4140
  %call = call i32 @arch_dynirq_lower_bound(i32 noundef %5) #19, !dbg !4142
  store i32 %call, ptr %from.addr, align 4, !dbg !4143
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end4
  call void @mutex_lock(ptr noundef @sparse_irq_lock) #19, !dbg !4144
  %6 = load i32, ptr %from.addr, align 4, !dbg !4145
  %7 = load i32, ptr %cnt.addr, align 4, !dbg !4146
  %call6 = call i32 @irq_find_free_area(i32 noundef %6, i32 noundef %7) #19, !dbg !4147
  store i32 %call6, ptr %start, align 4, !dbg !4148
  store i32 -17, ptr %ret, align 4, !dbg !4149
  %8 = load i32, ptr %irq.addr, align 4, !dbg !4150
  %cmp7 = icmp sge i32 %8, 0, !dbg !4152
  br i1 %cmp7, label %land.lhs.true, label %if.end10, !dbg !4153

land.lhs.true:                                    ; preds = %if.end5
  %9 = load i32, ptr %start, align 4, !dbg !4154
  %10 = load i32, ptr %irq.addr, align 4, !dbg !4155
  %cmp8 = icmp ne i32 %9, %10, !dbg !4156
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !4157

if.then9:                                         ; preds = %land.lhs.true
  br label %unlock, !dbg !4158

if.end10:                                         ; preds = %land.lhs.true, %if.end5
  %11 = load i32, ptr %start, align 4, !dbg !4159
  %12 = load i32, ptr %cnt.addr, align 4, !dbg !4161
  %add = add i32 %11, %12, !dbg !4162
  %13 = load i32, ptr @nr_irqs, align 4, !dbg !4163
  %cmp11 = icmp ugt i32 %add, %13, !dbg !4164
  br i1 %cmp11, label %if.then12, label %if.end18, !dbg !4165

if.then12:                                        ; preds = %if.end10
  %14 = load i32, ptr %start, align 4, !dbg !4166
  %15 = load i32, ptr %cnt.addr, align 4, !dbg !4168
  %add13 = add i32 %14, %15, !dbg !4169
  %call14 = call i32 @irq_expand_nr_irqs(i32 noundef %add13) #19, !dbg !4170
  store i32 %call14, ptr %ret, align 4, !dbg !4171
  %16 = load i32, ptr %ret, align 4, !dbg !4172
  %tobool15 = icmp ne i32 %16, 0, !dbg !4172
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4174

if.then16:                                        ; preds = %if.then12
  br label %unlock, !dbg !4175

if.end17:                                         ; preds = %if.then12
  br label %if.end18, !dbg !4176

if.end18:                                         ; preds = %if.end17, %if.end10
  %17 = load i32, ptr %start, align 4, !dbg !4177
  %18 = load i32, ptr %cnt.addr, align 4, !dbg !4178
  %19 = load i32, ptr %node.addr, align 4, !dbg !4179
  %20 = load ptr, ptr %affinity.addr, align 8, !dbg !4180
  %21 = load ptr, ptr %owner.addr, align 8, !dbg !4181
  %call19 = call i32 @alloc_descs(i32 noundef %17, i32 noundef %18, i32 noundef %19, ptr noundef %20, ptr noundef %21) #19, !dbg !4182
  store i32 %call19, ptr %ret, align 4, !dbg !4183
  br label %unlock, !dbg !4184

unlock:                                           ; preds = %if.end18, %if.then16, %if.then9
  call void @llvm.dbg.label(metadata !4112), !dbg !4185
  call void @mutex_unlock(ptr noundef @sparse_irq_lock) #19, !dbg !4186
  %22 = load i32, ptr %ret, align 4, !dbg !4187
  store i32 %22, ptr %retval, align 4, !dbg !4188
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4188

cleanup:                                          ; preds = %unlock, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #20, !dbg !4189
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #20, !dbg !4189
  %23 = load i32, ptr %retval, align 4, !dbg !4189
  ret i32 %23, !dbg !4189
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4190 dso_local i32 @arch_dynirq_lower_bound(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_find_free_area(i32 noundef %from, i32 noundef %cnt) #1 align 16 !dbg !4193 {
entry:
  %retval = alloca i32, align 4
  %from.addr = alloca i32, align 4
  %cnt.addr = alloca i32, align 4
  %mas = alloca %struct.ma_state, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %from, ptr %from.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !4197, metadata !DIExpression()), !dbg !4200
  store i32 %cnt, ptr %cnt.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cnt.addr, metadata !4198, metadata !DIExpression()), !dbg !4201
  call void @llvm.lifetime.start.p0(i64 64, ptr %mas) #20, !dbg !4202
  call void @llvm.dbg.declare(metadata ptr %mas, metadata !4199, metadata !DIExpression()), !dbg !4202
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %mas, ptr align 8 @__const.irq_find_free_area.mas, i64 64, i1 false), !dbg !4202
  %0 = load i32, ptr %from.addr, align 4, !dbg !4203
  %conv = zext i32 %0 to i64, !dbg !4203
  %1 = load i32, ptr %cnt.addr, align 4, !dbg !4205
  %conv1 = zext i32 %1 to i64, !dbg !4205
  %call = call i32 @mas_empty_area(ptr noundef %mas, i64 noundef %conv, i64 noundef 2147483647, i64 noundef %conv1) #19, !dbg !4206
  %tobool = icmp ne i32 %call, 0, !dbg !4206
  br i1 %tobool, label %if.then, label %if.end, !dbg !4207

if.then:                                          ; preds = %entry
  store i32 -28, ptr %retval, align 4, !dbg !4208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4208

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 1, !dbg !4209
  %2 = load i64, ptr %index, align 8, !dbg !4209
  %conv2 = trunc i64 %2 to i32, !dbg !4210
  store i32 %conv2, ptr %retval, align 4, !dbg !4211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4211

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 64, ptr %mas) #20, !dbg !4212
  %3 = load i32, ptr %retval, align 4, !dbg !4212
  ret i32 %3, !dbg !4212
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_expand_nr_irqs(i32 noundef %nr) #1 align 16 !dbg !4213 {
entry:
  %retval = alloca i32, align 4
  %nr.addr = alloca i32, align 4
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4215, metadata !DIExpression()), !dbg !4216
  %0 = load i32, ptr %nr.addr, align 4, !dbg !4217
  %cmp = icmp ugt i32 %0, 2147483647, !dbg !4219
  br i1 %cmp, label %if.then, label %if.end, !dbg !4220

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4221
  br label %return, !dbg !4221

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %nr.addr, align 4, !dbg !4222
  store i32 %1, ptr @nr_irqs, align 4, !dbg !4223
  store i32 0, ptr %retval, align 4, !dbg !4224
  br label %return, !dbg !4224

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4225
  ret i32 %2, !dbg !4225
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @alloc_descs(i32 noundef %start, i32 noundef %cnt, i32 noundef %node, ptr noundef %affinity, ptr noundef %owner) #1 align 16 !dbg !4226 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %cnt.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  %affinity.addr = alloca ptr, align 8
  %owner.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %mask6 = alloca ptr, align 8
  %flags = alloca i32, align 4
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4230, metadata !DIExpression()), !dbg !4243
  store i32 %cnt, ptr %cnt.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cnt.addr, metadata !4231, metadata !DIExpression()), !dbg !4244
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4232, metadata !DIExpression()), !dbg !4245
  store ptr %affinity, ptr %affinity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %affinity.addr, metadata !4233, metadata !DIExpression()), !dbg !4246
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !4234, metadata !DIExpression()), !dbg !4247
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #20, !dbg !4248
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4235, metadata !DIExpression()), !dbg !4249
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #20, !dbg !4250
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4236, metadata !DIExpression()), !dbg !4251
  %0 = load ptr, ptr %affinity.addr, align 8, !dbg !4252
  %tobool = icmp ne ptr %0, null, !dbg !4252
  br i1 %tobool, label %if.then, label %if.end2, !dbg !4254

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !4255
  br label %for.cond, !dbg !4258

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, ptr %i, align 4, !dbg !4259
  %2 = load i32, ptr %cnt.addr, align 4, !dbg !4261
  %cmp = icmp ult i32 %1, %2, !dbg !4262
  br i1 %cmp, label %for.body, label %for.end, !dbg !4263

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %affinity.addr, align 8, !dbg !4264
  %4 = load i32, ptr %i, align 4, !dbg !4267
  %idxprom = sext i32 %4 to i64, !dbg !4264
  %arrayidx = getelementptr %struct.irq_affinity_desc, ptr %3, i64 %idxprom, !dbg !4264
  %mask = getelementptr inbounds %struct.irq_affinity_desc, ptr %arrayidx, i32 0, i32 0, !dbg !4268
  %call = call zeroext i1 @cpumask_empty(ptr noundef %mask) #19, !dbg !4269
  br i1 %call, label %if.then1, label %if.end, !dbg !4270

if.then1:                                         ; preds = %for.body
  store i32 -22, ptr %retval, align 4, !dbg !4271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup34, !dbg !4271

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4272

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4, !dbg !4273
  %inc = add i32 %5, 1, !dbg !4273
  store i32 %inc, ptr %i, align 4, !dbg !4273
  br label %for.cond, !dbg !4274, !llvm.loop !4275

for.end:                                          ; preds = %for.cond
  br label %if.end2, !dbg !4277

if.end2:                                          ; preds = %for.end, %entry
  store i32 0, ptr %i, align 4, !dbg !4278
  br label %for.cond3, !dbg !4279

for.cond3:                                        ; preds = %for.inc24, %if.end2
  %6 = load i32, ptr %i, align 4, !dbg !4280
  %7 = load i32, ptr %cnt.addr, align 4, !dbg !4281
  %cmp4 = icmp ult i32 %6, %7, !dbg !4282
  br i1 %cmp4, label %for.body5, label %for.end26, !dbg !4283

for.body5:                                        ; preds = %for.cond3
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask6) #20, !dbg !4284
  call void @llvm.dbg.declare(metadata ptr %mask6, metadata !4237, metadata !DIExpression()), !dbg !4285
  store ptr null, ptr %mask6, align 8, !dbg !4285
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #20, !dbg !4286
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4241, metadata !DIExpression()), !dbg !4287
  store i32 0, ptr %flags, align 4, !dbg !4287
  %8 = load ptr, ptr %affinity.addr, align 8, !dbg !4288
  %tobool7 = icmp ne ptr %8, null, !dbg !4288
  br i1 %tobool7, label %if.then8, label %if.end15, !dbg !4290

if.then8:                                         ; preds = %for.body5
  %9 = load ptr, ptr %affinity.addr, align 8, !dbg !4291
  %is_managed = getelementptr inbounds %struct.irq_affinity_desc, ptr %9, i32 0, i32 1, !dbg !4294
  %bf.load = load i8, ptr %is_managed, align 8, !dbg !4294
  %bf.clear = and i8 %bf.load, 1, !dbg !4294
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4294
  %tobool9 = icmp ne i32 %bf.cast, 0, !dbg !4291
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4295

if.then10:                                        ; preds = %if.then8
  store i32 10485760, ptr %flags, align 4, !dbg !4296
  br label %if.end11, !dbg !4298

if.end11:                                         ; preds = %if.then10, %if.then8
  %10 = load i32, ptr %flags, align 4, !dbg !4299
  %or = or i32 %10, 4096, !dbg !4299
  store i32 %or, ptr %flags, align 4, !dbg !4299
  %11 = load ptr, ptr %affinity.addr, align 8, !dbg !4300
  %mask12 = getelementptr inbounds %struct.irq_affinity_desc, ptr %11, i32 0, i32 0, !dbg !4301
  store ptr %mask12, ptr %mask6, align 8, !dbg !4302
  %12 = load ptr, ptr %mask6, align 8, !dbg !4303
  %call13 = call i32 @cpumask_first(ptr noundef %12) #19, !dbg !4304
  %call14 = call i32 @cpu_to_node(i32 noundef %call13) #19, !dbg !4305
  store i32 %call14, ptr %node.addr, align 4, !dbg !4306
  %13 = load ptr, ptr %affinity.addr, align 8, !dbg !4307
  %incdec.ptr = getelementptr %struct.irq_affinity_desc, ptr %13, i32 1, !dbg !4307
  store ptr %incdec.ptr, ptr %affinity.addr, align 8, !dbg !4307
  br label %if.end15, !dbg !4308

if.end15:                                         ; preds = %if.end11, %for.body5
  %14 = load i32, ptr %start.addr, align 4, !dbg !4309
  %15 = load i32, ptr %i, align 4, !dbg !4310
  %add = add i32 %14, %15, !dbg !4311
  %16 = load i32, ptr %node.addr, align 4, !dbg !4312
  %17 = load i32, ptr %flags, align 4, !dbg !4313
  %18 = load ptr, ptr %mask6, align 8, !dbg !4314
  %19 = load ptr, ptr %owner.addr, align 8, !dbg !4315
  %call16 = call ptr @alloc_desc(i32 noundef %add, i32 noundef %16, i32 noundef %17, ptr noundef %18, ptr noundef %19) #19, !dbg !4316
  store ptr %call16, ptr %desc, align 8, !dbg !4317
  %20 = load ptr, ptr %desc, align 8, !dbg !4318
  %tobool17 = icmp ne ptr %20, null, !dbg !4318
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !4320

if.then18:                                        ; preds = %if.end15
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4321

if.end19:                                         ; preds = %if.end15
  %21 = load i32, ptr %start.addr, align 4, !dbg !4322
  %22 = load i32, ptr %i, align 4, !dbg !4323
  %add20 = add i32 %21, %22, !dbg !4324
  %23 = load ptr, ptr %desc, align 8, !dbg !4325
  call void @irq_insert_desc(i32 noundef %add20, ptr noundef %23) #19, !dbg !4326
  %24 = load i32, ptr %start.addr, align 4, !dbg !4327
  %25 = load i32, ptr %i, align 4, !dbg !4328
  %add21 = add i32 %24, %25, !dbg !4329
  %26 = load ptr, ptr %desc, align 8, !dbg !4330
  call void @irq_sysfs_add(i32 noundef %add21, ptr noundef %26) #19, !dbg !4331
  %27 = load i32, ptr %start.addr, align 4, !dbg !4332
  %28 = load i32, ptr %i, align 4, !dbg !4333
  %add22 = add i32 %27, %28, !dbg !4334
  %29 = load ptr, ptr %desc, align 8, !dbg !4335
  call void @irq_add_debugfs_entry(i32 noundef %add22, ptr noundef %29) #19, !dbg !4336
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4337
  br label %cleanup, !dbg !4337

cleanup:                                          ; preds = %if.then18, %if.end19
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #20, !dbg !4337
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask6) #20, !dbg !4337
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup34 [
    i32 0, label %cleanup.cont
    i32 8, label %err
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc24, !dbg !4338

for.inc24:                                        ; preds = %cleanup.cont
  %30 = load i32, ptr %i, align 4, !dbg !4339
  %inc25 = add i32 %30, 1, !dbg !4339
  store i32 %inc25, ptr %i, align 4, !dbg !4339
  br label %for.cond3, !dbg !4340, !llvm.loop !4341

for.end26:                                        ; preds = %for.cond3
  %31 = load i32, ptr %start.addr, align 4, !dbg !4343
  store i32 %31, ptr %retval, align 4, !dbg !4344
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup34, !dbg !4344

err:                                              ; preds = %cleanup
  call void @llvm.dbg.label(metadata !4242), !dbg !4345
  %32 = load i32, ptr %i, align 4, !dbg !4346
  %dec = add i32 %32, -1, !dbg !4346
  store i32 %dec, ptr %i, align 4, !dbg !4346
  br label %for.cond27, !dbg !4348

for.cond27:                                       ; preds = %for.inc31, %err
  %33 = load i32, ptr %i, align 4, !dbg !4349
  %cmp28 = icmp sge i32 %33, 0, !dbg !4351
  br i1 %cmp28, label %for.body29, label %for.end33, !dbg !4352

for.body29:                                       ; preds = %for.cond27
  %34 = load i32, ptr %start.addr, align 4, !dbg !4353
  %35 = load i32, ptr %i, align 4, !dbg !4354
  %add30 = add i32 %34, %35, !dbg !4355
  call void @free_desc(i32 noundef %add30) #19, !dbg !4356
  br label %for.inc31, !dbg !4356

for.inc31:                                        ; preds = %for.body29
  %36 = load i32, ptr %i, align 4, !dbg !4357
  %dec32 = add i32 %36, -1, !dbg !4357
  store i32 %dec32, ptr %i, align 4, !dbg !4357
  br label %for.cond27, !dbg !4358, !llvm.loop !4359

for.end33:                                        ; preds = %for.cond27
  store i32 -12, ptr %retval, align 4, !dbg !4361
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup34, !dbg !4361

cleanup34:                                        ; preds = %for.end33, %for.end26, %cleanup, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #20, !dbg !4362
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #20, !dbg !4362
  %37 = load i32, ptr %retval, align 4, !dbg !4362
  ret i32 %37, !dbg !4362
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @irq_get_next_irq(i32 noundef %offset) #1 align 16 !dbg !4363 {
entry:
  %offset.addr = alloca i32, align 4
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !4365, metadata !DIExpression()), !dbg !4366
  %0 = load i32, ptr %offset.addr, align 4, !dbg !4367
  %call = call i32 @irq_find_at_or_after(i32 noundef %0) #19, !dbg !4368
  ret i32 %call, !dbg !4369
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_find_at_or_after(i32 noundef %offset) #1 align 16 !dbg !4370 {
entry:
  %offset.addr = alloca i32, align 4
  %index = alloca i64, align 8
  %desc = alloca ptr, align 8
  %__UNIQUE_ID_guard207 = alloca %struct.class_rcu_t, align 8
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !4372, metadata !DIExpression()), !dbg !4381
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #20, !dbg !4382
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4373, metadata !DIExpression()), !dbg !4383
  %0 = load i32, ptr %offset.addr, align 4, !dbg !4384
  %conv = zext i32 %0 to i64, !dbg !4384
  store i64 %conv, ptr %index, align 8, !dbg !4383
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #20, !dbg !4385
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4374, metadata !DIExpression()), !dbg !4386
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_guard207) #20, !dbg !4387
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_guard207, metadata !4375, metadata !DIExpression()), !dbg !4387
  %call = call ptr @class_rcu_constructor() #19, !dbg !4387
  %coerce.dive = getelementptr inbounds %struct.class_rcu_t, ptr %__UNIQUE_ID_guard207, i32 0, i32 0, !dbg !4387
  store ptr %call, ptr %coerce.dive, align 8, !dbg !4387
  %1 = load i32, ptr @nr_irqs, align 4, !dbg !4388
  %conv1 = sext i32 %1 to i64, !dbg !4388
  %call2 = call ptr @mt_find(ptr noundef @sparse_irqs, ptr noundef %index, i64 noundef %conv1) #19, !dbg !4389
  store ptr %call2, ptr %desc, align 8, !dbg !4390
  %2 = load ptr, ptr %desc, align 8, !dbg !4391
  %tobool = icmp ne ptr %2, null, !dbg !4391
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4391

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %desc, align 8, !dbg !4392
  %call3 = call i32 @irq_desc_get_irq(ptr noundef %3) #19, !dbg !4393
  br label %cond.end, !dbg !4391

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr @nr_irqs, align 4, !dbg !4394
  br label %cond.end, !dbg !4391

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call3, %cond.true ], [ %4, %cond.false ], !dbg !4391
  call void @class_rcu_destructor(ptr noundef %__UNIQUE_ID_guard207) #19, !dbg !4395
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_guard207) #20, !dbg !4395
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #20, !dbg !4395
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #20, !dbg !4395
  ret i32 %cond, !dbg !4395
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @__irq_get_desc_lock(i32 noundef %irq, ptr noundef %flags, i1 noundef zeroext %bus, i32 noundef %check) #1 align 16 !dbg !4396 {
entry:
  %retval = alloca ptr, align 8
  %irq.addr = alloca i32, align 4
  %flags.addr = alloca ptr, align 8
  %bus.addr = alloca i8, align 1
  %check.addr = alloca i32, align 4
  %desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !4400, metadata !DIExpression()), !dbg !4411
  store ptr %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4401, metadata !DIExpression()), !dbg !4412
  %frombool = zext i1 %bus to i8
  store i8 %frombool, ptr %bus.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !4402, metadata !DIExpression()), !dbg !4413
  store i32 %check, ptr %check.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %check.addr, metadata !4403, metadata !DIExpression()), !dbg !4414
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #20, !dbg !4415
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4404, metadata !DIExpression()), !dbg !4416
  %0 = load i32, ptr %irq.addr, align 4, !dbg !4417
  %call = call ptr @irq_to_desc(i32 noundef %0) #19, !dbg !4418
  store ptr %call, ptr %desc, align 8, !dbg !4416
  %1 = load ptr, ptr %desc, align 8, !dbg !4419
  %tobool = icmp ne ptr %1, null, !dbg !4419
  br i1 %tobool, label %if.then, label %if.end18, !dbg !4420

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %check.addr, align 4, !dbg !4421
  %and = and i32 %2, 1, !dbg !4423
  %tobool1 = icmp ne i32 %and, 0, !dbg !4423
  br i1 %tobool1, label %if.then2, label %if.end13, !dbg !4424

if.then2:                                         ; preds = %if.then
  %3 = load i32, ptr %check.addr, align 4, !dbg !4425
  %and3 = and i32 %3, 2, !dbg !4428
  %tobool4 = icmp ne i32 %and3, 0, !dbg !4428
  br i1 %tobool4, label %land.lhs.true, label %if.end, !dbg !4429

land.lhs.true:                                    ; preds = %if.then2
  %4 = load ptr, ptr %desc, align 8, !dbg !4430
  %call5 = call zeroext i1 @irq_settings_is_per_cpu_devid(ptr noundef %4) #19, !dbg !4431
  br i1 %call5, label %if.end, label %if.then6, !dbg !4432

if.then6:                                         ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8, !dbg !4433
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4433

if.end:                                           ; preds = %land.lhs.true, %if.then2
  %5 = load i32, ptr %check.addr, align 4, !dbg !4434
  %and7 = and i32 %5, 2, !dbg !4436
  %tobool8 = icmp ne i32 %and7, 0, !dbg !4436
  br i1 %tobool8, label %if.end12, label %land.lhs.true9, !dbg !4437

land.lhs.true9:                                   ; preds = %if.end
  %6 = load ptr, ptr %desc, align 8, !dbg !4438
  %call10 = call zeroext i1 @irq_settings_is_per_cpu_devid(ptr noundef %6) #19, !dbg !4439
  br i1 %call10, label %if.then11, label %if.end12, !dbg !4440

if.then11:                                        ; preds = %land.lhs.true9
  store ptr null, ptr %retval, align 8, !dbg !4441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4441

if.end12:                                         ; preds = %land.lhs.true9, %if.end
  br label %if.end13, !dbg !4442

if.end13:                                         ; preds = %if.end12, %if.then
  %7 = load i8, ptr %bus.addr, align 1, !dbg !4443, !range !4445, !noundef !662
  %tobool14 = trunc i8 %7 to i1, !dbg !4443
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !4446

if.then15:                                        ; preds = %if.end13
  %8 = load ptr, ptr %desc, align 8, !dbg !4447
  call void @chip_bus_lock(ptr noundef %8) #19, !dbg !4448
  br label %if.end16, !dbg !4448

if.end16:                                         ; preds = %if.then15, %if.end13
  br label %do.body, !dbg !4449

do.body:                                          ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #20, !dbg !4450
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4405, metadata !DIExpression()), !dbg !4450
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #20, !dbg !4450
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4410, metadata !DIExpression()), !dbg !4450
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4450
  %conv = zext i1 %cmp to i32, !dbg !4450
  store i32 1, ptr %tmp, align 4, !dbg !4450
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #20, !dbg !4451
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #20, !dbg !4451
  %9 = load i32, ptr %tmp, align 4, !dbg !4450
  %10 = load ptr, ptr %desc, align 8, !dbg !4451
  %lock = getelementptr inbounds %struct.irq_desc, ptr %10, i32 0, i32 15, !dbg !4451
  %call17 = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #19, !dbg !4451
  %11 = load ptr, ptr %flags.addr, align 8, !dbg !4451
  store i64 %call17, ptr %11, align 8, !dbg !4451
  br label %do.cond, !dbg !4451

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4451

do.end:                                           ; preds = %do.cond
  br label %if.end18, !dbg !4452

if.end18:                                         ; preds = %do.end, %entry
  %12 = load ptr, ptr %desc, align 8, !dbg !4453
  store ptr %12, ptr %retval, align 8, !dbg !4454
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4454

cleanup:                                          ; preds = %if.end18, %if.then11, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #20, !dbg !4455
  %13 = load ptr, ptr %retval, align 8, !dbg !4455
  ret ptr %13, !dbg !4455
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irq_settings_is_per_cpu_devid(ptr noundef %desc) #5 align 16 !dbg !4456 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !4460, metadata !DIExpression()), !dbg !4461
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !4462
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 5, !dbg !4463
  %1 = load i32, ptr %status_use_accessors, align 8, !dbg !4463
  %and = and i32 %1, 131072, !dbg !4464
  %tobool = icmp ne i32 %and, 0, !dbg !4462
  ret i1 %tobool, !dbg !4465
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @chip_bus_lock(ptr noundef %desc) #5 align 16 !dbg !4466 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !4468, metadata !DIExpression()), !dbg !4469
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !4470
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, !dbg !4470
  %chip = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 4, !dbg !4470
  %1 = load ptr, ptr %chip, align 8, !dbg !4470
  %irq_bus_lock = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 14, !dbg !4470
  %2 = load ptr, ptr %irq_bus_lock, align 8, !dbg !4470
  %tobool = icmp ne ptr %2, null, !dbg !4470
  %lnot = xor i1 %tobool, true, !dbg !4470
  %lnot1 = xor i1 %lnot, true, !dbg !4470
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4470
  %conv = sext i32 %lnot.ext to i64, !dbg !4470
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4470
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4470
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4472

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !4473
  %irq_data3 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, !dbg !4474
  %chip4 = getelementptr inbounds %struct.irq_data, ptr %irq_data3, i32 0, i32 4, !dbg !4475
  %4 = load ptr, ptr %chip4, align 8, !dbg !4475
  %irq_bus_lock5 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 14, !dbg !4476
  %5 = load ptr, ptr %irq_bus_lock5, align 8, !dbg !4476
  %6 = load ptr, ptr %desc.addr, align 8, !dbg !4477
  %irq_data6 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, !dbg !4478
  call void %5(ptr noundef %irq_data6) #19, !dbg !4473
  br label %if.end, !dbg !4473

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4479
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4480 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__irq_put_desc_unlock(ptr noundef %desc, i64 noundef %flags, i1 noundef zeroext %bus) #1 align 16 !dbg !4485 {
entry:
  %desc.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %bus.addr = alloca i8, align 1
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !4489, metadata !DIExpression()), !dbg !4496
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4490, metadata !DIExpression()), !dbg !4497
  %frombool = zext i1 %bus to i8
  store i8 %frombool, ptr %bus.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !4491, metadata !DIExpression()), !dbg !4498
  br label %do.body, !dbg !4499

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #20, !dbg !4500
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4492, metadata !DIExpression()), !dbg !4500
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #20, !dbg !4500
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4495, metadata !DIExpression()), !dbg !4500
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4500
  %conv = zext i1 %cmp to i32, !dbg !4500
  store i32 1, ptr %tmp, align 4, !dbg !4500
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #20, !dbg !4501
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #20, !dbg !4501
  %0 = load i32, ptr %tmp, align 4, !dbg !4500
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !4501
  %lock = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 15, !dbg !4501
  %2 = load i64, ptr %flags.addr, align 8, !dbg !4501
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %2) #19, !dbg !4501
  br label %do.end, !dbg !4501

do.end:                                           ; preds = %do.body
  %3 = load i8, ptr %bus.addr, align 1, !dbg !4502, !range !4445, !noundef !662
  %tobool = trunc i8 %3 to i1, !dbg !4502
  br i1 %tobool, label %if.then, label %if.end, !dbg !4504

if.then:                                          ; preds = %do.end
  %4 = load ptr, ptr %desc.addr, align 8, !dbg !4505
  call void @chip_bus_sync_unlock(ptr noundef %4) #19, !dbg !4506
  br label %if.end, !dbg !4506

if.end:                                           ; preds = %if.then, %do.end
  ret void, !dbg !4507
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4508 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @chip_bus_sync_unlock(ptr noundef %desc) #5 align 16 !dbg !4511 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !4513, metadata !DIExpression()), !dbg !4514
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !4515
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, !dbg !4515
  %chip = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 4, !dbg !4515
  %1 = load ptr, ptr %chip, align 8, !dbg !4515
  %irq_bus_sync_unlock = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 15, !dbg !4515
  %2 = load ptr, ptr %irq_bus_sync_unlock, align 8, !dbg !4515
  %tobool = icmp ne ptr %2, null, !dbg !4515
  %lnot = xor i1 %tobool, true, !dbg !4515
  %lnot1 = xor i1 %lnot, true, !dbg !4515
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4515
  %conv = sext i32 %lnot.ext to i64, !dbg !4515
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4515
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4515
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4517

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !4518
  %irq_data3 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, !dbg !4519
  %chip4 = getelementptr inbounds %struct.irq_data, ptr %irq_data3, i32 0, i32 4, !dbg !4520
  %4 = load ptr, ptr %chip4, align 8, !dbg !4520
  %irq_bus_sync_unlock5 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 15, !dbg !4521
  %5 = load ptr, ptr %irq_bus_sync_unlock5, align 8, !dbg !4521
  %6 = load ptr, ptr %desc.addr, align 8, !dbg !4522
  %irq_data6 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, !dbg !4523
  call void %5(ptr noundef %irq_data6) #19, !dbg !4518
  br label %if.end, !dbg !4518

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4524
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @irq_set_percpu_devid_partition(i32 noundef %irq, ptr noundef %affinity) #1 align 16 !dbg !4525 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %affinity.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !4529, metadata !DIExpression()), !dbg !4532
  store ptr %affinity, ptr %affinity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %affinity.addr, metadata !4530, metadata !DIExpression()), !dbg !4533
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #20, !dbg !4534
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4531, metadata !DIExpression()), !dbg !4535
  %0 = load i32, ptr %irq.addr, align 4, !dbg !4536
  %call = call ptr @irq_to_desc(i32 noundef %0) #19, !dbg !4537
  store ptr %call, ptr %desc, align 8, !dbg !4535
  %1 = load ptr, ptr %desc, align 8, !dbg !4538
  %tobool = icmp ne ptr %1, null, !dbg !4538
  br i1 %tobool, label %if.end, label %if.then, !dbg !4540

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4541

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %desc, align 8, !dbg !4542
  %percpu_enabled = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 16, !dbg !4544
  %3 = load ptr, ptr %percpu_enabled, align 8, !dbg !4544
  %tobool1 = icmp ne ptr %3, null, !dbg !4542
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !4545

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !4546
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4546

if.end3:                                          ; preds = %if.end
  %call4 = call noalias ptr @kzalloc(i64 noundef 8, i32 noundef 3264) #23, !dbg !4547
  %4 = load ptr, ptr %desc, align 8, !dbg !4548
  %percpu_enabled5 = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 16, !dbg !4549
  store ptr %call4, ptr %percpu_enabled5, align 8, !dbg !4550
  %5 = load ptr, ptr %desc, align 8, !dbg !4551
  %percpu_enabled6 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 16, !dbg !4553
  %6 = load ptr, ptr %percpu_enabled6, align 8, !dbg !4553
  %tobool7 = icmp ne ptr %6, null, !dbg !4551
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4554

if.then8:                                         ; preds = %if.end3
  store i32 -12, ptr %retval, align 4, !dbg !4555
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4555

if.end9:                                          ; preds = %if.end3
  %7 = load ptr, ptr %affinity.addr, align 8, !dbg !4556
  %tobool10 = icmp ne ptr %7, null, !dbg !4556
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !4558

if.then11:                                        ; preds = %if.end9
  %8 = load ptr, ptr %affinity.addr, align 8, !dbg !4559
  %9 = load ptr, ptr %desc, align 8, !dbg !4560
  %percpu_affinity = getelementptr inbounds %struct.irq_desc, ptr %9, i32 0, i32 17, !dbg !4561
  store ptr %8, ptr %percpu_affinity, align 16, !dbg !4562
  br label %if.end13, !dbg !4560

if.else:                                          ; preds = %if.end9
  %10 = load ptr, ptr %desc, align 8, !dbg !4563
  %percpu_affinity12 = getelementptr inbounds %struct.irq_desc, ptr %10, i32 0, i32 17, !dbg !4564
  store ptr @__cpu_possible_mask, ptr %percpu_affinity12, align 16, !dbg !4565
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  %11 = load i32, ptr %irq.addr, align 4, !dbg !4566
  call void @irq_set_percpu_devid_flags(i32 noundef %11) #19, !dbg !4567
  store i32 0, ptr %retval, align 4, !dbg !4568
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4568

cleanup:                                          ; preds = %if.end13, %if.then8, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #20, !dbg !4569
  %12 = load i32, ptr %retval, align 4, !dbg !4569
  ret i32 %12, !dbg !4569
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !4570 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4574, metadata !DIExpression()), !dbg !4576
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4575, metadata !DIExpression()), !dbg !4577
  %0 = load i64, ptr %size.addr, align 8, !dbg !4578
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4579
  %or = or i32 %1, 256, !dbg !4580
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #23, !dbg !4581
  ret ptr %call, !dbg !4582
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irq_set_percpu_devid_flags(i32 noundef %irq) #5 align 16 !dbg !4583 {
entry:
  %irq.addr = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !4585, metadata !DIExpression()), !dbg !4586
  %0 = load i32, ptr %irq.addr, align 4, !dbg !4587
  call void @irq_set_status_flags(i32 noundef %0, i64 noundef 202240) #19, !dbg !4588
  ret void, !dbg !4589
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @irq_set_percpu_devid(i32 noundef %irq) #1 align 16 !dbg !4590 {
entry:
  %irq.addr = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !4592, metadata !DIExpression()), !dbg !4593
  %0 = load i32, ptr %irq.addr, align 4, !dbg !4594
  %call = call i32 @irq_set_percpu_devid_partition(i32 noundef %0, ptr noundef null) #19, !dbg !4595
  ret i32 %call, !dbg !4596
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @irq_get_percpu_devid_partition(i32 noundef %irq, ptr noundef %affinity) #1 align 16 !dbg !4597 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %affinity.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !4601, metadata !DIExpression()), !dbg !4604
  store ptr %affinity, ptr %affinity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %affinity.addr, metadata !4602, metadata !DIExpression()), !dbg !4605
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #20, !dbg !4606
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4603, metadata !DIExpression()), !dbg !4607
  %0 = load i32, ptr %irq.addr, align 4, !dbg !4608
  %call = call ptr @irq_to_desc(i32 noundef %0) #19, !dbg !4609
  store ptr %call, ptr %desc, align 8, !dbg !4607
  %1 = load ptr, ptr %desc, align 8, !dbg !4610
  %tobool = icmp ne ptr %1, null, !dbg !4610
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4612

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %desc, align 8, !dbg !4613
  %percpu_enabled = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 16, !dbg !4614
  %3 = load ptr, ptr %percpu_enabled, align 8, !dbg !4614
  %tobool1 = icmp ne ptr %3, null, !dbg !4613
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4615

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !4616
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4616

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %affinity.addr, align 8, !dbg !4617
  %tobool2 = icmp ne ptr %4, null, !dbg !4617
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4619

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %affinity.addr, align 8, !dbg !4620
  %6 = load ptr, ptr %desc, align 8, !dbg !4621
  %percpu_affinity = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 17, !dbg !4622
  %7 = load ptr, ptr %percpu_affinity, align 16, !dbg !4622
  call void @cpumask_copy(ptr noundef %5, ptr noundef %7) #19, !dbg !4623
  br label %if.end4, !dbg !4623

if.end4:                                          ; preds = %if.then3, %if.end
  store i32 0, ptr %retval, align 4, !dbg !4624
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4624

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #20, !dbg !4625
  %8 = load i32, ptr %retval, align 4, !dbg !4625
  ret i32 %8, !dbg !4625
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_copy(ptr noundef %dstp, ptr noundef %srcp) #5 align 16 !dbg !4626 {
entry:
  %dstp.addr = alloca ptr, align 8
  %srcp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !4630, metadata !DIExpression()), !dbg !4632
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !4631, metadata !DIExpression()), !dbg !4633
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !4634
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !4634
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4634
  %1 = load ptr, ptr %srcp.addr, align 8, !dbg !4635
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !4635
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !4635
  call void @bitmap_copy(ptr noundef %arraydecay, ptr noundef %arraydecay2, i32 noundef 64) #19, !dbg !4636
  ret void, !dbg !4637
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @kstat_incr_irq_this_cpu(i32 noundef %irq) #1 align 16 !dbg !4638 {
entry:
  %irq.addr = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !4640, metadata !DIExpression()), !dbg !4641
  %0 = load i32, ptr %irq.addr, align 4, !dbg !4642
  %call = call ptr @irq_to_desc(i32 noundef %0) #19, !dbg !4643
  call void @kstat_incr_irqs_this_cpu(ptr noundef %call) #19, !dbg !4644
  ret void, !dbg !4645
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kstat_incr_irqs_this_cpu(ptr noundef %desc) #5 align 16 !dbg !4646 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !4648, metadata !DIExpression()), !dbg !4649
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !4650
  call void @__kstat_incr_irqs_this_cpu(ptr noundef %0) #19, !dbg !4651
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !4652
  %tot_count = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 9, !dbg !4653
  %2 = load i32, ptr %tot_count, align 8, !dbg !4654
  %inc = add i32 %2, 1, !dbg !4654
  store i32 %inc, ptr %tot_count, align 8, !dbg !4654
  ret void, !dbg !4655
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kstat_irqs_cpu(i32 noundef %irq, i32 noundef %cpu) #1 align 16 !dbg !4656 {
entry:
  %irq.addr = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %desc = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp3 = alloca ptr, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !4660, metadata !DIExpression()), !dbg !4668
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4661, metadata !DIExpression()), !dbg !4669
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #20, !dbg !4670
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4662, metadata !DIExpression()), !dbg !4671
  %0 = load i32, ptr %irq.addr, align 4, !dbg !4672
  %call = call ptr @irq_to_desc(i32 noundef %0) #19, !dbg !4673
  store ptr %call, ptr %desc, align 8, !dbg !4671
  %1 = load ptr, ptr %desc, align 8, !dbg !4674
  %tobool = icmp ne ptr %1, null, !dbg !4674
  br i1 %tobool, label %land.lhs.true, label %cond.false, !dbg !4675

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %desc, align 8, !dbg !4676
  %kstat_irqs = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 2, !dbg !4677
  %3 = load ptr, ptr %kstat_irqs, align 32, !dbg !4677
  %tobool1 = icmp ne ptr %3, null, !dbg !4676
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !4674

cond.true:                                        ; preds = %land.lhs.true
  br label %do.body, !dbg !4678

do.body:                                          ; preds = %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #20, !dbg !4679
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4663, metadata !DIExpression()), !dbg !4679
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4679
  %4 = load ptr, ptr %__vpp_verify, align 8, !dbg !4679
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #20, !dbg !4678
  br label %do.cond, !dbg !4679

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4679

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #20, !dbg !4680
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4666, metadata !DIExpression()), !dbg !4680
  %5 = load ptr, ptr %desc, align 8, !dbg !4680
  %kstat_irqs2 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 2, !dbg !4680
  %6 = load ptr, ptr %kstat_irqs2, align 32, !dbg !4680
  %7 = ptrtoint ptr %6 to i64, !dbg !4680
  store i64 %7, ptr %__ptr, align 8, !dbg !4680
  %8 = load i64, ptr %__ptr, align 8, !dbg !4680
  %9 = load i32, ptr %cpu.addr, align 4, !dbg !4680
  %idxprom = sext i32 %9 to i64, !dbg !4680
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4680
  %10 = load i64, ptr %arrayidx, align 8, !dbg !4680
  %add = add i64 %8, %10, !dbg !4680
  %11 = inttoptr i64 %add to ptr, !dbg !4680
  store ptr %11, ptr %tmp3, align 8, !dbg !4680
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #20, !dbg !4678
  %12 = load ptr, ptr %tmp3, align 8, !dbg !4680
  store ptr %12, ptr %tmp, align 8, !dbg !4679
  %13 = load ptr, ptr %tmp, align 8, !dbg !4678
  %14 = load i32, ptr %13, align 4, !dbg !4681
  br label %cond.end, !dbg !4674

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end, !dbg !4674

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi i32 [ %14, %do.end ], [ 0, %cond.false ], !dbg !4674
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #20, !dbg !4682
  ret i32 %cond, !dbg !4683
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kstat_irqs_usr(i32 noundef %irq) #1 align 16 !dbg !4684 {
entry:
  %irq.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !4686, metadata !DIExpression()), !dbg !4688
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #20, !dbg !4689
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !4687, metadata !DIExpression()), !dbg !4690
  call void @rcu_read_lock() #19, !dbg !4691
  %0 = load i32, ptr %irq.addr, align 4, !dbg !4692
  %call = call i32 @kstat_irqs(i32 noundef %0) #19, !dbg !4693
  store i32 %call, ptr %sum, align 4, !dbg !4694
  call void @rcu_read_unlock() #19, !dbg !4695
  %1 = load i32, ptr %sum, align 4, !dbg !4696
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #20, !dbg !4697
  ret i32 %1, !dbg !4698
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #8 align 16 !dbg !4699 {
entry:
  call void @__rcu_read_lock() #19, !dbg !4700
  br label %do.body, !dbg !4701

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4702

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4704

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4705

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4707
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstat_irqs(i32 noundef %irq) #1 align 16 !dbg !4708 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %desc = alloca ptr, align 8
  %sum = alloca i32, align 4
  %cpu = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__v = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %__v12 = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp16 = alloca ptr, align 8
  %tmp17 = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !4710, metadata !DIExpression()), !dbg !4727
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #20, !dbg !4728
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4711, metadata !DIExpression()), !dbg !4729
  %0 = load i32, ptr %irq.addr, align 4, !dbg !4730
  %call = call ptr @irq_to_desc(i32 noundef %0) #19, !dbg !4731
  store ptr %call, ptr %desc, align 8, !dbg !4729
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #20, !dbg !4732
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !4712, metadata !DIExpression()), !dbg !4733
  store i32 0, ptr %sum, align 4, !dbg !4733
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #20, !dbg !4734
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !4713, metadata !DIExpression()), !dbg !4735
  %1 = load ptr, ptr %desc, align 8, !dbg !4736
  %tobool = icmp ne ptr %1, null, !dbg !4736
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4738

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %desc, align 8, !dbg !4739
  %kstat_irqs = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 2, !dbg !4740
  %3 = load ptr, ptr %kstat_irqs, align 32, !dbg !4740
  %tobool1 = icmp ne ptr %3, null, !dbg !4739
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4741

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !4742
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4742

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %desc, align 8, !dbg !4743
  %call2 = call zeroext i1 @irq_settings_is_per_cpu_devid(ptr noundef %4) #19, !dbg !4744
  br i1 %call2, label %if.end8, label %land.lhs.true, !dbg !4745

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %desc, align 8, !dbg !4746
  %call3 = call zeroext i1 @irq_settings_is_per_cpu(ptr noundef %5) #19, !dbg !4747
  br i1 %call3, label %if.end8, label %land.lhs.true4, !dbg !4748

land.lhs.true4:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %desc, align 8, !dbg !4749
  %call5 = call zeroext i1 @irq_is_nmi(ptr noundef %6) #19, !dbg !4750
  br i1 %call5, label %if.end8, label %if.then6, !dbg !4751

if.then6:                                         ; preds = %land.lhs.true4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__v) #20, !dbg !4752
  call void @llvm.dbg.declare(metadata ptr %__v, metadata !4714, metadata !DIExpression()), !dbg !4752
  call void @__kcsan_disable_current() #19, !dbg !4753
  %7 = load ptr, ptr %desc, align 8, !dbg !4753
  %tot_count = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 9, !dbg !4753
  %8 = load i32, ptr %tot_count, align 8, !dbg !4753
  store i32 %8, ptr %tmp, align 4, !dbg !4753
  %9 = load i32, ptr %tmp, align 4, !dbg !4753
  store i32 %9, ptr %__v, align 4, !dbg !4752
  call void @__kcsan_enable_current() #19, !dbg !4752
  %10 = load i32, ptr %__v, align 4, !dbg !4752
  store i32 %10, ptr %tmp7, align 4, !dbg !4752
  call void @llvm.lifetime.end.p0(i64 4, ptr %__v) #20, !dbg !4755
  %11 = load i32, ptr %tmp7, align 4, !dbg !4752
  store i32 %11, ptr %retval, align 4, !dbg !4756
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4756

if.end8:                                          ; preds = %land.lhs.true4, %land.lhs.true, %if.end
  store i32 0, ptr %cpu, align 4, !dbg !4757
  br label %for.cond, !dbg !4757

for.cond:                                         ; preds = %for.inc, %if.end8
  %12 = load i32, ptr %cpu, align 4, !dbg !4758
  %conv = sext i32 %12 to i64, !dbg !4758
  %call9 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #19, !dbg !4758
  %conv10 = trunc i64 %call9 to i32, !dbg !4758
  store i32 %conv10, ptr %cpu, align 4, !dbg !4758
  %13 = load i32, ptr %cpu, align 4, !dbg !4758
  %cmp = icmp ult i32 %13, 64, !dbg !4758
  br i1 %cmp, label %for.body, label %for.end, !dbg !4757

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__v12) #20, !dbg !4759
  call void @llvm.dbg.declare(metadata ptr %__v12, metadata !4717, metadata !DIExpression()), !dbg !4759
  call void @__kcsan_disable_current() #19, !dbg !4760
  br label %do.body, !dbg !4761

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #20, !dbg !4762
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4721, metadata !DIExpression()), !dbg !4762
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4762
  %14 = load ptr, ptr %__vpp_verify, align 8, !dbg !4762
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #20, !dbg !4761
  br label %do.cond, !dbg !4762

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4762

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #20, !dbg !4763
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4725, metadata !DIExpression()), !dbg !4763
  %15 = load ptr, ptr %desc, align 8, !dbg !4763
  %kstat_irqs15 = getelementptr inbounds %struct.irq_desc, ptr %15, i32 0, i32 2, !dbg !4763
  %16 = load ptr, ptr %kstat_irqs15, align 32, !dbg !4763
  %17 = ptrtoint ptr %16 to i64, !dbg !4763
  store i64 %17, ptr %__ptr, align 8, !dbg !4763
  %18 = load i64, ptr %__ptr, align 8, !dbg !4763
  %19 = load i32, ptr %cpu, align 4, !dbg !4763
  %idxprom = sext i32 %19 to i64, !dbg !4763
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4763
  %20 = load i64, ptr %arrayidx, align 8, !dbg !4763
  %add = add i64 %18, %20, !dbg !4763
  %21 = inttoptr i64 %add to ptr, !dbg !4763
  store ptr %21, ptr %tmp16, align 8, !dbg !4763
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #20, !dbg !4761
  %22 = load ptr, ptr %tmp16, align 8, !dbg !4763
  store ptr %22, ptr %tmp14, align 8, !dbg !4762
  %23 = load ptr, ptr %tmp14, align 8, !dbg !4761
  %24 = load i32, ptr %23, align 4, !dbg !4760
  store i32 %24, ptr %tmp13, align 4, !dbg !4760
  %25 = load i32, ptr %tmp13, align 4, !dbg !4760
  store i32 %25, ptr %__v12, align 4, !dbg !4759
  call void @__kcsan_enable_current() #19, !dbg !4759
  %26 = load i32, ptr %__v12, align 4, !dbg !4759
  store i32 %26, ptr %tmp17, align 4, !dbg !4759
  call void @llvm.lifetime.end.p0(i64 4, ptr %__v12) #20, !dbg !4764
  %27 = load i32, ptr %tmp17, align 4, !dbg !4759
  %28 = load i32, ptr %sum, align 4, !dbg !4765
  %add18 = add i32 %28, %27, !dbg !4765
  store i32 %add18, ptr %sum, align 4, !dbg !4765
  br label %for.inc, !dbg !4766

for.inc:                                          ; preds = %do.end
  %29 = load i32, ptr %cpu, align 4, !dbg !4758
  %inc = add i32 %29, 1, !dbg !4758
  store i32 %inc, ptr %cpu, align 4, !dbg !4758
  br label %for.cond, !dbg !4758, !llvm.loop !4767

for.end:                                          ; preds = %for.cond
  %30 = load i32, ptr %sum, align 4, !dbg !4769
  store i32 %30, ptr %retval, align 4, !dbg !4770
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4770

cleanup:                                          ; preds = %for.end, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #20, !dbg !4771
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #20, !dbg !4771
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #20, !dbg !4771
  %31 = load i32, ptr %retval, align 4, !dbg !4771
  ret i32 %31, !dbg !4771
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #5 align 16 !dbg !4772 {
entry:
  br label %do.body, !dbg !4773

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4774

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #19, !dbg !4776
  br label %do.body1, !dbg !4777

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4778

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4780
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @alloc_bootmem_cpumask_var(ptr noundef %mask) #5 align 16 !dbg !4781 {
entry:
  %mask.addr = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !4786, metadata !DIExpression()), !dbg !4787
  ret void, !dbg !4788
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpulist_parse(ptr noundef %buf, ptr noundef %dstp) #5 align 16 !dbg !4789 {
entry:
  %buf.addr = alloca ptr, align 8
  %dstp.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4793, metadata !DIExpression()), !dbg !4795
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !4794, metadata !DIExpression()), !dbg !4796
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4797
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !4798
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !4798
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4798
  %2 = load i32, ptr @nr_cpu_ids, align 4, !dbg !4799
  %call = call i32 @bitmap_parselist(ptr noundef %0, ptr noundef %arraydecay, i32 noundef %2) #19, !dbg !4800
  ret i32 %call, !dbg !4801
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_set_cpu(i32 noundef %cpu, ptr noundef %dstp) #8 align 16 !dbg !4802 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4806, metadata !DIExpression()), !dbg !4808
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !4807, metadata !DIExpression()), !dbg !4809
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4810
  %call = call i32 @cpumask_check(i32 noundef %0) #19, !dbg !4811
  %conv = zext i32 %call to i64, !dbg !4811
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !4812
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !4812
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4812
  call void @set_bit(i64 noundef %conv, ptr noundef %arraydecay) #19, !dbg !4813
  ret void, !dbg !4814
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #8 align 16 !dbg !4815 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !4820, metadata !DIExpression()), !dbg !4821
  ret void, !dbg !4822
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4823 dso_local i32 @bitmap_parselist(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !4827 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4834, metadata !DIExpression()), !dbg !4836
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4835, metadata !DIExpression()), !dbg !4837
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4838
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4839
  %div = sdiv i64 %1, 64, !dbg !4839
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4840
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #19, !dbg !4841
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4842
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4843
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #19, !dbg !4844
  ret void, !dbg !4845
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #8 align 16 !dbg !4846 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4848, metadata !DIExpression()), !dbg !4849
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4850
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #19, !dbg !4851
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !4852
  ret i32 %1, !dbg !4853
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !4854 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4862, metadata !DIExpression()), !dbg !4864
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4863, metadata !DIExpression()), !dbg !4865
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4866
  %1 = load i64, ptr %size.addr, align 8, !dbg !4867
  %conv = trunc i64 %1 to i32, !dbg !4867
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #19, !dbg !4868
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4869
  %3 = load i64, ptr %size.addr, align 8, !dbg !4869
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #19, !dbg !4869
  ret void, !dbg !4870
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !4871 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4874, metadata !DIExpression()), !dbg !4876
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4875, metadata !DIExpression()), !dbg !4877
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4878
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4880
  br i1 %1, label %if.then, label %if.else, !dbg !4881

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !4882
  %3 = load i64, ptr %nr.addr, align 8, !dbg !4882
  %shr = ashr i64 %3, 3, !dbg !4882
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !4882
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4884
  %and = and i64 %4, 7, !dbg !4884
  %sh_prom = trunc i64 %and to i32, !dbg !4884
  %shl = shl i32 1, %sh_prom, !dbg !4884
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #20, !dbg !4885, !srcloc !4886
  br label %if.end, !dbg !4887

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4888
  %6 = load i64, ptr %nr.addr, align 8, !dbg !4890
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #20, !dbg !4891, !srcloc !4892
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4893
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !4894 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4899, metadata !DIExpression()), !dbg !4901
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4900, metadata !DIExpression()), !dbg !4902
  ret i1 true, !dbg !4903
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !4904 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4909, metadata !DIExpression()), !dbg !4912
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4910, metadata !DIExpression()), !dbg !4913
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4911, metadata !DIExpression()), !dbg !4914
  ret void, !dbg !4915
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #8 align 16 !dbg !4916 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4918, metadata !DIExpression()), !dbg !4920
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !4919, metadata !DIExpression()), !dbg !4921
  ret void, !dbg !4922
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4923 dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irq_sysfs_add(i32 noundef %irq, ptr noundef %desc) #1 align 16 !dbg !4926 {
entry:
  %irq.addr = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !4930, metadata !DIExpression()), !dbg !4932
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !4931, metadata !DIExpression()), !dbg !4933
  %0 = load ptr, ptr @irq_kobj_base, align 8, !dbg !4934
  %tobool = icmp ne ptr %0, null, !dbg !4934
  br i1 %tobool, label %if.then, label %if.end4, !dbg !4936

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !4937
  %kobj = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 30, !dbg !4940
  %2 = load ptr, ptr @irq_kobj_base, align 8, !dbg !4941
  %3 = load i32, ptr %irq.addr, align 4, !dbg !4942
  %call = call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %kobj, ptr noundef %2, ptr noundef @.str.4, i32 noundef %3) #19, !dbg !4943
  %tobool1 = icmp ne i32 %call, 0, !dbg !4943
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !4944

if.then2:                                         ; preds = %if.then
  br label %do.body, !dbg !4945

do.body:                                          ; preds = %if.then2
  br label %do.end, !dbg !4947

do.end:                                           ; preds = %do.body
  %4 = load i32, ptr %irq.addr, align 4, !dbg !4945
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i32 noundef %4) #22, !dbg !4945
  store i32 %call3, ptr %tmp, align 4, !dbg !4947
  %5 = load i32, ptr %tmp, align 4, !dbg !4945
  br label %if.end, !dbg !4949

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr %desc.addr, align 8, !dbg !4950
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 6, !dbg !4951
  %7 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 4, !dbg !4952
  %or = or i32 %7, 16384, !dbg !4952
  store i32 %or, ptr %core_internal_state__do_not_mess_with_it, align 4, !dbg !4952
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  br label %if.end4, !dbg !4953

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !4954
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4955 dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #5 align 16 !dbg !4958 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4965, metadata !DIExpression()), !dbg !4970
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4966, metadata !DIExpression()), !dbg !4971
  %0 = load i64, ptr %size.addr, align 8, !dbg !4972
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4972
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !4972

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4972
  %cmp = icmp ule i64 %2, 64, !dbg !4972
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !4972

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !4972
  %cmp2 = icmp ugt i64 %3, 0, !dbg !4972
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4973

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #20, !dbg !4974
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4967, metadata !DIExpression()), !dbg !4975
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !4976
  %5 = load i64, ptr %4, align 8, !dbg !4977
  %6 = load i64, ptr %size.addr, align 8, !dbg !4978
  %sub = sub i64 %6, 1, !dbg !4978
  %sub3 = sub i64 63, %sub, !dbg !4978
  %shr = lshr i64 -1, %sub3, !dbg !4978
  %and = and i64 -1, %shr, !dbg !4978
  %add = add i64 0, %and, !dbg !4978
  %and4 = and i64 %5, %add, !dbg !4979
  store i64 %and4, ptr %val, align 8, !dbg !4975
  %7 = load i64, ptr %val, align 8, !dbg !4980
  %tobool = icmp ne i64 %7, 0, !dbg !4980
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !4980

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !4981
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !4981
  br i1 %9, label %cond.true5, label %cond.false, !dbg !4981

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !4981
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !4981
  %cast = trunc i64 %11 to i32, !dbg !4981
  %conv = sext i32 %cast to i64, !dbg !4981
  br label %cond.end, !dbg !4981

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !4981
  %call = call i64 @variable__ffs(i64 noundef %12) #19, !dbg !4981
  br label %cond.end, !dbg !4981

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !4981
  br label %cond.end7, !dbg !4980

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !4982
  br label %cond.end7, !dbg !4980

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !4980
  store i64 %cond8, ptr %retval, align 8, !dbg !4983
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #20, !dbg !4984
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !4985
  %15 = load i64, ptr %size.addr, align 8, !dbg !4986
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #19, !dbg !4987
  store i64 %call9, ptr %retval, align 8, !dbg !4988
  br label %return, !dbg !4988

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !4989
  ret i64 %16, !dbg !4989
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #8 align 16 !dbg !4990 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !4994, metadata !DIExpression()), !dbg !4995
  %0 = load i64, ptr %word.addr, align 8, !dbg !4996
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #21, !dbg !4997, !srcloc !4998
  store i64 %1, ptr %word.addr, align 8, !dbg !4997
  %2 = load i64, ptr %word.addr, align 8, !dbg !4999
  ret i64 %2, !dbg !5000
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5001 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_available(ptr noundef %mask) #5 align 16 !dbg !5002 {
entry:
  %mask.addr = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5006, metadata !DIExpression()), !dbg !5007
  ret i1 true, !dbg !5008
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @zalloc_cpumask_var(ptr noundef %mask, i32 noundef %flags) #5 align 16 !dbg !5009 {
entry:
  %mask.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5013, metadata !DIExpression()), !dbg !5015
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5014, metadata !DIExpression()), !dbg !5016
  %0 = load ptr, ptr %mask.addr, align 8, !dbg !5017
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %0, i64 0, i64 0, !dbg !5018
  call void @cpumask_clear(ptr noundef %arraydecay) #19, !dbg !5019
  ret i1 true, !dbg !5020
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_empty(ptr noundef %srcp) #5 align 16 !dbg !5021 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !5025, metadata !DIExpression()), !dbg !5026
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !5027
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !5027
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5027
  %call = call zeroext i1 @bitmap_empty(ptr noundef %arraydecay, i32 noundef 64) #19, !dbg !5028
  ret i1 %call, !dbg !5029
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_setall(ptr noundef %dstp) #5 align 16 !dbg !5030 {
entry:
  %dstp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !5034, metadata !DIExpression()), !dbg !5035
  %0 = load i32, ptr @nr_cpu_ids, align 4, !dbg !5036
  %sub = sub i32 0, %0, !dbg !5036
  %and = and i32 %sub, 63, !dbg !5036
  %sh_prom = zext i32 %and to i64, !dbg !5036
  %shr = lshr i64 -1, %sh_prom, !dbg !5036
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !5039
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !5039
  %arrayidx = getelementptr [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5039
  store i64 %shr, ptr %arrayidx, align 8, !dbg !5040
  ret void, !dbg !5041
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_clear(ptr noundef %dstp) #5 align 16 !dbg !5042 {
entry:
  %dstp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !5044, metadata !DIExpression()), !dbg !5045
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !5046
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !5046
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5046
  call void @bitmap_zero(ptr noundef %arraydecay, i32 noundef 64) #19, !dbg !5047
  ret void, !dbg !5048
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_zero(ptr noundef %dst, i32 noundef %nbits) #5 align 16 !dbg !5049 {
entry:
  %dst.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5053, metadata !DIExpression()), !dbg !5056
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !5054, metadata !DIExpression()), !dbg !5057
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #20, !dbg !5058
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5055, metadata !DIExpression()), !dbg !5059
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !5060
  %add = add i32 %0, 63, !dbg !5060
  %and = and i32 %add, -64, !dbg !5060
  %div = udiv i32 %and, 8, !dbg !5060
  store i32 %div, ptr %len, align 4, !dbg !5059
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !5061
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !5061
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !5061

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !5061
  %cmp = icmp ule i32 %3, 64, !dbg !5061
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !5061

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !5061
  %cmp2 = icmp ugt i32 %4, 0, !dbg !5061
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5063

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !5064
  store i64 0, ptr %5, align 8, !dbg !5065
  br label %if.end, !dbg !5066

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !5067
  %7 = load i32, ptr %len, align 4, !dbg !5068
  %conv = zext i32 %7 to i64, !dbg !5068
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %conv, i1 false), !dbg !5069
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #20, !dbg !5070
  ret void, !dbg !5070
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_empty(ptr noundef %src, i32 noundef %nbits) #5 align 16 !dbg !5071 {
entry:
  %retval = alloca i1, align 1
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5075, metadata !DIExpression()), !dbg !5077
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !5076, metadata !DIExpression()), !dbg !5078
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !5079
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5079
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !5079

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !5079
  %cmp = icmp ule i32 %2, 64, !dbg !5079
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !5079

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !5079
  %cmp2 = icmp ugt i32 %3, 0, !dbg !5079
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5081

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !5082
  %5 = load i64, ptr %4, align 8, !dbg !5083
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !5084
  %sub = sub i32 0, %6, !dbg !5084
  %and = and i32 %sub, 63, !dbg !5084
  %sh_prom = zext i32 %and to i64, !dbg !5084
  %shr = lshr i64 -1, %sh_prom, !dbg !5084
  %and3 = and i64 %5, %shr, !dbg !5085
  %tobool = icmp ne i64 %and3, 0, !dbg !5086
  %lnot = xor i1 %tobool, true, !dbg !5086
  store i1 %lnot, ptr %retval, align 1, !dbg !5087
  br label %return, !dbg !5087

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !5088
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !5089
  %conv = zext i32 %8 to i64, !dbg !5089
  %call = call i64 @find_first_bit(ptr noundef %7, i64 noundef %conv) #19, !dbg !5090
  %9 = load i32, ptr %nbits.addr, align 4, !dbg !5091
  %conv4 = zext i32 %9 to i64, !dbg !5091
  %cmp5 = icmp eq i64 %call, %conv4, !dbg !5092
  store i1 %cmp5, ptr %retval, align 1, !dbg !5093
  br label %return, !dbg !5093

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, ptr %retval, align 1, !dbg !5094
  ret i1 %10, !dbg !5094
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc_node(i64 noundef %size, i32 noundef %flags, i32 noundef %node) #10 align 16 !dbg !5095 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5099, metadata !DIExpression()), !dbg !5102
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5100, metadata !DIExpression()), !dbg !5103
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5101, metadata !DIExpression()), !dbg !5104
  %0 = load i64, ptr %size.addr, align 8, !dbg !5105
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5106
  %or = or i32 %1, 256, !dbg !5107
  %2 = load i32, ptr %node.addr, align 4, !dbg !5108
  %call = call noalias ptr @kmalloc_node(i64 noundef %0, i32 noundef %or, i32 noundef %2) #23, !dbg !5109
  ret ptr %call, !dbg !5110
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5111 dso_local noalias ptr @__alloc_percpu(i64 noundef, i64 noundef) #13

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @alloc_masks(ptr noundef %desc, i32 noundef %node) #1 align 16 !dbg !5115 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  %node.addr = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5119, metadata !DIExpression()), !dbg !5121
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5120, metadata !DIExpression()), !dbg !5122
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !5123
  %irq_common_data = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 0, !dbg !5125
  %affinity = getelementptr inbounds %struct.irq_common_data, ptr %irq_common_data, i32 0, i32 4, !dbg !5126
  %1 = load i32, ptr %node.addr, align 4, !dbg !5127
  %call = call zeroext i1 @zalloc_cpumask_var_node(ptr noundef %affinity, i32 noundef 3264, i32 noundef %1) #19, !dbg !5128
  br i1 %call, label %if.end, label %if.then, !dbg !5129

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5130
  br label %return, !dbg !5130

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !5131
  %irq_common_data1 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 0, !dbg !5133
  %effective_affinity = getelementptr inbounds %struct.irq_common_data, ptr %irq_common_data1, i32 0, i32 5, !dbg !5134
  %3 = load i32, ptr %node.addr, align 4, !dbg !5135
  %call2 = call zeroext i1 @zalloc_cpumask_var_node(ptr noundef %effective_affinity, i32 noundef 3264, i32 noundef %3) #19, !dbg !5136
  br i1 %call2, label %if.end6, label %if.then3, !dbg !5137

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %desc.addr, align 8, !dbg !5138
  %irq_common_data4 = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 0, !dbg !5140
  %affinity5 = getelementptr inbounds %struct.irq_common_data, ptr %irq_common_data4, i32 0, i32 4, !dbg !5141
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %affinity5, i64 0, i64 0, !dbg !5138
  call void @free_cpumask_var(ptr noundef %arraydecay) #19, !dbg !5142
  store i32 -12, ptr %retval, align 4, !dbg !5143
  br label %return, !dbg !5143

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %desc.addr, align 8, !dbg !5144
  %pending_mask = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 20, !dbg !5146
  %6 = load i32, ptr %node.addr, align 4, !dbg !5147
  %call7 = call zeroext i1 @zalloc_cpumask_var_node(ptr noundef %pending_mask, i32 noundef 3264, i32 noundef %6) #19, !dbg !5148
  br i1 %call7, label %if.end15, label %if.then8, !dbg !5149

if.then8:                                         ; preds = %if.end6
  %7 = load ptr, ptr %desc.addr, align 8, !dbg !5150
  %irq_common_data9 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 0, !dbg !5152
  %effective_affinity10 = getelementptr inbounds %struct.irq_common_data, ptr %irq_common_data9, i32 0, i32 5, !dbg !5153
  %arraydecay11 = getelementptr inbounds [1 x %struct.cpumask], ptr %effective_affinity10, i64 0, i64 0, !dbg !5150
  call void @free_cpumask_var(ptr noundef %arraydecay11) #19, !dbg !5154
  %8 = load ptr, ptr %desc.addr, align 8, !dbg !5155
  %irq_common_data12 = getelementptr inbounds %struct.irq_desc, ptr %8, i32 0, i32 0, !dbg !5156
  %affinity13 = getelementptr inbounds %struct.irq_common_data, ptr %irq_common_data12, i32 0, i32 4, !dbg !5157
  %arraydecay14 = getelementptr inbounds [1 x %struct.cpumask], ptr %affinity13, i64 0, i64 0, !dbg !5155
  call void @free_cpumask_var(ptr noundef %arraydecay14) #19, !dbg !5158
  store i32 -12, ptr %retval, align 4, !dbg !5159
  br label %return, !dbg !5159

if.end15:                                         ; preds = %if.end6
  store i32 0, ptr %retval, align 4, !dbg !5160
  br label %return, !dbg !5160

return:                                           ; preds = %if.end15, %if.then8, %if.then3, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !5161
  ret i32 %9, !dbg !5161
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5162 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_rcu_head(ptr noundef %head) #5 align 16 !dbg !5166 {
entry:
  %head.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5168, metadata !DIExpression()), !dbg !5169
  ret void, !dbg !5170
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5171 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @desc_set_defaults(i32 noundef %irq, ptr noundef %desc, i32 noundef %node, ptr noundef %affinity, ptr noundef %owner) #1 align 16 !dbg !5175 {
entry:
  %irq.addr = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  %node.addr = alloca i32, align 4
  %affinity.addr = alloca ptr, align 8
  %owner.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp12 = alloca ptr, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !5179, metadata !DIExpression()), !dbg !5192
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5180, metadata !DIExpression()), !dbg !5193
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5181, metadata !DIExpression()), !dbg !5194
  store ptr %affinity, ptr %affinity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %affinity.addr, metadata !5182, metadata !DIExpression()), !dbg !5195
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !5183, metadata !DIExpression()), !dbg !5196
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #20, !dbg !5197
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !5184, metadata !DIExpression()), !dbg !5198
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !5199
  %irq_common_data = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 0, !dbg !5200
  %handler_data = getelementptr inbounds %struct.irq_common_data, ptr %irq_common_data, i32 0, i32 2, !dbg !5201
  store ptr null, ptr %handler_data, align 8, !dbg !5202
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !5203
  %irq_common_data1 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 0, !dbg !5204
  %msi_desc = getelementptr inbounds %struct.irq_common_data, ptr %irq_common_data1, i32 0, i32 3, !dbg !5205
  store ptr null, ptr %msi_desc, align 16, !dbg !5206
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !5207
  %irq_common_data2 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 0, !dbg !5208
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !5209
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, !dbg !5210
  %common = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 3, !dbg !5211
  store ptr %irq_common_data2, ptr %common, align 8, !dbg !5212
  %4 = load i32, ptr %irq.addr, align 4, !dbg !5213
  %5 = load ptr, ptr %desc.addr, align 8, !dbg !5214
  %irq_data3 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 1, !dbg !5215
  %irq4 = getelementptr inbounds %struct.irq_data, ptr %irq_data3, i32 0, i32 1, !dbg !5216
  store i32 %4, ptr %irq4, align 4, !dbg !5217
  %6 = load ptr, ptr %desc.addr, align 8, !dbg !5218
  %irq_data5 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, !dbg !5219
  %chip = getelementptr inbounds %struct.irq_data, ptr %irq_data5, i32 0, i32 4, !dbg !5220
  store ptr @no_irq_chip, ptr %chip, align 8, !dbg !5221
  %7 = load ptr, ptr %desc.addr, align 8, !dbg !5222
  %irq_data6 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 1, !dbg !5223
  %chip_data = getelementptr inbounds %struct.irq_data, ptr %irq_data6, i32 0, i32 7, !dbg !5224
  store ptr null, ptr %chip_data, align 8, !dbg !5225
  %8 = load ptr, ptr %desc.addr, align 8, !dbg !5226
  call void @irq_settings_clr_and_set(ptr noundef %8, i32 noundef -1, i32 noundef 0) #19, !dbg !5227
  %9 = load ptr, ptr %desc.addr, align 8, !dbg !5228
  %irq_data7 = getelementptr inbounds %struct.irq_desc, ptr %9, i32 0, i32 1, !dbg !5229
  call void @irqd_set(ptr noundef %irq_data7, i32 noundef 65536) #19, !dbg !5230
  %10 = load ptr, ptr %desc.addr, align 8, !dbg !5231
  %irq_data8 = getelementptr inbounds %struct.irq_desc, ptr %10, i32 0, i32 1, !dbg !5232
  call void @irqd_set(ptr noundef %irq_data8, i32 noundef 131072) #19, !dbg !5233
  %11 = load ptr, ptr %desc.addr, align 8, !dbg !5234
  %handle_irq = getelementptr inbounds %struct.irq_desc, ptr %11, i32 0, i32 3, !dbg !5235
  store ptr @handle_bad_irq, ptr %handle_irq, align 8, !dbg !5236
  %12 = load ptr, ptr %desc.addr, align 8, !dbg !5237
  %depth = getelementptr inbounds %struct.irq_desc, ptr %12, i32 0, i32 7, !dbg !5238
  store i32 1, ptr %depth, align 64, !dbg !5239
  %13 = load ptr, ptr %desc.addr, align 8, !dbg !5240
  %irq_count = getelementptr inbounds %struct.irq_desc, ptr %13, i32 0, i32 10, !dbg !5241
  store i32 0, ptr %irq_count, align 4, !dbg !5242
  %14 = load ptr, ptr %desc.addr, align 8, !dbg !5243
  %irqs_unhandled = getelementptr inbounds %struct.irq_desc, ptr %14, i32 0, i32 12, !dbg !5244
  store i32 0, ptr %irqs_unhandled, align 8, !dbg !5245
  %15 = load ptr, ptr %desc.addr, align 8, !dbg !5246
  %tot_count = getelementptr inbounds %struct.irq_desc, ptr %15, i32 0, i32 9, !dbg !5247
  store i32 0, ptr %tot_count, align 8, !dbg !5248
  %16 = load ptr, ptr %desc.addr, align 8, !dbg !5249
  %name = getelementptr inbounds %struct.irq_desc, ptr %16, i32 0, i32 34, !dbg !5250
  store ptr null, ptr %name, align 16, !dbg !5251
  %17 = load ptr, ptr %owner.addr, align 8, !dbg !5252
  %18 = load ptr, ptr %desc.addr, align 8, !dbg !5253
  %owner9 = getelementptr inbounds %struct.irq_desc, ptr %18, i32 0, i32 33, !dbg !5254
  store ptr %17, ptr %owner9, align 8, !dbg !5255
  store i32 0, ptr %cpu, align 4, !dbg !5256
  br label %for.cond, !dbg !5256

for.cond:                                         ; preds = %for.inc, %entry
  %19 = load i32, ptr %cpu, align 4, !dbg !5257
  %conv = sext i32 %19 to i64, !dbg !5257
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #19, !dbg !5257
  %conv10 = trunc i64 %call to i32, !dbg !5257
  store i32 %conv10, ptr %cpu, align 4, !dbg !5257
  %20 = load i32, ptr %cpu, align 4, !dbg !5257
  %cmp = icmp ult i32 %20, 64, !dbg !5257
  br i1 %cmp, label %for.body, label %for.end, !dbg !5256

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !5258

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #20, !dbg !5259
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5185, metadata !DIExpression()), !dbg !5259
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5259
  %21 = load ptr, ptr %__vpp_verify, align 8, !dbg !5259
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #20, !dbg !5258
  br label %do.cond, !dbg !5259

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5259

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #20, !dbg !5260
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5190, metadata !DIExpression()), !dbg !5260
  %22 = load ptr, ptr %desc.addr, align 8, !dbg !5260
  %kstat_irqs = getelementptr inbounds %struct.irq_desc, ptr %22, i32 0, i32 2, !dbg !5260
  %23 = load ptr, ptr %kstat_irqs, align 32, !dbg !5260
  %24 = ptrtoint ptr %23 to i64, !dbg !5260
  store i64 %24, ptr %__ptr, align 8, !dbg !5260
  %25 = load i64, ptr %__ptr, align 8, !dbg !5260
  %26 = load i32, ptr %cpu, align 4, !dbg !5260
  %idxprom = sext i32 %26 to i64, !dbg !5260
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5260
  %27 = load i64, ptr %arrayidx, align 8, !dbg !5260
  %add = add i64 %25, %27, !dbg !5260
  %28 = inttoptr i64 %add to ptr, !dbg !5260
  store ptr %28, ptr %tmp12, align 8, !dbg !5260
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #20, !dbg !5258
  %29 = load ptr, ptr %tmp12, align 8, !dbg !5260
  store ptr %29, ptr %tmp, align 8, !dbg !5259
  %30 = load ptr, ptr %tmp, align 8, !dbg !5258
  store i32 0, ptr %30, align 4, !dbg !5261
  br label %for.inc, !dbg !5262

for.inc:                                          ; preds = %do.end
  %31 = load i32, ptr %cpu, align 4, !dbg !5257
  %inc = add i32 %31, 1, !dbg !5257
  store i32 %inc, ptr %cpu, align 4, !dbg !5257
  br label %for.cond, !dbg !5257, !llvm.loop !5263

for.end:                                          ; preds = %for.cond
  %32 = load ptr, ptr %desc.addr, align 8, !dbg !5265
  %33 = load i32, ptr %node.addr, align 4, !dbg !5266
  %34 = load ptr, ptr %affinity.addr, align 8, !dbg !5267
  call void @desc_smp_init(ptr noundef %32, i32 noundef %33, ptr noundef %34) #19, !dbg !5268
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #20, !dbg !5269
  ret void, !dbg !5269
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irqd_set(ptr noundef %d, i32 noundef %mask) #5 align 16 !dbg !5270 {
entry:
  %d.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !5272, metadata !DIExpression()), !dbg !5274
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5273, metadata !DIExpression()), !dbg !5275
  %0 = load i32, ptr %mask.addr, align 4, !dbg !5276
  %1 = load ptr, ptr %d.addr, align 8, !dbg !5277
  %common = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 3, !dbg !5277
  %2 = load ptr, ptr %common, align 8, !dbg !5277
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %2, i32 0, i32 0, !dbg !5277
  %3 = load i32, ptr %state_use_accessors, align 8, !dbg !5278
  %or = or i32 %3, %0, !dbg !5278
  store i32 %or, ptr %state_use_accessors, align 8, !dbg !5278
  ret void, !dbg !5279
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5280 dso_local void @kobject_init(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5283 dso_local void @irq_resend_init(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5284 dso_local void @free_percpu(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5285 dso_local void @kfree(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc_node(i64 noundef %size, i32 noundef %flags, i32 noundef %node) #15 align 16 !dbg !5288 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5290, metadata !DIExpression()), !dbg !5296
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5291, metadata !DIExpression()), !dbg !5297
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5292, metadata !DIExpression()), !dbg !5298
  %0 = load i64, ptr %size.addr, align 8, !dbg !5299
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5300
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5301

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5302
  %tobool = icmp ne i64 %2, 0, !dbg !5302
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5303

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #20, !dbg !5304
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5293, metadata !DIExpression()), !dbg !5305
  %3 = load i64, ptr %size.addr, align 8, !dbg !5306
  %cmp = icmp ugt i64 %3, 8192, !dbg !5308
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5309

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5310
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5311
  %6 = load i32, ptr %node.addr, align 4, !dbg !5312
  %call = call noalias align 4096 ptr @kmalloc_large_node(i64 noundef %4, i32 noundef %5, i32 noundef %6) #23, !dbg !5313
  store ptr %call, ptr %retval, align 8, !dbg !5314
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5314

if.end:                                           ; preds = %if.then
  %7 = load i64, ptr %size.addr, align 8, !dbg !5315
  %call2 = call i32 @__kmalloc_index(i64 noundef %7, i1 noundef zeroext true) #19, !dbg !5315
  store i32 %call2, ptr %index, align 4, !dbg !5316
  %8 = load i32, ptr %flags.addr, align 4, !dbg !5317
  %9 = call ptr @llvm.returnaddress(i32 0), !dbg !5318
  %10 = ptrtoint ptr %9 to i64, !dbg !5318
  %call3 = call i32 @kmalloc_type(i32 noundef %8, i64 noundef %10) #19, !dbg !5319
  %idxprom = zext i32 %call3 to i64, !dbg !5320
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5320
  %11 = load i32, ptr %index, align 4, !dbg !5321
  %idxprom4 = zext i32 %11 to i64, !dbg !5320
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5320
  %12 = load ptr, ptr %arrayidx5, align 8, !dbg !5320
  %13 = load i32, ptr %flags.addr, align 4, !dbg !5322
  %14 = load i32, ptr %node.addr, align 4, !dbg !5323
  %15 = load i64, ptr %size.addr, align 8, !dbg !5324
  %call6 = call noalias align 8 ptr @kmalloc_node_trace(ptr noundef %12, i32 noundef %13, i32 noundef %14, i64 noundef %15) #24, !dbg !5325
  store ptr %call6, ptr %retval, align 8, !dbg !5326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5326

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #20, !dbg !5327
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %16 = load i64, ptr %size.addr, align 8, !dbg !5328
  %17 = load i32, ptr %flags.addr, align 4, !dbg !5329
  %18 = load i32, ptr %node.addr, align 4, !dbg !5330
  %call8 = call noalias align 8 ptr @__kmalloc_node(i64 noundef %16, i32 noundef %17, i32 noundef %18) #23, !dbg !5331
  store ptr %call8, ptr %retval, align 8, !dbg !5332
  br label %return, !dbg !5332

return:                                           ; preds = %if.end7, %cleanup
  %19 = load ptr, ptr %retval, align 8, !dbg !5333
  ret ptr %19, !dbg !5333
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5334 dso_local noalias ptr @kmalloc_large_node(i64 noundef, i32 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !5335 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5339, metadata !DIExpression()), !dbg !5341
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5340, metadata !DIExpression()), !dbg !5342
  %0 = load i64, ptr %size.addr, align 8, !dbg !5343
  %tobool = icmp ne i64 %0, 0, !dbg !5343
  br i1 %tobool, label %if.end, label %if.then, !dbg !5345

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5346
  br label %return, !dbg !5346

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5347
  %cmp = icmp ule i64 %1, 8, !dbg !5349
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5350

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5351
  br label %return, !dbg !5351

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5352
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5354
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5355

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5356
  %cmp4 = icmp ule i64 %3, 96, !dbg !5357
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5358

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5359
  br label %return, !dbg !5359

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5360
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5362
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5363

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5364
  %cmp9 = icmp ule i64 %5, 192, !dbg !5365
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5366

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5367
  br label %return, !dbg !5367

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5368
  %cmp12 = icmp ule i64 %6, 8, !dbg !5370
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5371

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5372
  br label %return, !dbg !5372

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5373
  %cmp15 = icmp ule i64 %7, 16, !dbg !5375
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5376

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5377
  br label %return, !dbg !5377

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5378
  %cmp18 = icmp ule i64 %8, 32, !dbg !5380
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5381

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5382
  br label %return, !dbg !5382

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5383
  %cmp21 = icmp ule i64 %9, 64, !dbg !5385
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5386

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5387
  br label %return, !dbg !5387

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5388
  %cmp24 = icmp ule i64 %10, 128, !dbg !5390
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5391

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5392
  br label %return, !dbg !5392

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5393
  %cmp27 = icmp ule i64 %11, 256, !dbg !5395
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5396

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5397
  br label %return, !dbg !5397

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5398
  %cmp30 = icmp ule i64 %12, 512, !dbg !5400
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5401

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5402
  br label %return, !dbg !5402

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5403
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5405
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5406

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5407
  br label %return, !dbg !5407

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5408
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5410
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5411

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5412
  br label %return, !dbg !5412

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5413
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5415
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5416

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5417
  br label %return, !dbg !5417

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5418
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5420
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5421

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5422
  br label %return, !dbg !5422

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5423
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5425
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5426

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5427
  br label %return, !dbg !5427

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5428
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5430
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5431

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5432
  br label %return, !dbg !5432

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5433
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5435
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5436

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5437
  br label %return, !dbg !5437

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5438
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5440
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5441

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5442
  br label %return, !dbg !5442

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5443
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5445
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5446

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5447
  br label %return, !dbg !5447

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5448
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5450
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5451

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5452
  br label %return, !dbg !5452

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5453
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5455
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5456

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5457
  br label %return, !dbg !5457

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5458
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5460
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5461

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5462
  br label %return, !dbg !5462

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5463, !range !4445, !noundef !662
  %tobool69 = trunc i8 %25 to i1, !dbg !5463
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5465

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5466

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #25, !dbg !5467, !srcloc !5470
  unreachable, !dbg !5467

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5471

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5472

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5473

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5475

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5473

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.9, i32 480, i32 0, i64 12) #20, !dbg !5477, !srcloc !5479
  br label %do.end75, !dbg !5477

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5473

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5480
  br label %return, !dbg !5480

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5481
  ret i32 %26, !dbg !5481
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(3)
declare !dbg !5482 dso_local noalias ptr @kmalloc_node_trace(ptr noundef, i32 noundef, i32 noundef, i64 noundef) #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !5488 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5492, metadata !DIExpression()), !dbg !5494
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5493, metadata !DIExpression()), !dbg !5495
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5496
  %and = and i32 %0, 17, !dbg !5496
  %cmp = icmp eq i32 %and, 0, !dbg !5496
  %lnot = xor i1 %cmp, true, !dbg !5496
  %lnot1 = xor i1 %lnot, true, !dbg !5496
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5496
  %conv = sext i32 %lnot.ext to i64, !dbg !5496
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5496
  %tobool = icmp ne i64 %expval, 0, !dbg !5496
  br i1 %tobool, label %if.then, label %if.end, !dbg !5498

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5499
  br label %return, !dbg !5499

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5500
  %and2 = and i32 %1, 1, !dbg !5502
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5502
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5503

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5504
  br label %return, !dbg !5504

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5505
  br label %return, !dbg !5505

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5507
  ret i32 %2, !dbg !5507
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5508 dso_local noalias ptr @__kmalloc_node(i64 noundef, i32 noundef, i32 noundef) #13

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5509 dso_local void @__compiletime_assert_117() #17

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @zalloc_cpumask_var_node(ptr noundef %mask, i32 noundef %flags, i32 noundef %node) #5 align 16 !dbg !5510 {
entry:
  %mask.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5514, metadata !DIExpression()), !dbg !5517
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5515, metadata !DIExpression()), !dbg !5518
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5516, metadata !DIExpression()), !dbg !5519
  %0 = load ptr, ptr %mask.addr, align 8, !dbg !5520
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %0, i64 0, i64 0, !dbg !5521
  call void @cpumask_clear(ptr noundef %arraydecay) #19, !dbg !5522
  ret i1 true, !dbg !5523
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_cpumask_var(ptr noundef %mask) #5 align 16 !dbg !5524 {
entry:
  %mask.addr = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5526, metadata !DIExpression()), !dbg !5527
  ret void, !dbg !5528
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irq_settings_clr_and_set(ptr noundef %desc, i32 noundef %clr, i32 noundef %set) #5 align 16 !dbg !5529 {
entry:
  %desc.addr = alloca ptr, align 8
  %clr.addr = alloca i32, align 4
  %set.addr = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5533, metadata !DIExpression()), !dbg !5536
  store i32 %clr, ptr %clr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clr.addr, metadata !5534, metadata !DIExpression()), !dbg !5537
  store i32 %set, ptr %set.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !5535, metadata !DIExpression()), !dbg !5538
  %0 = load i32, ptr %clr.addr, align 4, !dbg !5539
  %and = and i32 %0, 2096911, !dbg !5540
  %not = xor i32 %and, -1, !dbg !5541
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !5542
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 5, !dbg !5543
  %2 = load i32, ptr %status_use_accessors, align 8, !dbg !5544
  %and1 = and i32 %2, %not, !dbg !5544
  store i32 %and1, ptr %status_use_accessors, align 8, !dbg !5544
  %3 = load i32, ptr %set.addr, align 4, !dbg !5545
  %and2 = and i32 %3, 2096911, !dbg !5546
  %4 = load ptr, ptr %desc.addr, align 8, !dbg !5547
  %status_use_accessors3 = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 5, !dbg !5548
  %5 = load i32, ptr %status_use_accessors3, align 8, !dbg !5549
  %or = or i32 %5, %and2, !dbg !5549
  store i32 %or, ptr %status_use_accessors3, align 8, !dbg !5549
  ret void, !dbg !5550
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #5 align 16 !dbg !5551 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5555, metadata !DIExpression()), !dbg !5561
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5556, metadata !DIExpression()), !dbg !5562
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5557, metadata !DIExpression()), !dbg !5563
  %0 = load i64, ptr %size.addr, align 8, !dbg !5564
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5564
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !5564

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5564
  %cmp = icmp ule i64 %2, 64, !dbg !5564
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !5564

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !5564
  %cmp2 = icmp ugt i64 %3, 0, !dbg !5564
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !5565

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #20, !dbg !5566
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5558, metadata !DIExpression()), !dbg !5567
  %4 = load i64, ptr %offset.addr, align 8, !dbg !5568
  %5 = load i64, ptr %size.addr, align 8, !dbg !5568
  %cmp3 = icmp uge i64 %4, %5, !dbg !5568
  %lnot = xor i1 %cmp3, true, !dbg !5568
  %lnot4 = xor i1 %lnot, true, !dbg !5568
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5568
  %conv = sext i32 %lnot.ext to i64, !dbg !5568
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5568
  %tobool = icmp ne i64 %expval, 0, !dbg !5568
  br i1 %tobool, label %if.then5, label %if.end, !dbg !5570

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5571
  store i64 %6, ptr %retval, align 8, !dbg !5572
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5572

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !5573
  %8 = load i64, ptr %7, align 8, !dbg !5574
  %9 = load i64, ptr %offset.addr, align 8, !dbg !5575
  %shl = shl i64 1, %9, !dbg !5575
  %sub = sub i64 -1, %shl, !dbg !5575
  %add = add i64 %sub, 1, !dbg !5575
  %10 = load i64, ptr %size.addr, align 8, !dbg !5575
  %sub6 = sub i64 %10, 1, !dbg !5575
  %sub7 = sub i64 63, %sub6, !dbg !5575
  %shr = lshr i64 -1, %sub7, !dbg !5575
  %and = and i64 %add, %shr, !dbg !5575
  %add8 = add i64 0, %and, !dbg !5575
  %and9 = and i64 %8, %add8, !dbg !5576
  store i64 %and9, ptr %val, align 8, !dbg !5577
  %11 = load i64, ptr %val, align 8, !dbg !5578
  %tobool10 = icmp ne i64 %11, 0, !dbg !5578
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !5578

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !5579
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !5579
  br i1 %13, label %cond.true11, label %cond.false, !dbg !5579

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !5579
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !5579
  %cast = trunc i64 %15 to i32, !dbg !5579
  %conv12 = sext i32 %cast to i64, !dbg !5579
  br label %cond.end, !dbg !5579

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !5579
  %call = call i64 @variable__ffs(i64 noundef %16) #19, !dbg !5579
  br label %cond.end, !dbg !5579

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !5579
  br label %cond.end14, !dbg !5578

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !5580
  br label %cond.end14, !dbg !5578

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !5578
  store i64 %cond15, ptr %retval, align 8, !dbg !5581
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5581

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #20, !dbg !5582
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !5583
  %19 = load i64, ptr %size.addr, align 8, !dbg !5584
  %20 = load i64, ptr %offset.addr, align 8, !dbg !5585
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #19, !dbg !5586
  store i64 %call17, ptr %retval, align 8, !dbg !5587
  br label %return, !dbg !5587

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !5588
  ret i64 %21, !dbg !5588
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @desc_smp_init(ptr noundef %desc, i32 noundef %node, ptr noundef %affinity) #1 align 16 !dbg !5589 {
entry:
  %desc.addr = alloca ptr, align 8
  %node.addr = alloca i32, align 4
  %affinity.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5593, metadata !DIExpression()), !dbg !5596
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5594, metadata !DIExpression()), !dbg !5597
  store ptr %affinity, ptr %affinity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %affinity.addr, metadata !5595, metadata !DIExpression()), !dbg !5598
  %0 = load ptr, ptr %affinity.addr, align 8, !dbg !5599
  %tobool = icmp ne ptr %0, null, !dbg !5599
  br i1 %tobool, label %if.end, label %if.then, !dbg !5601

if.then:                                          ; preds = %entry
  store ptr @irq_default_affinity, ptr %affinity.addr, align 8, !dbg !5602
  br label %if.end, !dbg !5603

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !5604
  %irq_common_data = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 0, !dbg !5605
  %affinity1 = getelementptr inbounds %struct.irq_common_data, ptr %irq_common_data, i32 0, i32 4, !dbg !5606
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %affinity1, i64 0, i64 0, !dbg !5604
  %2 = load ptr, ptr %affinity.addr, align 8, !dbg !5607
  call void @cpumask_copy(ptr noundef %arraydecay, ptr noundef %2) #19, !dbg !5608
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !5609
  %pending_mask = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 20, !dbg !5610
  %arraydecay2 = getelementptr inbounds [1 x %struct.cpumask], ptr %pending_mask, i64 0, i64 0, !dbg !5609
  call void @cpumask_clear(ptr noundef %arraydecay2) #19, !dbg !5611
  %4 = load i32, ptr %node.addr, align 4, !dbg !5612
  %5 = load ptr, ptr %desc.addr, align 8, !dbg !5613
  %irq_common_data3 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 0, !dbg !5614
  %node4 = getelementptr inbounds %struct.irq_common_data, ptr %irq_common_data3, i32 0, i32 1, !dbg !5615
  store i32 %4, ptr %node4, align 4, !dbg !5616
  ret void, !dbg !5617
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5618 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irq_kobj_release(ptr noundef %kobj) #1 align 16 !dbg !5619 {
entry:
  %kobj.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5621, metadata !DIExpression()), !dbg !5625
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #20, !dbg !5626
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !5622, metadata !DIExpression()), !dbg !5627
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !5628
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5623, metadata !DIExpression()), !dbg !5628
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5628
  store ptr %0, ptr %__mptr, align 8, !dbg !5628
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5628
  %add.ptr = getelementptr i8, ptr %1, i64 -288, !dbg !5628
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5628
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !5629
  %2 = load ptr, ptr %tmp, align 8, !dbg !5628
  store ptr %2, ptr %desc, align 8, !dbg !5627
  %3 = load ptr, ptr %desc, align 8, !dbg !5630
  call void @free_masks(ptr noundef %3) #19, !dbg !5631
  %4 = load ptr, ptr %desc, align 8, !dbg !5632
  %kstat_irqs = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 2, !dbg !5633
  %5 = load ptr, ptr %kstat_irqs, align 32, !dbg !5633
  call void @free_percpu(ptr noundef %5) #19, !dbg !5634
  %6 = load ptr, ptr %desc, align 8, !dbg !5635
  call void @kfree(ptr noundef %6) #19, !dbg !5636
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #20, !dbg !5637
  ret void, !dbg !5637
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_masks(ptr noundef %desc) #1 align 16 !dbg !5638 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5640, metadata !DIExpression()), !dbg !5641
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !5642
  %pending_mask = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 20, !dbg !5643
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %pending_mask, i64 0, i64 0, !dbg !5642
  call void @free_cpumask_var(ptr noundef %arraydecay) #19, !dbg !5644
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !5645
  %irq_common_data = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 0, !dbg !5646
  %affinity = getelementptr inbounds %struct.irq_common_data, ptr %irq_common_data, i32 0, i32 4, !dbg !5647
  %arraydecay1 = getelementptr inbounds [1 x %struct.cpumask], ptr %affinity, i64 0, i64 0, !dbg !5645
  call void @free_cpumask_var(ptr noundef %arraydecay1) #19, !dbg !5648
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !5649
  %irq_common_data2 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 0, !dbg !5650
  %effective_affinity = getelementptr inbounds %struct.irq_common_data, ptr %irq_common_data2, i32 0, i32 5, !dbg !5651
  %arraydecay3 = getelementptr inbounds [1 x %struct.cpumask], ptr %effective_affinity, i64 0, i64 0, !dbg !5649
  call void @free_cpumask_var(ptr noundef %arraydecay3) #19, !dbg !5652
  ret void, !dbg !5653
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @per_cpu_count_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #1 align 16 !dbg !5654 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ret = alloca i64, align 8
  %p = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5656, metadata !DIExpression()), !dbg !5669
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5657, metadata !DIExpression()), !dbg !5670
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5658, metadata !DIExpression()), !dbg !5671
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #20, !dbg !5672
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !5659, metadata !DIExpression()), !dbg !5673
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !5674
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5660, metadata !DIExpression()), !dbg !5674
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5674
  store ptr %0, ptr %__mptr, align 8, !dbg !5674
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5674
  %add.ptr = getelementptr i8, ptr %1, i64 -288, !dbg !5674
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5674
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !5675
  %2 = load ptr, ptr %tmp, align 8, !dbg !5674
  store ptr %2, ptr %desc, align 8, !dbg !5673
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #20, !dbg !5676
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5662, metadata !DIExpression()), !dbg !5677
  store i64 0, ptr %ret, align 8, !dbg !5677
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #20, !dbg !5678
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5663, metadata !DIExpression()), !dbg !5679
  store ptr @.str.11, ptr %p, align 8, !dbg !5679
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #20, !dbg !5680
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !5664, metadata !DIExpression()), !dbg !5681
  store i32 0, ptr %cpu, align 4, !dbg !5682
  br label %for.cond, !dbg !5682

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %cpu, align 4, !dbg !5683
  %conv = sext i32 %3 to i64, !dbg !5683
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #19, !dbg !5683
  %conv1 = trunc i64 %call to i32, !dbg !5683
  store i32 %conv1, ptr %cpu, align 4, !dbg !5683
  %4 = load i32, ptr %cpu, align 4, !dbg !5683
  %cmp = icmp ult i32 %4, 64, !dbg !5683
  br i1 %cmp, label %for.body, label %for.end, !dbg !5682

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #20, !dbg !5684
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5665, metadata !DIExpression()), !dbg !5685
  %5 = load ptr, ptr %desc, align 8, !dbg !5686
  %6 = load i32, ptr %cpu, align 4, !dbg !5687
  %call3 = call i32 @irq_desc_kstat_cpu(ptr noundef %5, i32 noundef %6) #19, !dbg !5688
  store i32 %call3, ptr %c, align 4, !dbg !5685
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !5689
  %8 = load i64, ptr %ret, align 8, !dbg !5690
  %add.ptr4 = getelementptr i8, ptr %7, i64 %8, !dbg !5691
  %9 = load i64, ptr %ret, align 8, !dbg !5692
  %sub = sub i64 4096, %9, !dbg !5693
  %10 = load ptr, ptr %p, align 8, !dbg !5694
  %11 = load i32, ptr %c, align 4, !dbg !5695
  %call5 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr4, i64 noundef %sub, ptr noundef @.str.12, ptr noundef %10, i32 noundef %11) #19, !dbg !5696
  %conv6 = sext i32 %call5 to i64, !dbg !5696
  %12 = load i64, ptr %ret, align 8, !dbg !5697
  %add = add i64 %12, %conv6, !dbg !5697
  store i64 %add, ptr %ret, align 8, !dbg !5697
  store ptr @.str.13, ptr %p, align 8, !dbg !5698
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #20, !dbg !5699
  br label %for.inc, !dbg !5700

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %cpu, align 4, !dbg !5683
  %inc = add i32 %13, 1, !dbg !5683
  store i32 %inc, ptr %cpu, align 4, !dbg !5683
  br label %for.cond, !dbg !5683, !llvm.loop !5701

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !5703
  %15 = load i64, ptr %ret, align 8, !dbg !5704
  %add.ptr7 = getelementptr i8, ptr %14, i64 %15, !dbg !5705
  %16 = load i64, ptr %ret, align 8, !dbg !5706
  %sub8 = sub i64 4096, %16, !dbg !5707
  %call9 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i64 noundef %sub8, ptr noundef @.str.14) #19, !dbg !5708
  %conv10 = sext i32 %call9 to i64, !dbg !5708
  %17 = load i64, ptr %ret, align 8, !dbg !5709
  %add11 = add i64 %17, %conv10, !dbg !5709
  store i64 %add11, ptr %ret, align 8, !dbg !5709
  %18 = load i64, ptr %ret, align 8, !dbg !5710
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #20, !dbg !5711
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #20, !dbg !5711
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #20, !dbg !5711
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #20, !dbg !5711
  ret i64 %18, !dbg !5712
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_desc_kstat_cpu(ptr noundef %desc, i32 noundef %cpu) #5 align 16 !dbg !5713 {
entry:
  %desc.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5717, metadata !DIExpression()), !dbg !5724
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5718, metadata !DIExpression()), !dbg !5725
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !5726
  %kstat_irqs = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 2, !dbg !5727
  %1 = load ptr, ptr %kstat_irqs, align 32, !dbg !5727
  %tobool = icmp ne ptr %1, null, !dbg !5726
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5726

cond.true:                                        ; preds = %entry
  br label %do.body, !dbg !5728

do.body:                                          ; preds = %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #20, !dbg !5729
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5719, metadata !DIExpression()), !dbg !5729
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5729
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !5729
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #20, !dbg !5728
  br label %do.end, !dbg !5729

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #20, !dbg !5730
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5722, metadata !DIExpression()), !dbg !5730
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !5730
  %kstat_irqs1 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 2, !dbg !5730
  %4 = load ptr, ptr %kstat_irqs1, align 32, !dbg !5730
  %5 = ptrtoint ptr %4 to i64, !dbg !5730
  store i64 %5, ptr %__ptr, align 8, !dbg !5730
  %6 = load i64, ptr %__ptr, align 8, !dbg !5730
  %7 = load i32, ptr %cpu.addr, align 4, !dbg !5730
  %idxprom = zext i32 %7 to i64, !dbg !5730
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5730
  %8 = load i64, ptr %arrayidx, align 8, !dbg !5730
  %add = add i64 %6, %8, !dbg !5730
  %9 = inttoptr i64 %add to ptr, !dbg !5730
  store ptr %9, ptr %tmp2, align 8, !dbg !5730
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #20, !dbg !5728
  %10 = load ptr, ptr %tmp2, align 8, !dbg !5730
  store ptr %10, ptr %tmp, align 8, !dbg !5729
  %11 = load ptr, ptr %tmp, align 8, !dbg !5728
  %12 = load i32, ptr %11, align 4, !dbg !5731
  br label %cond.end, !dbg !5726

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5726

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi i32 [ %12, %do.end ], [ 0, %cond.false ], !dbg !5726
  ret i32 %cond, !dbg !5732
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5733 dso_local i32 @scnprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @chip_name_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #1 align 16 !dbg !5737 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5739, metadata !DIExpression()), !dbg !5746
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5740, metadata !DIExpression()), !dbg !5747
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5741, metadata !DIExpression()), !dbg !5748
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #20, !dbg !5749
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !5742, metadata !DIExpression()), !dbg !5750
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !5751
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5743, metadata !DIExpression()), !dbg !5751
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5751
  store ptr %0, ptr %__mptr, align 8, !dbg !5751
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5751
  %add.ptr = getelementptr i8, ptr %1, i64 -288, !dbg !5751
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5751
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !5752
  %2 = load ptr, ptr %tmp, align 8, !dbg !5751
  store ptr %2, ptr %desc, align 8, !dbg !5750
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #20, !dbg !5753
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5745, metadata !DIExpression()), !dbg !5754
  store i64 0, ptr %ret, align 8, !dbg !5754
  %3 = load ptr, ptr %desc, align 8, !dbg !5755
  %lock = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 15, !dbg !5755
  call void @_raw_spin_lock_irq(ptr noundef %lock) #19, !dbg !5755
  %4 = load ptr, ptr %desc, align 8, !dbg !5756
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 1, !dbg !5758
  %chip = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 4, !dbg !5759
  %5 = load ptr, ptr %chip, align 8, !dbg !5759
  %tobool = icmp ne ptr %5, null, !dbg !5756
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5760

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %desc, align 8, !dbg !5761
  %irq_data1 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, !dbg !5762
  %chip2 = getelementptr inbounds %struct.irq_data, ptr %irq_data1, i32 0, i32 4, !dbg !5763
  %7 = load ptr, ptr %chip2, align 8, !dbg !5763
  %name = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 0, !dbg !5764
  %8 = load ptr, ptr %name, align 8, !dbg !5764
  %tobool3 = icmp ne ptr %8, null, !dbg !5761
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5765

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !5766
  %10 = load ptr, ptr %desc, align 8, !dbg !5768
  %irq_data4 = getelementptr inbounds %struct.irq_desc, ptr %10, i32 0, i32 1, !dbg !5769
  %chip5 = getelementptr inbounds %struct.irq_data, ptr %irq_data4, i32 0, i32 4, !dbg !5770
  %11 = load ptr, ptr %chip5, align 8, !dbg !5770
  %name6 = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 0, !dbg !5771
  %12 = load ptr, ptr %name6, align 8, !dbg !5771
  %call = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %9, i64 noundef 4096, ptr noundef @.str.16, ptr noundef %12) #19, !dbg !5772
  %conv = sext i32 %call to i64, !dbg !5772
  store i64 %conv, ptr %ret, align 8, !dbg !5773
  br label %if.end, !dbg !5774

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %13 = load ptr, ptr %desc, align 8, !dbg !5775
  %lock7 = getelementptr inbounds %struct.irq_desc, ptr %13, i32 0, i32 15, !dbg !5775
  call void @_raw_spin_unlock_irq(ptr noundef %lock7) #19, !dbg !5775
  %14 = load i64, ptr %ret, align 8, !dbg !5776
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #20, !dbg !5777
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #20, !dbg !5777
  ret i64 %14, !dbg !5778
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5779 dso_local void @_raw_spin_lock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5782 dso_local void @_raw_spin_unlock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hwirq_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #1 align 16 !dbg !5783 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5785, metadata !DIExpression()), !dbg !5792
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5786, metadata !DIExpression()), !dbg !5793
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5787, metadata !DIExpression()), !dbg !5794
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #20, !dbg !5795
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !5788, metadata !DIExpression()), !dbg !5796
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !5797
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5789, metadata !DIExpression()), !dbg !5797
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5797
  store ptr %0, ptr %__mptr, align 8, !dbg !5797
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5797
  %add.ptr = getelementptr i8, ptr %1, i64 -288, !dbg !5797
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5797
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !5798
  %2 = load ptr, ptr %tmp, align 8, !dbg !5797
  store ptr %2, ptr %desc, align 8, !dbg !5796
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #20, !dbg !5799
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5791, metadata !DIExpression()), !dbg !5800
  store i64 0, ptr %ret, align 8, !dbg !5800
  %3 = load ptr, ptr %desc, align 8, !dbg !5801
  %lock = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 15, !dbg !5801
  call void @_raw_spin_lock_irq(ptr noundef %lock) #19, !dbg !5801
  %4 = load ptr, ptr %desc, align 8, !dbg !5802
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 1, !dbg !5804
  %domain = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 5, !dbg !5805
  %5 = load ptr, ptr %domain, align 8, !dbg !5805
  %tobool = icmp ne ptr %5, null, !dbg !5802
  br i1 %tobool, label %if.then, label %if.end, !dbg !5806

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !5807
  %7 = load ptr, ptr %desc, align 8, !dbg !5808
  %irq_data1 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 1, !dbg !5809
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irq_data1, i32 0, i32 2, !dbg !5810
  %8 = load i64, ptr %hwirq, align 8, !dbg !5810
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %6, ptr noundef @.str.18, i64 noundef %8) #19, !dbg !5811
  %conv = sext i32 %call to i64, !dbg !5811
  store i64 %conv, ptr %ret, align 8, !dbg !5812
  br label %if.end, !dbg !5813

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %desc, align 8, !dbg !5814
  %lock2 = getelementptr inbounds %struct.irq_desc, ptr %9, i32 0, i32 15, !dbg !5814
  call void @_raw_spin_unlock_irq(ptr noundef %lock2) #19, !dbg !5814
  %10 = load i64, ptr %ret, align 8, !dbg !5815
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #20, !dbg !5816
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #20, !dbg !5816
  ret i64 %10, !dbg !5817
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5818 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @type_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #1 align 16 !dbg !5821 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5823, metadata !DIExpression()), !dbg !5830
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5824, metadata !DIExpression()), !dbg !5831
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5825, metadata !DIExpression()), !dbg !5832
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #20, !dbg !5833
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !5826, metadata !DIExpression()), !dbg !5834
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !5835
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5827, metadata !DIExpression()), !dbg !5835
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5835
  store ptr %0, ptr %__mptr, align 8, !dbg !5835
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5835
  %add.ptr = getelementptr i8, ptr %1, i64 -288, !dbg !5835
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5835
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !5836
  %2 = load ptr, ptr %tmp, align 8, !dbg !5835
  store ptr %2, ptr %desc, align 8, !dbg !5834
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #20, !dbg !5837
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5829, metadata !DIExpression()), !dbg !5838
  store i64 0, ptr %ret, align 8, !dbg !5838
  %3 = load ptr, ptr %desc, align 8, !dbg !5839
  %lock = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 15, !dbg !5839
  call void @_raw_spin_lock_irq(ptr noundef %lock) #19, !dbg !5839
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !5840
  %5 = load ptr, ptr %desc, align 8, !dbg !5841
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 1, !dbg !5842
  %call = call zeroext i1 @irqd_is_level_type(ptr noundef %irq_data) #19, !dbg !5843
  %6 = zext i1 %call to i64, !dbg !5843
  %cond = select i1 %call, ptr @.str.20, ptr @.str.21, !dbg !5843
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %4, ptr noundef @.str.16, ptr noundef %cond) #19, !dbg !5844
  %conv = sext i32 %call1 to i64, !dbg !5844
  store i64 %conv, ptr %ret, align 8, !dbg !5845
  %7 = load ptr, ptr %desc, align 8, !dbg !5846
  %lock2 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 15, !dbg !5846
  call void @_raw_spin_unlock_irq(ptr noundef %lock2) #19, !dbg !5846
  %8 = load i64, ptr %ret, align 8, !dbg !5847
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #20, !dbg !5848
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #20, !dbg !5848
  ret i64 %8, !dbg !5849
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irqd_is_level_type(ptr noundef %d) #5 align 16 !dbg !5850 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !5852, metadata !DIExpression()), !dbg !5853
  %0 = load ptr, ptr %d.addr, align 8, !dbg !5854
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !5854
  %1 = load ptr, ptr %common, align 8, !dbg !5854
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 0, !dbg !5854
  %2 = load i32, ptr %state_use_accessors, align 8, !dbg !5854
  %and = and i32 %2, 8192, !dbg !5855
  %tobool = icmp ne i32 %and, 0, !dbg !5854
  ret i1 %tobool, !dbg !5856
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @wakeup_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #1 align 16 !dbg !5857 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5859, metadata !DIExpression()), !dbg !5866
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5860, metadata !DIExpression()), !dbg !5867
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5861, metadata !DIExpression()), !dbg !5868
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #20, !dbg !5869
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !5862, metadata !DIExpression()), !dbg !5870
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !5871
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5863, metadata !DIExpression()), !dbg !5871
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5871
  store ptr %0, ptr %__mptr, align 8, !dbg !5871
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5871
  %add.ptr = getelementptr i8, ptr %1, i64 -288, !dbg !5871
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5871
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !5872
  %2 = load ptr, ptr %tmp, align 8, !dbg !5871
  store ptr %2, ptr %desc, align 8, !dbg !5870
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #20, !dbg !5873
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5865, metadata !DIExpression()), !dbg !5874
  store i64 0, ptr %ret, align 8, !dbg !5874
  %3 = load ptr, ptr %desc, align 8, !dbg !5875
  %lock = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 15, !dbg !5875
  call void @_raw_spin_lock_irq(ptr noundef %lock) #19, !dbg !5875
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !5876
  %5 = load ptr, ptr %desc, align 8, !dbg !5877
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 1, !dbg !5878
  %call = call zeroext i1 @irqd_is_wakeup_set(ptr noundef %irq_data) #19, !dbg !5879
  %6 = zext i1 %call to i64, !dbg !5879
  %cond = select i1 %call, ptr @.str.23, ptr @.str.24, !dbg !5879
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %4, ptr noundef @.str.16, ptr noundef %cond) #19, !dbg !5880
  %conv = sext i32 %call1 to i64, !dbg !5880
  store i64 %conv, ptr %ret, align 8, !dbg !5881
  %7 = load ptr, ptr %desc, align 8, !dbg !5882
  %lock2 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 15, !dbg !5882
  call void @_raw_spin_unlock_irq(ptr noundef %lock2) #19, !dbg !5882
  %8 = load i64, ptr %ret, align 8, !dbg !5883
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #20, !dbg !5884
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #20, !dbg !5884
  ret i64 %8, !dbg !5885
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irqd_is_wakeup_set(ptr noundef %d) #5 align 16 !dbg !5886 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !5888, metadata !DIExpression()), !dbg !5889
  %0 = load ptr, ptr %d.addr, align 8, !dbg !5890
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !5890
  %1 = load ptr, ptr %common, align 8, !dbg !5890
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 0, !dbg !5890
  %2 = load i32, ptr %state_use_accessors, align 8, !dbg !5890
  %and = and i32 %2, 16384, !dbg !5891
  %tobool = icmp ne i32 %and, 0, !dbg !5890
  ret i1 %tobool, !dbg !5892
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @name_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #1 align 16 !dbg !5893 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5895, metadata !DIExpression()), !dbg !5902
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5896, metadata !DIExpression()), !dbg !5903
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5897, metadata !DIExpression()), !dbg !5904
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #20, !dbg !5905
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !5898, metadata !DIExpression()), !dbg !5906
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !5907
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5899, metadata !DIExpression()), !dbg !5907
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5907
  store ptr %0, ptr %__mptr, align 8, !dbg !5907
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5907
  %add.ptr = getelementptr i8, ptr %1, i64 -288, !dbg !5907
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5907
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !5908
  %2 = load ptr, ptr %tmp, align 8, !dbg !5907
  store ptr %2, ptr %desc, align 8, !dbg !5906
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #20, !dbg !5909
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5901, metadata !DIExpression()), !dbg !5910
  store i64 0, ptr %ret, align 8, !dbg !5910
  %3 = load ptr, ptr %desc, align 8, !dbg !5911
  %lock = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 15, !dbg !5911
  call void @_raw_spin_lock_irq(ptr noundef %lock) #19, !dbg !5911
  %4 = load ptr, ptr %desc, align 8, !dbg !5912
  %name = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 34, !dbg !5914
  %5 = load ptr, ptr %name, align 16, !dbg !5914
  %tobool = icmp ne ptr %5, null, !dbg !5912
  br i1 %tobool, label %if.then, label %if.end, !dbg !5915

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !5916
  %7 = load ptr, ptr %desc, align 8, !dbg !5917
  %name1 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 34, !dbg !5918
  %8 = load ptr, ptr %name1, align 16, !dbg !5918
  %call = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %6, i64 noundef 4096, ptr noundef @.str.16, ptr noundef %8) #19, !dbg !5919
  %conv = sext i32 %call to i64, !dbg !5919
  store i64 %conv, ptr %ret, align 8, !dbg !5920
  br label %if.end, !dbg !5921

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %desc, align 8, !dbg !5922
  %lock2 = getelementptr inbounds %struct.irq_desc, ptr %9, i32 0, i32 15, !dbg !5922
  call void @_raw_spin_unlock_irq(ptr noundef %lock2) #19, !dbg !5922
  %10 = load i64, ptr %ret, align 8, !dbg !5923
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #20, !dbg !5924
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #20, !dbg !5924
  ret i64 %10, !dbg !5925
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @actions_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #1 align 16 !dbg !5926 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %action = alloca ptr, align 8
  %ret = alloca i64, align 8
  %p = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5928, metadata !DIExpression()), !dbg !5937
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5929, metadata !DIExpression()), !dbg !5938
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5930, metadata !DIExpression()), !dbg !5939
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #20, !dbg !5940
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !5931, metadata !DIExpression()), !dbg !5941
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !5942
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5932, metadata !DIExpression()), !dbg !5942
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5942
  store ptr %0, ptr %__mptr, align 8, !dbg !5942
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5942
  %add.ptr = getelementptr i8, ptr %1, i64 -288, !dbg !5942
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5942
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !5943
  %2 = load ptr, ptr %tmp, align 8, !dbg !5942
  store ptr %2, ptr %desc, align 8, !dbg !5941
  call void @llvm.lifetime.start.p0(i64 8, ptr %action) #20, !dbg !5944
  call void @llvm.dbg.declare(metadata ptr %action, metadata !5934, metadata !DIExpression()), !dbg !5945
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #20, !dbg !5946
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5935, metadata !DIExpression()), !dbg !5947
  store i64 0, ptr %ret, align 8, !dbg !5947
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #20, !dbg !5948
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5936, metadata !DIExpression()), !dbg !5949
  store ptr @.str.11, ptr %p, align 8, !dbg !5949
  %3 = load ptr, ptr %desc, align 8, !dbg !5950
  %lock = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 15, !dbg !5950
  call void @_raw_spin_lock_irq(ptr noundef %lock) #19, !dbg !5950
  %4 = load ptr, ptr %desc, align 8, !dbg !5951
  %action1 = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 4, !dbg !5951
  %5 = load ptr, ptr %action1, align 16, !dbg !5951
  store ptr %5, ptr %action, align 8, !dbg !5951
  br label %for.cond, !dbg !5951

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load ptr, ptr %action, align 8, !dbg !5953
  %tobool = icmp ne ptr %6, null, !dbg !5951
  br i1 %tobool, label %for.body, label %for.end, !dbg !5951

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !5955
  %8 = load i64, ptr %ret, align 8, !dbg !5957
  %add.ptr2 = getelementptr i8, ptr %7, i64 %8, !dbg !5958
  %9 = load i64, ptr %ret, align 8, !dbg !5959
  %sub = sub i64 4096, %9, !dbg !5960
  %10 = load ptr, ptr %p, align 8, !dbg !5961
  %11 = load ptr, ptr %action, align 8, !dbg !5962
  %name = getelementptr inbounds %struct.irqaction, ptr %11, i32 0, i32 11, !dbg !5963
  %12 = load ptr, ptr %name, align 16, !dbg !5963
  %call = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i64 noundef %sub, ptr noundef @.str.27, ptr noundef %10, ptr noundef %12) #19, !dbg !5964
  %conv = sext i32 %call to i64, !dbg !5964
  %13 = load i64, ptr %ret, align 8, !dbg !5965
  %add = add i64 %13, %conv, !dbg !5965
  store i64 %add, ptr %ret, align 8, !dbg !5965
  store ptr @.str.13, ptr %p, align 8, !dbg !5966
  br label %for.inc, !dbg !5967

for.inc:                                          ; preds = %for.body
  %14 = load ptr, ptr %action, align 8, !dbg !5953
  %next = getelementptr inbounds %struct.irqaction, ptr %14, i32 0, i32 3, !dbg !5953
  %15 = load ptr, ptr %next, align 8, !dbg !5953
  store ptr %15, ptr %action, align 8, !dbg !5953
  br label %for.cond, !dbg !5953, !llvm.loop !5968

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %desc, align 8, !dbg !5970
  %lock3 = getelementptr inbounds %struct.irq_desc, ptr %16, i32 0, i32 15, !dbg !5970
  call void @_raw_spin_unlock_irq(ptr noundef %lock3) #19, !dbg !5970
  %17 = load i64, ptr %ret, align 8, !dbg !5971
  %tobool4 = icmp ne i64 %17, 0, !dbg !5971
  br i1 %tobool4, label %if.then, label %if.end, !dbg !5973

if.then:                                          ; preds = %for.end
  %18 = load ptr, ptr %buf.addr, align 8, !dbg !5974
  %19 = load i64, ptr %ret, align 8, !dbg !5975
  %add.ptr5 = getelementptr i8, ptr %18, i64 %19, !dbg !5976
  %20 = load i64, ptr %ret, align 8, !dbg !5977
  %sub6 = sub i64 4096, %20, !dbg !5978
  %call7 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %add.ptr5, i64 noundef %sub6, ptr noundef @.str.14) #19, !dbg !5979
  %conv8 = sext i32 %call7 to i64, !dbg !5979
  %21 = load i64, ptr %ret, align 8, !dbg !5980
  %add9 = add i64 %21, %conv8, !dbg !5980
  store i64 %add9, ptr %ret, align 8, !dbg !5980
  br label %if.end, !dbg !5981

if.end:                                           ; preds = %if.then, %for.end
  %22 = load i64, ptr %ret, align 8, !dbg !5982
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #20, !dbg !5983
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #20, !dbg !5983
  call void @llvm.lifetime.end.p0(i64 8, ptr %action) #20, !dbg !5983
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #20, !dbg !5983
  ret i64 %22, !dbg !5984
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5985 dso_local i32 @mas_store_gfp(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irqd_is_handle_enforce_irqctx(ptr noundef %d) #5 align 16 !dbg !5989 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !5991, metadata !DIExpression()), !dbg !5992
  %0 = load ptr, ptr %d.addr, align 8, !dbg !5993
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !5993
  %1 = load ptr, ptr %common, align 8, !dbg !5993
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 0, !dbg !5993
  %2 = load i32, ptr %state_use_accessors, align 8, !dbg !5993
  %and = and i32 %2, 134217728, !dbg !5994
  %tobool = icmp ne i32 %and, 0, !dbg !5993
  ret i1 %tobool, !dbg !5995
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #8 align 16 !dbg !5996 {
entry:
  %call = call i64 @native_save_fl() #19, !dbg !5997
  ret i64 %call, !dbg !5998
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #8 align 16 !dbg !5999 {
entry:
  call void @native_irq_disable() #19, !dbg !6000
  ret void, !dbg !6001
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #8 align 16 !dbg !6002 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #20, !dbg !6005
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6004, metadata !DIExpression()), !dbg !6006
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #20, !dbg !6007, !srcloc !6008
  %0 = load i64, ptr %flags, align 8, !dbg !6009
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #20, !dbg !6010
  ret i64 %0, !dbg !6011
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #8 align 16 !dbg !6012 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !6013, !srcloc !6014
  ret void, !dbg !6015
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #8 align 16 !dbg !6016 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6020, metadata !DIExpression()), !dbg !6021
  %0 = load i64, ptr %flags.addr, align 8, !dbg !6022
  %and = and i64 %0, 512, !dbg !6023
  %tobool = icmp ne i64 %and, 0, !dbg !6024
  %lnot = xor i1 %tobool, true, !dbg !6024
  %lnot.ext = zext i1 %lnot to i32, !dbg !6024
  ret i32 %lnot.ext, !dbg !6025
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #8 align 16 !dbg !6026 {
entry:
  call void @native_irq_enable() #19, !dbg !6027
  ret void, !dbg !6028
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #8 align 16 !dbg !6029 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !dbg !6030, !srcloc !6031
  ret void, !dbg !6032
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6033 dso_local ptr @__irq_resolve_mapping(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irq_remove_debugfs_entry(ptr noundef %d) #5 align 16 !dbg !6036 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !6038, metadata !DIExpression()), !dbg !6039
  ret void, !dbg !6040
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6041 dso_local void @unregister_irq_proc(i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irq_sysfs_del(ptr noundef %desc) #1 align 16 !dbg !6042 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6044, metadata !DIExpression()), !dbg !6045
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !6046
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6, !dbg !6048
  %1 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 4, !dbg !6048
  %and = and i32 %1, 16384, !dbg !6049
  %tobool = icmp ne i32 %and, 0, !dbg !6049
  br i1 %tobool, label %if.then, label %if.end, !dbg !6050

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !6051
  %kobj = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 30, !dbg !6052
  call void @kobject_del(ptr noundef %kobj) #19, !dbg !6053
  br label %if.end, !dbg !6053

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6054
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @delete_irq_desc(i32 noundef %irq) #1 align 16 !dbg !6055 {
entry:
  %irq.addr = alloca i32, align 4
  %mas = alloca %struct.ma_state, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !6057, metadata !DIExpression()), !dbg !6059
  call void @llvm.lifetime.start.p0(i64 64, ptr %mas) #20, !dbg !6060
  call void @llvm.dbg.declare(metadata ptr %mas, metadata !6058, metadata !DIExpression()), !dbg !6060
  %tree = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 0, !dbg !6060
  store ptr @sparse_irqs, ptr %tree, align 8, !dbg !6060
  %index = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 1, !dbg !6060
  %0 = load i32, ptr %irq.addr, align 4, !dbg !6060
  %conv = zext i32 %0 to i64, !dbg !6060
  store i64 %conv, ptr %index, align 8, !dbg !6060
  %last = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 2, !dbg !6060
  %1 = load i32, ptr %irq.addr, align 4, !dbg !6060
  %conv1 = zext i32 %1 to i64, !dbg !6060
  store i64 %conv1, ptr %last, align 8, !dbg !6060
  %node = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 3, !dbg !6060
  store ptr inttoptr (i64 1 to ptr), ptr %node, align 8, !dbg !6060
  %min = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 4, !dbg !6060
  store i64 0, ptr %min, align 8, !dbg !6060
  %max = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 5, !dbg !6060
  store i64 -1, ptr %max, align 8, !dbg !6060
  %alloc = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 6, !dbg !6060
  store ptr null, ptr %alloc, align 8, !dbg !6060
  %depth = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 7, !dbg !6060
  store i8 0, ptr %depth, align 8, !dbg !6060
  %offset = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 8, !dbg !6060
  store i8 0, ptr %offset, align 1, !dbg !6060
  %mas_flags = getelementptr inbounds %struct.ma_state, ptr %mas, i32 0, i32 9, !dbg !6060
  store i8 0, ptr %mas_flags, align 2, !dbg !6060
  %call = call ptr @mas_erase(ptr noundef %mas) #19, !dbg !6061
  call void @llvm.lifetime.end.p0(i64 64, ptr %mas) #20, !dbg !6062
  ret void, !dbg !6062
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6063 dso_local void @call_rcu(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @delayed_free_desc(ptr noundef %rhp) #1 align 16 !dbg !6067 {
entry:
  %rhp.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %rhp, ptr %rhp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rhp.addr, metadata !6069, metadata !DIExpression()), !dbg !6073
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #20, !dbg !6074
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !6070, metadata !DIExpression()), !dbg !6075
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #20, !dbg !6076
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6071, metadata !DIExpression()), !dbg !6076
  %0 = load ptr, ptr %rhp.addr, align 8, !dbg !6076
  store ptr %0, ptr %__mptr, align 8, !dbg !6076
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6076
  %add.ptr = getelementptr i8, ptr %1, i64 -272, !dbg !6076
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6076
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #20, !dbg !6077
  %2 = load ptr, ptr %tmp, align 8, !dbg !6076
  store ptr %2, ptr %desc, align 8, !dbg !6075
  %3 = load ptr, ptr %desc, align 8, !dbg !6078
  %kobj = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 30, !dbg !6079
  call void @kobject_put(ptr noundef %kobj) #19, !dbg !6080
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #20, !dbg !6081
  ret void, !dbg !6081
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6082 dso_local void @kobject_del(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6083 dso_local ptr @mas_erase(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6086 dso_local void @kobject_put(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6087 dso_local i32 @mas_empty_area(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_to_node(i32 noundef %cpu) #5 align 16 !dbg !6090 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6095, metadata !DIExpression()), !dbg !6101
  br label %do.body, !dbg !6102

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #20, !dbg !6103
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6096, metadata !DIExpression()), !dbg !6103
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6103
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6103
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #20, !dbg !6102
  br label %do.end, !dbg !6103

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #20, !dbg !6104
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6099, metadata !DIExpression()), !dbg !6104
  store i64 ptrtoint (ptr @numa_node to i64), ptr %__ptr, align 8, !dbg !6104
  %1 = load i64, ptr %__ptr, align 8, !dbg !6104
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !6104
  %idxprom = sext i32 %2 to i64, !dbg !6104
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6104
  %3 = load i64, ptr %arrayidx, align 8, !dbg !6104
  %add = add i64 %1, %3, !dbg !6104
  %4 = inttoptr i64 %add to ptr, !dbg !6104
  store ptr %4, ptr %tmp1, align 8, !dbg !6104
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #20, !dbg !6102
  %5 = load ptr, ptr %tmp1, align 8, !dbg !6104
  store ptr %5, ptr %tmp, align 8, !dbg !6103
  %6 = load ptr, ptr %tmp, align 8, !dbg !6102
  %7 = load i32, ptr %6, align 4, !dbg !6105
  ret i32 %7, !dbg !6106
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_first(ptr noundef %srcp) #5 align 16 !dbg !6107 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !6111, metadata !DIExpression()), !dbg !6112
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !6113
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !6113
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6113
  %call = call i64 @find_first_bit(ptr noundef %arraydecay, i64 noundef 64) #19, !dbg !6114
  %conv = trunc i64 %call to i32, !dbg !6114
  ret i32 %conv, !dbg !6115
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irq_add_debugfs_entry(i32 noundef %irq, ptr noundef %d) #5 align 16 !dbg !6116 {
entry:
  %irq.addr = alloca i32, align 4
  %d.addr = alloca ptr, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !6118, metadata !DIExpression()), !dbg !6120
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !6119, metadata !DIExpression()), !dbg !6121
  ret void, !dbg !6122
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @class_rcu_constructor() #5 align 16 !dbg !6123 {
entry:
  %retval = alloca %struct.class_rcu_t, align 8
  %_T = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !6127, metadata !DIExpression()), !dbg !6130
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 @__const.class_rcu_constructor._t, i64 8, i1 false), !dbg !6130
  call void @llvm.lifetime.start.p0(i64 8, ptr %_T) #20, !dbg !6130
  call void @llvm.dbg.declare(metadata ptr %_T, metadata !6128, metadata !DIExpression()), !dbg !6130
  store ptr %retval, ptr %_T, align 8, !dbg !6130
  call void @rcu_read_lock() #19, !dbg !6130
  call void @llvm.lifetime.end.p0(i64 8, ptr %_T) #20, !dbg !6130
  %coerce.dive = getelementptr inbounds %struct.class_rcu_t, ptr %retval, i32 0, i32 0, !dbg !6130
  %0 = load ptr, ptr %coerce.dive, align 8, !dbg !6130
  ret ptr %0, !dbg !6130
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @class_rcu_destructor(ptr noundef %_T) #5 align 16 !dbg !6131 {
entry:
  %_T.addr = alloca ptr, align 8
  store ptr %_T, ptr %_T.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_T.addr, metadata !6135, metadata !DIExpression()), !dbg !6136
  %0 = load ptr, ptr %_T.addr, align 8, !dbg !6137
  %lock = getelementptr inbounds %struct.class_rcu_t, ptr %0, i32 0, i32 0, !dbg !6137
  %1 = load ptr, ptr %lock, align 8, !dbg !6137
  %tobool = icmp ne ptr %1, null, !dbg !6137
  br i1 %tobool, label %if.then, label %if.end, !dbg !6136

if.then:                                          ; preds = %entry
  call void @rcu_read_unlock() #19, !dbg !6139
  br label %if.end, !dbg !6139

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6136
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6141 dso_local ptr @mt_find(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_desc_get_irq(ptr noundef %desc) #5 align 16 !dbg !6144 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6148, metadata !DIExpression()), !dbg !6149
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !6150
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, !dbg !6151
  %irq = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 1, !dbg !6152
  %1 = load i32, ptr %irq, align 4, !dbg !6152
  ret i32 %1, !dbg !6153
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #15 align 16 !dbg !6154 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6156, metadata !DIExpression()), !dbg !6161
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6157, metadata !DIExpression()), !dbg !6162
  %0 = load i64, ptr %size.addr, align 8, !dbg !6163
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6164
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6165

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6166
  %tobool = icmp ne i64 %2, 0, !dbg !6166
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6167

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #20, !dbg !6168
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6158, metadata !DIExpression()), !dbg !6169
  %3 = load i64, ptr %size.addr, align 8, !dbg !6170
  %cmp = icmp ugt i64 %3, 8192, !dbg !6172
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6173

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6174
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6175
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #23, !dbg !6176
  store ptr %call, ptr %retval, align 8, !dbg !6177
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6177

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6178
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #19, !dbg !6178
  store i32 %call2, ptr %index, align 4, !dbg !6179
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6180
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6181
  %9 = ptrtoint ptr %8 to i64, !dbg !6181
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #19, !dbg !6182
  %idxprom = zext i32 %call3 to i64, !dbg !6183
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6183
  %10 = load i32, ptr %index, align 4, !dbg !6184
  %idxprom4 = zext i32 %10 to i64, !dbg !6183
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6183
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6183
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6185
  %13 = load i64, ptr %size.addr, align 8, !dbg !6186
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #26, !dbg !6187
  store ptr %call6, ptr %retval, align 8, !dbg !6188
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6188

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #20, !dbg !6189
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6190
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6191
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #23, !dbg !6192
  store ptr %call8, ptr %retval, align 8, !dbg !6193
  br label %return, !dbg !6193

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6194
  ret ptr %16, !dbg !6194
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6195 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6196 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #18

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6199 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irq_set_status_flags(i32 noundef %irq, i64 noundef %set) #5 align 16 !dbg !6200 {
entry:
  %irq.addr = alloca i32, align 4
  %set.addr = alloca i64, align 8
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !6204, metadata !DIExpression()), !dbg !6206
  store i64 %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !6205, metadata !DIExpression()), !dbg !6207
  %0 = load i32, ptr %irq.addr, align 4, !dbg !6208
  %1 = load i64, ptr %set.addr, align 8, !dbg !6209
  call void @irq_modify_status(i32 noundef %0, i64 noundef 0, i64 noundef %1) #19, !dbg !6210
  ret void, !dbg !6211
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6212 dso_local void @irq_modify_status(i32 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_copy(ptr noundef %dst, ptr noundef %src, i32 noundef %nbits) #5 align 16 !dbg !6215 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !6219, metadata !DIExpression()), !dbg !6223
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !6220, metadata !DIExpression()), !dbg !6224
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !6221, metadata !DIExpression()), !dbg !6225
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #20, !dbg !6226
  call void @llvm.dbg.declare(metadata ptr %len, metadata !6222, metadata !DIExpression()), !dbg !6227
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !6228
  %add = add i32 %0, 63, !dbg !6228
  %and = and i32 %add, -64, !dbg !6228
  %div = udiv i32 %and, 8, !dbg !6228
  store i32 %div, ptr %len, align 4, !dbg !6227
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !6229
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !6229
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !6229

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !6229
  %cmp = icmp ule i32 %3, 64, !dbg !6229
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !6229

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !6229
  %cmp2 = icmp ugt i32 %4, 0, !dbg !6229
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6231

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %src.addr, align 8, !dbg !6232
  %6 = load i64, ptr %5, align 8, !dbg !6233
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !6234
  store i64 %6, ptr %7, align 8, !dbg !6235
  br label %if.end, !dbg !6236

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !6237
  %9 = load ptr, ptr %src.addr, align 8, !dbg !6238
  %10 = load i32, ptr %len, align 4, !dbg !6239
  %conv = zext i32 %10 to i64, !dbg !6239
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %9, i64 %conv, i1 false), !dbg !6240
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #20, !dbg !6241
  ret void, !dbg !6241
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kstat_incr_irqs_this_cpu(ptr noundef %desc) #5 align 16 !dbg !6242 {
entry:
  %desc.addr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pao_ID__ = alloca i32, align 4
  %__vpp_verify7 = alloca ptr, align 8
  %pao_ID__10 = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6244, metadata !DIExpression()), !dbg !6257
  call void @__this_cpu_preempt_check(ptr noundef @.str.28) #19, !dbg !6258
  br label %do.body, !dbg !6258

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6259

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #20, !dbg !6260
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6245, metadata !DIExpression()), !dbg !6260
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6260
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6260
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #20, !dbg !6259
  br label %do.end, !dbg !6260

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6259

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #20, !dbg !6261
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !6249, metadata !DIExpression()), !dbg !6261
  store i32 1, ptr %pao_ID__, align 4, !dbg !6261
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !6262
  %kstat_irqs = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 2, !dbg !6262
  %2 = load ptr, ptr %kstat_irqs, align 32, !dbg !6262
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %2, ptr elementtype(i32) %2) #20, !dbg !6262, !srcloc !6265
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #20, !dbg !6259
  br label %do.end3, !dbg !6261

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6259

do.end4:                                          ; preds = %do.end3
  call void @__this_cpu_preempt_check(ptr noundef @.str.28) #19, !dbg !6266
  br label %do.body5, !dbg !6266

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6267

do.body6:                                         ; preds = %do.body5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify7) #20, !dbg !6268
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify7, metadata !6251, metadata !DIExpression()), !dbg !6268
  store ptr null, ptr %__vpp_verify7, align 8, !dbg !6268
  %3 = load ptr, ptr %__vpp_verify7, align 8, !dbg !6268
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify7) #20, !dbg !6267
  br label %do.end8, !dbg !6268

do.end8:                                          ; preds = %do.body6
  br label %do.body9, !dbg !6267

do.body9:                                         ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__10) #20, !dbg !6269
  call void @llvm.dbg.declare(metadata ptr %pao_ID__10, metadata !6255, metadata !DIExpression()), !dbg !6269
  store i32 1, ptr %pao_ID__10, align 4, !dbg !6269
  call void asm "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @kstat, ptr elementtype(i64) @kstat) #20, !dbg !6270, !srcloc !6273
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__10) #20, !dbg !6267
  br label %do.end11, !dbg !6269

do.end11:                                         ; preds = %do.body9
  br label %do.end12, !dbg !6267

do.end12:                                         ; preds = %do.end11
  ret void, !dbg !6274
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6275 dso_local void @__rcu_read_lock() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irq_settings_is_per_cpu(ptr noundef %desc) #5 align 16 !dbg !6276 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6278, metadata !DIExpression()), !dbg !6279
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !6280
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 5, !dbg !6281
  %1 = load i32, ptr %status_use_accessors, align 8, !dbg !6281
  %and = and i32 %1, 512, !dbg !6282
  %tobool = icmp ne i32 %and, 0, !dbg !6280
  ret i1 %tobool, !dbg !6283
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irq_is_nmi(ptr noundef %desc) #1 align 16 !dbg !6284 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6286, metadata !DIExpression()), !dbg !6287
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !6288
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6, !dbg !6289
  %1 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 4, !dbg !6289
  %and = and i32 %1, 8192, !dbg !6290
  %tobool = icmp ne i32 %and, 0, !dbg !6288
  ret i1 %tobool, !dbg !6291
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kcsan_disable_current() #5 align 16 !dbg !6292 {
entry:
  ret void, !dbg !6293
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kcsan_enable_current() #5 align 16 !dbg !6294 {
entry:
  ret void, !dbg !6295
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6296 dso_local void @__rcu_read_unlock() #3

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone null_pointer_is_valid allocsize(3) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #19 = { noredzone }
attributes #20 = { nounwind }
attributes #21 = { nounwind memory(read) }
attributes #22 = { cold noredzone }
attributes #23 = { noredzone allocsize(0) }
attributes #24 = { noredzone allocsize(3) }
attributes #25 = { noredzone noreturn }
attributes #26 = { noredzone allocsize(2) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464}
!llvm.ident = !{!3465}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__setup_str_irq_affinity_setup", scope: !2, file: !3, line: 38, type: !3454, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/irq/.irqdesc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/irq/irqdesc\22 -D KBUILD_BASENAME=\22irqdesc\22 -D KBUILD_MODNAME=\22irqdesc\22 -D __KBUILD_MODNAME=kmod_irqdesc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/irq/irqdesc.ll kernel/irq/irqdesc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !248, globals: !3275, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/irq/irqdesc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e58985af7e7cc7c00541f3f304197470")
!4 = !{!5, !13, !19, !26, !32, !39, !44, !52, !60, !69, !74, !79, !85, !91, !110, !118, !124, !130, !137, !148, !153, !167, !177, !196, !222}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !6, line: 497, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0)
!10 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1)
!11 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2)
!12 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !14, line: 26, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!17 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!18 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !20, line: 312, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!23 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!24 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!25 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !27, line: 45, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!30 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!31 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !33, line: 487, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!34 = !{!35, !36, !37, !38}
!35 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!36 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!37 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!38 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !40, line: 65, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!41 = !{!42, !43}
!42 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!43 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !45, line: 620, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!46 = !{!47, !48, !49, !50, !51}
!47 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!48 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!49 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!50 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!51 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !45, line: 597, baseType: !53, size: 32, elements: !54)
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !{!55, !56, !57, !58, !59}
!55 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!56 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!57 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!58 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!59 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !33, line: 547, baseType: !7, size: 32, elements: !61)
!61 = !{!62, !63, !64, !65, !66, !67, !68}
!62 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!63 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!64 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!65 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!66 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!67 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!68 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !33, line: 564, baseType: !7, size: 32, elements: !70)
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!72 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!73 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !33, line: 577, baseType: !7, size: 32, elements: !75)
!75 = !{!76, !77, !78}
!76 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!77 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!78 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !33, line: 503, baseType: !7, size: 32, elements: !80)
!80 = !{!81, !82, !83, !84}
!81 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!82 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!83 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!84 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !86, line: 30, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!87 = !{!88, !89, !90}
!88 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!89 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!90 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !92, line: 12, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/irqdomain_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "168aa78cd6535dbcc4cf99c0f8004653")
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109}
!94 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0)
!95 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1)
!96 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2)
!97 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3)
!98 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4)
!99 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5)
!100 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6)
!101 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7)
!102 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8)
!103 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9)
!104 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10)
!105 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSI", value: 11)
!106 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSIX", value: 12)
!107 = !DIEnumerator(name: "DOMAIN_BUS_DMAR", value: 13)
!108 = !DIEnumerator(name: "DOMAIN_BUS_AMDVI", value: 14)
!109 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_IMS", value: 15)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !111, line: 1094, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce91671074049198389009db13b88160")
!112 = !{!113, !114, !115, !116, !117}
!113 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1)
!114 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2)
!115 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4)
!116 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8)
!117 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !119, line: 11, baseType: !7, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!120 = !{!121, !122, !123}
!121 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!122 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!123 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !125, line: 16, baseType: !7, size: 32, elements: !126)
!125 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "TT_NONE", value: 0)
!128 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!129 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !131, line: 51, baseType: !7, size: 32, elements: !132)
!131 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!132 = !{!133, !134, !135, !136}
!133 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!134 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!135 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!136 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "node_states", file: !138, line: 398, baseType: !7, size: 32, elements: !139)
!138 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147}
!140 = !DIEnumerator(name: "N_POSSIBLE", value: 0)
!141 = !DIEnumerator(name: "N_ONLINE", value: 1)
!142 = !DIEnumerator(name: "N_NORMAL_MEMORY", value: 2)
!143 = !DIEnumerator(name: "N_HIGH_MEMORY", value: 2)
!144 = !DIEnumerator(name: "N_MEMORY", value: 3)
!145 = !DIEnumerator(name: "N_CPU", value: 4)
!146 = !DIEnumerator(name: "N_GENERIC_INITIATOR", value: 5)
!147 = !DIEnumerator(name: "NR_NODE_STATES", value: 6)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !149, line: 10, baseType: !7, size: 32, elements: !150)
!149 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!150 = !{!151, !152}
!151 = !DIEnumerator(name: "false", value: 0)
!152 = !DIEnumerator(name: "true", value: 1)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !154, line: 60, baseType: !7, size: 32, elements: !155)
!154 = !DIFile(filename: "kernel/irq/internals.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1a83a6391bcc5e0feb0932e94d9f4c16")
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!156 = !DIEnumerator(name: "IRQS_AUTODETECT", value: 1)
!157 = !DIEnumerator(name: "IRQS_SPURIOUS_DISABLED", value: 2)
!158 = !DIEnumerator(name: "IRQS_POLL_INPROGRESS", value: 8)
!159 = !DIEnumerator(name: "IRQS_ONESHOT", value: 32)
!160 = !DIEnumerator(name: "IRQS_REPLAY", value: 64)
!161 = !DIEnumerator(name: "IRQS_WAITING", value: 128)
!162 = !DIEnumerator(name: "IRQS_PENDING", value: 512)
!163 = !DIEnumerator(name: "IRQS_SUSPENDED", value: 2048)
!164 = !DIEnumerator(name: "IRQS_TIMINGS", value: 4096)
!165 = !DIEnumerator(name: "IRQS_NMI", value: 8192)
!166 = !DIEnumerator(name: "IRQS_SYSFS", value: 16384)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !168, line: 364, baseType: !7, size: 32, elements: !169)
!168 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!169 = !{!170, !171, !172, !173, !174, !175, !176}
!170 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!171 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!172 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!173 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!174 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!175 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!176 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !178, line: 6, baseType: !7, size: 32, elements: !179)
!178 = !DIFile(filename: "kernel/irq/settings.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "472defa47e63f7ff01ae8d2992e315d8")
!179 = !{!180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195}
!180 = !DIEnumerator(name: "_IRQ_DEFAULT_INIT_FLAGS", value: 0)
!181 = !DIEnumerator(name: "_IRQ_PER_CPU", value: 512)
!182 = !DIEnumerator(name: "_IRQ_LEVEL", value: 256)
!183 = !DIEnumerator(name: "_IRQ_NOPROBE", value: 1024)
!184 = !DIEnumerator(name: "_IRQ_NOREQUEST", value: 2048)
!185 = !DIEnumerator(name: "_IRQ_NOTHREAD", value: 65536)
!186 = !DIEnumerator(name: "_IRQ_NOAUTOEN", value: 4096)
!187 = !DIEnumerator(name: "_IRQ_MOVE_PCNTXT", value: 16384)
!188 = !DIEnumerator(name: "_IRQ_NO_BALANCING", value: 8192)
!189 = !DIEnumerator(name: "_IRQ_NESTED_THREAD", value: 32768)
!190 = !DIEnumerator(name: "_IRQ_PER_CPU_DEVID", value: 131072)
!191 = !DIEnumerator(name: "_IRQ_IS_POLLED", value: 262144)
!192 = !DIEnumerator(name: "_IRQ_DISABLE_UNLAZY", value: 524288)
!193 = !DIEnumerator(name: "_IRQ_HIDDEN", value: 1048576)
!194 = !DIEnumerator(name: "_IRQ_NO_DEBUG", value: 2097152)
!195 = !DIEnumerator(name: "_IRQF_MODIFY_MASK", value: 2096911)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !111, line: 227, baseType: !7, size: 32, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221}
!198 = !DIEnumerator(name: "IRQD_TRIGGER_MASK", value: 15)
!199 = !DIEnumerator(name: "IRQD_SETAFFINITY_PENDING", value: 256)
!200 = !DIEnumerator(name: "IRQD_ACTIVATED", value: 512)
!201 = !DIEnumerator(name: "IRQD_NO_BALANCING", value: 1024)
!202 = !DIEnumerator(name: "IRQD_PER_CPU", value: 2048)
!203 = !DIEnumerator(name: "IRQD_AFFINITY_SET", value: 4096)
!204 = !DIEnumerator(name: "IRQD_LEVEL", value: 8192)
!205 = !DIEnumerator(name: "IRQD_WAKEUP_STATE", value: 16384)
!206 = !DIEnumerator(name: "IRQD_MOVE_PCNTXT", value: 32768)
!207 = !DIEnumerator(name: "IRQD_IRQ_DISABLED", value: 65536)
!208 = !DIEnumerator(name: "IRQD_IRQ_MASKED", value: 131072)
!209 = !DIEnumerator(name: "IRQD_IRQ_INPROGRESS", value: 262144)
!210 = !DIEnumerator(name: "IRQD_WAKEUP_ARMED", value: 524288)
!211 = !DIEnumerator(name: "IRQD_FORWARDED_TO_VCPU", value: 1048576)
!212 = !DIEnumerator(name: "IRQD_AFFINITY_MANAGED", value: 2097152)
!213 = !DIEnumerator(name: "IRQD_IRQ_STARTED", value: 4194304)
!214 = !DIEnumerator(name: "IRQD_MANAGED_SHUTDOWN", value: 8388608)
!215 = !DIEnumerator(name: "IRQD_SINGLE_TARGET", value: 16777216)
!216 = !DIEnumerator(name: "IRQD_DEFAULT_TRIGGER_SET", value: 33554432)
!217 = !DIEnumerator(name: "IRQD_CAN_RESERVE", value: 67108864)
!218 = !DIEnumerator(name: "IRQD_HANDLE_ENFORCE_IRQCTX", value: 134217728)
!219 = !DIEnumerator(name: "IRQD_AFFINITY_ON_ACTIVATE", value: 268435456)
!220 = !DIEnumerator(name: "IRQD_IRQ_ENABLED_ON_SUSPEND", value: 536870912)
!221 = !DIEnumerator(name: "IRQD_RESEND_WHEN_IN_PROGRESS", value: 1073741824)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !111, line: 77, baseType: !7, size: 32, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247}
!224 = !DIEnumerator(name: "IRQ_TYPE_NONE", value: 0)
!225 = !DIEnumerator(name: "IRQ_TYPE_EDGE_RISING", value: 1)
!226 = !DIEnumerator(name: "IRQ_TYPE_EDGE_FALLING", value: 2)
!227 = !DIEnumerator(name: "IRQ_TYPE_EDGE_BOTH", value: 3)
!228 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_HIGH", value: 4)
!229 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_LOW", value: 8)
!230 = !DIEnumerator(name: "IRQ_TYPE_LEVEL_MASK", value: 12)
!231 = !DIEnumerator(name: "IRQ_TYPE_SENSE_MASK", value: 15)
!232 = !DIEnumerator(name: "IRQ_TYPE_DEFAULT", value: 15)
!233 = !DIEnumerator(name: "IRQ_TYPE_PROBE", value: 16)
!234 = !DIEnumerator(name: "IRQ_LEVEL", value: 256)
!235 = !DIEnumerator(name: "IRQ_PER_CPU", value: 512)
!236 = !DIEnumerator(name: "IRQ_NOPROBE", value: 1024)
!237 = !DIEnumerator(name: "IRQ_NOREQUEST", value: 2048)
!238 = !DIEnumerator(name: "IRQ_NOAUTOEN", value: 4096)
!239 = !DIEnumerator(name: "IRQ_NO_BALANCING", value: 8192)
!240 = !DIEnumerator(name: "IRQ_MOVE_PCNTXT", value: 16384)
!241 = !DIEnumerator(name: "IRQ_NESTED_THREAD", value: 32768)
!242 = !DIEnumerator(name: "IRQ_NOTHREAD", value: 65536)
!243 = !DIEnumerator(name: "IRQ_PER_CPU_DEVID", value: 131072)
!244 = !DIEnumerator(name: "IRQ_IS_POLLED", value: 262144)
!245 = !DIEnumerator(name: "IRQ_DISABLE_UNLAZY", value: 524288)
!246 = !DIEnumerator(name: "IRQ_HIDDEN", value: 1048576)
!247 = !DIEnumerator(name: "IRQ_NO_DEBUG", value: 2097152)
!248 = !{!249, !53, !250, !252, !262, !259, !263, !264, !267, !7, !270, !3273, !1532}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !251, line: 154, baseType: !7)
!251 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !255, line: 19, size: 64, elements: !256)
!255 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !254, file: !255, line: 19, baseType: !258, size: 64)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 64, elements: !260)
!259 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!260 = !{!261}
!261 = !DISubrange(count: 1)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !266)
!266 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !269)
!269 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !272, line: 55, size: 3584, align: 512, elements: !273)
!272 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "435ffcdb49377a4c91932ebe21d66dca")
!273 = !{!274, !287, !2136, !2137, !2138, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3239, !3240, !3241, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !271, file: !272, line: 56, baseType: !275, size: 320)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !111, line: 147, size: 320, elements: !276)
!276 = !{!277, !278, !279, !280, !283, !286}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !275, file: !111, line: 148, baseType: !7, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !275, file: !111, line: 150, baseType: !7, size: 32, offset: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !275, file: !111, line: 152, baseType: !249, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !275, file: !111, line: 153, baseType: !281, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !111, line: 129, flags: DIFlagFwdDecl)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !275, file: !111, line: 155, baseType: !284, size: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !255, line: 913, baseType: !285)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 64, elements: !260)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "effective_affinity", scope: !275, file: !111, line: 158, baseType: !284, size: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !271, file: !272, line: 57, baseType: !288, size: 448, offset: 320)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !111, line: 179, size: 448, elements: !289)
!289 = !{!290, !295, !296, !297, !299, !382, !2134, !2135}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !288, file: !111, line: 180, baseType: !291, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !292, line: 21, baseType: !293)
!292 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !294, line: 27, baseType: !7)
!294 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!295 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !288, file: !111, line: 181, baseType: !7, size: 32, offset: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !288, file: !111, line: 182, baseType: !259, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !288, file: !111, line: 183, baseType: !298, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !288, file: !111, line: 184, baseType: !300, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !111, line: 501, size: 2112, elements: !302)
!302 = !{!303, !306, !311, !315, !316, !317, !318, !319, !320, !321, !322, !328, !332, !336, !337, !338, !339, !340, !341, !342, !343, !349, !350, !351, !357, !358, !363, !367, !371, !375, !379, !380, !381}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !301, file: !111, line: 502, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !301, file: !111, line: 503, baseType: !307, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!7, !310}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !301, file: !111, line: 504, baseType: !312, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !310}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !301, file: !111, line: 505, baseType: !312, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !301, file: !111, line: 506, baseType: !312, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !301, file: !111, line: 508, baseType: !312, size: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !301, file: !111, line: 509, baseType: !312, size: 64, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !301, file: !111, line: 510, baseType: !312, size: 64, offset: 448)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !301, file: !111, line: 511, baseType: !312, size: 64, offset: 512)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !301, file: !111, line: 512, baseType: !312, size: 64, offset: 576)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !301, file: !111, line: 514, baseType: !323, size: 64, offset: 640)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!53, !310, !252, !326}
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !251, line: 35, baseType: !327)
!327 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !301, file: !111, line: 515, baseType: !329, size: 64, offset: 704)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!53, !310}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !301, file: !111, line: 516, baseType: !333, size: 64, offset: 768)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!53, !310, !7}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !301, file: !111, line: 517, baseType: !333, size: 64, offset: 832)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !301, file: !111, line: 519, baseType: !312, size: 64, offset: 896)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !301, file: !111, line: 520, baseType: !312, size: 64, offset: 960)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !301, file: !111, line: 526, baseType: !312, size: 64, offset: 1024)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !301, file: !111, line: 527, baseType: !312, size: 64, offset: 1088)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !301, file: !111, line: 528, baseType: !312, size: 64, offset: 1152)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !301, file: !111, line: 530, baseType: !312, size: 64, offset: 1216)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !301, file: !111, line: 532, baseType: !344, size: 64, offset: 1280)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !310, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !111, line: 27, flags: DIFlagFwdDecl)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !301, file: !111, line: 533, baseType: !329, size: 64, offset: 1344)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !301, file: !111, line: 534, baseType: !312, size: 64, offset: 1408)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !301, file: !111, line: 536, baseType: !352, size: 64, offset: 1472)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !310, !355}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !111, line: 29, flags: DIFlagFwdDecl)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !301, file: !111, line: 537, baseType: !352, size: 64, offset: 1536)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !301, file: !111, line: 539, baseType: !359, size: 64, offset: 1600)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!53, !310, !5, !362}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !301, file: !111, line: 540, baseType: !364, size: 64, offset: 1664)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!53, !310, !5, !326}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !301, file: !111, line: 542, baseType: !368, size: 64, offset: 1728)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!53, !310, !249}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !301, file: !111, line: 544, baseType: !372, size: 64, offset: 1792)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !310, !7}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !301, file: !111, line: 545, baseType: !376, size: 64, offset: 1856)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !310, !252}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !301, file: !111, line: 547, baseType: !329, size: 64, offset: 1920)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !301, file: !111, line: 548, baseType: !312, size: 64, offset: 1984)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !111, line: 550, baseType: !259, size: 64, offset: 2048)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !288, file: !111, line: 185, baseType: !383, size: 64, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !385, line: 150, size: 1408, elements: !386)
!385 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cd3b6d3aac1ec0f42f0ed0e1454dc51c")
!386 = !{!387, !393, !394, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2116, !2117, !2118, !2119, !2123, !2124, !2125, !2132}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !384, file: !385, line: 151, baseType: !388, size: 128)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !251, line: 190, size: 128, elements: !389)
!389 = !{!390, !392}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !388, file: !251, line: 191, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !388, file: !251, line: 191, baseType: !391, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !384, file: !385, line: 152, baseType: !304, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !384, file: !385, line: 153, baseType: !395, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !385, line: 88, size: 640, elements: !398)
!398 = !{!399, !1996, !2007, !2012, !2016, !2022, !2026, !2030, !2034, !2038}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !397, file: !385, line: 89, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!53, !383, !403, !91}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !405, line: 48, size: 1152, elements: !406)
!405 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!406 = !{!407, !408, !410, !411, !1982, !1990, !1991, !1992, !1993, !1994, !1995}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !404, file: !405, line: 49, baseType: !304, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !404, file: !405, line: 50, baseType: !409, size: 32, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !405, line: 25, baseType: !291)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !404, file: !405, line: 51, baseType: !304, size: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !404, file: !405, line: 52, baseType: !412, size: 512, offset: 192)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !413, line: 41, size: 512, elements: !414)
!413 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!414 = !{!415, !417, !1978, !1979, !1980, !1981}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !412, file: !413, line: 42, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !412, file: !413, line: 43, baseType: !418, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !413, line: 125, size: 1408, elements: !421)
!421 = !{!422, !426, !430, !436, !1908, !1909, !1913, !1917, !1921, !1925, !1929, !1930, !1934, !1938, !1942, !1953, !1954, !1955, !1956, !1966, !1970, !1974}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !420, file: !413, line: 126, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!416, !416}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !420, file: !413, line: 127, baseType: !427, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !416}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !420, file: !413, line: 128, baseType: !431, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!326, !434}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !420, file: !413, line: 129, baseType: !437, size: 64, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!440, !434, !442}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !33, line: 705, size: 5824, elements: !445)
!445 = !{!446, !1093, !1095, !1098, !1099, !1150, !1619, !1620, !1621, !1622, !1623, !1630, !1800, !1813, !1820, !1824, !1826, !1827, !1828, !1832, !1839, !1840, !1843, !1846, !1847, !1848, !1849, !1852, !1853, !1854, !1855, !1885, !1886, !1887, !1890, !1893, !1902, !1903, !1904, !1905, !1906, !1907}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !444, file: !33, line: 706, baseType: !447, size: 512)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !448, line: 64, size: 512, elements: !449)
!448 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!449 = !{!450, !451, !452, !454, !541, !966, !1078, !1088, !1089, !1090, !1091, !1092}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !447, file: !448, line: 65, baseType: !304, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !447, file: !448, line: 66, baseType: !388, size: 128, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !447, file: !448, line: 67, baseType: !453, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !447, file: !448, line: 68, baseType: !455, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !448, line: 168, size: 768, elements: !457)
!457 = !{!458, !459, !500, !501}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !456, file: !448, line: 169, baseType: !388, size: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !456, file: !448, line: 170, baseType: !460, size: 32, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !461, line: 29, baseType: !462)
!461 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !461, line: 17, size: 32, elements: !463)
!463 = !{!464}
!464 = !DIDerivedType(tag: DW_TAG_member, scope: !462, file: !461, line: 18, baseType: !465, size: 32)
!465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !462, file: !461, line: 18, size: 32, elements: !466)
!466 = !{!467}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !465, file: !461, line: 19, baseType: !468, size: 32)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !469, line: 14, size: 32, elements: !470)
!469 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!470 = !{!471}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !468, file: !469, line: 15, baseType: !472, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !473, line: 44, baseType: !474)
!473 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !473, line: 14, size: 32, elements: !475)
!475 = !{!476}
!476 = !DIDerivedType(tag: DW_TAG_member, scope: !474, file: !473, line: 15, baseType: !477, size: 32)
!477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !474, file: !473, line: 15, size: 32, elements: !478)
!478 = !{!479, !484, !492}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !477, file: !473, line: 16, baseType: !480, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !251, line: 174, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 172, size: 32, elements: !482)
!482 = !{!483}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !481, file: !251, line: 173, baseType: !53, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, scope: !477, file: !473, line: 24, baseType: !485, size: 16)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !477, file: !473, line: 24, size: 16, elements: !486)
!486 = !{!487, !491}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !485, file: !473, line: 25, baseType: !488, size: 8)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !292, line: 17, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !294, line: 21, baseType: !490)
!490 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !485, file: !473, line: 26, baseType: !488, size: 8, offset: 8)
!492 = !DIDerivedType(tag: DW_TAG_member, scope: !477, file: !473, line: 28, baseType: !493, size: 32)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !477, file: !473, line: 28, size: 32, elements: !494)
!494 = !{!495, !499}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !493, file: !473, line: 29, baseType: !496, size: 16)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !292, line: 19, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !294, line: 24, baseType: !498)
!498 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !493, file: !473, line: 30, baseType: !496, size: 16, offset: 16)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !456, file: !448, line: 171, baseType: !447, size: 512, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !456, file: !448, line: 172, baseType: !502, size: 64, offset: 704)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !448, line: 133, size: 192, elements: !505)
!505 = !{!506, !513, !518}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !504, file: !448, line: 134, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!53, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !504, file: !448, line: 135, baseType: !514, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!304, !511}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !504, file: !448, line: 136, baseType: !519, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!53, !511, !523}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !448, line: 125, size: 20736, elements: !525)
!525 = !{!526, !531, !535, !536, !540}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !524, file: !448, line: 126, baseType: !527, size: 192)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 192, elements: !529)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!529 = !{!530}
!530 = !DISubrange(count: 3)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !524, file: !448, line: 127, baseType: !532, size: 4096, offset: 192)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 4096, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !524, file: !448, line: 128, baseType: !53, size: 32, offset: 4288)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !524, file: !448, line: 129, baseType: !537, size: 16384, offset: 4320)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 16384, elements: !538)
!538 = !{!539}
!539 = !DISubrange(count: 2048)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !524, file: !448, line: 130, baseType: !53, size: 32, offset: 20704)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !447, file: !448, line: 69, baseType: !542, size: 64, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !448, line: 116, size: 384, elements: !545)
!545 = !{!546, !550, !577, !912, !943, !947}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !544, file: !448, line: 117, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !453}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !544, file: !448, line: 118, baseType: !551, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !554, line: 254, size: 128, elements: !555)
!554 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!555 = !{!556, !570}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !553, file: !554, line: 255, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!560, !453, !564, !528}
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !251, line: 66, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !562, line: 73, baseType: !563)
!562 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !562, line: 15, baseType: !269)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !554, line: 30, size: 128, elements: !566)
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !565, file: !554, line: 31, baseType: !304, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !565, file: !554, line: 32, baseType: !569, size: 16, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !251, line: 24, baseType: !498)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !553, file: !554, line: 256, baseType: !571, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!560, !453, !564, !304, !574}
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !251, line: 61, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !562, line: 72, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !562, line: 16, baseType: !259)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !544, file: !448, line: 119, baseType: !578, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !581)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !554, line: 84, size: 320, elements: !582)
!582 = !{!583, !584, !588, !908, !910}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !581, file: !554, line: 85, baseType: !304, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !581, file: !554, line: 86, baseType: !585, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!569, !453, !564, !53}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !581, file: !554, line: 88, baseType: !589, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!569, !453, !592, !53}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !554, line: 175, size: 512, elements: !594)
!594 = !{!595, !596, !597, !598, !605, !615, !616}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !593, file: !554, line: 176, baseType: !565, size: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !593, file: !554, line: 177, baseType: !574, size: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !593, file: !554, line: 178, baseType: !249, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !593, file: !554, line: 179, baseType: !599, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !604, line: 32, flags: DIFlagFwdDecl)
!604 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!605 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !593, file: !554, line: 180, baseType: !606, size: 64, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!560, !609, !453, !592, !528, !612, !574}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !611, line: 537, flags: DIFlagFwdDecl)
!611 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !251, line: 52, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !562, line: 88, baseType: !614)
!614 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !593, file: !554, line: 182, baseType: !606, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !593, file: !554, line: 184, baseType: !617, size: 64, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!53, !609, !453, !592, !620}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !604, line: 625, size: 1344, elements: !622)
!622 = !{!623, !640, !859, !865, !872, !873, !878, !879, !891, !892, !895, !899, !900, !901, !902, !903, !906}
!623 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !604, line: 628, baseType: !624, size: 128)
!624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !604, line: 628, size: 128, elements: !625)
!625 = !{!626, !631}
!626 = !DIDerivedType(tag: DW_TAG_member, scope: !624, file: !604, line: 629, baseType: !627, size: 128)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !624, file: !604, line: 629, size: 128, elements: !628)
!628 = !{!629, !630}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !627, file: !604, line: 631, baseType: !259, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !627, file: !604, line: 632, baseType: !259, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !624, file: !604, line: 635, baseType: !632, size: 128, align: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !251, line: 232, size: 128, align: 64, elements: !633)
!633 = !{!634, !636}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !632, file: !251, line: 233, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !632, file: !251, line: 234, baseType: !637, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !635}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !621, file: !604, line: 639, baseType: !641, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !604, line: 733, size: 10240, elements: !643)
!643 = !{!644, !855}
!644 = !DIDerivedType(tag: DW_TAG_member, scope: !642, file: !604, line: 734, baseType: !645, size: 10240)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !642, file: !604, line: 734, size: 10240, elements: !646)
!646 = !{!647, !651, !665, !669, !670, !671, !672, !673, !674, !682, !683, !684, !693, !694, !703, !704, !705, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !752, !766, !769, !822, !823, !824, !827, !830, !831, !834, !835, !836, !842, !843}
!647 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !604, line: 739, baseType: !648, size: 512, align: 512)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !645, file: !604, line: 739, size: 512, align: 512, elements: !649)
!649 = !{!650}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !648, file: !604, line: 747, baseType: !480, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !645, file: !604, line: 750, baseType: !652, size: 128, offset: 512)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !653, line: 218, size: 128, elements: !654)
!653 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!654 = !{!655, !663, !664}
!655 = !DIDerivedType(tag: DW_TAG_member, scope: !652, file: !653, line: 219, baseType: !656, size: 32)
!656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !652, file: !653, line: 219, size: 32, elements: !657)
!657 = !{!658, !659}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !656, file: !653, line: 220, baseType: !460, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !656, file: !653, line: 221, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !653, line: 197, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !653, line: 197, elements: !662)
!662 = !{}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !652, file: !653, line: 223, baseType: !7, size: 32, offset: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !652, file: !653, line: 224, baseType: !249, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !645, file: !604, line: 752, baseType: !666, size: 64, offset: 640)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!259, !609, !259, !259, !259, !259}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !645, file: !604, line: 756, baseType: !259, size: 64, offset: 704)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !645, file: !604, line: 757, baseType: !259, size: 64, offset: 768)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !645, file: !604, line: 760, baseType: !259, size: 64, offset: 832)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !645, file: !604, line: 761, baseType: !259, size: 64, offset: 896)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !645, file: !604, line: 763, baseType: !259, size: 64, offset: 960)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !645, file: !604, line: 764, baseType: !675, size: 64, offset: 1024)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !611, line: 299, baseType: !677)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !611, line: 299, size: 64, elements: !678)
!678 = !{!679}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !677, file: !611, line: 299, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !681, line: 18, baseType: !259)
!681 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!682 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !645, file: !604, line: 773, baseType: !480, size: 32, offset: 1088)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !645, file: !604, line: 785, baseType: !480, size: 32, offset: 1120)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !645, file: !604, line: 795, baseType: !685, size: 64, offset: 1152)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !604, line: 726, size: 128, elements: !687)
!687 = !{!688, !692}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !686, file: !604, line: 727, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !292, line: 23, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !294, line: 31, baseType: !691)
!691 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !686, file: !604, line: 728, baseType: !53, size: 32, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !645, file: !604, line: 801, baseType: !259, size: 64, offset: 1216)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !645, file: !604, line: 804, baseType: !695, size: 64, offset: 1280)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !696, line: 13, baseType: !697)
!696 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !251, line: 181, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 179, size: 64, elements: !699)
!699 = !{!700}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !698, file: !251, line: 180, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !292, line: 22, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !294, line: 30, baseType: !614)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !645, file: !604, line: 806, baseType: !53, size: 32, offset: 1344)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !645, file: !604, line: 808, baseType: !460, size: 32, offset: 1376)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !645, file: !604, line: 823, baseType: !706, size: 320, offset: 1408)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !707, line: 48, size: 320, elements: !708)
!707 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!708 = !{!709, !710, !711, !716, !718}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !706, file: !707, line: 49, baseType: !695, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !706, file: !707, line: 55, baseType: !695, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !706, file: !707, line: 57, baseType: !712, size: 32, offset: 128)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !713, line: 15, size: 32, elements: !714)
!713 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !712, file: !713, line: 20, baseType: !480, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !706, file: !707, line: 59, baseType: !717, size: 32, offset: 160)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !469, line: 23, baseType: !468)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !706, file: !707, line: 60, baseType: !388, size: 128, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !645, file: !604, line: 825, baseType: !388, size: 128, offset: 1728)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !645, file: !604, line: 845, baseType: !53, size: 32, offset: 1856)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !645, file: !604, line: 849, baseType: !259, size: 64, offset: 1920)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !645, file: !604, line: 850, baseType: !259, size: 64, offset: 1984)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !645, file: !604, line: 852, baseType: !259, size: 64, offset: 2048)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !645, file: !604, line: 853, baseType: !259, size: 64, offset: 2112)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !645, file: !604, line: 854, baseType: !697, size: 64, offset: 2176)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !645, file: !604, line: 855, baseType: !259, size: 64, offset: 2240)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !645, file: !604, line: 856, baseType: !259, size: 64, offset: 2304)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !645, file: !604, line: 857, baseType: !259, size: 64, offset: 2368)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !645, file: !604, line: 858, baseType: !259, size: 64, offset: 2432)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !645, file: !604, line: 865, baseType: !731, size: 32, offset: 2496)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !732, line: 69, baseType: !733)
!732 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !732, line: 64, size: 32, elements: !734)
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !733, file: !732, line: 65, baseType: !7, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !645, file: !604, line: 867, baseType: !460, size: 32, offset: 2528)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !645, file: !604, line: 869, baseType: !259, size: 64, offset: 2560)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !645, file: !604, line: 869, baseType: !259, size: 64, offset: 2624)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !645, file: !604, line: 869, baseType: !259, size: 64, offset: 2688)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !645, file: !604, line: 869, baseType: !259, size: 64, offset: 2752)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !645, file: !604, line: 870, baseType: !259, size: 64, offset: 2816)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !645, file: !604, line: 870, baseType: !259, size: 64, offset: 2880)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !645, file: !604, line: 870, baseType: !259, size: 64, offset: 2944)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !645, file: !604, line: 871, baseType: !259, size: 64, offset: 3008)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !645, file: !604, line: 871, baseType: !259, size: 64, offset: 3072)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !645, file: !604, line: 871, baseType: !259, size: 64, offset: 3136)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !645, file: !604, line: 871, baseType: !259, size: 64, offset: 3200)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !645, file: !604, line: 873, baseType: !749, size: 3328, offset: 3264)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 3328, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 52)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !645, file: !604, line: 875, baseType: !753, size: 1280, offset: 6592)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !754, size: 1280, elements: !764)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !755, line: 22, size: 320, elements: !756)
!755 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!756 = !{!757, !758, !759, !760}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !754, file: !755, line: 23, baseType: !717, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !754, file: !755, line: 24, baseType: !701, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !754, file: !755, line: 26, baseType: !388, size: 128, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !754, file: !755, line: 28, baseType: !761, size: 64, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !292, line: 20, baseType: !763)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !294, line: 26, baseType: !53)
!764 = !{!765}
!765 = !DISubrange(count: 4)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !645, file: !604, line: 877, baseType: !767, size: 64, offset: 7872)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !604, line: 877, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !645, file: !604, line: 880, baseType: !770, size: 1088, offset: 7936)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !771, line: 72, baseType: !772)
!771 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !771, line: 23, size: 1088, elements: !773)
!773 = !{!774, !775, !776, !777, !778, !781, !782, !790, !791, !816, !817, !818}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !772, file: !771, line: 28, baseType: !689, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !772, file: !771, line: 38, baseType: !697, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !772, file: !771, line: 40, baseType: !259, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !772, file: !771, line: 43, baseType: !706, size: 320, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !772, file: !771, line: 44, baseType: !779, size: 64, offset: 512)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !771, line: 44, flags: DIFlagFwdDecl)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !772, file: !771, line: 48, baseType: !259, size: 64, offset: 576)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !772, file: !771, line: 59, baseType: !783, size: 256, offset: 640)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !784, line: 66, size: 256, elements: !785)
!784 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!785 = !{!786, !787, !788, !789}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !783, file: !784, line: 67, baseType: !695, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !783, file: !784, line: 68, baseType: !717, size: 32, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !783, file: !784, line: 70, baseType: !712, size: 32, offset: 96)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !783, file: !784, line: 72, baseType: !388, size: 128, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !772, file: !771, line: 60, baseType: !249, size: 64, offset: 896)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !772, file: !771, line: 61, baseType: !792, size: 64, offset: 960)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !794)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !795, line: 13, size: 1216, elements: !796)
!795 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!796 = !{!797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !794, file: !795, line: 14, baseType: !249, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !794, file: !795, line: 15, baseType: !259, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !794, file: !795, line: 17, baseType: !259, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !794, file: !795, line: 17, baseType: !259, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !794, file: !795, line: 18, baseType: !259, size: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !794, file: !795, line: 18, baseType: !259, size: 64, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !794, file: !795, line: 19, baseType: !440, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !794, file: !795, line: 21, baseType: !269, size: 64, offset: 448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !794, file: !795, line: 23, baseType: !269, size: 64, offset: 512)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !794, file: !795, line: 24, baseType: !269, size: 64, offset: 576)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !794, file: !795, line: 25, baseType: !269, size: 64, offset: 640)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !794, file: !795, line: 26, baseType: !269, size: 64, offset: 704)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !794, file: !795, line: 27, baseType: !269, size: 64, offset: 768)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !794, file: !795, line: 28, baseType: !269, size: 64, offset: 832)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !794, file: !795, line: 29, baseType: !269, size: 64, offset: 896)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !794, file: !795, line: 30, baseType: !269, size: 64, offset: 960)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !794, file: !795, line: 31, baseType: !269, size: 64, offset: 1024)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !794, file: !795, line: 32, baseType: !269, size: 64, offset: 1088)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !794, file: !795, line: 33, baseType: !269, size: 64, offset: 1152)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !772, file: !771, line: 63, baseType: !480, size: 32, offset: 1024)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !772, file: !771, line: 69, baseType: !496, size: 16, offset: 1056)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !772, file: !771, line: 70, baseType: !819, size: 16, offset: 1072)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !292, line: 18, baseType: !820)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !294, line: 23, baseType: !821)
!821 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !645, file: !604, line: 882, baseType: !259, size: 64, offset: 9024)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !645, file: !604, line: 885, baseType: !460, size: 32, offset: 9088)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !645, file: !604, line: 886, baseType: !825, size: 64, offset: 9152)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !604, line: 732, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !645, file: !604, line: 901, baseType: !828, size: 64, offset: 9216)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !604, line: 901, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !645, file: !604, line: 904, baseType: !609, size: 64, offset: 9280)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !645, file: !604, line: 906, baseType: !832, size: 64, offset: 9344)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !604, line: 906, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !645, file: !604, line: 930, baseType: !480, size: 32, offset: 9408)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !645, file: !604, line: 933, baseType: !480, size: 32, offset: 9440)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !645, file: !604, line: 935, baseType: !837, size: 64, offset: 9472)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !131, line: 103, size: 64, elements: !838)
!838 = !{!839}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !837, file: !131, line: 104, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !131, line: 101, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !645, file: !604, line: 940, baseType: !695, size: 64, offset: 9536)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !645, file: !604, line: 942, baseType: !844, size: 256, offset: 9600)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !845, line: 98, size: 256, elements: !846)
!845 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!846 = !{!847, !848, !849}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !844, file: !845, line: 99, baseType: !695, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !844, file: !845, line: 100, baseType: !388, size: 128, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !844, file: !845, line: 101, baseType: !850, size: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !845, line: 21, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !854}
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !642, file: !604, line: 986, baseType: !856, offset: 10240)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, elements: !857)
!857 = !{!858}
!858 = !DISubrange(count: -1)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !621, file: !604, line: 640, baseType: !860, size: 64, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !611, line: 297, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !611, line: 297, size: 64, elements: !862)
!862 = !{!863}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !861, file: !611, line: 297, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !681, line: 19, baseType: !259)
!865 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !604, line: 646, baseType: !866, size: 64, offset: 256)
!866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !604, line: 646, size: 64, elements: !867)
!867 = !{!868, !871}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !866, file: !604, line: 647, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !870)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !604, line: 542, baseType: !259)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !866, file: !604, line: 648, baseType: !870, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !621, file: !604, line: 666, baseType: !53, size: 32, offset: 320)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !621, file: !604, line: 667, baseType: !874, size: 64, offset: 384)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !604, line: 579, size: 320, elements: !876)
!876 = !{!877}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !875, file: !604, line: 580, baseType: !706, size: 320)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !621, file: !604, line: 670, baseType: !326, size: 8, offset: 448)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !621, file: !604, line: 681, baseType: !880, size: 256, offset: 512)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !621, file: !604, line: 678, size: 256, elements: !881)
!881 = !{!882, !890}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !880, file: !604, line: 679, baseType: !883, size: 192, align: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !884, line: 5, size: 192, align: 64, elements: !885)
!884 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!885 = !{!886, !887, !889}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !883, file: !884, line: 6, baseType: !259, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !883, file: !884, line: 7, baseType: !888, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !883, file: !884, line: 8, baseType: !888, size: 64, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !880, file: !604, line: 680, baseType: !259, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !621, file: !604, line: 689, baseType: !388, size: 128, offset: 768)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !621, file: !604, line: 691, baseType: !893, size: 64, offset: 896)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !604, line: 691, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !621, file: !604, line: 694, baseType: !896, size: 64, offset: 960)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !898)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !604, line: 694, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !621, file: !604, line: 697, baseType: !259, size: 64, offset: 1024)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !621, file: !604, line: 699, baseType: !609, size: 64, offset: 1088)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !621, file: !604, line: 700, baseType: !249, size: 64, offset: 1152)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !621, file: !604, line: 711, baseType: !695, size: 64, offset: 1216)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !621, file: !604, line: 717, baseType: !904, size: 64, offset: 1280)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !604, line: 717, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !621, file: !604, line: 722, baseType: !907, offset: 1344)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !604, line: 570, elements: !662)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !581, file: !554, line: 90, baseType: !909, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !581, file: !554, line: 91, baseType: !911, size: 64, offset: 256)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !544, file: !448, line: 120, baseType: !913, size: 64, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!916, !511}
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !918)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !919)
!919 = !{!920, !921, !925, !929, !935, !939}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !918, file: !14, line: 40, baseType: !13, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !918, file: !14, line: 41, baseType: !922, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!326}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !918, file: !14, line: 42, baseType: !926, size: 64, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!249}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !918, file: !14, line: 43, baseType: !930, size: 64, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!440, !933}
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !918, file: !14, line: 44, baseType: !936, size: 64, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!440}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !918, file: !14, line: 45, baseType: !940, size: 64, offset: 320)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{null, !249}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !544, file: !448, line: 121, baseType: !944, size: 64, offset: 256)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!440, !511}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !544, file: !448, line: 122, baseType: !948, size: 64, offset: 320)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{null, !511, !951, !959}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !953, line: 23, baseType: !954)
!953 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !953, line: 21, size: 32, elements: !955)
!955 = !{!956}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !954, file: !953, line: 22, baseType: !957, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !251, line: 37, baseType: !958)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !562, line: 49, baseType: !7)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !953, line: 28, baseType: !961)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !953, line: 26, size: 32, elements: !962)
!962 = !{!963}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !961, file: !953, line: 27, baseType: !964, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !251, line: 38, baseType: !965)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !562, line: 50, baseType: !7)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !447, file: !448, line: 70, baseType: !967, size: 64, offset: 384)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !969, line: 190, size: 1152, elements: !970)
!969 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!970 = !{!971, !972, !973, !974, !975, !976, !977, !978, !1070, !1071, !1072, !1073, !1074, !1077}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !968, file: !969, line: 191, baseType: !480, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !968, file: !969, line: 192, baseType: !480, size: 32, offset: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !968, file: !969, line: 202, baseType: !967, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !968, file: !969, line: 203, baseType: !304, size: 64, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !968, file: !969, line: 205, baseType: !883, size: 192, align: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !968, file: !969, line: 207, baseType: !440, size: 64, offset: 384)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !968, file: !969, line: 208, baseType: !7, size: 32, offset: 448)
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !969, line: 209, baseType: !979, size: 256, offset: 512)
!979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !968, file: !969, line: 209, size: 256, elements: !980)
!980 = !{!981, !993, !997}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !979, file: !969, line: 210, baseType: !982, size: 256)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !969, line: 153, size: 256, elements: !983)
!983 = !{!984, !985, !989, !992}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !982, file: !969, line: 154, baseType: !259, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !982, file: !969, line: 156, baseType: !986, size: 64, offset: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !884, line: 12, size: 64, elements: !987)
!987 = !{!988}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !986, file: !884, line: 13, baseType: !888, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !982, file: !969, line: 162, baseType: !990, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !969, line: 162, flags: DIFlagFwdDecl)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !982, file: !969, line: 167, baseType: !259, size: 64, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !979, file: !969, line: 211, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !969, line: 170, size: 64, elements: !995)
!995 = !{!996}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !994, file: !969, line: 171, baseType: !967, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !979, file: !969, line: 212, baseType: !998, size: 256)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !969, line: 174, size: 256, elements: !999)
!999 = !{!1000, !1065, !1068, !1069}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !998, file: !969, line: 175, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1003)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !969, line: 271, size: 768, elements: !1004)
!1004 = !{!1005, !1025, !1029, !1033, !1038, !1042, !1046, !1050, !1051, !1052, !1053, !1061}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1003, file: !969, line: 276, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!53, !1009}
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !969, line: 251, size: 1216, elements: !1011)
!1011 = !{!1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1010, file: !969, line: 253, baseType: !967, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1010, file: !969, line: 254, baseType: !609, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1010, file: !969, line: 255, baseType: !347, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1010, file: !969, line: 256, baseType: !249, size: 64, offset: 192)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1010, file: !969, line: 259, baseType: !783, size: 256, offset: 256)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1010, file: !969, line: 260, baseType: !783, size: 256, offset: 512)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1010, file: !969, line: 261, baseType: !53, size: 32, offset: 768)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1010, file: !969, line: 262, baseType: !388, size: 128, offset: 832)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1010, file: !969, line: 263, baseType: !528, size: 64, offset: 960)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1010, file: !969, line: 265, baseType: !574, size: 64, offset: 1024)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1010, file: !969, line: 266, baseType: !326, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1010, file: !969, line: 267, baseType: !326, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1010, file: !969, line: 268, baseType: !896, size: 64, offset: 1152)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1003, file: !969, line: 277, baseType: !1026, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !1009}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1003, file: !969, line: 290, baseType: !1030, size: 64, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!53, !347, !249}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1003, file: !969, line: 292, baseType: !1034, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!249, !347, !1037}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1003, file: !969, line: 293, baseType: !1039, size: 64, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!249, !347, !249, !1037}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1003, file: !969, line: 294, baseType: !1043, size: 64, offset: 320)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !347, !249}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1003, file: !969, line: 296, baseType: !1047, size: 64, offset: 384)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!560, !1009, !528, !574, !612}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1003, file: !969, line: 306, baseType: !574, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1003, file: !969, line: 313, baseType: !326, size: 8, offset: 512)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1003, file: !969, line: 314, baseType: !1047, size: 64, offset: 576)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1003, file: !969, line: 317, baseType: !1054, size: 64, offset: 640)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!1057, !1009, !1059}
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1058, line: 59, baseType: !7)
!1058 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !969, line: 31, flags: DIFlagFwdDecl)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1003, file: !969, line: 320, baseType: !1062, size: 64, offset: 704)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!53, !1009, !620}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !998, file: !969, line: 176, baseType: !1066, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !969, line: 35, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !998, file: !969, line: 177, baseType: !612, size: 64, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !998, file: !969, line: 178, baseType: !967, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !968, file: !969, line: 215, baseType: !249, size: 64, offset: 768)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !968, file: !969, line: 221, baseType: !689, size: 64, offset: 832)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !968, file: !969, line: 223, baseType: !498, size: 16, offset: 896)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !968, file: !969, line: 224, baseType: !569, size: 16, offset: 912)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !968, file: !969, line: 225, baseType: !1075, size: 64, offset: 960)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !969, line: 36, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !968, file: !969, line: 227, baseType: !632, size: 128, align: 64, offset: 1024)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !447, file: !448, line: 71, baseType: !1079, size: 32, offset: 448)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1080, line: 19, size: 32, elements: !1081)
!1080 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1081 = !{!1082}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1079, file: !1080, line: 20, baseType: !1083, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1084, line: 113, baseType: !1085)
!1084 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1084, line: 111, size: 32, elements: !1086)
!1086 = !{!1087}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1085, file: !1084, line: 112, baseType: !480, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !447, file: !448, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !447, file: !448, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !447, file: !448, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !447, file: !448, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !447, file: !448, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !444, file: !33, line: 707, baseType: !1094, size: 64, offset: 512)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !444, file: !33, line: 709, baseType: !1096, size: 64, offset: 576)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !33, line: 37, flags: DIFlagFwdDecl)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !444, file: !33, line: 711, baseType: !304, size: 64, offset: 640)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !444, file: !33, line: 712, baseType: !1100, size: 64, offset: 704)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1102)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !33, line: 89, size: 384, elements: !1103)
!1103 = !{!1104, !1105, !1106, !1110, !1115, !1119}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1102, file: !33, line: 90, baseType: !304, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1102, file: !33, line: 91, baseType: !578, size: 64, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1102, file: !33, line: 92, baseType: !1107, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!53, !442, !523}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1102, file: !33, line: 93, baseType: !1111, size: 64, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!528, !442, !1114, !951, !959}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1102, file: !33, line: 95, baseType: !1116, size: 64, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !1094}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1102, file: !33, line: 97, baseType: !1120, size: 64, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1122)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !45, line: 286, size: 1472, elements: !1123)
!1123 = !{!1124, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1122, file: !45, line: 287, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!53, !1094}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1122, file: !45, line: 288, baseType: !1116, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1122, file: !45, line: 289, baseType: !1125, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1122, file: !45, line: 290, baseType: !1125, size: 64, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1122, file: !45, line: 291, baseType: !1125, size: 64, offset: 256)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1122, file: !45, line: 292, baseType: !1125, size: 64, offset: 320)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1122, file: !45, line: 293, baseType: !1125, size: 64, offset: 384)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1122, file: !45, line: 294, baseType: !1125, size: 64, offset: 448)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1122, file: !45, line: 295, baseType: !1125, size: 64, offset: 512)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1122, file: !45, line: 296, baseType: !1125, size: 64, offset: 576)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1122, file: !45, line: 297, baseType: !1125, size: 64, offset: 640)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1122, file: !45, line: 298, baseType: !1125, size: 64, offset: 704)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1122, file: !45, line: 299, baseType: !1125, size: 64, offset: 768)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1122, file: !45, line: 300, baseType: !1125, size: 64, offset: 832)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1122, file: !45, line: 301, baseType: !1125, size: 64, offset: 896)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1122, file: !45, line: 302, baseType: !1125, size: 64, offset: 960)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1122, file: !45, line: 303, baseType: !1125, size: 64, offset: 1024)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1122, file: !45, line: 304, baseType: !1125, size: 64, offset: 1088)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1122, file: !45, line: 305, baseType: !1125, size: 64, offset: 1152)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1122, file: !45, line: 306, baseType: !1125, size: 64, offset: 1216)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1122, file: !45, line: 307, baseType: !1125, size: 64, offset: 1280)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1122, file: !45, line: 308, baseType: !1125, size: 64, offset: 1344)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1122, file: !45, line: 309, baseType: !1125, size: 64, offset: 1408)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !444, file: !33, line: 714, baseType: !1151, size: 64, offset: 768)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1153)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1154, line: 80, size: 1344, elements: !1155)
!1154 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1155 = !{!1156, !1157, !1158, !1159, !1160, !1161, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1618}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1153, file: !1154, line: 81, baseType: !304, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1153, file: !1154, line: 82, baseType: !304, size: 64, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1153, file: !1154, line: 83, baseType: !578, size: 64, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1153, file: !1154, line: 84, baseType: !578, size: 64, offset: 192)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1153, file: !1154, line: 85, baseType: !578, size: 64, offset: 256)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1153, file: !1154, line: 87, baseType: !1162, size: 64, offset: 320)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!53, !1094, !1165}
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !27, line: 96, size: 1152, elements: !1167)
!1167 = !{!1168, !1169, !1170, !1549, !1550, !1551, !1552, !1568, !1581, !1582, !1583, !1584, !1585, !1593, !1594, !1595, !1596, !1597, !1598}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1166, file: !27, line: 97, baseType: !304, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1166, file: !27, line: 98, baseType: !1151, size: 64, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1166, file: !27, line: 100, baseType: !1171, size: 64, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !20, line: 402, size: 9216, align: 512, elements: !1173)
!1173 = !{!1174, !1175, !1176, !1180, !1201, !1227, !1228, !1229, !1230, !1234, !1237, !1238, !1239, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1306, !1310, !1330, !1347, !1348, !1349, !1350, !1359, !1382, !1383, !1386, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1400, !1401, !1507, !1515, !1516, !1517, !1519, !1523, !1524, !1528, !1529, !1530, !1531, !1533, !1534, !1535, !1542, !1543, !1544, !1548}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1172, file: !20, line: 403, baseType: !19, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1172, file: !20, line: 406, baseType: !388, size: 128, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1172, file: !20, line: 409, baseType: !1177, size: 448, offset: 192)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 448, elements: !1178)
!1178 = !{!1179}
!1179 = !DISubrange(count: 56)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1172, file: !20, line: 417, baseType: !1181, size: 768, offset: 640)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !20, line: 45, size: 768, elements: !1182)
!1182 = !{!1183, !1184, !1185, !1186, !1189}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1181, file: !20, line: 46, baseType: !447, size: 512)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1181, file: !20, line: 47, baseType: !1171, size: 64, offset: 512)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1181, file: !20, line: 48, baseType: !453, size: 64, offset: 576)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1181, file: !20, line: 49, baseType: !1187, size: 64, offset: 640)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !20, line: 49, flags: DIFlagFwdDecl)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1181, file: !20, line: 50, baseType: !1190, size: 64, offset: 704)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1192, line: 26, size: 256, elements: !1193)
!1192 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1191, file: !1192, line: 27, baseType: !7, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1191, file: !1192, line: 28, baseType: !1196, size: 192, offset: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1197, line: 43, size: 192, elements: !1198)
!1197 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1198 = !{!1199, !1200}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1196, file: !1197, line: 44, baseType: !717, size: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1196, file: !1197, line: 45, baseType: !388, size: 128, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1172, file: !20, line: 418, baseType: !1202, size: 64, offset: 1408)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !20, line: 53, size: 448, elements: !1204)
!1204 = !{!1205, !1206, !1211, !1215, !1219, !1223}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1203, file: !20, line: 54, baseType: !565, size: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1203, file: !20, line: 55, baseType: !1207, size: 64, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!560, !1202, !1210, !528}
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1203, file: !20, line: 57, baseType: !1212, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!560, !1202, !1210, !304, !574}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1203, file: !20, line: 59, baseType: !1216, size: 64, offset: 256)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{null, !1171, !304}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1203, file: !20, line: 60, baseType: !1220, size: 64, offset: 320)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!53, !1171}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1203, file: !20, line: 61, baseType: !1224, size: 64, offset: 384)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !1171}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1172, file: !20, line: 419, baseType: !304, size: 64, offset: 1472)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1172, file: !20, line: 420, baseType: !304, size: 64, offset: 1536)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1172, file: !20, line: 421, baseType: !453, size: 64, offset: 1600)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1172, file: !20, line: 424, baseType: !1231, size: 64, offset: 1664)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1233)
!1233 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !20, line: 424, flags: DIFlagFwdDecl)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1172, file: !20, line: 425, baseType: !1235, size: 64, offset: 1728)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !762)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1172, file: !20, line: 426, baseType: !7, size: 32, offset: 1792)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1172, file: !20, line: 435, baseType: !783, size: 256, offset: 1856)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1172, file: !20, line: 437, baseType: !1240, size: 64, offset: 2112)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1242, line: 69, size: 320, elements: !1243)
!1242 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1243 = !{!1244, !1245, !1246, !1263, !1265, !1269, !1270}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1241, file: !1242, line: 70, baseType: !304, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1241, file: !1242, line: 71, baseType: !1171, size: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1241, file: !1242, line: 72, baseType: !1247, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1249)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1242, line: 47, size: 256, elements: !1250)
!1250 = !{!1251, !1252, !1258, !1262}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1249, file: !1242, line: 49, baseType: !7, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1249, file: !1242, line: 51, baseType: !1253, size: 64, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!53, !304, !1256}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1241)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1249, file: !1242, line: 53, baseType: !1259, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!53, !528, !1256}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1249, file: !1242, line: 55, baseType: !940, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1241, file: !1242, line: 73, baseType: !1264, size: 16, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1241, file: !1242, line: 74, baseType: !1266, size: 8, offset: 208)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !292, line: 16, baseType: !1267)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !294, line: 20, baseType: !1268)
!1268 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1241, file: !1242, line: 75, baseType: !488, size: 8, offset: 216)
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1241, file: !1242, line: 76, baseType: !1271, size: 64, offset: 256)
!1271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1241, file: !1242, line: 76, size: 64, elements: !1272)
!1272 = !{!1273, !1274, !1281}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1271, file: !1242, line: 77, baseType: !249, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1271, file: !1242, line: 78, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1277)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1242, line: 86, size: 128, elements: !1278)
!1278 = !{!1279, !1280}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1277, file: !1242, line: 87, baseType: !7, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1277, file: !1242, line: 88, baseType: !528, size: 64, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1271, file: !1242, line: 79, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1284)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1242, line: 92, size: 256, elements: !1285)
!1285 = !{!1286, !1287, !1288, !1289, !1290}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1284, file: !1242, line: 94, baseType: !7, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1284, file: !1242, line: 95, baseType: !7, size: 32, offset: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1284, file: !1242, line: 96, baseType: !262, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1284, file: !1242, line: 97, baseType: !1247, size: 64, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1284, file: !1242, line: 98, baseType: !249, size: 64, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1172, file: !20, line: 438, baseType: !7, size: 32, offset: 2176)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1172, file: !20, line: 441, baseType: !7, size: 32, offset: 2208)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1172, file: !20, line: 442, baseType: !1231, size: 64, offset: 2240)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1172, file: !20, line: 443, baseType: !1235, size: 64, offset: 2304)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1172, file: !20, line: 444, baseType: !326, size: 8, offset: 2368)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1172, file: !20, line: 451, baseType: !326, size: 8, offset: 2376)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1172, file: !20, line: 454, baseType: !7, size: 32, offset: 2400)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1172, file: !20, line: 455, baseType: !1299, size: 64, offset: 2432)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1301, line: 23, size: 96, elements: !1302)
!1301 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1302 = !{!1303, !1304, !1305}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1300, file: !1301, line: 24, baseType: !53, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1300, file: !1301, line: 24, baseType: !53, size: 32, offset: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1300, file: !1301, line: 24, baseType: !53, size: 32, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1172, file: !20, line: 458, baseType: !1307, size: 64, offset: 2496)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!53}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1172, file: !20, line: 460, baseType: !1311, size: 4032, align: 512, offset: 2560)
!1311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1312, size: 4032, elements: !1328)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !20, line: 362, size: 576, elements: !1313)
!1313 = !{!1314, !1315, !1316}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1312, file: !20, line: 363, baseType: !249, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1312, file: !20, line: 364, baseType: !7, size: 32, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1312, file: !20, line: 367, baseType: !1317, size: 448, offset: 128)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !20, line: 319, size: 448, elements: !1318)
!1318 = !{!1319, !1320}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1317, file: !20, line: 320, baseType: !1171, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1317, file: !20, line: 321, baseType: !1321, size: 384, offset: 64)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1322, line: 40, size: 384, elements: !1323)
!1322 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1323 = !{!1324}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1321, file: !1322, line: 41, baseType: !1325, size: 384, align: 64)
!1325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 384, align: 64, elements: !1326)
!1326 = !{!1327}
!1327 = !DISubrange(count: 2)
!1328 = !{!1329}
!1329 = !DISubrange(count: 7)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1172, file: !20, line: 463, baseType: !1331, size: 192, offset: 6592)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1332, line: 8, size: 192, elements: !1333)
!1332 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1333 = !{!1334, !1335, !1336}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1331, file: !1332, line: 10, baseType: !7, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1331, file: !1332, line: 11, baseType: !263, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1331, file: !1332, line: 12, baseType: !1337, size: 64, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1339, line: 59, size: 48, elements: !1340)
!1339 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1340 = !{!1341, !1342, !1343, !1344, !1345, !1346}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1338, file: !1339, line: 60, baseType: !819, size: 16)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1338, file: !1339, line: 61, baseType: !819, size: 16, offset: 16)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1338, file: !1339, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1338, file: !1339, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1338, file: !1339, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1338, file: !1339, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1172, file: !20, line: 465, baseType: !259, size: 64, offset: 6784)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1172, file: !20, line: 469, baseType: !7, size: 32, offset: 6848)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1172, file: !20, line: 470, baseType: !388, size: 128, offset: 6912)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1172, file: !20, line: 471, baseType: !1351, size: 64, offset: 7040)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1353, line: 33, size: 96, elements: !1354)
!1353 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1354 = !{!1355, !1356, !1357, !1358}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1352, file: !1353, line: 37, baseType: !53, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1352, file: !1353, line: 43, baseType: !53, size: 32, offset: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1352, file: !1353, line: 45, baseType: !498, size: 16, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1352, file: !1353, line: 47, baseType: !498, size: 16, offset: 80)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1172, file: !20, line: 476, baseType: !1360, size: 64, offset: 7104)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !20, line: 378, size: 256, elements: !1362)
!1362 = !{!1363, !1379, !1380, !1381}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1361, file: !20, line: 379, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1366, line: 204, baseType: !1367)
!1366 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1366, line: 197, size: 192, elements: !1368)
!1368 = !{!1369, !1371, !1372, !1373, !1375, !1377}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1367, file: !1366, line: 198, baseType: !1370, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1366, line: 21, baseType: !293)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1367, file: !1366, line: 199, baseType: !490, size: 8, offset: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1367, file: !1366, line: 200, baseType: !490, size: 8, offset: 40)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1367, file: !1366, line: 201, baseType: !1374, size: 16, offset: 48)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1366, line: 17, baseType: !497)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1367, file: !1366, line: 202, baseType: !1376, size: 64, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1366, line: 16, baseType: !690)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1367, file: !1366, line: 203, baseType: !1378, size: 64, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1366, line: 22, baseType: !690)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1361, file: !20, line: 380, baseType: !7, size: 32, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1361, file: !20, line: 381, baseType: !528, size: 64, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1361, file: !20, line: 382, baseType: !528, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1172, file: !20, line: 477, baseType: !1361, size: 256, offset: 7168)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1172, file: !20, line: 480, baseType: !1384, size: 64, offset: 7424)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !20, line: 480, flags: DIFlagFwdDecl)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1172, file: !20, line: 483, baseType: !1387, size: 64, offset: 7488)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !20, line: 483, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1172, file: !20, line: 488, baseType: !528, size: 64, offset: 7552)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1172, file: !20, line: 492, baseType: !249, size: 64, offset: 7616)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1172, file: !20, line: 493, baseType: !7, size: 32, offset: 7680)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1172, file: !20, line: 495, baseType: !249, size: 64, offset: 7744)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1172, file: !20, line: 496, baseType: !7, size: 32, offset: 7808)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1172, file: !20, line: 499, baseType: !7, size: 32, offset: 7840)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1172, file: !20, line: 500, baseType: !1396, size: 64, offset: 7872)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1398, line: 45, baseType: !1399)
!1398 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1172, file: !20, line: 503, baseType: !7, size: 32, offset: 7936)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1172, file: !20, line: 504, baseType: !1402, size: 64, offset: 8000)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1405, line: 96, size: 192, elements: !1406)
!1405 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1406 = !{!1407, !1408, !1468, !1471}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1404, file: !1405, line: 97, baseType: !7, size: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1404, file: !1405, line: 98, baseType: !1409, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1405, line: 24, size: 3072, elements: !1411)
!1411 = !{!1412, !1414, !1415, !1416, !1417, !1431, !1432, !1433, !1434, !1452, !1453, !1454, !1465, !1466, !1467}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1410, file: !1405, line: 26, baseType: !1413, size: 128)
!1413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !695, size: 128, elements: !1326)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1410, file: !1405, line: 27, baseType: !1413, size: 128, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1410, file: !1405, line: 28, baseType: !53, size: 32, offset: 256)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1410, file: !1405, line: 31, baseType: !460, size: 32, align: 512, offset: 512)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1410, file: !1405, line: 32, baseType: !1418, size: 960, offset: 576)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1419, line: 206, size: 960, elements: !1420)
!1419 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1420 = !{!1421, !1422, !1425, !1427, !1428, !1430}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1418, file: !1419, line: 207, baseType: !635, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1418, file: !1419, line: 208, baseType: !1423, size: 256, offset: 64)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1424, size: 256, elements: !764)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1418, file: !1419, line: 209, baseType: !1426, size: 256, offset: 320)
!1426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 256, elements: !764)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1418, file: !1419, line: 213, baseType: !269, size: 64, offset: 576)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1418, file: !1419, line: 215, baseType: !1429, size: 256, offset: 640)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 256, elements: !764)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1418, file: !1419, line: 216, baseType: !488, size: 8, offset: 896)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1410, file: !1405, line: 33, baseType: !259, size: 64, offset: 1536)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1410, file: !1405, line: 34, baseType: !259, size: 64, offset: 1600)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1410, file: !1405, line: 35, baseType: !326, size: 8, offset: 1664)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1410, file: !1405, line: 36, baseType: !1435, size: 320, offset: 1728)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1436, line: 11, size: 320, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1437 = !{!1438, !1445, !1446, !1451}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1435, file: !1436, line: 16, baseType: !1439, size: 128)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !251, line: 198, size: 128, elements: !1440)
!1440 = !{!1441, !1443}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1439, file: !251, line: 199, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1439, file: !251, line: 199, baseType: !1444, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1435, file: !1436, line: 17, baseType: !259, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1435, file: !1436, line: 18, baseType: !1447, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{null, !1450}
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1435, file: !1436, line: 19, baseType: !291, size: 32, offset: 256)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1410, file: !1405, line: 37, baseType: !844, size: 256, offset: 2048)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1410, file: !1405, line: 38, baseType: !632, size: 128, align: 64, offset: 2304)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1410, file: !1405, line: 39, baseType: !1455, size: 64, offset: 2432)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1405, line: 49, size: 768, elements: !1457)
!1457 = !{!1458, !1459, !1460, !1461, !1462, !1463, !1464}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1456, file: !1405, line: 50, baseType: !460, size: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1456, file: !1405, line: 51, baseType: !1426, size: 256, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1456, file: !1405, line: 53, baseType: !1426, size: 256, offset: 320)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1456, file: !1405, line: 54, baseType: !259, size: 64, offset: 576)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1456, file: !1405, line: 55, baseType: !1455, size: 64, offset: 640)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1456, file: !1405, line: 56, baseType: !53, size: 32, offset: 704)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1456, file: !1405, line: 57, baseType: !53, size: 32, offset: 736)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1410, file: !1405, line: 40, baseType: !259, size: 64, offset: 2496)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1410, file: !1405, line: 42, baseType: !53, size: 32, offset: 2560)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1410, file: !1405, line: 43, baseType: !1403, size: 64, offset: 2624)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1404, file: !1405, line: 99, baseType: !1469, offset: 128)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1470, line: 211, elements: !662)
!1470 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1404, file: !1405, line: 100, baseType: !1472, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1405, line: 63, size: 3008, elements: !1474)
!1474 = !{!1475, !1476, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1506}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1473, file: !1405, line: 64, baseType: !1455, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1473, file: !1405, line: 65, baseType: !1477, size: 192, offset: 64)
!1477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1455, size: 192, elements: !529)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1473, file: !1405, line: 67, baseType: !53, size: 32, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1473, file: !1405, line: 68, baseType: !783, size: 256, offset: 320)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1473, file: !1405, line: 69, baseType: !460, size: 32, offset: 576)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1473, file: !1405, line: 70, baseType: !783, size: 256, offset: 640)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1473, file: !1405, line: 71, baseType: !259, size: 64, offset: 896)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1473, file: !1405, line: 72, baseType: !259, size: 64, offset: 960)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1473, file: !1405, line: 73, baseType: !259, size: 64, offset: 1024)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1473, file: !1405, line: 74, baseType: !259, size: 64, offset: 1088)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1473, file: !1405, line: 75, baseType: !259, size: 64, offset: 1152)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1473, file: !1405, line: 76, baseType: !259, size: 64, offset: 1216)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1473, file: !1405, line: 77, baseType: !259, size: 64, offset: 1280)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1473, file: !1405, line: 78, baseType: !259, size: 64, offset: 1344)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1473, file: !1405, line: 79, baseType: !326, size: 8, offset: 1408)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1473, file: !1405, line: 80, baseType: !259, size: 64, offset: 1472)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1473, file: !1405, line: 81, baseType: !783, size: 256, offset: 1536)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1473, file: !1405, line: 82, baseType: !1191, size: 256, offset: 1792)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1473, file: !1405, line: 84, baseType: !480, size: 32, offset: 2048)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1473, file: !1405, line: 87, baseType: !259, size: 64, offset: 2112)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1473, file: !1405, line: 88, baseType: !259, size: 64, offset: 2176)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1473, file: !1405, line: 89, baseType: !1498, size: 704, offset: 2240)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !845, line: 111, size: 704, elements: !1499)
!1499 = !{!1500, !1501, !1502, !1505}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1498, file: !845, line: 112, baseType: !844, size: 256)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1498, file: !845, line: 113, baseType: !1435, size: 320, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1498, file: !845, line: 116, baseType: !1503, size: 64, offset: 576)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !845, line: 18, flags: DIFlagFwdDecl)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1498, file: !845, line: 117, baseType: !53, size: 32, offset: 640)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1473, file: !1405, line: 90, baseType: !1403, size: 64, offset: 2944)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1172, file: !20, line: 515, baseType: !1508, size: 64, offset: 8064)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1510, line: 117, size: 128, elements: !1511)
!1510 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1511 = !{!1512, !1513, !1514}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1509, file: !1510, line: 118, baseType: !762, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1509, file: !1510, line: 119, baseType: !762, size: 32, offset: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1509, file: !1510, line: 120, baseType: !269, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1172, file: !20, line: 516, baseType: !7, size: 32, offset: 8128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1172, file: !20, line: 519, baseType: !7, size: 32, offset: 8160)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1172, file: !20, line: 520, baseType: !1518, size: 64, offset: 8192)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1172, file: !20, line: 523, baseType: !1520, size: 64, offset: 8256)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !20, line: 523, flags: DIFlagFwdDecl)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1172, file: !20, line: 524, baseType: !7, size: 32, offset: 8320)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1172, file: !20, line: 525, baseType: !1525, size: 64, offset: 8384)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !20, line: 525, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1172, file: !20, line: 526, baseType: !7, size: 32, offset: 8448)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1172, file: !20, line: 533, baseType: !249, size: 64, offset: 8512)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1172, file: !20, line: 534, baseType: !7, size: 32, offset: 8576)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1172, file: !20, line: 535, baseType: !1532, size: 64, offset: 8640)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1172, file: !20, line: 536, baseType: !7, size: 32, offset: 8704)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1172, file: !20, line: 539, baseType: !53, size: 32, offset: 8736)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1172, file: !20, line: 540, baseType: !1536, size: 64, offset: 8768)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1538, line: 32, size: 64, elements: !1539)
!1538 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1537, file: !1538, line: 33, baseType: !762, size: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1537, file: !1538, line: 34, baseType: !762, size: 32, offset: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1172, file: !20, line: 563, baseType: !388, size: 128, offset: 8832)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1172, file: !20, line: 565, baseType: !388, size: 128, offset: 8960)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1172, file: !20, line: 568, baseType: !1545, size: 64, offset: 9088)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{null}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1172, file: !20, line: 570, baseType: !480, size: 32, offset: 9152)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1166, file: !27, line: 101, baseType: !304, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1166, file: !27, line: 103, baseType: !326, size: 8, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1166, file: !27, line: 104, baseType: !26, size: 32, offset: 288)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1166, file: !27, line: 106, baseType: !1553, size: 64, offset: 320)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1555)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1556, line: 282, size: 1600, elements: !1557)
!1556 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1557 = !{!1558, !1562, !1563, !1567}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1555, file: !1556, line: 283, baseType: !1559, size: 256)
!1559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 256, elements: !1560)
!1560 = !{!1561}
!1561 = !DISubrange(count: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1555, file: !1556, line: 284, baseType: !1559, size: 256, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1555, file: !1556, line: 285, baseType: !1564, size: 1024, offset: 512)
!1564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 1024, elements: !1565)
!1565 = !{!1566}
!1566 = !DISubrange(count: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1555, file: !1556, line: 286, baseType: !440, size: 64, offset: 1536)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1166, file: !27, line: 107, baseType: !1569, size: 64, offset: 384)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1571)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1556, line: 217, size: 256, elements: !1572)
!1572 = !{!1573, !1577, !1579, !1580}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1571, file: !1556, line: 218, baseType: !1574, size: 128)
!1574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 128, elements: !1575)
!1575 = !{!1576}
!1576 = !DISubrange(count: 16)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1571, file: !1556, line: 219, baseType: !1578, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1556, line: 15, baseType: !259)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1571, file: !1556, line: 220, baseType: !293, size: 32, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1571, file: !1556, line: 221, baseType: !293, size: 32, offset: 224)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1166, file: !27, line: 109, baseType: !1125, size: 64, offset: 448)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1166, file: !27, line: 110, baseType: !1116, size: 64, offset: 512)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1166, file: !27, line: 111, baseType: !1125, size: 64, offset: 576)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1166, file: !27, line: 112, baseType: !1116, size: 64, offset: 640)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1166, file: !27, line: 113, baseType: !1586, size: 64, offset: 704)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!53, !1094, !1589}
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !45, line: 60, baseType: !1590)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !45, line: 58, size: 32, elements: !1591)
!1591 = !{!1592}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1590, file: !45, line: 59, baseType: !53, size: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1166, file: !27, line: 114, baseType: !1125, size: 64, offset: 768)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1166, file: !27, line: 115, baseType: !578, size: 64, offset: 832)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1166, file: !27, line: 116, baseType: !578, size: 64, offset: 896)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1166, file: !27, line: 118, baseType: !1120, size: 64, offset: 960)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1166, file: !27, line: 119, baseType: !1116, size: 64, offset: 1024)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1166, file: !27, line: 121, baseType: !1599, size: 64, offset: 1088)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !27, line: 121, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1153, file: !1154, line: 88, baseType: !1107, size: 64, offset: 384)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1153, file: !1154, line: 89, baseType: !1125, size: 64, offset: 448)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1153, file: !1154, line: 90, baseType: !1116, size: 64, offset: 512)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1153, file: !1154, line: 91, baseType: !1116, size: 64, offset: 576)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1153, file: !1154, line: 92, baseType: !1116, size: 64, offset: 640)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1153, file: !1154, line: 94, baseType: !1125, size: 64, offset: 704)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1153, file: !1154, line: 95, baseType: !1125, size: 64, offset: 768)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1153, file: !1154, line: 97, baseType: !1586, size: 64, offset: 832)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1153, file: !1154, line: 98, baseType: !1125, size: 64, offset: 896)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1153, file: !1154, line: 100, baseType: !1125, size: 64, offset: 960)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1153, file: !1154, line: 102, baseType: !1125, size: 64, offset: 1024)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1153, file: !1154, line: 103, baseType: !1116, size: 64, offset: 1088)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1153, file: !1154, line: 105, baseType: !1120, size: 64, offset: 1152)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1153, file: !1154, line: 107, baseType: !1615, size: 64, offset: 1216)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1617)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1154, line: 107, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1153, file: !1154, line: 109, baseType: !326, size: 8, offset: 1280)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !444, file: !33, line: 715, baseType: !1165, size: 64, offset: 832)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !444, file: !33, line: 717, baseType: !249, size: 64, offset: 896)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !444, file: !33, line: 719, baseType: !249, size: 64, offset: 960)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !444, file: !33, line: 721, baseType: !783, size: 256, offset: 1024)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !444, file: !33, line: 725, baseType: !1624, size: 448, offset: 1280)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !33, line: 517, size: 448, elements: !1625)
!1625 = !{!1626, !1627, !1628, !1629}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1624, file: !33, line: 518, baseType: !388, size: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1624, file: !33, line: 519, baseType: !388, size: 128, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1624, file: !33, line: 520, baseType: !388, size: 128, offset: 256)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1624, file: !33, line: 521, baseType: !32, size: 32, offset: 384)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !444, file: !33, line: 726, baseType: !1631, size: 2496, offset: 1728)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !45, line: 663, size: 2496, elements: !1632)
!1632 = !{!1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1677, !1678, !1679, !1680, !1681, !1682, !1753, !1754, !1755, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1793, !1797}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1631, file: !45, line: 664, baseType: !1589, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1631, file: !45, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1631, file: !45, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1631, file: !45, line: 667, baseType: !326, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1631, file: !45, line: 668, baseType: !326, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1631, file: !45, line: 669, baseType: !326, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1631, file: !45, line: 670, baseType: !326, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1631, file: !45, line: 671, baseType: !326, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1631, file: !45, line: 672, baseType: !326, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1631, file: !45, line: 673, baseType: !326, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1631, file: !45, line: 674, baseType: !326, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1631, file: !45, line: 675, baseType: !291, size: 32, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1631, file: !45, line: 676, baseType: !460, size: 32, offset: 96)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1631, file: !45, line: 678, baseType: !388, size: 128, offset: 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1631, file: !45, line: 679, baseType: !1191, size: 256, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1631, file: !45, line: 680, baseType: !1649, size: 64, offset: 512)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1651, line: 43, size: 1536, elements: !1652)
!1651 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1652 = !{!1653, !1654, !1655, !1656, !1657, !1660, !1661, !1662, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1650, file: !1651, line: 44, baseType: !304, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1650, file: !1651, line: 45, baseType: !53, size: 32, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1650, file: !1651, line: 46, baseType: !388, size: 128, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1650, file: !1651, line: 47, baseType: !460, size: 32, offset: 256)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1650, file: !1651, line: 48, baseType: !1658, size: 64, offset: 320)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !45, line: 629, flags: DIFlagFwdDecl)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1650, file: !1651, line: 49, baseType: !1435, size: 320, offset: 384)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1650, file: !1651, line: 50, baseType: !259, size: 64, offset: 704)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1650, file: !1651, line: 51, baseType: !1663, size: 64, offset: 768)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1664, line: 29, baseType: !701)
!1664 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1650, file: !1651, line: 52, baseType: !1663, size: 64, offset: 832)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1650, file: !1651, line: 53, baseType: !1663, size: 64, offset: 896)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1650, file: !1651, line: 54, baseType: !1663, size: 64, offset: 960)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1650, file: !1651, line: 55, baseType: !1663, size: 64, offset: 1024)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1650, file: !1651, line: 56, baseType: !259, size: 64, offset: 1088)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1650, file: !1651, line: 57, baseType: !259, size: 64, offset: 1152)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1650, file: !1651, line: 58, baseType: !259, size: 64, offset: 1216)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1650, file: !1651, line: 59, baseType: !259, size: 64, offset: 1280)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1650, file: !1651, line: 60, baseType: !259, size: 64, offset: 1344)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1650, file: !1651, line: 61, baseType: !1094, size: 64, offset: 1408)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1650, file: !1651, line: 62, baseType: !326, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1650, file: !1651, line: 63, baseType: !326, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1631, file: !45, line: 681, baseType: !326, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1631, file: !45, line: 682, baseType: !326, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1631, file: !45, line: 683, baseType: !326, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1631, file: !45, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1631, file: !45, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1631, file: !45, line: 690, baseType: !1683, size: 512, offset: 640)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !40, line: 118, size: 512, elements: !1684)
!1684 = !{!1685, !1691, !1692, !1697, !1749, !1750, !1751, !1752}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1683, file: !40, line: 119, baseType: !1686, size: 256)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1687, line: 9, size: 256, elements: !1688)
!1687 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1688 = !{!1689, !1690}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1686, file: !1687, line: 10, baseType: !883, size: 192, align: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1686, file: !1687, line: 11, baseType: !1663, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1683, file: !40, line: 120, baseType: !1663, size: 64, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1683, file: !40, line: 121, baseType: !1693, size: 64, offset: 320)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!39, !1696}
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1683, file: !40, line: 122, baseType: !1698, size: 64, offset: 384)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !40, line: 159, size: 512, align: 512, elements: !1700)
!1700 = !{!1701, !1726, !1727, !1730, !1735, !1736, !1744, !1748}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1699, file: !40, line: 160, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !40, line: 215, size: 4608, align: 512, elements: !1704)
!1704 = !{!1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1703, file: !40, line: 216, baseType: !717, size: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1703, file: !40, line: 217, baseType: !7, size: 32, offset: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1703, file: !40, line: 218, baseType: !7, size: 32, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1703, file: !40, line: 219, baseType: !7, size: 32, offset: 96)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1703, file: !40, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1703, file: !40, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1703, file: !40, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1703, file: !40, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1703, file: !40, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1703, file: !40, line: 226, baseType: !7, size: 32, offset: 160)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1703, file: !40, line: 227, baseType: !498, size: 16, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1703, file: !40, line: 228, baseType: !498, size: 16, offset: 208)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1703, file: !40, line: 229, baseType: !7, size: 32, offset: 224)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1703, file: !40, line: 235, baseType: !1663, size: 64, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1703, file: !40, line: 236, baseType: !1696, size: 64, offset: 320)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1703, file: !40, line: 237, baseType: !1663, size: 64, offset: 384)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1703, file: !40, line: 238, baseType: !1696, size: 64, offset: 448)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1703, file: !40, line: 239, baseType: !1723, size: 4096, align: 512, offset: 512)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1699, size: 4096, align: 512, elements: !1724)
!1724 = !{!1725}
!1725 = !DISubrange(count: 8)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1699, file: !40, line: 161, baseType: !7, size: 32, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1699, file: !40, line: 162, baseType: !1728, size: 32, offset: 96)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !251, line: 32, baseType: !1729)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !562, line: 96, baseType: !53)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1699, file: !40, line: 163, baseType: !1731, size: 32, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !732, line: 274, baseType: !1732)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !732, line: 274, size: 32, elements: !1733)
!1733 = !{!1734}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1732, file: !732, line: 274, baseType: !731, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1699, file: !40, line: 164, baseType: !1696, size: 64, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1699, file: !40, line: 165, baseType: !1737, size: 128, offset: 256)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1687, line: 14, size: 128, elements: !1738)
!1738 = !{!1739}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1737, file: !1687, line: 15, baseType: !1740, size: 128)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !884, line: 26, size: 128, elements: !1741)
!1741 = !{!1742, !1743}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1740, file: !884, line: 27, baseType: !986, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1740, file: !884, line: 28, baseType: !888, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1699, file: !40, line: 166, baseType: !1745, size: 64, offset: 384)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!1663}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1699, file: !40, line: 167, baseType: !1663, size: 64, offset: 448)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1683, file: !40, line: 123, baseType: !488, size: 8, offset: 448)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1683, file: !40, line: 124, baseType: !488, size: 8, offset: 456)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1683, file: !40, line: 125, baseType: !488, size: 8, offset: 464)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1683, file: !40, line: 126, baseType: !488, size: 8, offset: 472)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1631, file: !45, line: 691, baseType: !689, size: 64, offset: 1152)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1631, file: !45, line: 692, baseType: !844, size: 256, offset: 1216)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1631, file: !45, line: 693, baseType: !1756, size: 192, offset: 1472)
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1757, line: 41, baseType: !1758)
!1757 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1757, line: 37, size: 192, elements: !1759)
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1758, file: !1757, line: 38, baseType: !460, size: 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1758, file: !1757, line: 39, baseType: !388, size: 128, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1631, file: !45, line: 694, baseType: !1658, size: 64, offset: 1664)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1631, file: !45, line: 695, baseType: !480, size: 32, offset: 1728)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1631, file: !45, line: 696, baseType: !480, size: 32, offset: 1760)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1631, file: !45, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1631, file: !45, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1631, file: !45, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1631, file: !45, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1631, file: !45, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1631, file: !45, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1631, file: !45, line: 703, baseType: !326, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1631, file: !45, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1631, file: !45, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1631, file: !45, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1631, file: !45, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1631, file: !45, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1631, file: !45, line: 709, baseType: !7, size: 32, offset: 1824)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1631, file: !45, line: 710, baseType: !44, size: 32, offset: 1856)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1631, file: !45, line: 711, baseType: !52, size: 32, offset: 1888)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1631, file: !45, line: 712, baseType: !52, size: 32, offset: 1920)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1631, file: !45, line: 713, baseType: !53, size: 32, offset: 1952)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1631, file: !45, line: 714, baseType: !53, size: 32, offset: 1984)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1631, file: !45, line: 715, baseType: !689, size: 64, offset: 2048)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1631, file: !45, line: 716, baseType: !689, size: 64, offset: 2112)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1631, file: !45, line: 717, baseType: !689, size: 64, offset: 2176)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1631, file: !45, line: 718, baseType: !689, size: 64, offset: 2240)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1631, file: !45, line: 720, baseType: !1788, size: 64, offset: 2304)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !45, line: 632, size: 64, elements: !1790)
!1790 = !{!1791, !1792}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1789, file: !45, line: 633, baseType: !460, size: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1789, file: !45, line: 634, baseType: !7, size: 32, offset: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1631, file: !45, line: 721, baseType: !1794, size: 64, offset: 2368)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{null, !1094, !762}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1631, file: !45, line: 722, baseType: !1798, size: 64, offset: 2432)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !45, line: 722, flags: DIFlagFwdDecl)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !444, file: !33, line: 727, baseType: !1801, size: 64, offset: 4224)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !45, line: 742, size: 1792, elements: !1803)
!1803 = !{!1804, !1805, !1806, !1810, !1811, !1812}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1802, file: !45, line: 743, baseType: !1122, size: 1472)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1802, file: !45, line: 744, baseType: !1125, size: 64, offset: 1472)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1802, file: !45, line: 745, baseType: !1807, size: 64, offset: 1536)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{null, !1094, !326}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1802, file: !45, line: 746, baseType: !1125, size: 64, offset: 1600)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1802, file: !45, line: 747, baseType: !1116, size: 64, offset: 1664)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1802, file: !45, line: 748, baseType: !1116, size: 64, offset: 1728)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !444, file: !33, line: 736, baseType: !1814, size: 128, offset: 4288)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !33, line: 529, size: 128, elements: !1815)
!1815 = !{!1816, !1817}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1814, file: !33, line: 531, baseType: !383, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1814, file: !33, line: 532, baseType: !1818, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !33, line: 49, flags: DIFlagFwdDecl)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !444, file: !33, line: 738, baseType: !1821, size: 64, offset: 4416)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1823)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !33, line: 738, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !444, file: !33, line: 740, baseType: !1825, size: 64, offset: 4480)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !444, file: !33, line: 741, baseType: !689, size: 64, offset: 4544)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !444, file: !33, line: 746, baseType: !689, size: 64, offset: 4608)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !444, file: !33, line: 747, baseType: !1829, size: 64, offset: 4672)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1831)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !33, line: 747, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !444, file: !33, line: 749, baseType: !1833, size: 64, offset: 4736)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !33, line: 428, size: 128, elements: !1835)
!1835 = !{!1836, !1837, !1838}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1834, file: !33, line: 433, baseType: !7, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1834, file: !33, line: 434, baseType: !7, size: 32, offset: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1834, file: !33, line: 435, baseType: !259, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !444, file: !33, line: 751, baseType: !388, size: 128, offset: 4800)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !444, file: !33, line: 762, baseType: !1841, size: 64, offset: 4928)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !33, line: 762, flags: DIFlagFwdDecl)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !444, file: !33, line: 770, baseType: !1844, offset: 4992)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1845, line: 5, elements: !662)
!1845 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !444, file: !33, line: 772, baseType: !403, size: 64, offset: 4992)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !444, file: !33, line: 773, baseType: !416, size: 64, offset: 5056)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !444, file: !33, line: 776, baseType: !53, size: 32, offset: 5120)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !444, file: !33, line: 778, baseType: !1850, size: 32, offset: 5152)
!1850 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !251, line: 21, baseType: !1851)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !251, line: 18, baseType: !291)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !444, file: !33, line: 779, baseType: !291, size: 32, offset: 5184)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !444, file: !33, line: 781, baseType: !460, size: 32, offset: 5216)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !444, file: !33, line: 782, baseType: !388, size: 128, offset: 5248)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !444, file: !33, line: 784, baseType: !1856, size: 64, offset: 5376)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1858)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1859, line: 52, size: 768, elements: !1860)
!1859 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1860 = !{!1861, !1862, !1863, !1864, !1865, !1869, !1873, !1874, !1875, !1876, !1880, !1884}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1858, file: !1859, line: 53, baseType: !304, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1858, file: !1859, line: 55, baseType: !578, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1858, file: !1859, line: 56, baseType: !578, size: 64, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1858, file: !1859, line: 58, baseType: !1107, size: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1858, file: !1859, line: 59, baseType: !1866, size: 64, offset: 256)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!528, !442, !1114}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1858, file: !1859, line: 61, baseType: !1870, size: 64, offset: 320)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{null, !1856}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1858, file: !1859, line: 62, baseType: !1116, size: 64, offset: 384)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1858, file: !1859, line: 64, baseType: !1125, size: 64, offset: 448)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1858, file: !1859, line: 66, baseType: !916, size: 64, offset: 512)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1858, file: !1859, line: 67, baseType: !1877, size: 64, offset: 576)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!440, !442}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1858, file: !1859, line: 69, baseType: !1881, size: 64, offset: 640)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{null, !442, !951, !959}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1858, file: !1859, line: 71, baseType: !1120, size: 64, offset: 704)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !444, file: !33, line: 785, baseType: !578, size: 64, offset: 5440)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !444, file: !33, line: 787, baseType: !1116, size: 64, offset: 5504)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !444, file: !33, line: 788, baseType: !1888, size: 64, offset: 5568)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !33, line: 46, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !444, file: !33, line: 789, baseType: !1891, size: 64, offset: 5632)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !33, line: 48, flags: DIFlagFwdDecl)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !444, file: !33, line: 791, baseType: !1894, size: 64, offset: 5696)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !33, line: 597, size: 128, elements: !1896)
!1896 = !{!1897, !1898, !1899, !1900, !1901}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1895, file: !33, line: 598, baseType: !60, size: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1895, file: !33, line: 599, baseType: !69, size: 32, offset: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1895, file: !33, line: 600, baseType: !74, size: 32, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1895, file: !33, line: 601, baseType: !326, size: 8, offset: 96)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1895, file: !33, line: 602, baseType: !326, size: 8, offset: 104)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !444, file: !33, line: 793, baseType: !79, size: 32, offset: 5760)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !444, file: !33, line: 795, baseType: !326, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !444, file: !33, line: 796, baseType: !326, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !444, file: !33, line: 797, baseType: !326, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !444, file: !33, line: 798, baseType: !326, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !444, file: !33, line: 799, baseType: !326, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !420, file: !413, line: 131, baseType: !431, size: 64, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !420, file: !413, line: 133, baseType: !1910, size: 64, offset: 320)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!85, !434}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !420, file: !413, line: 134, baseType: !1914, size: 64, offset: 384)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!326, !434, !304}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !420, file: !413, line: 136, baseType: !1918, size: 64, offset: 448)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!53, !434, !304, !7, !249, !574}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !420, file: !413, line: 141, baseType: !1922, size: 64, offset: 512)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!53, !434, !304, !1518, !574}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !420, file: !413, line: 144, baseType: !1926, size: 64, offset: 576)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!304, !434}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !420, file: !413, line: 145, baseType: !1926, size: 64, offset: 640)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !420, file: !413, line: 146, baseType: !1931, size: 64, offset: 704)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!416, !434}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !420, file: !413, line: 148, baseType: !1935, size: 64, offset: 768)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!416, !434, !416}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !420, file: !413, line: 151, baseType: !1939, size: 64, offset: 832)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!416, !434, !304}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !420, file: !413, line: 153, baseType: !1943, size: 64, offset: 896)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!53, !434, !304, !304, !7, !7, !1946}
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !413, line: 94, size: 640, elements: !1948)
!1948 = !{!1949, !1950, !1951}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1947, file: !413, line: 95, baseType: !416, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1947, file: !413, line: 96, baseType: !7, size: 32, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1947, file: !413, line: 97, baseType: !1952, size: 512, offset: 128)
!1952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 512, elements: !1724)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !420, file: !413, line: 158, baseType: !1935, size: 64, offset: 960)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !420, file: !413, line: 161, baseType: !1931, size: 64, offset: 1024)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !420, file: !413, line: 163, baseType: !423, size: 64, offset: 1088)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !420, file: !413, line: 164, baseType: !1957, size: 64, offset: 1152)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!53, !434, !1960}
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !413, line: 73, size: 128, elements: !1962)
!1962 = !{!1963, !1964, !1965}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1961, file: !413, line: 74, baseType: !7, size: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1961, file: !413, line: 75, baseType: !7, size: 32, offset: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1961, file: !413, line: 76, baseType: !434, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !420, file: !413, line: 166, baseType: !1967, size: 64, offset: 1216)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!249, !416, !53}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !420, file: !413, line: 167, baseType: !1971, size: 64, offset: 1280)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!53, !434, !7}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !420, file: !413, line: 168, baseType: !1975, size: 64, offset: 1344)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!53, !416}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !412, file: !413, line: 44, baseType: !1094, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !412, file: !413, line: 45, baseType: !388, size: 128, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !412, file: !413, line: 46, baseType: !388, size: 128, offset: 320)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !412, file: !413, line: 47, baseType: !488, size: 8, offset: 448)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !404, file: !405, line: 54, baseType: !1983, size: 64, offset: 704)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !405, line: 28, size: 256, elements: !1985)
!1985 = !{!1986, !1987, !1988, !1989}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1984, file: !405, line: 29, baseType: !528, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1984, file: !405, line: 30, baseType: !53, size: 32, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1984, file: !405, line: 31, baseType: !249, size: 64, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1984, file: !405, line: 32, baseType: !1983, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !404, file: !405, line: 55, baseType: !1983, size: 64, offset: 768)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !404, file: !405, line: 56, baseType: !403, size: 64, offset: 832)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !404, file: !405, line: 57, baseType: !403, size: 64, offset: 896)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !404, file: !405, line: 58, baseType: !403, size: 64, offset: 960)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !404, file: !405, line: 62, baseType: !259, size: 64, offset: 1024)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !404, file: !405, line: 63, baseType: !249, size: 64, offset: 1088)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !397, file: !385, line: 91, baseType: !1997, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!53, !383, !2000, !91}
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !385, line: 63, size: 640, elements: !2002)
!2002 = !{!2003, !2004, !2005}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2001, file: !385, line: 64, baseType: !416, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2001, file: !385, line: 65, baseType: !53, size: 32, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2001, file: !385, line: 66, baseType: !2006, size: 512, offset: 96)
!2006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 512, elements: !1575)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !397, file: !385, line: 93, baseType: !2008, size: 64, offset: 128)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!53, !383, !7, !2011}
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !251, line: 170, baseType: !259)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !397, file: !385, line: 94, baseType: !2013, size: 64, offset: 192)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{null, !383, !7}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !397, file: !385, line: 95, baseType: !2017, size: 64, offset: 256)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!53, !383, !403, !2020, !7, !1532, !262}
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !397, file: !385, line: 100, baseType: !2023, size: 64, offset: 320)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!53, !383, !7, !7, !249}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !397, file: !385, line: 102, baseType: !2027, size: 64, offset: 384)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{null, !383, !7, !7}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !397, file: !385, line: 104, baseType: !2031, size: 64, offset: 448)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!53, !383, !310, !326}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !397, file: !385, line: 105, baseType: !2035, size: 64, offset: 512)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{null, !383, !310}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !397, file: !385, line: 106, baseType: !2039, size: 64, offset: 576)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!53, !383, !2000, !1532, !262}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !384, file: !385, line: 154, baseType: !249, size: 64, offset: 256)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !384, file: !385, line: 155, baseType: !7, size: 32, offset: 320)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !384, file: !385, line: 156, baseType: !7, size: 32, offset: 352)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !384, file: !385, line: 157, baseType: !783, size: 256, offset: 384)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !384, file: !385, line: 158, baseType: !383, size: 64, offset: 640)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !384, file: !385, line: 161, baseType: !416, size: 64, offset: 704)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !384, file: !385, line: 162, baseType: !91, size: 32, offset: 768)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !384, file: !385, line: 163, baseType: !2050, size: 64, offset: 832)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !111, line: 1111, size: 192, elements: !2052)
!2052 = !{!2053, !2054, !2055, !2056, !2057, !2058}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !2051, file: !111, line: 1112, baseType: !7, size: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !2051, file: !111, line: 1113, baseType: !7, size: 32, offset: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !2051, file: !111, line: 1114, baseType: !7, size: 32, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !2051, file: !111, line: 1115, baseType: !7, size: 32, offset: 96)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !2051, file: !111, line: 1116, baseType: !110, size: 32, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !2051, file: !111, line: 1117, baseType: !2059, offset: 192)
!2059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2060, elements: !857)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !111, line: 1061, size: 1024, elements: !2062)
!2062 = !{!2063, !2064, !2065, !2069, !2073, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2061, file: !111, line: 1062, baseType: !717, size: 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !2061, file: !111, line: 1063, baseType: !249, size: 64, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !2061, file: !111, line: 1064, baseType: !2066, size: 64, offset: 128)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!291, !249}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !2061, file: !111, line: 1065, baseType: !2070, size: 64, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{null, !291, !249}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2061, file: !111, line: 1066, baseType: !2074, size: 64, offset: 256)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{null, !2060}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2061, file: !111, line: 1067, baseType: !2074, size: 64, offset: 320)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !2061, file: !111, line: 1068, baseType: !7, size: 32, offset: 384)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !2061, file: !111, line: 1069, baseType: !7, size: 32, offset: 416)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !2061, file: !111, line: 1070, baseType: !291, size: 32, offset: 448)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !2061, file: !111, line: 1071, baseType: !291, size: 32, offset: 480)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !2061, file: !111, line: 1072, baseType: !291, size: 32, offset: 512)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !2061, file: !111, line: 1073, baseType: !291, size: 32, offset: 544)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !2061, file: !111, line: 1074, baseType: !291, size: 32, offset: 576)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !2061, file: !111, line: 1075, baseType: !7, size: 32, offset: 608)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2061, file: !111, line: 1076, baseType: !249, size: 64, offset: 640)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !2061, file: !111, line: 1077, baseType: !259, size: 64, offset: 704)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !2061, file: !111, line: 1078, baseType: !259, size: 64, offset: 768)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2061, file: !111, line: 1079, baseType: !383, size: 64, offset: 832)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2061, file: !111, line: 1080, baseType: !388, size: 128, offset: 896)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !2061, file: !111, line: 1081, baseType: !2092, offset: 1024)
!2092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2093, elements: !857)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !111, line: 1019, size: 2752, elements: !2094)
!2094 = !{!2095, !2096, !2106, !2112, !2113, !2114}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !2093, file: !111, line: 1020, baseType: !301, size: 2112)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2093, file: !111, line: 1021, baseType: !2097, size: 448, offset: 2112)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !111, line: 996, size: 448, elements: !2098)
!2098 = !{!2099, !2100, !2101, !2102, !2103, !2104, !2105}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !2097, file: !111, line: 997, baseType: !259, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !2097, file: !111, line: 998, baseType: !259, size: 64, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2097, file: !111, line: 999, baseType: !259, size: 64, offset: 128)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !2097, file: !111, line: 1000, baseType: !259, size: 64, offset: 192)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !2097, file: !111, line: 1001, baseType: !259, size: 64, offset: 256)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2097, file: !111, line: 1002, baseType: !259, size: 64, offset: 320)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2097, file: !111, line: 1003, baseType: !259, size: 64, offset: 384)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2093, file: !111, line: 1022, baseType: !2107, size: 64, offset: 2560)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !2108, line: 12, baseType: !2109)
!2108 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12f502f2f1e55658b1d5aa186ee65843")
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null, !270}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2093, file: !111, line: 1023, baseType: !291, size: 32, offset: 2624)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !2093, file: !111, line: 1024, baseType: !291, size: 32, offset: 2656)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !2093, file: !111, line: 1025, baseType: !2115, size: 64, offset: 2688)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !384, file: !385, line: 164, baseType: !1094, size: 64, offset: 896)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "pm_dev", scope: !384, file: !385, line: 165, baseType: !1094, size: 64, offset: 960)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !384, file: !385, line: 167, baseType: !383, size: 64, offset: 1024)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "msi_parent_ops", scope: !384, file: !385, line: 170, baseType: !2120, size: 64, offset: 1088)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2122)
!2122 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_parent_ops", file: !385, line: 49, flags: DIFlagFwdDecl)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !384, file: !385, line: 174, baseType: !2011, size: 64, offset: 1152)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !384, file: !385, line: 175, baseType: !7, size: 32, offset: 1216)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !384, file: !385, line: 176, baseType: !2126, size: 128, offset: 1280)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2127, line: 296, size: 128, elements: !2128)
!2127 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2128 = !{!2129, !2130, !2131}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2126, file: !2127, line: 297, baseType: !460, size: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2126, file: !2127, line: 299, baseType: !250, size: 32, offset: 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2126, file: !2127, line: 300, baseType: !249, size: 64, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "revmap", scope: !384, file: !385, line: 177, baseType: !2133, offset: 1408)
!2133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, elements: !857)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !288, file: !111, line: 187, baseType: !310, size: 64, offset: 320)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !288, file: !111, line: 189, baseType: !249, size: 64, offset: 384)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !271, file: !272, line: 58, baseType: !262, size: 64, offset: 768)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !271, file: !272, line: 59, baseType: !2107, size: 64, offset: 832)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !271, file: !272, line: 60, baseType: !2139, size: 64, offset: 896)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !6, line: 118, size: 1024, align: 512, elements: !2141)
!2141 = !{!2142, !2148, !2149, !2150, !2151, !2152, !3217, !3218, !3219, !3220, !3221, !3222, !3223}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2140, file: !6, line: 119, baseType: !2143, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !6, line: 100, baseType: !2144)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!2147, !53, !249}
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !119, line: 17, baseType: !118)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !2140, file: !6, line: 120, baseType: !249, size: 64, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !2140, file: !6, line: 121, baseType: !249, size: 64, offset: 128)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2140, file: !6, line: 122, baseType: !2139, size: 64, offset: 192)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !2140, file: !6, line: 123, baseType: !2143, size: 64, offset: 256)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2140, file: !6, line: 124, baseType: !2153, size: 64, offset: 320)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2155, line: 746, size: 58368, elements: !2156)
!2155 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2156 = !{!2157, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2242, !2253, !2273, !2277, !2280, !2311, !2312, !2313, !2314, !2318, !2320, !2321, !2322, !2323, !2324, !2325, !2336, !2337, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2354, !2355, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2442, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2478, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2513, !2519, !2523, !2524, !2525, !2528, !2530, !2533, !2540, !2545, !2548, !2551, !2554, !2557, !2560, !2563, !2569, !2570, !2571, !2577, !2578, !2579, !2580, !2581, !2584, !2585, !2586, !2595, !2603, !2604, !2605, !2606, !2607, !2612, !2613, !2614, !2617, !2618, !2621, !2624, !2627, !2630, !2633, !2634, !2720, !2731, !2732, !2733, !2734, !2739, !2744, !2745, !2746, !2749, !2750, !2753, !2756, !2757, !2760, !2761, !2762, !2765, !2766, !2767, !2768, !2769, !2770, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2802, !2805, !2871, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2883, !2955, !2957, !2958, !2959, !2960, !2961, !2962, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2992, !2993, !2994}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2154, file: !2155, line: 752, baseType: !2158, size: 192)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2159, line: 56, size: 192, elements: !2160)
!2159 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2160 = !{!2161, !2162, !2163, !2164}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2158, file: !2159, line: 57, baseType: !259, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2158, file: !2159, line: 58, baseType: !259, size: 64, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2158, file: !2159, line: 59, baseType: !291, size: 32, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2158, file: !2159, line: 61, baseType: !291, size: 32, offset: 160)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2154, file: !2155, line: 754, baseType: !7, size: 32, offset: 192)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2154, file: !2155, line: 767, baseType: !249, size: 64, offset: 256)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2154, file: !2155, line: 768, baseType: !1083, size: 32, offset: 320)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2154, file: !2155, line: 770, baseType: !7, size: 32, offset: 352)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2154, file: !2155, line: 771, baseType: !7, size: 32, offset: 384)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2154, file: !2155, line: 774, baseType: !53, size: 32, offset: 416)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2154, file: !2155, line: 775, baseType: !2172, size: 128, offset: 448)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2173, line: 58, size: 128, elements: !2174)
!2173 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2174 = !{!2175, !2181, !2186, !2187}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2172, file: !2173, line: 59, baseType: !2176, size: 64)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !2177, line: 60, size: 64, elements: !2178)
!2177 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!2178 = !{!2179}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2176, file: !2177, line: 61, baseType: !2180, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, scope: !2172, file: !2173, line: 60, baseType: !2182, size: 32, offset: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2172, file: !2173, line: 60, size: 32, elements: !2183)
!2183 = !{!2184, !2185}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2182, file: !2173, line: 61, baseType: !7, size: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2182, file: !2173, line: 62, baseType: !480, size: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2172, file: !2173, line: 65, baseType: !496, size: 16, offset: 96)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2172, file: !2173, line: 65, baseType: !496, size: 16, offset: 112)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2154, file: !2155, line: 776, baseType: !7, size: 32, offset: 576)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2154, file: !2155, line: 777, baseType: !259, size: 64, offset: 640)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2154, file: !2155, line: 778, baseType: !2153, size: 64, offset: 704)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2154, file: !2155, line: 787, baseType: !53, size: 32, offset: 768)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2154, file: !2155, line: 788, baseType: !53, size: 32, offset: 800)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2154, file: !2155, line: 790, baseType: !53, size: 32, offset: 832)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2154, file: !2155, line: 792, baseType: !53, size: 32, offset: 864)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2154, file: !2155, line: 793, baseType: !53, size: 32, offset: 896)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2154, file: !2155, line: 794, baseType: !53, size: 32, offset: 928)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2154, file: !2155, line: 795, baseType: !7, size: 32, offset: 960)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2154, file: !2155, line: 797, baseType: !2199, size: 2048, offset: 1024)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2155, line: 551, size: 2048, elements: !2200)
!2200 = !{!2201, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2221, !2224, !2225, !2226}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2199, file: !2155, line: 553, baseType: !2202, size: 128)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2155, line: 411, size: 128, elements: !2203)
!2203 = !{!2204, !2205}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2202, file: !2155, line: 412, baseType: !259, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2202, file: !2155, line: 413, baseType: !291, size: 32, offset: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2199, file: !2155, line: 554, baseType: !883, size: 192, align: 64, offset: 128)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2199, file: !2155, line: 555, baseType: !689, size: 64, offset: 320)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2199, file: !2155, line: 556, baseType: !689, size: 64, offset: 384)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2199, file: !2155, line: 558, baseType: !388, size: 128, offset: 448)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2199, file: !2155, line: 559, baseType: !7, size: 32, offset: 576)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2199, file: !2155, line: 561, baseType: !689, size: 64, offset: 640)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2199, file: !2155, line: 562, baseType: !689, size: 64, offset: 704)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2199, file: !2155, line: 563, baseType: !689, size: 64, offset: 768)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2199, file: !2155, line: 564, baseType: !689, size: 64, offset: 832)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2199, file: !2155, line: 565, baseType: !701, size: 64, offset: 896)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2199, file: !2155, line: 566, baseType: !689, size: 64, offset: 960)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2199, file: !2155, line: 568, baseType: !689, size: 64, offset: 1024)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2199, file: !2155, line: 571, baseType: !53, size: 32, offset: 1088)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2199, file: !2155, line: 572, baseType: !2220, size: 64, offset: 1152)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2199, file: !2155, line: 574, baseType: !2222, size: 64, offset: 1216)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2155, line: 49, flags: DIFlagFwdDecl)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2199, file: !2155, line: 576, baseType: !2222, size: 64, offset: 1280)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2199, file: !2155, line: 578, baseType: !259, size: 64, offset: 1344)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2199, file: !2155, line: 588, baseType: !2227, size: 512, align: 512, offset: 1536)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2155, line: 497, size: 512, align: 512, elements: !2228)
!2228 = !{!2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2227, file: !2155, line: 498, baseType: !689, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2227, file: !2155, line: 499, baseType: !689, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2227, file: !2155, line: 500, baseType: !689, size: 64, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2227, file: !2155, line: 501, baseType: !291, size: 32, offset: 192)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2227, file: !2155, line: 502, baseType: !291, size: 32, offset: 224)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2227, file: !2155, line: 503, baseType: !259, size: 64, offset: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2227, file: !2155, line: 504, baseType: !259, size: 64, offset: 320)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2227, file: !2155, line: 505, baseType: !259, size: 64, offset: 384)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2227, file: !2155, line: 506, baseType: !2238, size: 64, align: 64, offset: 448)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2155, line: 445, size: 64, align: 64, elements: !2239)
!2239 = !{!2240, !2241}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2238, file: !2155, line: 446, baseType: !7, size: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2238, file: !2155, line: 447, baseType: !7, size: 32, offset: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2154, file: !2155, line: 798, baseType: !2243, size: 384, offset: 3072)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2155, line: 592, size: 384, elements: !2244)
!2244 = !{!2245, !2246, !2247, !2248, !2249, !2250, !2251}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2243, file: !2155, line: 593, baseType: !388, size: 128)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2243, file: !2155, line: 594, baseType: !259, size: 64, offset: 128)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2243, file: !2155, line: 595, baseType: !259, size: 64, offset: 192)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2243, file: !2155, line: 596, baseType: !7, size: 32, offset: 256)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2243, file: !2155, line: 597, baseType: !498, size: 16, offset: 288)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2243, file: !2155, line: 598, baseType: !498, size: 16, offset: 304)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2243, file: !2155, line: 600, baseType: !2252, size: 64, offset: 320)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2154, file: !2155, line: 799, baseType: !2254, size: 1792, offset: 3456)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2155, line: 610, size: 1792, elements: !2255)
!2255 = !{!2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2254, file: !2155, line: 611, baseType: !883, size: 192, align: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2254, file: !2155, line: 618, baseType: !689, size: 64, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2254, file: !2155, line: 619, baseType: !689, size: 64, offset: 256)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2254, file: !2155, line: 620, baseType: !689, size: 64, offset: 320)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2254, file: !2155, line: 621, baseType: !689, size: 64, offset: 384)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2254, file: !2155, line: 622, baseType: !689, size: 64, offset: 448)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2254, file: !2155, line: 629, baseType: !701, size: 64, offset: 512)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2254, file: !2155, line: 630, baseType: !689, size: 64, offset: 576)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2254, file: !2155, line: 631, baseType: !7, size: 32, offset: 640)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2254, file: !2155, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2254, file: !2155, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2254, file: !2155, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2254, file: !2155, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2254, file: !2155, line: 662, baseType: !1683, size: 512, offset: 704)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2254, file: !2155, line: 671, baseType: !1683, size: 512, offset: 1216)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2254, file: !2155, line: 679, baseType: !2272, size: 64, offset: 1728)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2154, file: !2155, line: 800, baseType: !2274, size: 64, offset: 5248)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2276)
!2276 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2155, line: 800, flags: DIFlagFwdDecl)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2154, file: !2155, line: 809, baseType: !2278, size: 64, offset: 5312)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2155, line: 70, flags: DIFlagFwdDecl)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2154, file: !2155, line: 825, baseType: !2281, size: 2048, align: 512, offset: 5632)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2155, line: 509, size: 2048, align: 512, elements: !2282)
!2282 = !{!2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2281, file: !2155, line: 511, baseType: !689, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2281, file: !2155, line: 512, baseType: !689, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2281, file: !2155, line: 513, baseType: !689, size: 64, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2281, file: !2155, line: 514, baseType: !689, size: 64, offset: 192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2281, file: !2155, line: 515, baseType: !689, size: 64, offset: 256)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2281, file: !2155, line: 516, baseType: !689, size: 64, offset: 320)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2281, file: !2155, line: 518, baseType: !689, size: 64, offset: 384)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2281, file: !2155, line: 519, baseType: !689, size: 64, offset: 448)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2281, file: !2155, line: 520, baseType: !701, size: 64, offset: 512)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2281, file: !2155, line: 522, baseType: !689, size: 64, offset: 576)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2281, file: !2155, line: 523, baseType: !689, size: 64, offset: 640)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2281, file: !2155, line: 524, baseType: !701, size: 64, offset: 704)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2281, file: !2155, line: 526, baseType: !701, size: 64, offset: 768)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2281, file: !2155, line: 527, baseType: !689, size: 64, offset: 832)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2281, file: !2155, line: 529, baseType: !689, size: 64, offset: 896)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2281, file: !2155, line: 530, baseType: !689, size: 64, offset: 960)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2281, file: !2155, line: 531, baseType: !689, size: 64, offset: 1024)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2281, file: !2155, line: 532, baseType: !689, size: 64, offset: 1088)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2281, file: !2155, line: 533, baseType: !689, size: 64, offset: 1152)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2281, file: !2155, line: 535, baseType: !689, size: 64, offset: 1216)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2281, file: !2155, line: 536, baseType: !689, size: 64, offset: 1280)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2281, file: !2155, line: 537, baseType: !689, size: 64, offset: 1344)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2281, file: !2155, line: 538, baseType: !689, size: 64, offset: 1408)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2281, file: !2155, line: 539, baseType: !689, size: 64, offset: 1472)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2281, file: !2155, line: 540, baseType: !689, size: 64, offset: 1536)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2281, file: !2155, line: 541, baseType: !689, size: 64, offset: 1600)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2281, file: !2155, line: 542, baseType: !689, size: 64, offset: 1664)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2281, file: !2155, line: 543, baseType: !689, size: 64, offset: 1728)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2154, file: !2155, line: 833, baseType: !7, size: 32, offset: 7680)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2154, file: !2155, line: 836, baseType: !7, size: 32, offset: 7712)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2154, file: !2155, line: 837, baseType: !53, size: 32, offset: 7744)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2154, file: !2155, line: 838, baseType: !2315, size: 64, offset: 7808)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2317)
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !255, line: 19, baseType: !254)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2154, file: !2155, line: 839, baseType: !2319, size: 64, offset: 7872)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2154, file: !2155, line: 840, baseType: !2317, size: 64, offset: 7936)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2154, file: !2155, line: 841, baseType: !249, size: 64, offset: 8000)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2154, file: !2155, line: 843, baseType: !498, size: 16, offset: 8064)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2154, file: !2155, line: 845, baseType: !498, size: 16, offset: 8080)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2154, file: !2155, line: 848, baseType: !53, size: 32, offset: 8096)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2154, file: !2155, line: 849, baseType: !2326, size: 32, offset: 8128)
!2326 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2155, line: 718, size: 32, elements: !2327)
!2327 = !{!2328, !2335}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2326, file: !2155, line: 724, baseType: !2329, size: 32)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2326, file: !2155, line: 719, size: 32, elements: !2330)
!2330 = !{!2331, !2332, !2333, !2334}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2329, file: !2155, line: 720, baseType: !488, size: 8)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2329, file: !2155, line: 721, baseType: !488, size: 8, offset: 8)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2329, file: !2155, line: 722, baseType: !488, size: 8, offset: 16)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2329, file: !2155, line: 723, baseType: !488, size: 8, offset: 24)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2326, file: !2155, line: 725, baseType: !291, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2154, file: !2155, line: 850, baseType: !388, size: 128, offset: 8192)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2154, file: !2155, line: 851, baseType: !2338, size: 64, offset: 8320)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2155, line: 60, flags: DIFlagFwdDecl)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2154, file: !2155, line: 855, baseType: !259, size: 64, offset: 8384)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2154, file: !2155, line: 856, baseType: !488, size: 8, offset: 8448)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2154, file: !2155, line: 857, baseType: !488, size: 8, offset: 8456)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2154, file: !2155, line: 858, baseType: !53, size: 32, offset: 8480)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2154, file: !2155, line: 859, baseType: !388, size: 128, offset: 8512)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2154, file: !2155, line: 860, baseType: !53, size: 32, offset: 8640)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2154, file: !2155, line: 861, baseType: !388, size: 128, offset: 8704)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2154, file: !2155, line: 873, baseType: !2348, size: 256, offset: 8832)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2155, line: 376, size: 256, elements: !2349)
!2349 = !{!2350, !2351, !2352, !2353}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2348, file: !2155, line: 381, baseType: !259, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2348, file: !2155, line: 384, baseType: !691, size: 64, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2348, file: !2155, line: 389, baseType: !691, size: 64, offset: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2348, file: !2155, line: 392, baseType: !691, size: 64, offset: 192)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2154, file: !2155, line: 875, baseType: !388, size: 128, offset: 9088)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2154, file: !2155, line: 877, baseType: !2356, size: 320, offset: 9216)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2357, line: 86, size: 320, elements: !2358)
!2357 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2358 = !{!2359, !2360, !2361}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2356, file: !2357, line: 87, baseType: !53, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2356, file: !2357, line: 88, baseType: !388, size: 128, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2356, file: !2357, line: 89, baseType: !388, size: 128, offset: 192)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2154, file: !2155, line: 878, baseType: !883, size: 192, align: 64, offset: 9536)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2154, file: !2155, line: 881, baseType: !641, size: 64, offset: 9728)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2154, file: !2155, line: 882, baseType: !641, size: 64, offset: 9792)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2154, file: !2155, line: 884, baseType: !53, size: 32, offset: 9856)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2154, file: !2155, line: 885, baseType: !53, size: 32, offset: 9888)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2154, file: !2155, line: 886, baseType: !53, size: 32, offset: 9920)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2154, file: !2155, line: 888, baseType: !53, size: 32, offset: 9952)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2154, file: !2155, line: 890, baseType: !259, size: 64, offset: 9984)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2154, file: !2155, line: 893, baseType: !7, size: 32, offset: 10048)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2154, file: !2155, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2154, file: !2155, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2154, file: !2155, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2154, file: !2155, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2154, file: !2155, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2154, file: !2155, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2154, file: !2155, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2154, file: !2155, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2154, file: !2155, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2154, file: !2155, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2154, file: !2155, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2154, file: !2155, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2154, file: !2155, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2154, file: !2155, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2154, file: !2155, line: 969, baseType: !259, size: 64, offset: 10176)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2154, file: !2155, line: 971, baseType: !2387, size: 448, offset: 10240)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !125, line: 25, size: 448, elements: !2388)
!2388 = !{!2389, !2390, !2395}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2387, file: !125, line: 26, baseType: !259, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2387, file: !125, line: 27, baseType: !2391, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!269, !2394}
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, scope: !2387, file: !125, line: 28, baseType: !2396, size: 320, offset: 128)
!2396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2387, file: !125, line: 28, size: 320, elements: !2397)
!2397 = !{!2398, !2407, !2432}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2396, file: !125, line: 37, baseType: !2399, size: 320)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2396, file: !125, line: 30, size: 320, elements: !2400)
!2400 = !{!2401, !2402, !2403, !2404, !2405, !2406}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2399, file: !125, line: 31, baseType: !2115, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2399, file: !125, line: 32, baseType: !291, size: 32, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2399, file: !125, line: 33, baseType: !291, size: 32, offset: 96)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2399, file: !125, line: 34, baseType: !291, size: 32, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2399, file: !125, line: 35, baseType: !689, size: 64, offset: 192)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2399, file: !125, line: 36, baseType: !2115, size: 64, offset: 256)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2396, file: !125, line: 47, baseType: !2408, size: 192)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2396, file: !125, line: 39, size: 192, elements: !2409)
!2409 = !{!2410, !2411, !2412, !2431}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2408, file: !125, line: 40, baseType: !1728, size: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2408, file: !125, line: 41, baseType: !124, size: 32, offset: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, scope: !2408, file: !125, line: 42, baseType: !2413, size: 64, offset: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2408, file: !125, line: 42, size: 64, elements: !2414)
!2414 = !{!2415, !2423}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2413, file: !125, line: 43, baseType: !2416, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2418, line: 7, size: 128, elements: !2419)
!2418 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2419 = !{!2420, !2422}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2417, file: !2418, line: 8, baseType: !2421, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !562, line: 93, baseType: !614)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2417, file: !2418, line: 9, baseType: !614, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2413, file: !125, line: 44, baseType: !2424, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2426, line: 7, size: 64, elements: !2427)
!2426 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2427 = !{!2428, !2430}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2425, file: !2426, line: 8, baseType: !2429, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2426, line: 5, baseType: !762)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2425, file: !2426, line: 9, baseType: !762, size: 32, offset: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2408, file: !125, line: 46, baseType: !689, size: 64, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2396, file: !125, line: 55, baseType: !2433, size: 256)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2396, file: !125, line: 49, size: 256, elements: !2434)
!2434 = !{!2435, !2438, !2439, !2440, !2441}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2433, file: !125, line: 50, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !125, line: 14, flags: DIFlagFwdDecl)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2433, file: !125, line: 51, baseType: !53, size: 32, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2433, file: !125, line: 52, baseType: !53, size: 32, offset: 96)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2433, file: !125, line: 53, baseType: !259, size: 64, offset: 128)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2433, file: !125, line: 54, baseType: !259, size: 64, offset: 192)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2154, file: !2155, line: 973, baseType: !2443, size: 32, offset: 10688)
!2443 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !251, line: 27, baseType: !2444)
!2444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !562, line: 28, baseType: !53)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2154, file: !2155, line: 974, baseType: !2443, size: 32, offset: 10720)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2154, file: !2155, line: 978, baseType: !259, size: 64, offset: 10752)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2154, file: !2155, line: 987, baseType: !2153, size: 64, offset: 10816)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2154, file: !2155, line: 990, baseType: !2153, size: 64, offset: 10880)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2154, file: !2155, line: 995, baseType: !388, size: 128, offset: 10944)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2154, file: !2155, line: 996, baseType: !388, size: 128, offset: 11072)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2154, file: !2155, line: 997, baseType: !2153, size: 64, offset: 11200)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2154, file: !2155, line: 1005, baseType: !388, size: 128, offset: 11264)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2154, file: !2155, line: 1006, baseType: !388, size: 128, offset: 11392)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2154, file: !2155, line: 1009, baseType: !2455, size: 64, offset: 11520)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !2457, line: 59, size: 768, elements: !2458)
!2457 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!2458 = !{!2459, !2460, !2461, !2462, !2467, !2468, !2469, !2470}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2456, file: !2457, line: 61, baseType: !1083, size: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2456, file: !2457, line: 62, baseType: !7, size: 32, offset: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2456, file: !2457, line: 63, baseType: !460, size: 32, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2456, file: !2457, line: 65, baseType: !2463, size: 256, offset: 128)
!2463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2464, size: 256, elements: !764)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !251, line: 194, size: 64, elements: !2465)
!2465 = !{!2466}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2464, file: !251, line: 195, baseType: !1442, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2456, file: !2457, line: 66, baseType: !2464, size: 64, offset: 384)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2456, file: !2457, line: 68, baseType: !1756, size: 192, offset: 448)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2456, file: !2457, line: 69, baseType: !632, size: 128, align: 64, offset: 640)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2456, file: !2457, line: 70, baseType: !2471, offset: 768)
!2471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2472, elements: !857)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !2457, line: 54, size: 128, elements: !2473)
!2473 = !{!2474, !2475}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2472, file: !2457, line: 55, baseType: !53, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2472, file: !2457, line: 56, baseType: !2476, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !2457, line: 56, flags: DIFlagFwdDecl)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2154, file: !2155, line: 1010, baseType: !2479, size: 512, offset: 11584)
!2479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1439, size: 512, elements: !764)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2154, file: !2155, line: 1011, baseType: !388, size: 128, offset: 12096)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2154, file: !2155, line: 1012, baseType: !388, size: 128, offset: 12224)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2154, file: !2155, line: 1014, baseType: !1190, size: 64, offset: 12352)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2154, file: !2155, line: 1017, baseType: !263, size: 64, offset: 12416)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2154, file: !2155, line: 1020, baseType: !263, size: 64, offset: 12480)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2154, file: !2155, line: 1023, baseType: !249, size: 64, offset: 12544)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2154, file: !2155, line: 1025, baseType: !689, size: 64, offset: 12608)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2154, file: !2155, line: 1026, baseType: !689, size: 64, offset: 12672)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2154, file: !2155, line: 1031, baseType: !689, size: 64, offset: 12736)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2154, file: !2155, line: 1032, baseType: !2490, size: 192, offset: 12800)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2155, line: 324, size: 192, elements: !2491)
!2491 = !{!2492, !2493, !2494}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2490, file: !2155, line: 326, baseType: !689, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2490, file: !2155, line: 327, baseType: !689, size: 64, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2490, file: !2155, line: 328, baseType: !717, size: 32, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2154, file: !2155, line: 1041, baseType: !259, size: 64, offset: 12992)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2154, file: !2155, line: 1042, baseType: !259, size: 64, offset: 13056)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2154, file: !2155, line: 1045, baseType: !689, size: 64, offset: 13120)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2154, file: !2155, line: 1048, baseType: !689, size: 64, offset: 13184)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2154, file: !2155, line: 1051, baseType: !259, size: 64, offset: 13248)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2154, file: !2155, line: 1052, baseType: !259, size: 64, offset: 13312)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2154, file: !2155, line: 1055, baseType: !2502, size: 640, offset: 13376)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2503, line: 132, size: 640, elements: !2504)
!2503 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2504 = !{!2505, !2511, !2512}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2502, file: !2503, line: 133, baseType: !2506, size: 576)
!2506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2507, size: 576, elements: !529)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2503, line: 117, size: 192, elements: !2508)
!2508 = !{!2509, !2510}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2507, file: !2503, line: 118, baseType: !689, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2507, file: !2503, line: 119, baseType: !1737, size: 128, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2502, file: !2503, line: 134, baseType: !7, size: 32, offset: 576)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2502, file: !2503, line: 135, baseType: !7, size: 32, offset: 608)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2154, file: !2155, line: 1058, baseType: !2514, size: 448, offset: 14016)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2503, line: 144, size: 448, elements: !2515)
!2515 = !{!2516, !2517, !2518}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2514, file: !2503, line: 145, baseType: !632, size: 128, align: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2514, file: !2503, line: 146, baseType: !783, size: 256, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2514, file: !2503, line: 147, baseType: !7, size: 32, offset: 384)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2154, file: !2155, line: 1064, baseType: !2520, size: 64, offset: 14464)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2522)
!2522 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2155, line: 1064, flags: DIFlagFwdDecl)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2154, file: !2155, line: 1067, baseType: !2520, size: 64, offset: 14528)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2154, file: !2155, line: 1070, baseType: !2520, size: 64, offset: 14592)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2154, file: !2155, line: 1074, baseType: !2526, size: 64, offset: 14656)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2155, line: 1074, flags: DIFlagFwdDecl)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2154, file: !2155, line: 1084, baseType: !2529, size: 128, offset: 14720)
!2529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 128, elements: !1575)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2154, file: !2155, line: 1086, baseType: !2531, size: 64, offset: 14848)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2155, line: 55, flags: DIFlagFwdDecl)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2154, file: !2155, line: 1089, baseType: !2534, size: 64, offset: 14912)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2535, line: 12, size: 64, elements: !2536)
!2535 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2536 = !{!2537}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2534, file: !2535, line: 13, baseType: !2538, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2535, line: 8, flags: DIFlagFwdDecl)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2154, file: !2155, line: 1090, baseType: !2541, size: 128, offset: 14976)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2542, line: 13, size: 128, elements: !2543)
!2542 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2543 = !{!2544}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2541, file: !2542, line: 14, baseType: !388, size: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2154, file: !2155, line: 1097, baseType: !2546, size: 64, offset: 15104)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2155, line: 50, flags: DIFlagFwdDecl)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2154, file: !2155, line: 1100, baseType: !2549, size: 64, offset: 15168)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2155, line: 1100, flags: DIFlagFwdDecl)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2154, file: !2155, line: 1103, baseType: !2552, size: 64, offset: 15232)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2155, line: 53, flags: DIFlagFwdDecl)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2154, file: !2155, line: 1107, baseType: !2555, size: 64, offset: 15296)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2155, line: 56, flags: DIFlagFwdDecl)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2154, file: !2155, line: 1110, baseType: !2558, size: 64, offset: 15360)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2503, line: 236, flags: DIFlagFwdDecl)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2154, file: !2155, line: 1111, baseType: !2561, size: 64, offset: 15424)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2155, line: 67, flags: DIFlagFwdDecl)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2154, file: !2155, line: 1112, baseType: !2564, size: 64, offset: 15488)
!2564 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2565, line: 25, baseType: !2566)
!2565 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2565, line: 23, size: 64, elements: !2567)
!2567 = !{!2568}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2566, file: !2565, line: 24, baseType: !258, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2154, file: !2155, line: 1113, baseType: !2564, size: 64, offset: 15552)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2154, file: !2155, line: 1115, baseType: !2564, size: 64, offset: 15616)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2154, file: !2155, line: 1116, baseType: !2572, size: 192, offset: 15680)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2573, line: 32, size: 192, elements: !2574)
!2573 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2574 = !{!2575, !2576}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2572, file: !2573, line: 33, baseType: !388, size: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2572, file: !2573, line: 34, baseType: !2564, size: 64, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2154, file: !2155, line: 1117, baseType: !259, size: 64, offset: 15872)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2154, file: !2155, line: 1118, baseType: !574, size: 64, offset: 15936)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2154, file: !2155, line: 1119, baseType: !7, size: 32, offset: 16000)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2154, file: !2155, line: 1121, baseType: !635, size: 64, offset: 16064)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2154, file: !2155, line: 1125, baseType: !2582, size: 64, offset: 16128)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2155, line: 43, flags: DIFlagFwdDecl)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2154, file: !2155, line: 1127, baseType: !952, size: 32, offset: 16192)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2154, file: !2155, line: 1128, baseType: !7, size: 32, offset: 16224)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2154, file: !2155, line: 1130, baseType: !2587, size: 128, offset: 16256)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2588, line: 37, size: 128, elements: !2589)
!2588 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2589 = !{!2590, !2591, !2592}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2587, file: !2588, line: 38, baseType: !53, size: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2587, file: !2588, line: 39, baseType: !480, size: 32, offset: 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2587, file: !2588, line: 40, baseType: !2593, size: 64, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2588, line: 24, flags: DIFlagFwdDecl)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2154, file: !2155, line: 1131, baseType: !2596, size: 256, offset: 16384)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2597, line: 12, size: 256, elements: !2598)
!2597 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2598 = !{!2599, !2600, !2601, !2602}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2596, file: !2597, line: 13, baseType: !528, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2596, file: !2597, line: 14, baseType: !259, size: 64, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2596, file: !2597, line: 15, baseType: !259, size: 64, offset: 128)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2596, file: !2597, line: 16, baseType: !326, size: 8, offset: 192)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2154, file: !2155, line: 1134, baseType: !689, size: 64, offset: 16640)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2154, file: !2155, line: 1135, baseType: !689, size: 64, offset: 16704)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2154, file: !2155, line: 1138, baseType: !460, size: 32, offset: 16768)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2154, file: !2155, line: 1141, baseType: !717, size: 32, offset: 16800)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2154, file: !2155, line: 1143, baseType: !2608, size: 64, offset: 16832)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2155, line: 735, size: 64, elements: !2609)
!2609 = !{!2610}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2608, file: !2155, line: 736, baseType: !2611, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2154, file: !2155, line: 1147, baseType: !1740, size: 128, offset: 16896)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2154, file: !2155, line: 1149, baseType: !2153, size: 64, offset: 17024)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2154, file: !2155, line: 1151, baseType: !2615, size: 64, offset: 17088)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2155, line: 1151, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2154, file: !2155, line: 1188, baseType: !249, size: 64, offset: 17152)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2154, file: !2155, line: 1191, baseType: !2619, size: 64, offset: 17216)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2155, line: 44, flags: DIFlagFwdDecl)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2154, file: !2155, line: 1194, baseType: !2622, size: 64, offset: 17280)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2155, line: 45, flags: DIFlagFwdDecl)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2154, file: !2155, line: 1197, baseType: !2625, size: 64, offset: 17344)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2155, line: 61, flags: DIFlagFwdDecl)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2154, file: !2155, line: 1199, baseType: !2628, size: 64, offset: 17408)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2155, line: 52, flags: DIFlagFwdDecl)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2154, file: !2155, line: 1202, baseType: !2631, size: 64, offset: 17472)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2155, line: 48, flags: DIFlagFwdDecl)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2154, file: !2155, line: 1205, baseType: !259, size: 64, offset: 17536)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2154, file: !2155, line: 1206, baseType: !2635, size: 64, offset: 17600)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2573, line: 14, baseType: !2637)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2573, line: 12, size: 384, elements: !2638)
!2638 = !{!2639}
!2639 = !DIDerivedType(tag: DW_TAG_member, scope: !2637, file: !2573, line: 13, baseType: !2640, size: 384)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2637, file: !2573, line: 13, size: 384, elements: !2641)
!2641 = !{!2642, !2643, !2644, !2645}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2640, file: !2573, line: 13, baseType: !53, size: 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2640, file: !2573, line: 13, baseType: !53, size: 32, offset: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2640, file: !2573, line: 13, baseType: !53, size: 32, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2640, file: !2573, line: 13, baseType: !2646, size: 256, offset: 128)
!2646 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2647, line: 37, size: 256, elements: !2648)
!2647 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2648 = !{!2649, !2654, !2667, !2673, !2682, !2709, !2714}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2646, file: !2647, line: 42, baseType: !2650, size: 64)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2646, file: !2647, line: 39, size: 64, elements: !2651)
!2651 = !{!2652, !2653}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2650, file: !2647, line: 40, baseType: !2444, size: 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2650, file: !2647, line: 41, baseType: !958, size: 32, offset: 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2646, file: !2647, line: 50, baseType: !2655, size: 192)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2646, file: !2647, line: 45, size: 192, elements: !2656)
!2656 = !{!2657, !2659, !2660, !2666}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2655, file: !2647, line: 46, baseType: !2658, size: 32)
!2658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !562, line: 95, baseType: !53)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2655, file: !2647, line: 47, baseType: !53, size: 32, offset: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2655, file: !2647, line: 48, baseType: !2661, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2647, line: 11, baseType: !2662)
!2662 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2647, line: 8, size: 64, elements: !2663)
!2663 = !{!2664, !2665}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2662, file: !2647, line: 9, baseType: !53, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2662, file: !2647, line: 10, baseType: !249, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2655, file: !2647, line: 49, baseType: !53, size: 32, offset: 128)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2646, file: !2647, line: 57, baseType: !2668, size: 128)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2646, file: !2647, line: 53, size: 128, elements: !2669)
!2669 = !{!2670, !2671, !2672}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2668, file: !2647, line: 54, baseType: !2444, size: 32)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2668, file: !2647, line: 55, baseType: !958, size: 32, offset: 32)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2668, file: !2647, line: 56, baseType: !2661, size: 64, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2646, file: !2647, line: 66, baseType: !2674, size: 256)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2646, file: !2647, line: 60, size: 256, elements: !2675)
!2675 = !{!2676, !2677, !2678, !2679, !2681}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2674, file: !2647, line: 61, baseType: !2444, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2674, file: !2647, line: 62, baseType: !958, size: 32, offset: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2674, file: !2647, line: 63, baseType: !53, size: 32, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2674, file: !2647, line: 64, baseType: !2680, size: 64, offset: 128)
!2680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !562, line: 94, baseType: !563)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2674, file: !2647, line: 65, baseType: !2680, size: 64, offset: 192)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2646, file: !2647, line: 105, baseType: !2683, size: 256)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2646, file: !2647, line: 69, size: 256, elements: !2684)
!2684 = !{!2685, !2686}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2683, file: !2647, line: 70, baseType: !249, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, scope: !2683, file: !2647, line: 79, baseType: !2687, size: 192, offset: 64)
!2687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2683, file: !2647, line: 79, size: 192, elements: !2688)
!2688 = !{!2689, !2690, !2691, !2698, !2703}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2687, file: !2647, line: 81, baseType: !53, size: 32)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2687, file: !2647, line: 86, baseType: !821, size: 16)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2687, file: !2647, line: 92, baseType: !2692, size: 192)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2687, file: !2647, line: 88, size: 192, elements: !2693)
!2693 = !{!2694, !2696, !2697}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2692, file: !2647, line: 89, baseType: !2695, size: 64)
!2695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 64, elements: !1724)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2692, file: !2647, line: 90, baseType: !249, size: 64, offset: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2692, file: !2647, line: 91, baseType: !249, size: 64, offset: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2687, file: !2647, line: 97, baseType: !2699, size: 96)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2687, file: !2647, line: 94, size: 96, elements: !2700)
!2700 = !{!2701, !2702}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2699, file: !2647, line: 95, baseType: !2695, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2699, file: !2647, line: 96, baseType: !293, size: 32, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2687, file: !2647, line: 103, baseType: !2704, size: 128)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2687, file: !2647, line: 99, size: 128, elements: !2705)
!2705 = !{!2706, !2707, !2708}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2704, file: !2647, line: 100, baseType: !259, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2704, file: !2647, line: 101, baseType: !293, size: 32, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2704, file: !2647, line: 102, baseType: !293, size: 32, offset: 96)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2646, file: !2647, line: 111, baseType: !2710, size: 128)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2646, file: !2647, line: 108, size: 128, elements: !2711)
!2711 = !{!2712, !2713}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2710, file: !2647, line: 109, baseType: !269, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2710, file: !2647, line: 110, baseType: !53, size: 32, offset: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2646, file: !2647, line: 118, baseType: !2715, size: 128)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2646, file: !2647, line: 114, size: 128, elements: !2716)
!2716 = !{!2717, !2718, !2719}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2715, file: !2647, line: 115, baseType: !249, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2715, file: !2647, line: 116, baseType: !53, size: 32, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2715, file: !2647, line: 117, baseType: !7, size: 32, offset: 96)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2154, file: !2155, line: 1208, baseType: !2721, size: 448, offset: 17664)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2722, line: 12, size: 448, elements: !2723)
!2722 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2723 = !{!2724, !2725, !2726, !2727, !2728, !2729, !2730}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2721, file: !2722, line: 15, baseType: !689, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2721, file: !2722, line: 17, baseType: !689, size: 64, offset: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2721, file: !2722, line: 19, baseType: !689, size: 64, offset: 128)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2721, file: !2722, line: 21, baseType: !689, size: 64, offset: 192)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2721, file: !2722, line: 29, baseType: !689, size: 64, offset: 256)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2721, file: !2722, line: 35, baseType: !689, size: 64, offset: 320)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2721, file: !2722, line: 44, baseType: !689, size: 64, offset: 384)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2154, file: !2155, line: 1215, baseType: !689, size: 64, offset: 18112)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2154, file: !2155, line: 1217, baseType: !689, size: 64, offset: 18176)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2154, file: !2155, line: 1219, baseType: !689, size: 64, offset: 18240)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2154, file: !2155, line: 1223, baseType: !2735, size: 64, offset: 18304)
!2735 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !138, line: 99, baseType: !2736)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 99, size: 64, elements: !2737)
!2737 = !{!2738}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2736, file: !138, line: 99, baseType: !258, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2154, file: !2155, line: 1225, baseType: !2740, size: 32, offset: 18368)
!2740 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !732, line: 275, baseType: !2741)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !732, line: 275, size: 32, elements: !2742)
!2742 = !{!2743}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2741, file: !732, line: 275, baseType: !731, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2154, file: !2155, line: 1226, baseType: !53, size: 32, offset: 18400)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2154, file: !2155, line: 1227, baseType: !53, size: 32, offset: 18432)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2154, file: !2155, line: 1231, baseType: !2747, size: 64, offset: 18496)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2155, line: 1231, flags: DIFlagFwdDecl)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2154, file: !2155, line: 1233, baseType: !388, size: 128, offset: 18560)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2154, file: !2155, line: 1240, baseType: !2751, size: 64, offset: 18688)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2155, line: 62, flags: DIFlagFwdDecl)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2154, file: !2155, line: 1242, baseType: !2754, size: 64, offset: 18752)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2155, line: 1242, flags: DIFlagFwdDecl)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2154, file: !2155, line: 1244, baseType: !388, size: 128, offset: 18816)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2154, file: !2155, line: 1245, baseType: !2758, size: 64, offset: 18944)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2155, line: 51, flags: DIFlagFwdDecl)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2154, file: !2155, line: 1246, baseType: !783, size: 256, offset: 19008)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2154, file: !2155, line: 1247, baseType: !7, size: 32, offset: 19264)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2154, file: !2155, line: 1250, baseType: !2763, size: 64, offset: 19328)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2155, line: 57, flags: DIFlagFwdDecl)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2154, file: !2155, line: 1251, baseType: !783, size: 256, offset: 19392)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2154, file: !2155, line: 1252, baseType: !388, size: 128, offset: 19648)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2154, file: !2155, line: 1259, baseType: !904, size: 64, offset: 19776)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2154, file: !2155, line: 1260, baseType: !821, size: 16, offset: 19840)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2154, file: !2155, line: 1261, baseType: !821, size: 16, offset: 19856)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2154, file: !2155, line: 1314, baseType: !2771, size: 64, offset: 19904)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2773, line: 62, size: 256, align: 256, elements: !2774)
!2773 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2774 = !{!2775, !2776, !2777, !2778, !2779, !2780, !2781}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2772, file: !2773, line: 75, baseType: !293, size: 32)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2772, file: !2773, line: 90, baseType: !293, size: 32, offset: 32)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2772, file: !2773, line: 112, baseType: !690, size: 64, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2772, file: !2773, line: 132, baseType: !293, size: 32, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2772, file: !2773, line: 140, baseType: !293, size: 32, offset: 160)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2772, file: !2773, line: 149, baseType: !293, size: 32, offset: 192)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2772, file: !2773, line: 154, baseType: !2782, offset: 224)
!2782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, elements: !857)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2154, file: !2155, line: 1315, baseType: !291, size: 32, offset: 19968)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2154, file: !2155, line: 1316, baseType: !291, size: 32, offset: 20000)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2154, file: !2155, line: 1321, baseType: !259, size: 64, offset: 20032)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2154, file: !2155, line: 1325, baseType: !53, size: 32, offset: 20096)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2154, file: !2155, line: 1326, baseType: !53, size: 32, offset: 20128)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2154, file: !2155, line: 1327, baseType: !53, size: 32, offset: 20160)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2154, file: !2155, line: 1328, baseType: !53, size: 32, offset: 20192)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2154, file: !2155, line: 1329, baseType: !632, size: 128, align: 64, offset: 20224)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2154, file: !2155, line: 1332, baseType: !2792, size: 128, offset: 20352)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2793, line: 51, size: 128, elements: !2794)
!2793 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2794 = !{!2795, !2800, !2801}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2792, file: !2793, line: 60, baseType: !2796, size: 64)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2797, line: 7, size: 64, elements: !2798)
!2797 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2798 = !{!2799}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2796, file: !2797, line: 12, baseType: !254, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2792, file: !2793, line: 63, baseType: !326, size: 8, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2792, file: !2793, line: 70, baseType: !326, size: 8, offset: 72)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2154, file: !2155, line: 1335, baseType: !2803, size: 64, offset: 20480)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2155, line: 59, flags: DIFlagFwdDecl)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2154, file: !2155, line: 1337, baseType: !2806, size: 128, offset: 20544)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2793, line: 39, size: 128, elements: !2807)
!2807 = !{!2808, !2869, !2870}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2806, file: !2793, line: 40, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !604, line: 74, size: 512, align: 128, elements: !2811)
!2811 = !{!2812, !2813, !2863, !2868}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2810, file: !604, line: 75, baseType: !259, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, scope: !2810, file: !604, line: 83, baseType: !2814, size: 320, offset: 64)
!2814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2810, file: !604, line: 83, size: 320, elements: !2815)
!2815 = !{!2816, !2837, !2851, !2855, !2862}
!2816 = !DIDerivedType(tag: DW_TAG_member, scope: !2814, file: !604, line: 84, baseType: !2817, size: 320)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2814, file: !604, line: 84, size: 320, elements: !2818)
!2818 = !{!2819, !2830, !2831, !2836}
!2819 = !DIDerivedType(tag: DW_TAG_member, scope: !2817, file: !604, line: 90, baseType: !2820, size: 128)
!2820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2817, file: !604, line: 90, size: 128, elements: !2821)
!2821 = !{!2822, !2823, !2828, !2829}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2820, file: !604, line: 91, baseType: !388, size: 128)
!2823 = !DIDerivedType(tag: DW_TAG_member, scope: !2820, file: !604, line: 94, baseType: !2824, size: 128)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2820, file: !604, line: 94, size: 128, elements: !2825)
!2825 = !{!2826, !2827}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2824, file: !604, line: 96, baseType: !249, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2824, file: !604, line: 98, baseType: !7, size: 32, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2820, file: !604, line: 102, baseType: !388, size: 128)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2820, file: !604, line: 103, baseType: !388, size: 128)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2817, file: !604, line: 106, baseType: !602, size: 64, offset: 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, scope: !2817, file: !604, line: 107, baseType: !2832, size: 64, offset: 192)
!2832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2817, file: !604, line: 107, size: 64, elements: !2833)
!2833 = !{!2834, !2835}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2832, file: !604, line: 108, baseType: !259, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2832, file: !604, line: 109, baseType: !259, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2817, file: !604, line: 117, baseType: !259, size: 64, offset: 256)
!2837 = !DIDerivedType(tag: DW_TAG_member, scope: !2814, file: !604, line: 119, baseType: !2838, size: 320)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2814, file: !604, line: 119, size: 320, elements: !2839)
!2839 = !{!2840, !2841, !2844, !2845, !2846}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2838, file: !604, line: 124, baseType: !259, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2838, file: !604, line: 125, baseType: !2842, size: 64, offset: 64)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !604, line: 125, flags: DIFlagFwdDecl)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2838, file: !604, line: 126, baseType: !259, size: 64, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2838, file: !604, line: 127, baseType: !259, size: 64, offset: 192)
!2846 = !DIDerivedType(tag: DW_TAG_member, scope: !2838, file: !604, line: 128, baseType: !2847, size: 64, offset: 256)
!2847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2838, file: !604, line: 128, size: 64, elements: !2848)
!2848 = !{!2849, !2850}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2847, file: !604, line: 133, baseType: !259, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2847, file: !604, line: 138, baseType: !695, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, scope: !2814, file: !604, line: 141, baseType: !2852, size: 64)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2814, file: !604, line: 141, size: 64, elements: !2853)
!2853 = !{!2854}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2852, file: !604, line: 142, baseType: !259, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, scope: !2814, file: !604, line: 144, baseType: !2856, size: 128)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2814, file: !604, line: 144, size: 128, elements: !2857)
!2857 = !{!2858, !2861}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2856, file: !604, line: 146, baseType: !2859, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !604, line: 146, flags: DIFlagFwdDecl)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2856, file: !604, line: 147, baseType: !249, size: 64, offset: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2814, file: !604, line: 161, baseType: !632, size: 128, align: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, scope: !2810, file: !604, line: 164, baseType: !2864, size: 32, offset: 384)
!2864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2810, file: !604, line: 164, size: 32, elements: !2865)
!2865 = !{!2866, !2867}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2864, file: !604, line: 169, baseType: !480, size: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2864, file: !604, line: 177, baseType: !7, size: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2810, file: !604, line: 181, baseType: !480, size: 32, offset: 416)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2806, file: !2793, line: 42, baseType: !293, size: 32, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2806, file: !2793, line: 43, baseType: !293, size: 32, offset: 96)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2154, file: !2155, line: 1340, baseType: !2872, size: 64, offset: 20672)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2155, line: 69, flags: DIFlagFwdDecl)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2154, file: !2155, line: 1351, baseType: !53, size: 32, offset: 20736)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2154, file: !2155, line: 1352, baseType: !53, size: 32, offset: 20768)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2154, file: !2155, line: 1354, baseType: !259, size: 64, offset: 20800)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2154, file: !2155, line: 1364, baseType: !689, size: 64, offset: 20864)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2154, file: !2155, line: 1365, baseType: !689, size: 64, offset: 20928)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2154, file: !2155, line: 1412, baseType: !259, size: 64, offset: 20992)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2154, file: !2155, line: 1453, baseType: !2881, size: 64, offset: 21056)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2155, line: 1453, flags: DIFlagFwdDecl)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2154, file: !2155, line: 1457, baseType: !2884, size: 64, offset: 21120)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !131, line: 61, size: 576, elements: !2886)
!2886 = !{!2887, !2888, !2907, !2910, !2911, !2944, !2954}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2885, file: !131, line: 62, baseType: !130, size: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, scope: !2885, file: !131, line: 64, baseType: !2889, size: 192, offset: 64)
!2889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2885, file: !131, line: 64, size: 192, elements: !2890)
!2890 = !{!2891, !2902}
!2891 = !DIDerivedType(tag: DW_TAG_member, scope: !2889, file: !131, line: 65, baseType: !2892, size: 192)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2889, file: !131, line: 65, size: 192, elements: !2893)
!2893 = !{!2894, !2901}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2892, file: !131, line: 66, baseType: !2895, size: 128)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2896, line: 50, size: 128, elements: !2897)
!2896 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2897 = !{!2898, !2899, !2900}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2895, file: !2896, line: 52, baseType: !259, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2895, file: !2896, line: 54, baseType: !7, size: 32, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2895, file: !2896, line: 55, baseType: !7, size: 32, offset: 96)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2892, file: !131, line: 67, baseType: !259, size: 64, offset: 128)
!2902 = !DIDerivedType(tag: DW_TAG_member, scope: !2889, file: !131, line: 70, baseType: !2903, size: 192)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2889, file: !131, line: 70, size: 192, elements: !2904)
!2904 = !{!2905, !2906}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2903, file: !131, line: 71, baseType: !632, size: 128, align: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2903, file: !131, line: 72, baseType: !259, size: 64, offset: 128)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2885, file: !131, line: 76, baseType: !2908, size: 64, offset: 256)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !131, line: 76, flags: DIFlagFwdDecl)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2885, file: !131, line: 77, baseType: !259, size: 64, offset: 320)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2885, file: !131, line: 79, baseType: !2912, size: 64, offset: 384)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2896, line: 25, size: 256, elements: !2914)
!2914 = !{!2915, !2921, !2925}
!2915 = !DIDerivedType(tag: DW_TAG_member, scope: !2913, file: !2896, line: 26, baseType: !2916, size: 128)
!2916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2913, file: !2896, line: 26, size: 128, elements: !2917)
!2917 = !{!2918, !2920}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2916, file: !2896, line: 27, baseType: !2919, size: 128)
!2919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 128, elements: !1575)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2916, file: !2896, line: 28, baseType: !2919, size: 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2913, file: !2896, line: 31, baseType: !2922, size: 64, offset: 128)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2924)
!2924 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2896, line: 23, flags: DIFlagFwdDecl)
!2925 = !DIDerivedType(tag: DW_TAG_member, scope: !2913, file: !2896, line: 33, baseType: !2926, size: 64, offset: 192)
!2926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2913, file: !2896, line: 33, size: 64, elements: !2927)
!2927 = !{!2928, !2934, !2939}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2926, file: !2896, line: 38, baseType: !2929, size: 64)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2926, file: !2896, line: 34, size: 64, elements: !2930)
!2930 = !{!2931, !2932, !2933}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2929, file: !2896, line: 35, baseType: !762, size: 32)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2929, file: !2896, line: 36, baseType: !488, size: 8, offset: 32)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2929, file: !2896, line: 37, baseType: !488, size: 8, offset: 40)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2926, file: !2896, line: 42, baseType: !2935, size: 16)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2926, file: !2896, line: 39, size: 16, elements: !2936)
!2936 = !{!2937, !2938}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2935, file: !2896, line: 40, baseType: !488, size: 8)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2935, file: !2896, line: 41, baseType: !488, size: 8, offset: 8)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2926, file: !2896, line: 46, baseType: !2940, size: 16)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2926, file: !2896, line: 43, size: 16, elements: !2941)
!2941 = !{!2942, !2943}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2940, file: !2896, line: 44, baseType: !488, size: 8)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2940, file: !2896, line: 45, baseType: !488, size: 8, offset: 8)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2885, file: !131, line: 81, baseType: !2945, size: 64, offset: 448)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !131, line: 85, size: 384, elements: !2947)
!2947 = !{!2948, !2949, !2950, !2951, !2952, !2953}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2946, file: !131, line: 86, baseType: !2908, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2946, file: !131, line: 87, baseType: !259, size: 64, offset: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2946, file: !131, line: 88, baseType: !259, size: 64, offset: 128)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2946, file: !131, line: 89, baseType: !259, size: 64, offset: 192)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2946, file: !131, line: 90, baseType: !326, size: 8, offset: 256)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2946, file: !131, line: 92, baseType: !2945, size: 64, offset: 320)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2885, file: !131, line: 82, baseType: !7, size: 32, offset: 512)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2154, file: !2155, line: 1463, baseType: !2956, offset: 21184)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2155, line: 739, elements: !662)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2154, file: !2155, line: 1470, baseType: !632, size: 128, align: 64, offset: 21184)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2154, file: !2155, line: 1471, baseType: !1083, size: 32, offset: 21312)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2154, file: !2155, line: 1472, baseType: !53, size: 32, offset: 21344)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2154, file: !2155, line: 1474, baseType: !2153, size: 64, offset: 21376)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2154, file: !2155, line: 1475, baseType: !1435, size: 320, offset: 21440)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2154, file: !2155, line: 1478, baseType: !2963, size: 64, offset: 21760)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2965, line: 49, size: 512, elements: !2966)
!2965 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2966 = !{!2967, !2968, !2969, !2970, !2971, !2973, !2974, !2975, !2977}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2964, file: !2965, line: 50, baseType: !2963, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2964, file: !2965, line: 51, baseType: !249, size: 64, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2964, file: !2965, line: 52, baseType: !259, size: 64, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2964, file: !2965, line: 53, baseType: !259, size: 64, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2964, file: !2965, line: 54, baseType: !2972, size: 64, offset: 256)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2964, file: !2965, line: 56, baseType: !7, size: 32, offset: 320)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2964, file: !2965, line: 58, baseType: !7, size: 32, offset: 352)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2964, file: !2965, line: 59, baseType: !2976, size: 64, offset: 384)
!2976 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !251, line: 159, baseType: !689)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2964, file: !2965, line: 60, baseType: !440, size: 64, offset: 448)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2154, file: !2155, line: 1482, baseType: !1083, size: 32, offset: 21824)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2154, file: !2155, line: 1489, baseType: !249, size: 64, offset: 21888)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2154, file: !2155, line: 1504, baseType: !249, size: 64, offset: 21952)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2154, file: !2155, line: 1505, baseType: !690, size: 64, offset: 22016)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2154, file: !2155, line: 1506, baseType: !689, size: 64, offset: 22080)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2154, file: !2155, line: 1507, baseType: !690, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2154, file: !2155, line: 1508, baseType: !690, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2154, file: !2155, line: 1509, baseType: !690, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2154, file: !2155, line: 1510, baseType: !632, size: 128, align: 64, offset: 22208)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2154, file: !2155, line: 1511, baseType: !53, size: 32, offset: 22336)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2154, file: !2155, line: 1515, baseType: !2989, size: 64, offset: 22400)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !2177, line: 56, size: 64, elements: !2990)
!2990 = !{!2991}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2989, file: !2177, line: 57, baseType: !2180, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2154, file: !2155, line: 1518, baseType: !2989, size: 64, offset: 22464)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2154, file: !2155, line: 1528, baseType: !632, size: 128, align: 64, offset: 22528)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2154, file: !2155, line: 1552, baseType: !2995, size: 35328, offset: 23040)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2996, line: 430, size: 35328, elements: !2997)
!2996 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2997 = !{!2998, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3027, !3028, !3029, !3030, !3031, !3032, !3035, !3036, !3037, !3038}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2995, file: !2996, line: 432, baseType: !2999, size: 192)
!2999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3000, size: 192, elements: !529)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3001, line: 16, size: 64, elements: !3002)
!3001 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3002 = !{!3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3000, file: !3001, line: 17, baseType: !496, size: 16)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3000, file: !3001, line: 18, baseType: !496, size: 16, offset: 16)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3000, file: !3001, line: 19, baseType: !496, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3000, file: !3001, line: 19, baseType: !496, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3000, file: !3001, line: 19, baseType: !496, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3000, file: !3001, line: 19, baseType: !496, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3000, file: !3001, line: 19, baseType: !496, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3000, file: !3001, line: 20, baseType: !496, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3000, file: !3001, line: 20, baseType: !496, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3000, file: !3001, line: 20, baseType: !496, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3000, file: !3001, line: 20, baseType: !496, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3000, file: !3001, line: 20, baseType: !496, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3000, file: !3001, line: 20, baseType: !496, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2995, file: !2996, line: 436, baseType: !259, size: 64, offset: 192)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2995, file: !2996, line: 440, baseType: !498, size: 16, offset: 256)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2995, file: !2996, line: 441, baseType: !498, size: 16, offset: 272)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2995, file: !2996, line: 442, baseType: !498, size: 16, offset: 288)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2995, file: !2996, line: 443, baseType: !498, size: 16, offset: 304)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2995, file: !2996, line: 447, baseType: !259, size: 64, offset: 320)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2995, file: !2996, line: 448, baseType: !259, size: 64, offset: 384)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2995, file: !2996, line: 459, baseType: !3024, size: 256, offset: 448)
!3024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3025, size: 256, elements: !764)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2996, line: 428, flags: DIFlagFwdDecl)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2995, file: !2996, line: 461, baseType: !259, size: 64, offset: 704)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2995, file: !2996, line: 463, baseType: !259, size: 64, offset: 768)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2995, file: !2996, line: 465, baseType: !259, size: 64, offset: 832)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2995, file: !2996, line: 466, baseType: !259, size: 64, offset: 896)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2995, file: !2996, line: 467, baseType: !259, size: 64, offset: 960)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2995, file: !2996, line: 473, baseType: !3033, size: 64, offset: 1024)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2996, line: 10, flags: DIFlagFwdDecl)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2995, file: !2996, line: 480, baseType: !259, size: 64, offset: 1088)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2995, file: !2996, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2995, file: !2996, line: 491, baseType: !291, size: 32, offset: 1184)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2995, file: !2996, line: 501, baseType: !3039, size: 33792, offset: 1536)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3040, line: 448, size: 33792, elements: !3041)
!3040 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3041 = !{!3042, !3043, !3044, !3208, !3209, !3215, !3216}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3039, file: !3040, line: 461, baseType: !7, size: 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3039, file: !3040, line: 468, baseType: !259, size: 64, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3039, file: !3040, line: 476, baseType: !3045, size: 64, offset: 128)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3040, line: 356, size: 33280, align: 512, elements: !3047)
!3047 = !{!3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3046, file: !3040, line: 358, baseType: !7, size: 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3046, file: !3040, line: 361, baseType: !7, size: 32, offset: 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3046, file: !3040, line: 364, baseType: !689, size: 64, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3046, file: !3040, line: 367, baseType: !689, size: 64, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3046, file: !3040, line: 370, baseType: !689, size: 64, offset: 192)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3046, file: !3040, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3046, file: !3040, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3046, file: !3040, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3046, file: !3040, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3046, file: !3040, line: 397, baseType: !3058, size: 32768, offset: 512)
!3058 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3040, line: 348, size: 32768, elements: !3059)
!3059 = !{!3060, !3075, !3112, !3189, !3204}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3058, file: !3040, line: 349, baseType: !3061, size: 896)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3040, line: 12, size: 896, elements: !3062)
!3062 = !{!3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3074}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3061, file: !3040, line: 13, baseType: !291, size: 32)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3061, file: !3040, line: 14, baseType: !291, size: 32, offset: 32)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3061, file: !3040, line: 15, baseType: !291, size: 32, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3061, file: !3040, line: 16, baseType: !291, size: 32, offset: 96)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3061, file: !3040, line: 17, baseType: !291, size: 32, offset: 128)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3061, file: !3040, line: 18, baseType: !291, size: 32, offset: 160)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3061, file: !3040, line: 19, baseType: !291, size: 32, offset: 192)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3061, file: !3040, line: 22, baseType: !3071, size: 640, offset: 224)
!3071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 640, elements: !3072)
!3072 = !{!3073}
!3073 = !DISubrange(count: 20)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3061, file: !3040, line: 25, baseType: !291, size: 32, offset: 864)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3058, file: !3040, line: 350, baseType: !3076, size: 4096, align: 128)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3040, line: 34, size: 4096, align: 128, elements: !3077)
!3077 = !{!3078, !3079, !3080, !3081, !3082, !3097, !3098, !3099, !3101, !3103, !3107}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3076, file: !3040, line: 35, baseType: !496, size: 16)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3076, file: !3040, line: 36, baseType: !496, size: 16, offset: 16)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3076, file: !3040, line: 37, baseType: !496, size: 16, offset: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3076, file: !3040, line: 38, baseType: !496, size: 16, offset: 48)
!3082 = !DIDerivedType(tag: DW_TAG_member, scope: !3076, file: !3040, line: 39, baseType: !3083, size: 128, offset: 64)
!3083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3076, file: !3040, line: 39, size: 128, elements: !3084)
!3084 = !{!3085, !3090}
!3085 = !DIDerivedType(tag: DW_TAG_member, scope: !3083, file: !3040, line: 40, baseType: !3086, size: 128)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3083, file: !3040, line: 40, size: 128, elements: !3087)
!3087 = !{!3088, !3089}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3086, file: !3040, line: 41, baseType: !689, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3086, file: !3040, line: 42, baseType: !689, size: 64, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, scope: !3083, file: !3040, line: 44, baseType: !3091, size: 128)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3083, file: !3040, line: 44, size: 128, elements: !3092)
!3092 = !{!3093, !3094, !3095, !3096}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3091, file: !3040, line: 45, baseType: !291, size: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3091, file: !3040, line: 46, baseType: !291, size: 32, offset: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3091, file: !3040, line: 47, baseType: !291, size: 32, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3091, file: !3040, line: 48, baseType: !291, size: 32, offset: 96)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3076, file: !3040, line: 51, baseType: !291, size: 32, offset: 192)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3076, file: !3040, line: 52, baseType: !291, size: 32, offset: 224)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3076, file: !3040, line: 55, baseType: !3100, size: 1024, offset: 256)
!3100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 1024, elements: !1560)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3076, file: !3040, line: 58, baseType: !3102, size: 2048, offset: 1280)
!3102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 2048, elements: !533)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3076, file: !3040, line: 60, baseType: !3104, size: 384, offset: 3328)
!3104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 384, elements: !3105)
!3105 = !{!3106}
!3106 = !DISubrange(count: 12)
!3107 = !DIDerivedType(tag: DW_TAG_member, scope: !3076, file: !3040, line: 62, baseType: !3108, size: 384, offset: 3712)
!3108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3076, file: !3040, line: 62, size: 384, elements: !3109)
!3109 = !{!3110, !3111}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3108, file: !3040, line: 63, baseType: !3104, size: 384)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3108, file: !3040, line: 64, baseType: !3104, size: 384)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3058, file: !3040, line: 351, baseType: !3113, size: 1088)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3040, line: 79, size: 1088, elements: !3114)
!3114 = !{!3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3188}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3113, file: !3040, line: 80, baseType: !291, size: 32)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3113, file: !3040, line: 81, baseType: !291, size: 32, offset: 32)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3113, file: !3040, line: 82, baseType: !291, size: 32, offset: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3113, file: !3040, line: 83, baseType: !291, size: 32, offset: 96)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3113, file: !3040, line: 84, baseType: !291, size: 32, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3113, file: !3040, line: 85, baseType: !291, size: 32, offset: 160)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3113, file: !3040, line: 86, baseType: !291, size: 32, offset: 192)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3113, file: !3040, line: 88, baseType: !3071, size: 640, offset: 224)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3113, file: !3040, line: 89, baseType: !488, size: 8, offset: 864)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3113, file: !3040, line: 90, baseType: !488, size: 8, offset: 872)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3113, file: !3040, line: 91, baseType: !488, size: 8, offset: 880)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3113, file: !3040, line: 92, baseType: !488, size: 8, offset: 888)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3113, file: !3040, line: 93, baseType: !488, size: 8, offset: 896)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3113, file: !3040, line: 94, baseType: !488, size: 8, offset: 904)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3113, file: !3040, line: 95, baseType: !3130, size: 64, offset: 960)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3132, line: 11, size: 128, elements: !3133)
!3132 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3133 = !{!3134, !3135}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3131, file: !3132, line: 12, baseType: !269, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3131, file: !3132, line: 13, baseType: !3136, size: 64, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3138, line: 103, size: 1344, elements: !3139)
!3138 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3139 = !{!3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3168, !3169, !3170}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3137, file: !3138, line: 109, baseType: !259, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3137, file: !3138, line: 110, baseType: !259, size: 64, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3137, file: !3138, line: 111, baseType: !259, size: 64, offset: 128)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3137, file: !3138, line: 112, baseType: !259, size: 64, offset: 192)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3137, file: !3138, line: 113, baseType: !259, size: 64, offset: 256)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3137, file: !3138, line: 114, baseType: !259, size: 64, offset: 320)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3137, file: !3138, line: 117, baseType: !259, size: 64, offset: 384)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3137, file: !3138, line: 118, baseType: !259, size: 64, offset: 448)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3137, file: !3138, line: 119, baseType: !259, size: 64, offset: 512)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3137, file: !3138, line: 120, baseType: !259, size: 64, offset: 576)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3137, file: !3138, line: 121, baseType: !259, size: 64, offset: 640)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3137, file: !3138, line: 122, baseType: !259, size: 64, offset: 704)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3137, file: !3138, line: 123, baseType: !259, size: 64, offset: 768)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3137, file: !3138, line: 124, baseType: !259, size: 64, offset: 832)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3137, file: !3138, line: 125, baseType: !259, size: 64, offset: 896)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3137, file: !3138, line: 139, baseType: !259, size: 64, offset: 960)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3137, file: !3138, line: 142, baseType: !259, size: 64, offset: 1024)
!3157 = !DIDerivedType(tag: DW_TAG_member, scope: !3137, file: !3138, line: 144, baseType: !3158, size: 64, offset: 1088)
!3158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3137, file: !3138, line: 144, size: 64, elements: !3159)
!3159 = !{!3160, !3161, !3162}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3158, file: !3138, line: 146, baseType: !496, size: 16)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3158, file: !3138, line: 148, baseType: !689, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3158, file: !3138, line: 150, baseType: !3163, size: 64)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3138, line: 59, size: 64, elements: !3164)
!3164 = !{!3165, !3166, !3167}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3163, file: !3138, line: 61, baseType: !689, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3163, file: !3138, line: 63, baseType: !689, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3163, file: !3138, line: 65, baseType: !689, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3137, file: !3138, line: 153, baseType: !259, size: 64, offset: 1152)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3137, file: !3138, line: 154, baseType: !259, size: 64, offset: 1216)
!3170 = !DIDerivedType(tag: DW_TAG_member, scope: !3137, file: !3138, line: 156, baseType: !3171, size: 64, offset: 1280)
!3171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3137, file: !3138, line: 156, size: 64, elements: !3172)
!3172 = !{!3173, !3174, !3175}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3171, file: !3138, line: 158, baseType: !496, size: 16)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3171, file: !3138, line: 160, baseType: !689, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3171, file: !3138, line: 162, baseType: !3176, size: 64)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3138, line: 69, size: 64, elements: !3177)
!3177 = !{!3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3176, file: !3138, line: 71, baseType: !689, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3176, file: !3138, line: 73, baseType: !689, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3176, file: !3138, line: 75, baseType: !689, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3176, file: !3138, line: 77, baseType: !689, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3176, file: !3138, line: 80, baseType: !689, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3176, file: !3138, line: 83, baseType: !689, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3176, file: !3138, line: 86, baseType: !689, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3176, file: !3138, line: 88, baseType: !689, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3176, file: !3138, line: 93, baseType: !689, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3176, file: !3138, line: 100, baseType: !689, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3113, file: !3040, line: 96, baseType: !291, size: 32, offset: 1024)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3058, file: !3040, line: 352, baseType: !3190, size: 4608, align: 512)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3040, line: 333, size: 4608, align: 512, elements: !3191)
!3191 = !{!3192, !3193, !3202}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3190, file: !3040, line: 334, baseType: !3076, size: 4096, align: 128)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3190, file: !3040, line: 335, baseType: !3194, size: 512, offset: 4096)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3040, line: 312, size: 512, elements: !3195)
!3195 = !{!3196, !3197, !3198}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3194, file: !3040, line: 313, baseType: !689, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3194, file: !3040, line: 314, baseType: !689, size: 64, offset: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3194, file: !3040, line: 315, baseType: !3199, size: 384, offset: 128)
!3199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 384, elements: !3200)
!3200 = !{!3201}
!3201 = !DISubrange(count: 6)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3190, file: !3040, line: 336, baseType: !3203, offset: 4608)
!3203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, elements: !857)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3058, file: !3040, line: 353, baseType: !3205, size: 32768)
!3205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 32768, elements: !3206)
!3206 = !{!3207}
!3207 = !DISubrange(count: 4096)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3039, file: !3040, line: 484, baseType: !3045, size: 64, offset: 192)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3039, file: !3040, line: 491, baseType: !3210, size: 128, offset: 256)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3040, line: 404, size: 128, elements: !3211)
!3211 = !{!3212, !3213, !3214}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3210, file: !3040, line: 424, baseType: !689, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3210, file: !3040, line: 432, baseType: !7, size: 32, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3210, file: !3040, line: 440, baseType: !7, size: 32, offset: 96)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3039, file: !3040, line: 498, baseType: !3210, size: 128, offset: 384)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3039, file: !3040, line: 508, baseType: !3046, size: 33280, align: 512, offset: 512)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2140, file: !6, line: 125, baseType: !2139, size: 64, offset: 384)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2140, file: !6, line: 126, baseType: !7, size: 32, offset: 448)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2140, file: !6, line: 127, baseType: !7, size: 32, offset: 480)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !2140, file: !6, line: 128, baseType: !259, size: 64, offset: 512)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !2140, file: !6, line: 129, baseType: !259, size: 64, offset: 576)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2140, file: !6, line: 130, baseType: !304, size: 64, offset: 640)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2140, file: !6, line: 131, baseType: !3224, size: 64, offset: 704)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !272, line: 14, flags: DIFlagFwdDecl)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !271, file: !272, line: 61, baseType: !7, size: 32, offset: 960)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !271, file: !272, line: 62, baseType: !7, size: 32, offset: 992)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !271, file: !272, line: 63, baseType: !7, size: 32, offset: 1024)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !271, file: !272, line: 64, baseType: !7, size: 32, offset: 1056)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !271, file: !272, line: 65, baseType: !7, size: 32, offset: 1088)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !271, file: !272, line: 66, baseType: !7, size: 32, offset: 1120)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !271, file: !272, line: 67, baseType: !259, size: 64, offset: 1152)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !271, file: !272, line: 68, baseType: !7, size: 32, offset: 1216)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !271, file: !272, line: 69, baseType: !480, size: 32, offset: 1248)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !271, file: !272, line: 70, baseType: !53, size: 32, offset: 1280)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !271, file: !272, line: 71, baseType: !717, size: 32, offset: 1312)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !271, file: !272, line: 72, baseType: !3238, size: 64, offset: 1344)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !271, file: !272, line: 73, baseType: !252, size: 64, offset: 1408)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_hint", scope: !271, file: !272, line: 75, baseType: !252, size: 64, offset: 1472)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_notify", scope: !271, file: !272, line: 76, baseType: !3242, size: 64, offset: 1536)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_notify", file: !6, line: 261, size: 448, elements: !3244)
!3244 = !{!3245, !3246, !3247, !3248, !3252}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3243, file: !6, line: 262, baseType: !7, size: 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3243, file: !6, line: 263, baseType: !1079, size: 32, offset: 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3243, file: !6, line: 264, baseType: !844, size: 256, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !3243, file: !6, line: 265, baseType: !3249, size: 64, offset: 320)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{null, !3242, !2315}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3243, file: !6, line: 266, baseType: !3253, size: 64, offset: 384)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{null, !3256}
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "pending_mask", scope: !271, file: !272, line: 78, baseType: !284, size: 64, offset: 1600)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !271, file: !272, line: 81, baseType: !259, size: 64, offset: 1664)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !271, file: !272, line: 82, baseType: !480, size: 32, offset: 1728)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !271, file: !272, line: 83, baseType: !1756, size: 192, offset: 1792)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !271, file: !272, line: 85, baseType: !7, size: 32, offset: 1984)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !271, file: !272, line: 86, baseType: !7, size: 32, offset: 2016)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !271, file: !272, line: 87, baseType: !7, size: 32, offset: 2048)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !271, file: !272, line: 88, baseType: !7, size: 32, offset: 2080)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !271, file: !272, line: 91, baseType: !3224, size: 64, offset: 2112)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !271, file: !272, line: 98, baseType: !632, size: 128, align: 64, offset: 2176)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !271, file: !272, line: 99, baseType: !447, size: 512, offset: 2304)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !271, file: !272, line: 101, baseType: !783, size: 256, offset: 2816)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !271, file: !272, line: 102, baseType: !53, size: 32, offset: 3072)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !271, file: !272, line: 103, baseType: !1171, size: 64, offset: 3136)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !271, file: !272, line: 104, baseType: !304, size: 64, offset: 3200)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "resend_node", scope: !271, file: !272, line: 106, baseType: !1439, size: 128, offset: 3264)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DICompositeType(tag: DW_TAG_structure_type, name: "maple_enode", file: !653, line: 141, flags: DIFlagFwdDecl)
!3275 = !{!3276, !3287, !3289, !3291, !3293, !3298, !3303, !3305, !3307, !3309, !3311, !3313, !3315, !0, !3317, !3322, !3325, !3327, !3330, !3335, !3337, !3339, !3354, !3356, !3358, !3363, !3365, !3367, !3369, !3372, !3374, !3377, !3382, !3396, !3399, !3401, !3404, !3406, !3411, !3413, !3415, !3418, !3420, !3422, !3424, !3426, !3428, !3430, !3433, !3435, !3437, !3442, !3444, !3446, !3448, !3450, !3452}
!3276 = !DIGlobalVariableExpression(var: !3277, expr: !DIExpression())
!3277 = distinct !DIGlobalVariable(name: "__setup_irq_affinity_setup", scope: !2, file: !3, line: 38, type: !3278, isLocal: true, isDefinition: true, align: 64)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !3279, line: 324, size: 192, elements: !3280)
!3279 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!3280 = !{!3281, !3282, !3286}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3278, file: !3279, line: 325, baseType: !304, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !3278, file: !3279, line: 326, baseType: !3283, size: 64, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!53, !528}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !3278, file: !3279, line: 327, baseType: !53, size: 32, offset: 128)
!3287 = !DIGlobalVariableExpression(var: !3288, expr: !DIExpression())
!3288 = distinct !DIGlobalVariable(name: "nr_irqs", scope: !2, file: !3, line: 129, type: !53, isLocal: false, isDefinition: true)
!3289 = !DIGlobalVariableExpression(var: !3290, expr: !DIExpression())
!3290 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nr_irqs206", scope: !2, file: !3, line: 130, type: !249, isLocal: true, isDefinition: true)
!3291 = !DIGlobalVariableExpression(var: !3292, expr: !DIExpression())
!3292 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_irqdesc__208_369_irq_sysfs_init2209", scope: !2, file: !3, line: 369, type: !249, isLocal: true, isDefinition: true)
!3293 = !DIGlobalVariableExpression(var: !3294, expr: !DIExpression())
!3294 = distinct !DIGlobalVariable(scope: null, file: !3, line: 558, type: !3295, isLocal: true, isDefinition: true)
!3295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 408, elements: !3296)
!3296 = !{!3297}
!3297 = !DISubrange(count: 51)
!3298 = !DIGlobalVariableExpression(var: !3299, expr: !DIExpression())
!3299 = distinct !DIGlobalVariable(scope: null, file: !3, line: 561, type: !3300, isLocal: true, isDefinition: true)
!3300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 168, elements: !3301)
!3301 = !{!3302}
!3302 = !DISubrange(count: 21)
!3303 = !DIGlobalVariableExpression(var: !3304, expr: !DIExpression())
!3304 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_generic_handle_irq210", scope: !2, file: !3, line: 693, type: !249, isLocal: true, isDefinition: true)
!3305 = !DIGlobalVariableExpression(var: !3306, expr: !DIExpression())
!3306 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_generic_handle_irq_safe211", scope: !2, file: !3, line: 716, type: !249, isLocal: true, isDefinition: true)
!3307 = !DIGlobalVariableExpression(var: !3308, expr: !DIExpression())
!3308 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_generic_handle_domain_irq212", scope: !2, file: !3, line: 734, type: !249, isLocal: true, isDefinition: true)
!3309 = !DIGlobalVariableExpression(var: !3310, expr: !DIExpression())
!3310 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_generic_handle_domain_irq_safe213", scope: !2, file: !3, line: 758, type: !249, isLocal: true, isDefinition: true)
!3311 = !DIGlobalVariableExpression(var: !3312, expr: !DIExpression())
!3312 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_irq_free_descs214", scope: !2, file: !3, line: 798, type: !249, isLocal: true, isDefinition: true)
!3313 = !DIGlobalVariableExpression(var: !3314, expr: !DIExpression())
!3314 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___irq_alloc_descs215", scope: !2, file: !3, line: 852, type: !249, isLocal: true, isDefinition: true)
!3315 = !DIGlobalVariableExpression(var: !3316, expr: !DIExpression())
!3316 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_irq_get_percpu_devid_partition216", scope: !2, file: !3, line: 939, type: !249, isLocal: true, isDefinition: true)
!3317 = !DIGlobalVariableExpression(var: !3318, expr: !DIExpression())
!3318 = distinct !DIGlobalVariable(scope: null, file: !3, line: 35, type: !3319, isLocal: true, isDefinition: true)
!3319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 40, elements: !3320)
!3320 = !{!3321}
!3321 = !DISubrange(count: 5)
!3322 = !DIGlobalVariableExpression(var: !3323, expr: !DIExpression())
!3323 = distinct !DIGlobalVariable(scope: null, file: !3, line: 356, type: !3324, isLocal: true, isDefinition: true)
!3324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 32, elements: !764)
!3325 = !DIGlobalVariableExpression(var: !3326, expr: !DIExpression())
!3326 = distinct !DIGlobalVariable(name: "irq_kobj_base", scope: !2, file: !3, line: 176, type: !453, isLocal: true, isDefinition: true)
!3327 = !DIGlobalVariableExpression(var: !3328, expr: !DIExpression())
!3328 = distinct !DIGlobalVariable(scope: null, file: !3, line: 329, type: !3329, isLocal: true, isDefinition: true)
!3329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 24, elements: !529)
!3330 = !DIGlobalVariableExpression(var: !3331, expr: !DIExpression())
!3331 = distinct !DIGlobalVariable(scope: null, file: !3, line: 330, type: !3332, isLocal: true, isDefinition: true)
!3332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 288, elements: !3333)
!3333 = !{!3334}
!3334 = !DISubrange(count: 36)
!3335 = !DIGlobalVariableExpression(var: !3336, expr: !DIExpression())
!3336 = distinct !DIGlobalVariable(name: "sparse_irqs", scope: !2, file: !3, line: 133, type: !652, isLocal: true, isDefinition: true)
!3337 = !DIGlobalVariableExpression(var: !3338, expr: !DIExpression())
!3338 = distinct !DIGlobalVariable(name: "sparse_irq_lock", scope: !2, file: !3, line: 132, type: !783, isLocal: true, isDefinition: true)
!3339 = !DIGlobalVariableExpression(var: !3340, expr: !DIExpression())
!3340 = distinct !DIGlobalVariable(name: "__key", scope: !3341, file: !3, line: 434, type: !3353, isLocal: true, isDefinition: true)
!3341 = distinct !DISubprogram(name: "alloc_desc", scope: !3, file: !3, line: 415, type: !3342, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3344)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!270, !53, !53, !7, !252, !1171}
!3344 = !{!3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352}
!3345 = !DILocalVariable(name: "irq", arg: 1, scope: !3341, file: !3, line: 415, type: !53)
!3346 = !DILocalVariable(name: "node", arg: 2, scope: !3341, file: !3, line: 415, type: !53)
!3347 = !DILocalVariable(name: "flags", arg: 3, scope: !3341, file: !3, line: 415, type: !7)
!3348 = !DILocalVariable(name: "affinity", arg: 4, scope: !3341, file: !3, line: 416, type: !252)
!3349 = !DILocalVariable(name: "owner", arg: 5, scope: !3341, file: !3, line: 417, type: !1171)
!3350 = !DILocalVariable(name: "desc", scope: !3341, file: !3, line: 419, type: !270)
!3351 = !DILabel(scope: !3341, name: "err_kstat", file: !3, line: 445)
!3352 = !DILabel(scope: !3341, name: "err_desc", file: !3, line: 447)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1470, line: 206, elements: !662)
!3354 = !DIGlobalVariableExpression(var: !3355, expr: !DIExpression())
!3355 = distinct !DIGlobalVariable(scope: null, file: !3, line: 434, type: !3300, isLocal: true, isDefinition: true)
!3356 = !DIGlobalVariableExpression(var: !3357, expr: !DIExpression())
!3357 = distinct !DIGlobalVariable(name: "__key", scope: !3341, file: !3, line: 436, type: !3353, isLocal: true, isDefinition: true)
!3358 = !DIGlobalVariableExpression(var: !3359, expr: !DIExpression())
!3359 = distinct !DIGlobalVariable(scope: null, file: !3, line: 436, type: !3360, isLocal: true, isDefinition: true)
!3360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 192, elements: !3361)
!3361 = !{!3362}
!3362 = !DISubrange(count: 24)
!3363 = !DIGlobalVariableExpression(var: !3364, expr: !DIExpression())
!3364 = distinct !DIGlobalVariable(scope: null, file: !168, line: 480, type: !3300, isLocal: true, isDefinition: true)
!3365 = !DIGlobalVariableExpression(var: !3366, expr: !DIExpression())
!3366 = distinct !DIGlobalVariable(name: "irq_desc_lock_class", scope: !2, file: !3, line: 24, type: !3353, isLocal: true, isDefinition: true)
!3367 = !DIGlobalVariableExpression(var: !3368, expr: !DIExpression())
!3368 = distinct !DIGlobalVariable(name: "irq_kobj_type", scope: !2, file: !3, line: 315, type: !543, isLocal: true, isDefinition: true)
!3369 = !DIGlobalVariableExpression(var: !3370, expr: !DIExpression())
!3370 = distinct !DIGlobalVariable(name: "irq_groups", scope: !2, file: !3, line: 313, type: !3371, isLocal: true, isDefinition: true)
!3371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 128, elements: !1326)
!3372 = !DIGlobalVariableExpression(var: !3373, expr: !DIExpression())
!3373 = distinct !DIGlobalVariable(name: "irq_group", scope: !2, file: !3, line: 313, type: !580, isLocal: true, isDefinition: true)
!3374 = !DIGlobalVariableExpression(var: !3375, expr: !DIExpression())
!3375 = distinct !DIGlobalVariable(name: "irq_attrs", scope: !2, file: !3, line: 303, type: !3376, isLocal: true, isDefinition: true)
!3376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 512, elements: !1724)
!3377 = !DIGlobalVariableExpression(var: !3378, expr: !DIExpression())
!3378 = distinct !DIGlobalVariable(scope: null, file: !3, line: 199, type: !3379, isLocal: true, isDefinition: true)
!3379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 112, elements: !3380)
!3380 = !{!3381}
!3381 = !DISubrange(count: 14)
!3382 = !DIGlobalVariableExpression(var: !3383, expr: !DIExpression())
!3383 = distinct !DIGlobalVariable(name: "per_cpu_count_attr", scope: !2, file: !3, line: 199, type: !3384, isLocal: true, isDefinition: true)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_attribute", file: !448, line: 139, size: 256, elements: !3385)
!3385 = !{!3386, !3387, !3392}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3384, file: !448, line: 140, baseType: !565, size: 128)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3384, file: !448, line: 141, baseType: !3388, size: 64, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!560, !453, !3391, !528}
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3384, file: !448, line: 143, baseType: !3393, size: 64, offset: 192)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!560, !453, !3391, !304, !574}
!3396 = !DIGlobalVariableExpression(var: !3397, expr: !DIExpression())
!3397 = distinct !DIGlobalVariable(scope: null, file: !3, line: 186, type: !3398, isLocal: true, isDefinition: true)
!3398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 8, elements: !260)
!3399 = !DIGlobalVariableExpression(var: !3400, expr: !DIExpression())
!3400 = distinct !DIGlobalVariable(scope: null, file: !3, line: 192, type: !3319, isLocal: true, isDefinition: true)
!3401 = !DIGlobalVariableExpression(var: !3402, expr: !DIExpression())
!3402 = distinct !DIGlobalVariable(scope: null, file: !3, line: 193, type: !3403, isLocal: true, isDefinition: true)
!3403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 16, elements: !1326)
!3404 = !DIGlobalVariableExpression(var: !3405, expr: !DIExpression())
!3405 = distinct !DIGlobalVariable(scope: null, file: !3, line: 196, type: !3403, isLocal: true, isDefinition: true)
!3406 = !DIGlobalVariableExpression(var: !3407, expr: !DIExpression())
!3407 = distinct !DIGlobalVariable(scope: null, file: !3, line: 216, type: !3408, isLocal: true, isDefinition: true)
!3408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 80, elements: !3409)
!3409 = !{!3410}
!3410 = !DISubrange(count: 10)
!3411 = !DIGlobalVariableExpression(var: !3412, expr: !DIExpression())
!3412 = distinct !DIGlobalVariable(name: "chip_name_attr", scope: !2, file: !3, line: 216, type: !3384, isLocal: true, isDefinition: true)
!3413 = !DIGlobalVariableExpression(var: !3414, expr: !DIExpression())
!3414 = distinct !DIGlobalVariable(scope: null, file: !3, line: 209, type: !3324, isLocal: true, isDefinition: true)
!3415 = !DIGlobalVariableExpression(var: !3416, expr: !DIExpression())
!3416 = distinct !DIGlobalVariable(scope: null, file: !3, line: 231, type: !3417, isLocal: true, isDefinition: true)
!3417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 48, elements: !3200)
!3418 = !DIGlobalVariableExpression(var: !3419, expr: !DIExpression())
!3419 = distinct !DIGlobalVariable(name: "hwirq_attr", scope: !2, file: !3, line: 231, type: !3384, isLocal: true, isDefinition: true)
!3420 = !DIGlobalVariableExpression(var: !3421, expr: !DIExpression())
!3421 = distinct !DIGlobalVariable(scope: null, file: !3, line: 226, type: !3319, isLocal: true, isDefinition: true)
!3422 = !DIGlobalVariableExpression(var: !3423, expr: !DIExpression())
!3423 = distinct !DIGlobalVariable(scope: null, file: !3, line: 247, type: !3319, isLocal: true, isDefinition: true)
!3424 = !DIGlobalVariableExpression(var: !3425, expr: !DIExpression())
!3425 = distinct !DIGlobalVariable(name: "type_attr", scope: !2, file: !3, line: 247, type: !3384, isLocal: true, isDefinition: true)
!3426 = !DIGlobalVariableExpression(var: !3427, expr: !DIExpression())
!3427 = distinct !DIGlobalVariable(scope: null, file: !3, line: 241, type: !3417, isLocal: true, isDefinition: true)
!3428 = !DIGlobalVariableExpression(var: !3429, expr: !DIExpression())
!3429 = distinct !DIGlobalVariable(scope: null, file: !3, line: 241, type: !3319, isLocal: true, isDefinition: true)
!3430 = !DIGlobalVariableExpression(var: !3431, expr: !DIExpression())
!3431 = distinct !DIGlobalVariable(scope: null, file: !3, line: 263, type: !3432, isLocal: true, isDefinition: true)
!3432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 56, elements: !1328)
!3433 = !DIGlobalVariableExpression(var: !3434, expr: !DIExpression())
!3434 = distinct !DIGlobalVariable(name: "wakeup_attr", scope: !2, file: !3, line: 263, type: !3384, isLocal: true, isDefinition: true)
!3435 = !DIGlobalVariableExpression(var: !3436, expr: !DIExpression())
!3436 = distinct !DIGlobalVariable(scope: null, file: !3, line: 257, type: !2695, isLocal: true, isDefinition: true)
!3437 = !DIGlobalVariableExpression(var: !3438, expr: !DIExpression())
!3438 = distinct !DIGlobalVariable(scope: null, file: !3, line: 257, type: !3439, isLocal: true, isDefinition: true)
!3439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 72, elements: !3440)
!3440 = !{!3441}
!3441 = !DISubrange(count: 9)
!3442 = !DIGlobalVariableExpression(var: !3443, expr: !DIExpression())
!3443 = distinct !DIGlobalVariable(scope: null, file: !3, line: 278, type: !3319, isLocal: true, isDefinition: true)
!3444 = !DIGlobalVariableExpression(var: !3445, expr: !DIExpression())
!3445 = distinct !DIGlobalVariable(name: "name_attr", scope: !2, file: !3, line: 278, type: !3384, isLocal: true, isDefinition: true)
!3446 = !DIGlobalVariableExpression(var: !3447, expr: !DIExpression())
!3447 = distinct !DIGlobalVariable(scope: null, file: !3, line: 301, type: !2695, isLocal: true, isDefinition: true)
!3448 = !DIGlobalVariableExpression(var: !3449, expr: !DIExpression())
!3449 = distinct !DIGlobalVariable(name: "actions_attr", scope: !2, file: !3, line: 301, type: !3384, isLocal: true, isDefinition: true)
!3450 = !DIGlobalVariableExpression(var: !3451, expr: !DIExpression())
!3451 = distinct !DIGlobalVariable(scope: null, file: !3, line: 290, type: !3319, isLocal: true, isDefinition: true)
!3452 = !DIGlobalVariableExpression(var: !3453, expr: !DIExpression())
!3453 = distinct !DIGlobalVariable(scope: null, file: !154, line: 261, type: !3324, isLocal: true, isDefinition: true)
!3454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 104, elements: !3455)
!3455 = !{!3456}
!3456 = !DISubrange(count: 13)
!3457 = !{i32 7, !"Dwarf Version", i32 5}
!3458 = !{i32 2, !"Debug Info Version", i32 3}
!3459 = !{i32 1, !"wchar_size", i32 2}
!3460 = !{i32 8, !"cf-protection-branch", i32 1}
!3461 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3462 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3463 = !{i32 1, !"Code Model", i32 2}
!3464 = !{i32 1, !"override-stack-alignment", i32 8}
!3465 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3466 = distinct !DISubprogram(name: "irq_affinity_setup", scope: !3, file: !3, line: 27, type: !3284, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3467)
!3467 = !{!3468, !3469, !3472, !3474}
!3468 = !DILocalVariable(name: "str", arg: 1, scope: !3466, file: !3, line: 27, type: !528)
!3469 = !DILocalVariable(name: "pscr_ret__", scope: !3470, file: !3, line: 35, type: !53)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 35, column: 18)
!3471 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 35, column: 18)
!3472 = !DILocalVariable(name: "__vpp_verify", scope: !3473, file: !3, line: 35, type: !440)
!3473 = distinct !DILexicalBlock(scope: !3470, file: !3, line: 35, column: 18)
!3474 = !DILocalVariable(name: "pfo_val__", scope: !3475, file: !3, line: 35, type: !291)
!3475 = distinct !DILexicalBlock(scope: !3470, file: !3, line: 35, column: 18)
!3476 = !DILocation(line: 27, column: 44, scope: !3466)
!3477 = !DILocation(line: 29, column: 2, scope: !3466)
!3478 = !DILocation(line: 30, column: 16, scope: !3466)
!3479 = !DILocation(line: 30, column: 2, scope: !3466)
!3480 = !DILocation(line: 35, column: 18, scope: !3471)
!3481 = !DILocation(line: 35, column: 18, scope: !3470)
!3482 = !DILocation(line: 35, column: 18, scope: !3473)
!3483 = !DILocation(line: 35, column: 18, scope: !3475)
!3484 = !{i64 2153238440}
!3485 = !DILocation(line: 35, column: 2, scope: !3466)
!3486 = !DILocation(line: 36, column: 2, scope: !3466)
!3487 = distinct !DISubprogram(name: "__initstub__kmod_irqdesc__208_369_irq_sysfs_init2", scope: !3, file: !3, line: 369, type: !1308, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3488 = !DILocation(line: 369, column: 1, scope: !3487)
!3489 = distinct !DISubprogram(name: "irq_sysfs_init", scope: !3, file: !3, line: 348, type: !1308, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3490)
!3490 = !{!3491, !3492}
!3491 = !DILocalVariable(name: "desc", scope: !3489, file: !3, line: 350, type: !270)
!3492 = !DILocalVariable(name: "irq", scope: !3489, file: !3, line: 351, type: !53)
!3493 = !DILocation(line: 350, column: 2, scope: !3489)
!3494 = !DILocation(line: 350, column: 19, scope: !3489)
!3495 = !DILocation(line: 351, column: 2, scope: !3489)
!3496 = !DILocation(line: 351, column: 6, scope: !3489)
!3497 = !DILocation(line: 354, column: 2, scope: !3489)
!3498 = !DILocation(line: 356, column: 48, scope: !3489)
!3499 = !DILocation(line: 356, column: 18, scope: !3489)
!3500 = !DILocation(line: 356, column: 16, scope: !3489)
!3501 = !DILocation(line: 357, column: 7, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3489, file: !3, line: 357, column: 6)
!3503 = !DILocation(line: 357, column: 6, scope: !3489)
!3504 = !DILocation(line: 358, column: 3, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3502, file: !3, line: 357, column: 22)
!3506 = !DILocation(line: 359, column: 3, scope: !3505)
!3507 = !DILocation(line: 363, column: 2, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3489, file: !3, line: 363, column: 2)
!3509 = !DILocation(line: 363, column: 2, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 363, column: 2)
!3511 = !DILocation(line: 363, column: 2, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3510, file: !3, line: 363, column: 2)
!3513 = !DILocation(line: 364, column: 17, scope: !3512)
!3514 = !DILocation(line: 364, column: 22, scope: !3512)
!3515 = !DILocation(line: 364, column: 3, scope: !3512)
!3516 = distinct !{!3516, !3507, !3517, !3518, !3519}
!3517 = !DILocation(line: 364, column: 26, scope: !3508)
!3518 = !{!"llvm.loop.mustprogress"}
!3519 = !{!"llvm.loop.unroll.disable"}
!3520 = !DILocation(line: 365, column: 2, scope: !3489)
!3521 = !DILocation(line: 367, column: 2, scope: !3489)
!3522 = !DILocation(line: 368, column: 1, scope: !3489)
!3523 = distinct !DISubprogram(name: "irq_to_desc", scope: !3, file: !3, line: 382, type: !3524, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3526)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!270, !7}
!3526 = !{!3527}
!3527 = !DILocalVariable(name: "irq", arg: 1, scope: !3523, file: !3, line: 382, type: !7)
!3528 = !DILocation(line: 382, column: 43, scope: !3523)
!3529 = !DILocation(line: 384, column: 34, scope: !3523)
!3530 = !DILocation(line: 384, column: 9, scope: !3523)
!3531 = !DILocation(line: 384, column: 2, scope: !3523)
!3532 = !DISubprogram(name: "mtree_load", scope: !653, file: !653, line: 311, type: !3533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!249, !3535, !259}
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!3536 = distinct !DISubprogram(name: "irq_lock_sparse", scope: !3, file: !3, line: 405, type: !1546, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3537 = !DILocation(line: 407, column: 2, scope: !3536)
!3538 = !DILocation(line: 408, column: 1, scope: !3536)
!3539 = !DISubprogram(name: "mutex_lock", scope: !784, file: !784, line: 227, type: !3540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{null, !3542}
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!3543 = distinct !DISubprogram(name: "irq_unlock_sparse", scope: !3, file: !3, line: 410, type: !1546, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3544 = !DILocation(line: 412, column: 2, scope: !3543)
!3545 = !DILocation(line: 413, column: 1, scope: !3543)
!3546 = !DISubprogram(name: "mutex_unlock", scope: !784, file: !784, line: 246, type: !3540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3547 = distinct !DISubprogram(name: "early_irq_init", scope: !3, file: !3, line: 549, type: !1308, scopeLine: 550, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3548)
!3548 = !{!3549, !3550, !3551, !3552, !3553, !3556, !3559, !3562}
!3549 = !DILocalVariable(name: "i", scope: !3547, file: !3, line: 551, type: !53)
!3550 = !DILocalVariable(name: "initcnt", scope: !3547, file: !3, line: 551, type: !53)
!3551 = !DILocalVariable(name: "node", scope: !3547, file: !3, line: 551, type: !53)
!3552 = !DILocalVariable(name: "desc", scope: !3547, file: !3, line: 552, type: !270)
!3553 = !DILocalVariable(name: "__ret_warn_on", scope: !3554, file: !3, line: 561, type: !53)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 561, column: 6)
!3555 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 561, column: 6)
!3556 = !DILocalVariable(name: "__flags", scope: !3557, file: !3, line: 561, type: !53)
!3557 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 561, column: 6)
!3558 = distinct !DILexicalBlock(scope: !3554, file: !3, line: 561, column: 6)
!3559 = !DILocalVariable(name: "__ret_warn_on", scope: !3560, file: !3, line: 564, type: !53)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 564, column: 6)
!3561 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 564, column: 6)
!3562 = !DILocalVariable(name: "__flags", scope: !3563, file: !3, line: 564, type: !53)
!3563 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 564, column: 6)
!3564 = distinct !DILexicalBlock(scope: !3560, file: !3, line: 564, column: 6)
!3565 = !DILocation(line: 551, column: 2, scope: !3547)
!3566 = !DILocation(line: 551, column: 6, scope: !3547)
!3567 = !DILocation(line: 551, column: 9, scope: !3547)
!3568 = !DILocation(line: 551, column: 18, scope: !3547)
!3569 = !DILocation(line: 551, column: 25, scope: !3547)
!3570 = !DILocation(line: 552, column: 2, scope: !3547)
!3571 = !DILocation(line: 552, column: 19, scope: !3547)
!3572 = !DILocation(line: 554, column: 2, scope: !3547)
!3573 = !DILocation(line: 557, column: 12, scope: !3547)
!3574 = !DILocation(line: 557, column: 10, scope: !3547)
!3575 = !DILocation(line: 558, column: 2, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 558, column: 2)
!3577 = !DILocation(line: 558, column: 2, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3576, file: !3, line: 558, column: 2)
!3579 = !DILocation(line: 561, column: 6, scope: !3554)
!3580 = !DILocation(line: 561, column: 6, scope: !3558)
!3581 = !DILocation(line: 561, column: 6, scope: !3557)
!3582 = !DILocation(line: 561, column: 6, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 561, column: 6)
!3584 = !DILocation(line: 561, column: 6, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 561, column: 6)
!3586 = !{i64 2153275285, i64 2153275314, i64 2153275360, i64 2153275418, i64 2153275472, i64 2153275526, i64 2153275581, i64 2153275612, i64 2153275920, i64 2153275926, i64 2153275973, i64 2153275996, i64 2153276022}
!3587 = !DILocation(line: 561, column: 6, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 561, column: 6)
!3589 = !DILocation(line: 561, column: 6, scope: !3555)
!3590 = !DILocation(line: 561, column: 6, scope: !3547)
!3591 = !DILocation(line: 562, column: 11, scope: !3555)
!3592 = !DILocation(line: 562, column: 3, scope: !3555)
!3593 = !DILocation(line: 564, column: 6, scope: !3560)
!3594 = !DILocation(line: 564, column: 6, scope: !3564)
!3595 = !DILocation(line: 564, column: 6, scope: !3563)
!3596 = !DILocation(line: 564, column: 6, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 564, column: 6)
!3598 = !DILocation(line: 564, column: 6, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 564, column: 6)
!3600 = !{i64 2153276848, i64 2153276877, i64 2153276923, i64 2153276981, i64 2153277035, i64 2153277089, i64 2153277144, i64 2153277175, i64 2153277483, i64 2153277489, i64 2153277536, i64 2153277559, i64 2153277585}
!3601 = !DILocation(line: 564, column: 6, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 564, column: 6)
!3603 = !DILocation(line: 564, column: 6, scope: !3561)
!3604 = !DILocation(line: 564, column: 6, scope: !3547)
!3605 = !DILocation(line: 565, column: 11, scope: !3561)
!3606 = !DILocation(line: 565, column: 3, scope: !3561)
!3607 = !DILocation(line: 567, column: 6, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 567, column: 6)
!3609 = !DILocation(line: 567, column: 16, scope: !3608)
!3610 = !DILocation(line: 567, column: 14, scope: !3608)
!3611 = !DILocation(line: 567, column: 6, scope: !3547)
!3612 = !DILocation(line: 568, column: 13, scope: !3608)
!3613 = !DILocation(line: 568, column: 11, scope: !3608)
!3614 = !DILocation(line: 568, column: 3, scope: !3608)
!3615 = !DILocation(line: 570, column: 9, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 570, column: 2)
!3617 = !DILocation(line: 570, column: 7, scope: !3616)
!3618 = !DILocation(line: 570, column: 14, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 570, column: 2)
!3620 = !DILocation(line: 570, column: 18, scope: !3619)
!3621 = !DILocation(line: 570, column: 16, scope: !3619)
!3622 = !DILocation(line: 570, column: 2, scope: !3616)
!3623 = !DILocation(line: 571, column: 21, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3619, file: !3, line: 570, column: 32)
!3625 = !DILocation(line: 571, column: 24, scope: !3624)
!3626 = !DILocation(line: 571, column: 10, scope: !3624)
!3627 = !DILocation(line: 571, column: 8, scope: !3624)
!3628 = !DILocation(line: 572, column: 19, scope: !3624)
!3629 = !DILocation(line: 572, column: 22, scope: !3624)
!3630 = !DILocation(line: 572, column: 3, scope: !3624)
!3631 = !DILocation(line: 573, column: 2, scope: !3624)
!3632 = !DILocation(line: 570, column: 28, scope: !3619)
!3633 = !DILocation(line: 570, column: 2, scope: !3619)
!3634 = distinct !{!3634, !3622, !3635, !3518, !3519}
!3635 = !DILocation(line: 573, column: 2, scope: !3616)
!3636 = !DILocation(line: 574, column: 9, scope: !3547)
!3637 = !DILocation(line: 575, column: 1, scope: !3547)
!3638 = !DILocation(line: 574, column: 2, scope: !3547)
!3639 = distinct !DISubprogram(name: "__first_node", scope: !138, file: !138, line: 264, type: !3640, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3644)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!7, !3642}
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2735)
!3644 = !{!3645, !3646, !3648}
!3645 = !DILocalVariable(name: "srcp", arg: 1, scope: !3639, file: !138, line: 264, type: !3642)
!3646 = !DILocalVariable(name: "__UNIQUE_ID___x83", scope: !3647, file: !138, line: 266, type: !7)
!3647 = distinct !DILexicalBlock(scope: !3639, file: !138, line: 266, column: 9)
!3648 = !DILocalVariable(name: "__UNIQUE_ID___y84", scope: !3647, file: !138, line: 266, type: !7)
!3649 = !DILocation(line: 264, column: 59, scope: !3639)
!3650 = !DILocation(line: 266, column: 9, scope: !3647)
!3651 = !DILocation(line: 266, column: 9, scope: !3639)
!3652 = !DILocation(line: 266, column: 2, scope: !3639)
!3653 = distinct !DISubprogram(name: "init_irq_default_affinity", scope: !3, file: !3, line: 40, type: !1546, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3654 = !DILocation(line: 42, column: 7, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3653, file: !3, line: 42, column: 6)
!3656 = !DILocation(line: 42, column: 6, scope: !3653)
!3657 = !DILocation(line: 43, column: 3, scope: !3655)
!3658 = !DILocation(line: 44, column: 6, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3653, file: !3, line: 44, column: 6)
!3660 = !DILocation(line: 44, column: 6, scope: !3653)
!3661 = !DILocation(line: 45, column: 3, scope: !3659)
!3662 = !DILocation(line: 46, column: 1, scope: !3653)
!3663 = !DISubprogram(name: "arch_probe_nr_irqs", scope: !6, file: !6, line: 826, type: !1308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3664 = !DISubprogram(name: "_printk", scope: !3665, file: !3665, line: 153, type: !3666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3665 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!53, !304, null}
!3668 = !DILocation(line: 415, column: 40, scope: !3341)
!3669 = !DILocation(line: 415, column: 49, scope: !3341)
!3670 = !DILocation(line: 415, column: 68, scope: !3341)
!3671 = !DILocation(line: 416, column: 30, scope: !3341)
!3672 = !DILocation(line: 417, column: 23, scope: !3341)
!3673 = !DILocation(line: 419, column: 2, scope: !3341)
!3674 = !DILocation(line: 419, column: 19, scope: !3341)
!3675 = !DILocation(line: 421, column: 49, scope: !3341)
!3676 = !DILocation(line: 421, column: 9, scope: !3341)
!3677 = !DILocation(line: 421, column: 7, scope: !3341)
!3678 = !DILocation(line: 422, column: 7, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 422, column: 6)
!3680 = !DILocation(line: 422, column: 6, scope: !3341)
!3681 = !DILocation(line: 423, column: 3, scope: !3679)
!3682 = !DILocation(line: 425, column: 21, scope: !3341)
!3683 = !DILocation(line: 425, column: 2, scope: !3341)
!3684 = !DILocation(line: 425, column: 8, scope: !3341)
!3685 = !DILocation(line: 425, column: 19, scope: !3341)
!3686 = !DILocation(line: 426, column: 7, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 426, column: 6)
!3688 = !DILocation(line: 426, column: 13, scope: !3687)
!3689 = !DILocation(line: 426, column: 6, scope: !3341)
!3690 = !DILocation(line: 427, column: 3, scope: !3687)
!3691 = !DILocation(line: 429, column: 18, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 429, column: 6)
!3693 = !DILocation(line: 429, column: 24, scope: !3692)
!3694 = !DILocation(line: 429, column: 6, scope: !3692)
!3695 = !DILocation(line: 429, column: 6, scope: !3341)
!3696 = !DILocation(line: 430, column: 3, scope: !3692)
!3697 = !DILocation(line: 432, column: 2, scope: !3341)
!3698 = !DILocation(line: 432, column: 2, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 432, column: 2)
!3700 = !DILocation(line: 433, column: 2, scope: !3341)
!3701 = !DILocation(line: 433, column: 2, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 433, column: 2)
!3703 = !DILocation(line: 434, column: 2, scope: !3341)
!3704 = !DILocation(line: 434, column: 2, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 434, column: 2)
!3706 = !DILocation(line: 435, column: 17, scope: !3341)
!3707 = !DILocation(line: 435, column: 23, scope: !3341)
!3708 = !DILocation(line: 435, column: 2, scope: !3341)
!3709 = !DILocation(line: 436, column: 2, scope: !3341)
!3710 = !DILocation(line: 436, column: 2, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 436, column: 2)
!3712 = !DILocation(line: 438, column: 20, scope: !3341)
!3713 = !DILocation(line: 438, column: 25, scope: !3341)
!3714 = !DILocation(line: 438, column: 31, scope: !3341)
!3715 = !DILocation(line: 438, column: 37, scope: !3341)
!3716 = !DILocation(line: 438, column: 47, scope: !3341)
!3717 = !DILocation(line: 438, column: 2, scope: !3341)
!3718 = !DILocation(line: 439, column: 12, scope: !3341)
!3719 = !DILocation(line: 439, column: 18, scope: !3341)
!3720 = !DILocation(line: 439, column: 28, scope: !3341)
!3721 = !DILocation(line: 439, column: 2, scope: !3341)
!3722 = !DILocation(line: 440, column: 16, scope: !3341)
!3723 = !DILocation(line: 440, column: 22, scope: !3341)
!3724 = !DILocation(line: 440, column: 2, scope: !3341)
!3725 = !DILocation(line: 441, column: 18, scope: !3341)
!3726 = !DILocation(line: 441, column: 2, scope: !3341)
!3727 = !DILocation(line: 443, column: 9, scope: !3341)
!3728 = !DILocation(line: 443, column: 2, scope: !3341)
!3729 = !DILocation(line: 445, column: 1, scope: !3341)
!3730 = !DILocation(line: 446, column: 14, scope: !3341)
!3731 = !DILocation(line: 446, column: 20, scope: !3341)
!3732 = !DILocation(line: 446, column: 2, scope: !3341)
!3733 = !DILocation(line: 447, column: 1, scope: !3341)
!3734 = !DILocation(line: 448, column: 8, scope: !3341)
!3735 = !DILocation(line: 448, column: 2, scope: !3341)
!3736 = !DILocation(line: 449, column: 2, scope: !3341)
!3737 = !DILocation(line: 450, column: 1, scope: !3341)
!3738 = distinct !DISubprogram(name: "irq_insert_desc", scope: !3, file: !3, line: 159, type: !3739, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3741)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{null, !7, !270}
!3741 = !{!3742, !3743, !3744, !3767, !3769}
!3742 = !DILocalVariable(name: "irq", arg: 1, scope: !3738, file: !3, line: 159, type: !7)
!3743 = !DILocalVariable(name: "desc", arg: 2, scope: !3738, file: !3, line: 159, type: !270)
!3744 = !DILocalVariable(name: "mas", scope: !3738, file: !3, line: 161, type: !3745)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ma_state", file: !653, line: 380, size: 512, elements: !3746)
!3746 = !{!3747, !3748, !3749, !3750, !3751, !3752, !3753, !3764, !3765, !3766}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3745, file: !653, line: 381, baseType: !3535, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3745, file: !653, line: 382, baseType: !259, size: 64, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !3745, file: !653, line: 383, baseType: !259, size: 64, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3745, file: !653, line: 384, baseType: !3273, size: 64, offset: 192)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3745, file: !653, line: 385, baseType: !259, size: 64, offset: 256)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3745, file: !653, line: 386, baseType: !259, size: 64, offset: 320)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3745, file: !653, line: 387, baseType: !3754, size: 64, offset: 384)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_alloc", file: !653, line: 132, size: 2048, elements: !3756)
!3756 = !{!3757, !3758, !3759, !3760}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !3755, file: !653, line: 133, baseType: !259, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "node_count", scope: !3755, file: !653, line: 134, baseType: !490, size: 8, offset: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "request_count", scope: !3755, file: !653, line: 135, baseType: !7, size: 32, offset: 96)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !3755, file: !653, line: 136, baseType: !3761, size: 1920, offset: 128)
!3761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3754, size: 1920, elements: !3762)
!3762 = !{!3763}
!3763 = !DISubrange(count: 30)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3745, file: !653, line: 388, baseType: !490, size: 8, offset: 448)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3745, file: !653, line: 389, baseType: !490, size: 8, offset: 456)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "mas_flags", scope: !3745, file: !653, line: 390, baseType: !490, size: 8, offset: 464)
!3767 = !DILocalVariable(name: "__ret_warn_on", scope: !3768, file: !3, line: 162, type: !53)
!3768 = distinct !DILexicalBlock(scope: !3738, file: !3, line: 162, column: 2)
!3769 = !DILocalVariable(name: "__flags", scope: !3770, file: !3, line: 162, type: !53)
!3770 = distinct !DILexicalBlock(scope: !3771, file: !3, line: 162, column: 2)
!3771 = distinct !DILexicalBlock(scope: !3768, file: !3, line: 162, column: 2)
!3772 = !DILocation(line: 159, column: 42, scope: !3738)
!3773 = !DILocation(line: 159, column: 64, scope: !3738)
!3774 = !DILocation(line: 161, column: 2, scope: !3738)
!3775 = !DILocation(line: 162, column: 2, scope: !3768)
!3776 = !DILocation(line: 162, column: 2, scope: !3771)
!3777 = !DILocation(line: 162, column: 2, scope: !3770)
!3778 = !DILocation(line: 162, column: 2, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3770, file: !3, line: 162, column: 2)
!3780 = !DILocation(line: 162, column: 2, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3770, file: !3, line: 162, column: 2)
!3782 = !{i64 2153247249, i64 2153247278, i64 2153247324, i64 2153247382, i64 2153247436, i64 2153247490, i64 2153247545, i64 2153247576, i64 2153247884, i64 2153247890, i64 2153247937, i64 2153247960, i64 2153247986}
!3783 = !DILocation(line: 162, column: 2, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3770, file: !3, line: 162, column: 2)
!3785 = !DILocation(line: 162, column: 2, scope: !3738)
!3786 = !DILocation(line: 163, column: 1, scope: !3738)
!3787 = !DISubprogram(name: "arch_early_irq_init", scope: !6, file: !6, line: 827, type: !1308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3788 = distinct !DISubprogram(name: "handle_irq_desc", scope: !3, file: !3, line: 665, type: !3789, scopeLine: 666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3791)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!53, !270}
!3791 = !{!3792, !3793, !3794, !3797}
!3792 = !DILocalVariable(name: "desc", arg: 1, scope: !3788, file: !3, line: 665, type: !270)
!3793 = !DILocalVariable(name: "data", scope: !3788, file: !3, line: 667, type: !310)
!3794 = !DILocalVariable(name: "__ret_warn_on", scope: !3795, file: !3, line: 673, type: !53)
!3795 = distinct !DILexicalBlock(scope: !3796, file: !3, line: 673, column: 6)
!3796 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 673, column: 6)
!3797 = !DILocalVariable(name: "__flags", scope: !3798, file: !3, line: 673, type: !53)
!3798 = distinct !DILexicalBlock(scope: !3799, file: !3, line: 673, column: 6)
!3799 = distinct !DILexicalBlock(scope: !3795, file: !3, line: 673, column: 6)
!3800 = !DILocation(line: 665, column: 38, scope: !3788)
!3801 = !DILocation(line: 667, column: 2, scope: !3788)
!3802 = !DILocation(line: 667, column: 19, scope: !3788)
!3803 = !DILocation(line: 669, column: 7, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 669, column: 6)
!3805 = !DILocation(line: 669, column: 6, scope: !3788)
!3806 = !DILocation(line: 670, column: 3, scope: !3804)
!3807 = !DILocation(line: 672, column: 31, scope: !3788)
!3808 = !DILocation(line: 672, column: 9, scope: !3788)
!3809 = !DILocation(line: 672, column: 7, scope: !3788)
!3810 = !DILocation(line: 673, column: 6, scope: !3795)
!3811 = !DILocation(line: 0, scope: !3795)
!3812 = !DILocation(line: 673, column: 6, scope: !3799)
!3813 = !DILocation(line: 673, column: 6, scope: !3798)
!3814 = !DILocation(line: 673, column: 6, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3798, file: !3, line: 673, column: 6)
!3816 = !DILocation(line: 673, column: 6, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3798, file: !3, line: 673, column: 6)
!3818 = !{i64 2153278698, i64 2153278727, i64 2153278773, i64 2153278831, i64 2153278885, i64 2153278939, i64 2153278994, i64 2153279025, i64 2153279333, i64 2153279339, i64 2153279386, i64 2153279409, i64 2153279435}
!3819 = !DILocation(line: 673, column: 6, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3798, file: !3, line: 673, column: 6)
!3821 = !DILocation(line: 673, column: 6, scope: !3796)
!3822 = !DILocation(line: 673, column: 6, scope: !3788)
!3823 = !DILocation(line: 674, column: 3, scope: !3796)
!3824 = !DILocation(line: 676, column: 26, scope: !3788)
!3825 = !DILocation(line: 676, column: 2, scope: !3788)
!3826 = !DILocation(line: 677, column: 2, scope: !3788)
!3827 = !DILocation(line: 678, column: 1, scope: !3788)
!3828 = distinct !DISubprogram(name: "irq_desc_get_irq_data", scope: !272, file: !272, line: 135, type: !3829, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3831)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!310, !270}
!3831 = !{!3832}
!3832 = !DILocalVariable(name: "desc", arg: 1, scope: !3828, file: !272, line: 135, type: !270)
!3833 = !DILocation(line: 135, column: 71, scope: !3828)
!3834 = !DILocation(line: 137, column: 10, scope: !3828)
!3835 = !DILocation(line: 137, column: 16, scope: !3828)
!3836 = !DILocation(line: 137, column: 2, scope: !3828)
!3837 = distinct !DISubprogram(name: "preempt_count", scope: !3838, file: !3838, line: 25, type: !1308, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3839)
!3838 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!3839 = !{!3840}
!3840 = !DILocalVariable(name: "pfo_val__", scope: !3841, file: !3838, line: 27, type: !291)
!3841 = distinct !DILexicalBlock(scope: !3837, file: !3838, line: 27, column: 9)
!3842 = !DILocation(line: 27, column: 9, scope: !3841)
!3843 = !{i64 2149506383}
!3844 = !DILocation(line: 27, column: 9, scope: !3837)
!3845 = !DILocation(line: 27, column: 48, scope: !3837)
!3846 = !DILocation(line: 27, column: 2, scope: !3837)
!3847 = distinct !DISubprogram(name: "handle_enforce_irqctx", scope: !154, file: !154, line: 465, type: !3848, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3850)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!326, !310}
!3850 = !{!3851}
!3851 = !DILocalVariable(name: "data", arg: 1, scope: !3847, file: !154, line: 465, type: !310)
!3852 = !DILocation(line: 465, column: 59, scope: !3847)
!3853 = !DILocation(line: 467, column: 39, scope: !3847)
!3854 = !DILocation(line: 467, column: 9, scope: !3847)
!3855 = !DILocation(line: 467, column: 2, scope: !3847)
!3856 = distinct !DISubprogram(name: "generic_handle_irq_desc", scope: !272, file: !272, line: 159, type: !2110, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3857)
!3857 = !{!3858}
!3858 = !DILocalVariable(name: "desc", arg: 1, scope: !3856, file: !272, line: 159, type: !270)
!3859 = !DILocation(line: 159, column: 61, scope: !3856)
!3860 = !DILocation(line: 161, column: 2, scope: !3856)
!3861 = !DILocation(line: 161, column: 8, scope: !3856)
!3862 = !DILocation(line: 161, column: 19, scope: !3856)
!3863 = !DILocation(line: 162, column: 1, scope: !3856)
!3864 = distinct !DISubprogram(name: "generic_handle_irq", scope: !3, file: !3, line: 689, type: !3865, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3867)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!53, !7}
!3867 = !{!3868}
!3868 = !DILocalVariable(name: "irq", arg: 1, scope: !3864, file: !3, line: 689, type: !7)
!3869 = !DILocation(line: 689, column: 37, scope: !3864)
!3870 = !DILocation(line: 691, column: 37, scope: !3864)
!3871 = !DILocation(line: 691, column: 25, scope: !3864)
!3872 = !DILocation(line: 691, column: 9, scope: !3864)
!3873 = !DILocation(line: 691, column: 2, scope: !3864)
!3874 = distinct !DISubprogram(name: "generic_handle_irq_safe", scope: !3, file: !3, line: 706, type: !3865, scopeLine: 707, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3875)
!3875 = !{!3876, !3877, !3878, !3879, !3883, !3884, !3888}
!3876 = !DILocalVariable(name: "irq", arg: 1, scope: !3874, file: !3, line: 706, type: !7)
!3877 = !DILocalVariable(name: "flags", scope: !3874, file: !3, line: 708, type: !259)
!3878 = !DILocalVariable(name: "ret", scope: !3874, file: !3, line: 709, type: !53)
!3879 = !DILocalVariable(name: "__dummy", scope: !3880, file: !3, line: 711, type: !259)
!3880 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 711, column: 2)
!3881 = distinct !DILexicalBlock(scope: !3882, file: !3, line: 711, column: 2)
!3882 = distinct !DILexicalBlock(scope: !3874, file: !3, line: 711, column: 2)
!3883 = !DILocalVariable(name: "__dummy2", scope: !3880, file: !3, line: 711, type: !259)
!3884 = !DILocalVariable(name: "__dummy", scope: !3885, file: !3, line: 713, type: !259)
!3885 = distinct !DILexicalBlock(scope: !3886, file: !3, line: 713, column: 2)
!3886 = distinct !DILexicalBlock(scope: !3887, file: !3, line: 713, column: 2)
!3887 = distinct !DILexicalBlock(scope: !3874, file: !3, line: 713, column: 2)
!3888 = !DILocalVariable(name: "__dummy2", scope: !3885, file: !3, line: 713, type: !259)
!3889 = !DILocation(line: 706, column: 42, scope: !3874)
!3890 = !DILocation(line: 708, column: 2, scope: !3874)
!3891 = !DILocation(line: 708, column: 16, scope: !3874)
!3892 = !DILocation(line: 709, column: 2, scope: !3874)
!3893 = !DILocation(line: 709, column: 6, scope: !3874)
!3894 = !DILocation(line: 711, column: 2, scope: !3874)
!3895 = !DILocation(line: 711, column: 2, scope: !3882)
!3896 = !DILocation(line: 711, column: 2, scope: !3880)
!3897 = !DILocation(line: 711, column: 2, scope: !3881)
!3898 = !DILocation(line: 712, column: 36, scope: !3874)
!3899 = !DILocation(line: 712, column: 24, scope: !3874)
!3900 = !DILocation(line: 712, column: 8, scope: !3874)
!3901 = !DILocation(line: 712, column: 6, scope: !3874)
!3902 = !DILocation(line: 713, column: 2, scope: !3874)
!3903 = !DILocation(line: 713, column: 2, scope: !3887)
!3904 = !DILocation(line: 713, column: 2, scope: !3885)
!3905 = !DILocation(line: 713, column: 2, scope: !3886)
!3906 = !DILocation(line: 713, column: 2, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3886, file: !3, line: 713, column: 2)
!3908 = !DILocation(line: 714, column: 9, scope: !3874)
!3909 = !DILocation(line: 715, column: 1, scope: !3874)
!3910 = !DILocation(line: 714, column: 2, scope: !3874)
!3911 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !3912, file: !3912, line: 101, type: !3913, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3915)
!3912 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!259}
!3915 = !{!3916}
!3916 = !DILocalVariable(name: "flags", scope: !3911, file: !3912, line: 103, type: !259)
!3917 = !DILocation(line: 103, column: 2, scope: !3911)
!3918 = !DILocation(line: 103, column: 16, scope: !3911)
!3919 = !DILocation(line: 103, column: 24, scope: !3911)
!3920 = !DILocation(line: 104, column: 2, scope: !3911)
!3921 = !DILocation(line: 105, column: 9, scope: !3911)
!3922 = !DILocation(line: 106, column: 1, scope: !3911)
!3923 = !DILocation(line: 105, column: 2, scope: !3911)
!3924 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !3912, file: !3912, line: 132, type: !3925, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3927)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{null, !259}
!3927 = !{!3928}
!3928 = !DILocalVariable(name: "flags", arg: 1, scope: !3924, file: !3912, line: 132, type: !259)
!3929 = !DILocation(line: 132, column: 66, scope: !3924)
!3930 = !DILocation(line: 134, column: 32, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3924, file: !3912, line: 134, column: 6)
!3932 = !DILocation(line: 134, column: 7, scope: !3931)
!3933 = !DILocation(line: 134, column: 6, scope: !3924)
!3934 = !DILocation(line: 135, column: 3, scope: !3931)
!3935 = !DILocation(line: 136, column: 1, scope: !3924)
!3936 = distinct !DISubprogram(name: "generic_handle_domain_irq", scope: !3, file: !3, line: 730, type: !3937, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3939)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!53, !383, !7}
!3939 = !{!3940, !3941}
!3940 = !DILocalVariable(name: "domain", arg: 1, scope: !3936, file: !3, line: 730, type: !383)
!3941 = !DILocalVariable(name: "hwirq", arg: 2, scope: !3936, file: !3, line: 730, type: !7)
!3942 = !DILocation(line: 730, column: 50, scope: !3936)
!3943 = !DILocation(line: 730, column: 71, scope: !3936)
!3944 = !DILocation(line: 732, column: 45, scope: !3936)
!3945 = !DILocation(line: 732, column: 53, scope: !3936)
!3946 = !DILocation(line: 732, column: 25, scope: !3936)
!3947 = !DILocation(line: 732, column: 9, scope: !3936)
!3948 = !DILocation(line: 732, column: 2, scope: !3936)
!3949 = distinct !DISubprogram(name: "irq_resolve_mapping", scope: !385, file: !385, line: 414, type: !3950, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3952)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!270, !383, !2011}
!3952 = !{!3953, !3954}
!3953 = !DILocalVariable(name: "domain", arg: 1, scope: !3949, file: !385, line: 414, type: !383)
!3954 = !DILocalVariable(name: "hwirq", arg: 2, scope: !3949, file: !385, line: 415, type: !2011)
!3955 = !DILocation(line: 414, column: 71, scope: !3949)
!3956 = !DILocation(line: 415, column: 26, scope: !3949)
!3957 = !DILocation(line: 417, column: 31, scope: !3949)
!3958 = !DILocation(line: 417, column: 39, scope: !3949)
!3959 = !DILocation(line: 417, column: 9, scope: !3949)
!3960 = !DILocation(line: 417, column: 2, scope: !3949)
!3961 = distinct !DISubprogram(name: "generic_handle_domain_irq_safe", scope: !3, file: !3, line: 748, type: !3937, scopeLine: 749, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3962)
!3962 = !{!3963, !3964, !3965, !3966, !3967, !3971, !3972, !3976}
!3963 = !DILocalVariable(name: "domain", arg: 1, scope: !3961, file: !3, line: 748, type: !383)
!3964 = !DILocalVariable(name: "hwirq", arg: 2, scope: !3961, file: !3, line: 748, type: !7)
!3965 = !DILocalVariable(name: "flags", scope: !3961, file: !3, line: 750, type: !259)
!3966 = !DILocalVariable(name: "ret", scope: !3961, file: !3, line: 751, type: !53)
!3967 = !DILocalVariable(name: "__dummy", scope: !3968, file: !3, line: 753, type: !259)
!3968 = distinct !DILexicalBlock(scope: !3969, file: !3, line: 753, column: 2)
!3969 = distinct !DILexicalBlock(scope: !3970, file: !3, line: 753, column: 2)
!3970 = distinct !DILexicalBlock(scope: !3961, file: !3, line: 753, column: 2)
!3971 = !DILocalVariable(name: "__dummy2", scope: !3968, file: !3, line: 753, type: !259)
!3972 = !DILocalVariable(name: "__dummy", scope: !3973, file: !3, line: 755, type: !259)
!3973 = distinct !DILexicalBlock(scope: !3974, file: !3, line: 755, column: 2)
!3974 = distinct !DILexicalBlock(scope: !3975, file: !3, line: 755, column: 2)
!3975 = distinct !DILexicalBlock(scope: !3961, file: !3, line: 755, column: 2)
!3976 = !DILocalVariable(name: "__dummy2", scope: !3973, file: !3, line: 755, type: !259)
!3977 = !DILocation(line: 748, column: 55, scope: !3961)
!3978 = !DILocation(line: 748, column: 76, scope: !3961)
!3979 = !DILocation(line: 750, column: 2, scope: !3961)
!3980 = !DILocation(line: 750, column: 16, scope: !3961)
!3981 = !DILocation(line: 751, column: 2, scope: !3961)
!3982 = !DILocation(line: 751, column: 6, scope: !3961)
!3983 = !DILocation(line: 753, column: 2, scope: !3961)
!3984 = !DILocation(line: 753, column: 2, scope: !3970)
!3985 = !DILocation(line: 753, column: 2, scope: !3968)
!3986 = !DILocation(line: 753, column: 2, scope: !3969)
!3987 = !DILocation(line: 754, column: 44, scope: !3961)
!3988 = !DILocation(line: 754, column: 52, scope: !3961)
!3989 = !DILocation(line: 754, column: 24, scope: !3961)
!3990 = !DILocation(line: 754, column: 8, scope: !3961)
!3991 = !DILocation(line: 754, column: 6, scope: !3961)
!3992 = !DILocation(line: 755, column: 2, scope: !3961)
!3993 = !DILocation(line: 755, column: 2, scope: !3975)
!3994 = !DILocation(line: 755, column: 2, scope: !3973)
!3995 = !DILocation(line: 755, column: 2, scope: !3974)
!3996 = !DILocation(line: 755, column: 2, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3974, file: !3, line: 755, column: 2)
!3998 = !DILocation(line: 756, column: 9, scope: !3961)
!3999 = !DILocation(line: 757, column: 1, scope: !3961)
!4000 = !DILocation(line: 756, column: 2, scope: !3961)
!4001 = distinct !DISubprogram(name: "generic_handle_domain_nmi", scope: !3, file: !3, line: 771, type: !3937, scopeLine: 772, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4002)
!4002 = !{!4003, !4004, !4005, !4007}
!4003 = !DILocalVariable(name: "domain", arg: 1, scope: !4001, file: !3, line: 771, type: !383)
!4004 = !DILocalVariable(name: "hwirq", arg: 2, scope: !4001, file: !3, line: 771, type: !7)
!4005 = !DILocalVariable(name: "__ret_warn_on", scope: !4006, file: !3, line: 773, type: !53)
!4006 = distinct !DILexicalBlock(scope: !4001, file: !3, line: 773, column: 2)
!4007 = !DILocalVariable(name: "__flags", scope: !4008, file: !3, line: 773, type: !53)
!4008 = distinct !DILexicalBlock(scope: !4009, file: !3, line: 773, column: 2)
!4009 = distinct !DILexicalBlock(scope: !4006, file: !3, line: 773, column: 2)
!4010 = !DILocation(line: 771, column: 50, scope: !4001)
!4011 = !DILocation(line: 771, column: 71, scope: !4001)
!4012 = !DILocation(line: 773, column: 2, scope: !4006)
!4013 = !DILocation(line: 773, column: 2, scope: !4009)
!4014 = !DILocation(line: 773, column: 2, scope: !4008)
!4015 = !DILocation(line: 773, column: 2, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4008, file: !3, line: 773, column: 2)
!4017 = !DILocation(line: 773, column: 2, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4008, file: !3, line: 773, column: 2)
!4019 = !{i64 2153289607, i64 2153289636, i64 2153289682, i64 2153289740, i64 2153289794, i64 2153289848, i64 2153289903, i64 2153289934, i64 2153290242, i64 2153290248, i64 2153290295, i64 2153290318, i64 2153290344}
!4020 = !DILocation(line: 773, column: 2, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4008, file: !3, line: 773, column: 2)
!4022 = !DILocation(line: 773, column: 2, scope: !4001)
!4023 = !DILocation(line: 774, column: 45, scope: !4001)
!4024 = !DILocation(line: 774, column: 53, scope: !4001)
!4025 = !DILocation(line: 774, column: 25, scope: !4001)
!4026 = !DILocation(line: 774, column: 9, scope: !4001)
!4027 = !DILocation(line: 774, column: 2, scope: !4001)
!4028 = distinct !DISubprogram(name: "irq_free_descs", scope: !3, file: !3, line: 785, type: !4029, scopeLine: 786, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4031)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{null, !7, !7}
!4031 = !{!4032, !4033, !4034}
!4032 = !DILocalVariable(name: "from", arg: 1, scope: !4028, file: !3, line: 785, type: !7)
!4033 = !DILocalVariable(name: "cnt", arg: 2, scope: !4028, file: !3, line: 785, type: !7)
!4034 = !DILocalVariable(name: "i", scope: !4028, file: !3, line: 787, type: !53)
!4035 = !DILocation(line: 785, column: 34, scope: !4028)
!4036 = !DILocation(line: 785, column: 53, scope: !4028)
!4037 = !DILocation(line: 787, column: 2, scope: !4028)
!4038 = !DILocation(line: 787, column: 6, scope: !4028)
!4039 = !DILocation(line: 789, column: 6, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 789, column: 6)
!4041 = !DILocation(line: 789, column: 14, scope: !4040)
!4042 = !DILocation(line: 789, column: 11, scope: !4040)
!4043 = !DILocation(line: 789, column: 22, scope: !4040)
!4044 = !DILocation(line: 789, column: 26, scope: !4040)
!4045 = !DILocation(line: 789, column: 33, scope: !4040)
!4046 = !DILocation(line: 789, column: 31, scope: !4040)
!4047 = !DILocation(line: 789, column: 40, scope: !4040)
!4048 = !DILocation(line: 789, column: 38, scope: !4040)
!4049 = !DILocation(line: 789, column: 6, scope: !4028)
!4050 = !DILocation(line: 790, column: 3, scope: !4040)
!4051 = !DILocation(line: 792, column: 2, scope: !4028)
!4052 = !DILocation(line: 793, column: 9, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 793, column: 2)
!4054 = !DILocation(line: 793, column: 7, scope: !4053)
!4055 = !DILocation(line: 793, column: 14, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 793, column: 2)
!4057 = !DILocation(line: 793, column: 18, scope: !4056)
!4058 = !DILocation(line: 793, column: 16, scope: !4056)
!4059 = !DILocation(line: 793, column: 2, scope: !4053)
!4060 = !DILocation(line: 794, column: 13, scope: !4056)
!4061 = !DILocation(line: 794, column: 20, scope: !4056)
!4062 = !DILocation(line: 794, column: 18, scope: !4056)
!4063 = !DILocation(line: 794, column: 3, scope: !4056)
!4064 = !DILocation(line: 793, column: 24, scope: !4056)
!4065 = !DILocation(line: 793, column: 2, scope: !4056)
!4066 = distinct !{!4066, !4059, !4067, !3518, !3519}
!4067 = !DILocation(line: 794, column: 21, scope: !4053)
!4068 = !DILocation(line: 796, column: 2, scope: !4028)
!4069 = !DILocation(line: 797, column: 1, scope: !4028)
!4070 = distinct !DISubprogram(name: "free_desc", scope: !3, file: !3, line: 468, type: !4071, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4073)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{null, !7}
!4073 = !{!4074, !4075}
!4074 = !DILocalVariable(name: "irq", arg: 1, scope: !4070, file: !3, line: 468, type: !7)
!4075 = !DILocalVariable(name: "desc", scope: !4070, file: !3, line: 470, type: !270)
!4076 = !DILocation(line: 468, column: 36, scope: !4070)
!4077 = !DILocation(line: 470, column: 2, scope: !4070)
!4078 = !DILocation(line: 470, column: 19, scope: !4070)
!4079 = !DILocation(line: 470, column: 38, scope: !4070)
!4080 = !DILocation(line: 470, column: 26, scope: !4070)
!4081 = !DILocation(line: 472, column: 27, scope: !4070)
!4082 = !DILocation(line: 472, column: 2, scope: !4070)
!4083 = !DILocation(line: 473, column: 22, scope: !4070)
!4084 = !DILocation(line: 473, column: 27, scope: !4070)
!4085 = !DILocation(line: 473, column: 2, scope: !4070)
!4086 = !DILocation(line: 484, column: 16, scope: !4070)
!4087 = !DILocation(line: 484, column: 2, scope: !4070)
!4088 = !DILocation(line: 485, column: 18, scope: !4070)
!4089 = !DILocation(line: 485, column: 2, scope: !4070)
!4090 = !DILocation(line: 493, column: 12, scope: !4070)
!4091 = !DILocation(line: 493, column: 18, scope: !4070)
!4092 = !DILocation(line: 493, column: 2, scope: !4070)
!4093 = !DILocation(line: 494, column: 1, scope: !4070)
!4094 = distinct !DISubprogram(name: "__irq_alloc_descs", scope: !3, file: !3, line: 814, type: !4095, scopeLine: 816, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4103)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!53, !53, !7, !7, !53, !1171, !4097}
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4099)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_desc", file: !6, line: 299, size: 128, elements: !4100)
!4100 = !{!4101, !4102}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4099, file: !6, line: 300, baseType: !254, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4099, file: !6, line: 301, baseType: !7, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!4103 = !{!4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112}
!4104 = !DILocalVariable(name: "irq", arg: 1, scope: !4094, file: !3, line: 814, type: !53)
!4105 = !DILocalVariable(name: "from", arg: 2, scope: !4094, file: !3, line: 814, type: !7)
!4106 = !DILocalVariable(name: "cnt", arg: 3, scope: !4094, file: !3, line: 814, type: !7)
!4107 = !DILocalVariable(name: "node", arg: 4, scope: !4094, file: !3, line: 814, type: !53)
!4108 = !DILocalVariable(name: "owner", arg: 5, scope: !4094, file: !3, line: 815, type: !1171)
!4109 = !DILocalVariable(name: "affinity", arg: 6, scope: !4094, file: !3, line: 815, type: !4097)
!4110 = !DILocalVariable(name: "start", scope: !4094, file: !3, line: 817, type: !53)
!4111 = !DILocalVariable(name: "ret", scope: !4094, file: !3, line: 817, type: !53)
!4112 = !DILabel(scope: !4094, name: "unlock", file: !3, line: 848)
!4113 = !DILocation(line: 814, column: 23, scope: !4094)
!4114 = !DILocation(line: 814, column: 41, scope: !4094)
!4115 = !DILocation(line: 814, column: 60, scope: !4094)
!4116 = !DILocation(line: 814, column: 69, scope: !4094)
!4117 = !DILocation(line: 815, column: 20, scope: !4094)
!4118 = !DILocation(line: 815, column: 59, scope: !4094)
!4119 = !DILocation(line: 817, column: 2, scope: !4094)
!4120 = !DILocation(line: 817, column: 6, scope: !4094)
!4121 = !DILocation(line: 817, column: 13, scope: !4094)
!4122 = !DILocation(line: 819, column: 7, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4094, file: !3, line: 819, column: 6)
!4124 = !DILocation(line: 819, column: 6, scope: !4094)
!4125 = !DILocation(line: 820, column: 3, scope: !4123)
!4126 = !DILocation(line: 822, column: 6, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4094, file: !3, line: 822, column: 6)
!4128 = !DILocation(line: 822, column: 10, scope: !4127)
!4129 = !DILocation(line: 822, column: 6, scope: !4094)
!4130 = !DILocation(line: 823, column: 7, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 823, column: 7)
!4132 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 822, column: 16)
!4133 = !DILocation(line: 823, column: 14, scope: !4131)
!4134 = !DILocation(line: 823, column: 12, scope: !4131)
!4135 = !DILocation(line: 823, column: 7, scope: !4132)
!4136 = !DILocation(line: 824, column: 4, scope: !4131)
!4137 = !DILocation(line: 825, column: 10, scope: !4132)
!4138 = !DILocation(line: 825, column: 8, scope: !4132)
!4139 = !DILocation(line: 826, column: 2, scope: !4132)
!4140 = !DILocation(line: 832, column: 34, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 826, column: 9)
!4142 = !DILocation(line: 832, column: 10, scope: !4141)
!4143 = !DILocation(line: 832, column: 8, scope: !4141)
!4144 = !DILocation(line: 835, column: 2, scope: !4094)
!4145 = !DILocation(line: 837, column: 29, scope: !4094)
!4146 = !DILocation(line: 837, column: 35, scope: !4094)
!4147 = !DILocation(line: 837, column: 10, scope: !4094)
!4148 = !DILocation(line: 837, column: 8, scope: !4094)
!4149 = !DILocation(line: 838, column: 6, scope: !4094)
!4150 = !DILocation(line: 839, column: 6, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4094, file: !3, line: 839, column: 6)
!4152 = !DILocation(line: 839, column: 10, scope: !4151)
!4153 = !DILocation(line: 839, column: 14, scope: !4151)
!4154 = !DILocation(line: 839, column: 17, scope: !4151)
!4155 = !DILocation(line: 839, column: 26, scope: !4151)
!4156 = !DILocation(line: 839, column: 23, scope: !4151)
!4157 = !DILocation(line: 839, column: 6, scope: !4094)
!4158 = !DILocation(line: 840, column: 3, scope: !4151)
!4159 = !DILocation(line: 842, column: 6, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4094, file: !3, line: 842, column: 6)
!4161 = !DILocation(line: 842, column: 14, scope: !4160)
!4162 = !DILocation(line: 842, column: 12, scope: !4160)
!4163 = !DILocation(line: 842, column: 20, scope: !4160)
!4164 = !DILocation(line: 842, column: 18, scope: !4160)
!4165 = !DILocation(line: 842, column: 6, scope: !4094)
!4166 = !DILocation(line: 843, column: 28, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4160, file: !3, line: 842, column: 29)
!4168 = !DILocation(line: 843, column: 36, scope: !4167)
!4169 = !DILocation(line: 843, column: 34, scope: !4167)
!4170 = !DILocation(line: 843, column: 9, scope: !4167)
!4171 = !DILocation(line: 843, column: 7, scope: !4167)
!4172 = !DILocation(line: 844, column: 7, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4167, file: !3, line: 844, column: 7)
!4174 = !DILocation(line: 844, column: 7, scope: !4167)
!4175 = !DILocation(line: 845, column: 4, scope: !4173)
!4176 = !DILocation(line: 846, column: 2, scope: !4167)
!4177 = !DILocation(line: 847, column: 20, scope: !4094)
!4178 = !DILocation(line: 847, column: 27, scope: !4094)
!4179 = !DILocation(line: 847, column: 32, scope: !4094)
!4180 = !DILocation(line: 847, column: 38, scope: !4094)
!4181 = !DILocation(line: 847, column: 48, scope: !4094)
!4182 = !DILocation(line: 847, column: 8, scope: !4094)
!4183 = !DILocation(line: 847, column: 6, scope: !4094)
!4184 = !DILocation(line: 847, column: 2, scope: !4094)
!4185 = !DILocation(line: 848, column: 1, scope: !4094)
!4186 = !DILocation(line: 849, column: 2, scope: !4094)
!4187 = !DILocation(line: 850, column: 9, scope: !4094)
!4188 = !DILocation(line: 850, column: 2, scope: !4094)
!4189 = !DILocation(line: 851, column: 1, scope: !4094)
!4190 = !DISubprogram(name: "arch_dynirq_lower_bound", scope: !111, file: !111, line: 935, type: !4191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!7, !7}
!4193 = distinct !DISubprogram(name: "irq_find_free_area", scope: !3, file: !3, line: 139, type: !4194, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4196)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!53, !7, !7}
!4196 = !{!4197, !4198, !4199}
!4197 = !DILocalVariable(name: "from", arg: 1, scope: !4193, file: !3, line: 139, type: !7)
!4198 = !DILocalVariable(name: "cnt", arg: 2, scope: !4193, file: !3, line: 139, type: !7)
!4199 = !DILocalVariable(name: "mas", scope: !4193, file: !3, line: 141, type: !3745)
!4200 = !DILocation(line: 139, column: 44, scope: !4193)
!4201 = !DILocation(line: 139, column: 63, scope: !4193)
!4202 = !DILocation(line: 141, column: 2, scope: !4193)
!4203 = !DILocation(line: 143, column: 27, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4193, file: !3, line: 143, column: 6)
!4205 = !DILocation(line: 143, column: 50, scope: !4204)
!4206 = !DILocation(line: 143, column: 6, scope: !4204)
!4207 = !DILocation(line: 143, column: 6, scope: !4193)
!4208 = !DILocation(line: 144, column: 3, scope: !4204)
!4209 = !DILocation(line: 145, column: 13, scope: !4193)
!4210 = !DILocation(line: 145, column: 9, scope: !4193)
!4211 = !DILocation(line: 145, column: 2, scope: !4193)
!4212 = !DILocation(line: 146, column: 1, scope: !4193)
!4213 = distinct !DISubprogram(name: "irq_expand_nr_irqs", scope: !3, file: !3, line: 541, type: !3865, scopeLine: 542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4214)
!4214 = !{!4215}
!4215 = !DILocalVariable(name: "nr", arg: 1, scope: !4213, file: !3, line: 541, type: !7)
!4216 = !DILocation(line: 541, column: 44, scope: !4213)
!4217 = !DILocation(line: 543, column: 6, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 543, column: 6)
!4219 = !DILocation(line: 543, column: 9, scope: !4218)
!4220 = !DILocation(line: 543, column: 6, scope: !4213)
!4221 = !DILocation(line: 544, column: 3, scope: !4218)
!4222 = !DILocation(line: 545, column: 12, scope: !4213)
!4223 = !DILocation(line: 545, column: 10, scope: !4213)
!4224 = !DILocation(line: 546, column: 2, scope: !4213)
!4225 = !DILocation(line: 547, column: 1, scope: !4213)
!4226 = distinct !DISubprogram(name: "alloc_descs", scope: !3, file: !3, line: 496, type: !4227, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4229)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!53, !7, !7, !53, !4097, !1171}
!4229 = !{!4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4241, !4242}
!4230 = !DILocalVariable(name: "start", arg: 1, scope: !4226, file: !3, line: 496, type: !7)
!4231 = !DILocalVariable(name: "cnt", arg: 2, scope: !4226, file: !3, line: 496, type: !7)
!4232 = !DILocalVariable(name: "node", arg: 3, scope: !4226, file: !3, line: 496, type: !53)
!4233 = !DILocalVariable(name: "affinity", arg: 4, scope: !4226, file: !3, line: 497, type: !4097)
!4234 = !DILocalVariable(name: "owner", arg: 5, scope: !4226, file: !3, line: 498, type: !1171)
!4235 = !DILocalVariable(name: "desc", scope: !4226, file: !3, line: 500, type: !270)
!4236 = !DILocalVariable(name: "i", scope: !4226, file: !3, line: 501, type: !53)
!4237 = !DILocalVariable(name: "mask", scope: !4238, file: !3, line: 512, type: !252)
!4238 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 511, column: 28)
!4239 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 511, column: 2)
!4240 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 511, column: 2)
!4241 = !DILocalVariable(name: "flags", scope: !4238, file: !3, line: 513, type: !7)
!4242 = !DILabel(scope: !4226, name: "err", file: !3, line: 535)
!4243 = !DILocation(line: 496, column: 37, scope: !4226)
!4244 = !DILocation(line: 496, column: 57, scope: !4226)
!4245 = !DILocation(line: 496, column: 66, scope: !4226)
!4246 = !DILocation(line: 497, column: 42, scope: !4226)
!4247 = !DILocation(line: 498, column: 25, scope: !4226)
!4248 = !DILocation(line: 500, column: 2, scope: !4226)
!4249 = !DILocation(line: 500, column: 19, scope: !4226)
!4250 = !DILocation(line: 501, column: 2, scope: !4226)
!4251 = !DILocation(line: 501, column: 6, scope: !4226)
!4252 = !DILocation(line: 504, column: 6, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 504, column: 6)
!4254 = !DILocation(line: 504, column: 6, scope: !4226)
!4255 = !DILocation(line: 505, column: 10, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 505, column: 3)
!4257 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 504, column: 16)
!4258 = !DILocation(line: 505, column: 8, scope: !4256)
!4259 = !DILocation(line: 505, column: 15, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 505, column: 3)
!4261 = !DILocation(line: 505, column: 19, scope: !4260)
!4262 = !DILocation(line: 505, column: 17, scope: !4260)
!4263 = !DILocation(line: 505, column: 3, scope: !4256)
!4264 = !DILocation(line: 506, column: 23, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 506, column: 8)
!4266 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 505, column: 29)
!4267 = !DILocation(line: 506, column: 32, scope: !4265)
!4268 = !DILocation(line: 506, column: 35, scope: !4265)
!4269 = !DILocation(line: 506, column: 8, scope: !4265)
!4270 = !DILocation(line: 506, column: 8, scope: !4266)
!4271 = !DILocation(line: 507, column: 5, scope: !4265)
!4272 = !DILocation(line: 508, column: 3, scope: !4266)
!4273 = !DILocation(line: 505, column: 25, scope: !4260)
!4274 = !DILocation(line: 505, column: 3, scope: !4260)
!4275 = distinct !{!4275, !4263, !4276, !3518, !3519}
!4276 = !DILocation(line: 508, column: 3, scope: !4256)
!4277 = !DILocation(line: 509, column: 2, scope: !4257)
!4278 = !DILocation(line: 511, column: 9, scope: !4240)
!4279 = !DILocation(line: 511, column: 7, scope: !4240)
!4280 = !DILocation(line: 511, column: 14, scope: !4239)
!4281 = !DILocation(line: 511, column: 18, scope: !4239)
!4282 = !DILocation(line: 511, column: 16, scope: !4239)
!4283 = !DILocation(line: 511, column: 2, scope: !4240)
!4284 = !DILocation(line: 512, column: 3, scope: !4238)
!4285 = !DILocation(line: 512, column: 25, scope: !4238)
!4286 = !DILocation(line: 513, column: 3, scope: !4238)
!4287 = !DILocation(line: 513, column: 16, scope: !4238)
!4288 = !DILocation(line: 515, column: 7, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4238, file: !3, line: 515, column: 7)
!4290 = !DILocation(line: 515, column: 7, scope: !4238)
!4291 = !DILocation(line: 516, column: 8, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4293, file: !3, line: 516, column: 8)
!4293 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 515, column: 17)
!4294 = !DILocation(line: 516, column: 18, scope: !4292)
!4295 = !DILocation(line: 516, column: 8, scope: !4293)
!4296 = !DILocation(line: 517, column: 11, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4292, file: !3, line: 516, column: 30)
!4298 = !DILocation(line: 519, column: 4, scope: !4297)
!4299 = !DILocation(line: 520, column: 10, scope: !4293)
!4300 = !DILocation(line: 521, column: 12, scope: !4293)
!4301 = !DILocation(line: 521, column: 22, scope: !4293)
!4302 = !DILocation(line: 521, column: 9, scope: !4293)
!4303 = !DILocation(line: 522, column: 37, scope: !4293)
!4304 = !DILocation(line: 522, column: 23, scope: !4293)
!4305 = !DILocation(line: 522, column: 11, scope: !4293)
!4306 = !DILocation(line: 522, column: 9, scope: !4293)
!4307 = !DILocation(line: 523, column: 12, scope: !4293)
!4308 = !DILocation(line: 524, column: 3, scope: !4293)
!4309 = !DILocation(line: 526, column: 21, scope: !4238)
!4310 = !DILocation(line: 526, column: 29, scope: !4238)
!4311 = !DILocation(line: 526, column: 27, scope: !4238)
!4312 = !DILocation(line: 526, column: 32, scope: !4238)
!4313 = !DILocation(line: 526, column: 38, scope: !4238)
!4314 = !DILocation(line: 526, column: 45, scope: !4238)
!4315 = !DILocation(line: 526, column: 51, scope: !4238)
!4316 = !DILocation(line: 526, column: 10, scope: !4238)
!4317 = !DILocation(line: 526, column: 8, scope: !4238)
!4318 = !DILocation(line: 527, column: 8, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4238, file: !3, line: 527, column: 7)
!4320 = !DILocation(line: 527, column: 7, scope: !4238)
!4321 = !DILocation(line: 528, column: 4, scope: !4319)
!4322 = !DILocation(line: 529, column: 19, scope: !4238)
!4323 = !DILocation(line: 529, column: 27, scope: !4238)
!4324 = !DILocation(line: 529, column: 25, scope: !4238)
!4325 = !DILocation(line: 529, column: 30, scope: !4238)
!4326 = !DILocation(line: 529, column: 3, scope: !4238)
!4327 = !DILocation(line: 530, column: 17, scope: !4238)
!4328 = !DILocation(line: 530, column: 25, scope: !4238)
!4329 = !DILocation(line: 530, column: 23, scope: !4238)
!4330 = !DILocation(line: 530, column: 28, scope: !4238)
!4331 = !DILocation(line: 530, column: 3, scope: !4238)
!4332 = !DILocation(line: 531, column: 25, scope: !4238)
!4333 = !DILocation(line: 531, column: 33, scope: !4238)
!4334 = !DILocation(line: 531, column: 31, scope: !4238)
!4335 = !DILocation(line: 531, column: 36, scope: !4238)
!4336 = !DILocation(line: 531, column: 3, scope: !4238)
!4337 = !DILocation(line: 532, column: 2, scope: !4239)
!4338 = !DILocation(line: 532, column: 2, scope: !4238)
!4339 = !DILocation(line: 511, column: 24, scope: !4239)
!4340 = !DILocation(line: 511, column: 2, scope: !4239)
!4341 = distinct !{!4341, !4283, !4342, !3518, !3519}
!4342 = !DILocation(line: 532, column: 2, scope: !4240)
!4343 = !DILocation(line: 533, column: 9, scope: !4226)
!4344 = !DILocation(line: 533, column: 2, scope: !4226)
!4345 = !DILocation(line: 535, column: 1, scope: !4226)
!4346 = !DILocation(line: 536, column: 8, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 536, column: 2)
!4348 = !DILocation(line: 536, column: 7, scope: !4347)
!4349 = !DILocation(line: 536, column: 12, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 536, column: 2)
!4351 = !DILocation(line: 536, column: 14, scope: !4350)
!4352 = !DILocation(line: 536, column: 2, scope: !4347)
!4353 = !DILocation(line: 537, column: 13, scope: !4350)
!4354 = !DILocation(line: 537, column: 21, scope: !4350)
!4355 = !DILocation(line: 537, column: 19, scope: !4350)
!4356 = !DILocation(line: 537, column: 3, scope: !4350)
!4357 = !DILocation(line: 536, column: 21, scope: !4350)
!4358 = !DILocation(line: 536, column: 2, scope: !4350)
!4359 = distinct !{!4359, !4352, !4360, !3518, !3519}
!4360 = !DILocation(line: 537, column: 22, scope: !4347)
!4361 = !DILocation(line: 538, column: 2, scope: !4226)
!4362 = !DILocation(line: 539, column: 1, scope: !4226)
!4363 = distinct !DISubprogram(name: "irq_get_next_irq", scope: !3, file: !3, line: 860, type: !4191, scopeLine: 861, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4364)
!4364 = !{!4365}
!4365 = !DILocalVariable(name: "offset", arg: 1, scope: !4363, file: !3, line: 860, type: !7)
!4366 = !DILocation(line: 860, column: 44, scope: !4363)
!4367 = !DILocation(line: 862, column: 30, scope: !4363)
!4368 = !DILocation(line: 862, column: 9, scope: !4363)
!4369 = !DILocation(line: 862, column: 2, scope: !4363)
!4370 = distinct !DISubprogram(name: "irq_find_at_or_after", scope: !3, file: !3, line: 148, type: !4191, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4371)
!4371 = !{!4372, !4373, !4374, !4375}
!4372 = !DILocalVariable(name: "offset", arg: 1, scope: !4370, file: !3, line: 148, type: !7)
!4373 = !DILocalVariable(name: "index", scope: !4370, file: !3, line: 150, type: !259)
!4374 = !DILocalVariable(name: "desc", scope: !4370, file: !3, line: 151, type: !270)
!4375 = !DILocalVariable(name: "__UNIQUE_ID_guard207", scope: !4370, file: !3, line: 153, type: !4376)
!4376 = !DIDerivedType(tag: DW_TAG_typedef, name: "class_rcu_t", file: !4377, line: 1098, baseType: !4378)
!4377 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4377, line: 1098, size: 64, elements: !4379)
!4379 = !{!4380}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4378, file: !4377, line: 1098, baseType: !249, size: 64)
!4381 = !DILocation(line: 148, column: 55, scope: !4370)
!4382 = !DILocation(line: 150, column: 2, scope: !4370)
!4383 = !DILocation(line: 150, column: 16, scope: !4370)
!4384 = !DILocation(line: 150, column: 24, scope: !4370)
!4385 = !DILocation(line: 151, column: 2, scope: !4370)
!4386 = !DILocation(line: 151, column: 19, scope: !4370)
!4387 = !DILocation(line: 153, column: 2, scope: !4370)
!4388 = !DILocation(line: 154, column: 39, scope: !4370)
!4389 = !DILocation(line: 154, column: 9, scope: !4370)
!4390 = !DILocation(line: 154, column: 7, scope: !4370)
!4391 = !DILocation(line: 156, column: 9, scope: !4370)
!4392 = !DILocation(line: 156, column: 33, scope: !4370)
!4393 = !DILocation(line: 156, column: 16, scope: !4370)
!4394 = !DILocation(line: 156, column: 41, scope: !4370)
!4395 = !DILocation(line: 157, column: 1, scope: !4370)
!4396 = distinct !DISubprogram(name: "__irq_get_desc_lock", scope: !3, file: !3, line: 866, type: !4397, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4399)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{!270, !7, !1532, !326, !7}
!4399 = !{!4400, !4401, !4402, !4403, !4404, !4405, !4410}
!4400 = !DILocalVariable(name: "irq", arg: 1, scope: !4396, file: !3, line: 866, type: !7)
!4401 = !DILocalVariable(name: "flags", arg: 2, scope: !4396, file: !3, line: 866, type: !1532)
!4402 = !DILocalVariable(name: "bus", arg: 3, scope: !4396, file: !3, line: 866, type: !326)
!4403 = !DILocalVariable(name: "check", arg: 4, scope: !4396, file: !3, line: 867, type: !7)
!4404 = !DILocalVariable(name: "desc", scope: !4396, file: !3, line: 869, type: !270)
!4405 = !DILocalVariable(name: "__dummy", scope: !4406, file: !3, line: 884, type: !259)
!4406 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 884, column: 3)
!4407 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 884, column: 3)
!4408 = distinct !DILexicalBlock(scope: !4409, file: !3, line: 871, column: 12)
!4409 = distinct !DILexicalBlock(scope: !4396, file: !3, line: 871, column: 6)
!4410 = !DILocalVariable(name: "__dummy2", scope: !4406, file: !3, line: 884, type: !259)
!4411 = !DILocation(line: 866, column: 34, scope: !4396)
!4412 = !DILocation(line: 866, column: 54, scope: !4396)
!4413 = !DILocation(line: 866, column: 66, scope: !4396)
!4414 = !DILocation(line: 867, column: 20, scope: !4396)
!4415 = !DILocation(line: 869, column: 2, scope: !4396)
!4416 = !DILocation(line: 869, column: 19, scope: !4396)
!4417 = !DILocation(line: 869, column: 38, scope: !4396)
!4418 = !DILocation(line: 869, column: 26, scope: !4396)
!4419 = !DILocation(line: 871, column: 6, scope: !4409)
!4420 = !DILocation(line: 871, column: 6, scope: !4396)
!4421 = !DILocation(line: 872, column: 7, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 872, column: 7)
!4423 = !DILocation(line: 872, column: 13, scope: !4422)
!4424 = !DILocation(line: 872, column: 7, scope: !4408)
!4425 = !DILocation(line: 873, column: 9, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4427, file: !3, line: 873, column: 8)
!4427 = distinct !DILexicalBlock(scope: !4422, file: !3, line: 872, column: 32)
!4428 = !DILocation(line: 873, column: 15, scope: !4426)
!4429 = !DILocation(line: 873, column: 35, scope: !4426)
!4430 = !DILocation(line: 874, column: 39, scope: !4426)
!4431 = !DILocation(line: 874, column: 9, scope: !4426)
!4432 = !DILocation(line: 873, column: 8, scope: !4427)
!4433 = !DILocation(line: 875, column: 5, scope: !4426)
!4434 = !DILocation(line: 877, column: 10, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4427, file: !3, line: 877, column: 8)
!4436 = !DILocation(line: 877, column: 16, scope: !4435)
!4437 = !DILocation(line: 877, column: 36, scope: !4435)
!4438 = !DILocation(line: 878, column: 38, scope: !4435)
!4439 = !DILocation(line: 878, column: 8, scope: !4435)
!4440 = !DILocation(line: 877, column: 8, scope: !4427)
!4441 = !DILocation(line: 879, column: 5, scope: !4435)
!4442 = !DILocation(line: 880, column: 3, scope: !4427)
!4443 = !DILocation(line: 882, column: 7, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 882, column: 7)
!4445 = !{i8 0, i8 2}
!4446 = !DILocation(line: 882, column: 7, scope: !4408)
!4447 = !DILocation(line: 883, column: 18, scope: !4444)
!4448 = !DILocation(line: 883, column: 4, scope: !4444)
!4449 = !DILocation(line: 884, column: 3, scope: !4408)
!4450 = !DILocation(line: 884, column: 3, scope: !4406)
!4451 = !DILocation(line: 884, column: 3, scope: !4407)
!4452 = !DILocation(line: 885, column: 2, scope: !4408)
!4453 = !DILocation(line: 886, column: 9, scope: !4396)
!4454 = !DILocation(line: 886, column: 2, scope: !4396)
!4455 = !DILocation(line: 887, column: 1, scope: !4396)
!4456 = distinct !DISubprogram(name: "irq_settings_is_per_cpu_devid", scope: !178, file: !178, line: 53, type: !4457, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4459)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!326, !270}
!4459 = !{!4460}
!4460 = !DILocalVariable(name: "desc", arg: 1, scope: !4456, file: !178, line: 53, type: !270)
!4461 = !DILocation(line: 53, column: 67, scope: !4456)
!4462 = !DILocation(line: 55, column: 9, scope: !4456)
!4463 = !DILocation(line: 55, column: 15, scope: !4456)
!4464 = !DILocation(line: 55, column: 36, scope: !4456)
!4465 = !DILocation(line: 55, column: 2, scope: !4456)
!4466 = distinct !DISubprogram(name: "chip_bus_lock", scope: !154, file: !154, line: 152, type: !2110, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4467)
!4467 = !{!4468}
!4468 = !DILocalVariable(name: "desc", arg: 1, scope: !4466, file: !154, line: 152, type: !270)
!4469 = !DILocation(line: 152, column: 51, scope: !4466)
!4470 = !DILocation(line: 154, column: 6, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4466, file: !154, line: 154, column: 6)
!4472 = !DILocation(line: 154, column: 6, scope: !4466)
!4473 = !DILocation(line: 155, column: 3, scope: !4471)
!4474 = !DILocation(line: 155, column: 9, scope: !4471)
!4475 = !DILocation(line: 155, column: 18, scope: !4471)
!4476 = !DILocation(line: 155, column: 24, scope: !4471)
!4477 = !DILocation(line: 155, column: 38, scope: !4471)
!4478 = !DILocation(line: 155, column: 44, scope: !4471)
!4479 = !DILocation(line: 156, column: 1, scope: !4466)
!4480 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !4481, file: !4481, line: 32, type: !4482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4481 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4482 = !DISubroutineType(types: !4483)
!4483 = !{!259, !4484}
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!4485 = distinct !DISubprogram(name: "__irq_put_desc_unlock", scope: !3, file: !3, line: 889, type: !4486, scopeLine: 891, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4488)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{null, !270, !259, !326}
!4488 = !{!4489, !4490, !4491, !4492, !4495}
!4489 = !DILocalVariable(name: "desc", arg: 1, scope: !4485, file: !3, line: 889, type: !270)
!4490 = !DILocalVariable(name: "flags", arg: 2, scope: !4485, file: !3, line: 889, type: !259)
!4491 = !DILocalVariable(name: "bus", arg: 3, scope: !4485, file: !3, line: 889, type: !326)
!4492 = !DILocalVariable(name: "__dummy", scope: !4493, file: !3, line: 892, type: !259)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 892, column: 2)
!4494 = distinct !DILexicalBlock(scope: !4485, file: !3, line: 892, column: 2)
!4495 = !DILocalVariable(name: "__dummy2", scope: !4493, file: !3, line: 892, type: !259)
!4496 = !DILocation(line: 889, column: 45, scope: !4485)
!4497 = !DILocation(line: 889, column: 65, scope: !4485)
!4498 = !DILocation(line: 889, column: 77, scope: !4485)
!4499 = !DILocation(line: 892, column: 2, scope: !4485)
!4500 = !DILocation(line: 892, column: 2, scope: !4493)
!4501 = !DILocation(line: 892, column: 2, scope: !4494)
!4502 = !DILocation(line: 893, column: 6, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4485, file: !3, line: 893, column: 6)
!4504 = !DILocation(line: 893, column: 6, scope: !4485)
!4505 = !DILocation(line: 894, column: 24, scope: !4503)
!4506 = !DILocation(line: 894, column: 3, scope: !4503)
!4507 = !DILocation(line: 895, column: 1, scope: !4485)
!4508 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !4481, file: !4481, line: 43, type: !4509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{null, !4484, !259}
!4511 = distinct !DISubprogram(name: "chip_bus_sync_unlock", scope: !154, file: !154, line: 158, type: !2110, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4512)
!4512 = !{!4513}
!4513 = !DILocalVariable(name: "desc", arg: 1, scope: !4511, file: !154, line: 158, type: !270)
!4514 = !DILocation(line: 158, column: 58, scope: !4511)
!4515 = !DILocation(line: 160, column: 6, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4511, file: !154, line: 160, column: 6)
!4517 = !DILocation(line: 160, column: 6, scope: !4511)
!4518 = !DILocation(line: 161, column: 3, scope: !4516)
!4519 = !DILocation(line: 161, column: 9, scope: !4516)
!4520 = !DILocation(line: 161, column: 18, scope: !4516)
!4521 = !DILocation(line: 161, column: 24, scope: !4516)
!4522 = !DILocation(line: 161, column: 45, scope: !4516)
!4523 = !DILocation(line: 161, column: 51, scope: !4516)
!4524 = !DILocation(line: 162, column: 1, scope: !4511)
!4525 = distinct !DISubprogram(name: "irq_set_percpu_devid_partition", scope: !3, file: !3, line: 897, type: !4526, scopeLine: 899, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4528)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!53, !7, !252}
!4528 = !{!4529, !4530, !4531}
!4529 = !DILocalVariable(name: "irq", arg: 1, scope: !4525, file: !3, line: 897, type: !7)
!4530 = !DILocalVariable(name: "affinity", arg: 2, scope: !4525, file: !3, line: 898, type: !252)
!4531 = !DILocalVariable(name: "desc", scope: !4525, file: !3, line: 900, type: !270)
!4532 = !DILocation(line: 897, column: 49, scope: !4525)
!4533 = !DILocation(line: 898, column: 30, scope: !4525)
!4534 = !DILocation(line: 900, column: 2, scope: !4525)
!4535 = !DILocation(line: 900, column: 19, scope: !4525)
!4536 = !DILocation(line: 900, column: 38, scope: !4525)
!4537 = !DILocation(line: 900, column: 26, scope: !4525)
!4538 = !DILocation(line: 902, column: 7, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 902, column: 6)
!4540 = !DILocation(line: 902, column: 6, scope: !4525)
!4541 = !DILocation(line: 903, column: 3, scope: !4539)
!4542 = !DILocation(line: 905, column: 6, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 905, column: 6)
!4544 = !DILocation(line: 905, column: 12, scope: !4543)
!4545 = !DILocation(line: 905, column: 6, scope: !4525)
!4546 = !DILocation(line: 906, column: 3, scope: !4543)
!4547 = !DILocation(line: 908, column: 25, scope: !4525)
!4548 = !DILocation(line: 908, column: 2, scope: !4525)
!4549 = !DILocation(line: 908, column: 8, scope: !4525)
!4550 = !DILocation(line: 908, column: 23, scope: !4525)
!4551 = !DILocation(line: 910, column: 7, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 910, column: 6)
!4553 = !DILocation(line: 910, column: 13, scope: !4552)
!4554 = !DILocation(line: 910, column: 6, scope: !4525)
!4555 = !DILocation(line: 911, column: 3, scope: !4552)
!4556 = !DILocation(line: 913, column: 6, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 913, column: 6)
!4558 = !DILocation(line: 913, column: 6, scope: !4525)
!4559 = !DILocation(line: 914, column: 27, scope: !4557)
!4560 = !DILocation(line: 914, column: 3, scope: !4557)
!4561 = !DILocation(line: 914, column: 9, scope: !4557)
!4562 = !DILocation(line: 914, column: 25, scope: !4557)
!4563 = !DILocation(line: 916, column: 3, scope: !4557)
!4564 = !DILocation(line: 916, column: 9, scope: !4557)
!4565 = !DILocation(line: 916, column: 25, scope: !4557)
!4566 = !DILocation(line: 918, column: 29, scope: !4525)
!4567 = !DILocation(line: 918, column: 2, scope: !4525)
!4568 = !DILocation(line: 919, column: 2, scope: !4525)
!4569 = !DILocation(line: 920, column: 1, scope: !4525)
!4570 = distinct !DISubprogram(name: "kzalloc", scope: !168, file: !168, line: 719, type: !4571, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4573)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!249, !574, !250}
!4573 = !{!4574, !4575}
!4574 = !DILocalVariable(name: "size", arg: 1, scope: !4570, file: !168, line: 719, type: !574)
!4575 = !DILocalVariable(name: "flags", arg: 2, scope: !4570, file: !168, line: 719, type: !250)
!4576 = !DILocation(line: 719, column: 52, scope: !4570)
!4577 = !DILocation(line: 719, column: 64, scope: !4570)
!4578 = !DILocation(line: 721, column: 17, scope: !4570)
!4579 = !DILocation(line: 721, column: 23, scope: !4570)
!4580 = !DILocation(line: 721, column: 29, scope: !4570)
!4581 = !DILocation(line: 721, column: 9, scope: !4570)
!4582 = !DILocation(line: 721, column: 2, scope: !4570)
!4583 = distinct !DISubprogram(name: "irq_set_percpu_devid_flags", scope: !111, file: !111, line: 798, type: !4071, scopeLine: 799, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4584)
!4584 = !{!4585}
!4585 = !DILocalVariable(name: "irq", arg: 1, scope: !4583, file: !111, line: 798, type: !7)
!4586 = !DILocation(line: 798, column: 60, scope: !4583)
!4587 = !DILocation(line: 800, column: 23, scope: !4583)
!4588 = !DILocation(line: 800, column: 2, scope: !4583)
!4589 = !DILocation(line: 803, column: 1, scope: !4583)
!4590 = distinct !DISubprogram(name: "irq_set_percpu_devid", scope: !3, file: !3, line: 922, type: !3865, scopeLine: 923, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4591)
!4591 = !{!4592}
!4592 = !DILocalVariable(name: "irq", arg: 1, scope: !4590, file: !3, line: 922, type: !7)
!4593 = !DILocation(line: 922, column: 39, scope: !4590)
!4594 = !DILocation(line: 924, column: 40, scope: !4590)
!4595 = !DILocation(line: 924, column: 9, scope: !4590)
!4596 = !DILocation(line: 924, column: 2, scope: !4590)
!4597 = distinct !DISubprogram(name: "irq_get_percpu_devid_partition", scope: !3, file: !3, line: 927, type: !4598, scopeLine: 928, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4600)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!53, !7, !3238}
!4600 = !{!4601, !4602, !4603}
!4601 = !DILocalVariable(name: "irq", arg: 1, scope: !4597, file: !3, line: 927, type: !7)
!4602 = !DILocalVariable(name: "affinity", arg: 2, scope: !4597, file: !3, line: 927, type: !3238)
!4603 = !DILocalVariable(name: "desc", scope: !4597, file: !3, line: 929, type: !270)
!4604 = !DILocation(line: 927, column: 49, scope: !4597)
!4605 = !DILocation(line: 927, column: 70, scope: !4597)
!4606 = !DILocation(line: 929, column: 2, scope: !4597)
!4607 = !DILocation(line: 929, column: 19, scope: !4597)
!4608 = !DILocation(line: 929, column: 38, scope: !4597)
!4609 = !DILocation(line: 929, column: 26, scope: !4597)
!4610 = !DILocation(line: 931, column: 7, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4597, file: !3, line: 931, column: 6)
!4612 = !DILocation(line: 931, column: 12, scope: !4611)
!4613 = !DILocation(line: 931, column: 16, scope: !4611)
!4614 = !DILocation(line: 931, column: 22, scope: !4611)
!4615 = !DILocation(line: 931, column: 6, scope: !4597)
!4616 = !DILocation(line: 932, column: 3, scope: !4611)
!4617 = !DILocation(line: 934, column: 6, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4597, file: !3, line: 934, column: 6)
!4619 = !DILocation(line: 934, column: 6, scope: !4597)
!4620 = !DILocation(line: 935, column: 16, scope: !4618)
!4621 = !DILocation(line: 935, column: 26, scope: !4618)
!4622 = !DILocation(line: 935, column: 32, scope: !4618)
!4623 = !DILocation(line: 935, column: 3, scope: !4618)
!4624 = !DILocation(line: 937, column: 2, scope: !4597)
!4625 = !DILocation(line: 938, column: 1, scope: !4597)
!4626 = distinct !DISubprogram(name: "cpumask_copy", scope: !255, file: !255, line: 737, type: !4627, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4629)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{null, !3238, !252}
!4629 = !{!4630, !4631}
!4630 = !DILocalVariable(name: "dstp", arg: 1, scope: !4626, file: !255, line: 737, type: !3238)
!4631 = !DILocalVariable(name: "srcp", arg: 2, scope: !4626, file: !255, line: 738, type: !252)
!4632 = !DILocation(line: 737, column: 49, scope: !4626)
!4633 = !DILocation(line: 738, column: 27, scope: !4626)
!4634 = !DILocation(line: 740, column: 14, scope: !4626)
!4635 = !DILocation(line: 740, column: 34, scope: !4626)
!4636 = !DILocation(line: 740, column: 2, scope: !4626)
!4637 = !DILocation(line: 741, column: 1, scope: !4626)
!4638 = distinct !DISubprogram(name: "kstat_incr_irq_this_cpu", scope: !3, file: !3, line: 941, type: !4071, scopeLine: 942, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4639)
!4639 = !{!4640}
!4640 = !DILocalVariable(name: "irq", arg: 1, scope: !4638, file: !3, line: 941, type: !7)
!4641 = !DILocation(line: 941, column: 43, scope: !4638)
!4642 = !DILocation(line: 943, column: 39, scope: !4638)
!4643 = !DILocation(line: 943, column: 27, scope: !4638)
!4644 = !DILocation(line: 943, column: 2, scope: !4638)
!4645 = !DILocation(line: 944, column: 1, scope: !4638)
!4646 = distinct !DISubprogram(name: "kstat_incr_irqs_this_cpu", scope: !154, file: !154, line: 265, type: !2110, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4647)
!4647 = !{!4648}
!4648 = !DILocalVariable(name: "desc", arg: 1, scope: !4646, file: !154, line: 265, type: !270)
!4649 = !DILocation(line: 265, column: 62, scope: !4646)
!4650 = !DILocation(line: 267, column: 29, scope: !4646)
!4651 = !DILocation(line: 267, column: 2, scope: !4646)
!4652 = !DILocation(line: 268, column: 2, scope: !4646)
!4653 = !DILocation(line: 268, column: 8, scope: !4646)
!4654 = !DILocation(line: 268, column: 17, scope: !4646)
!4655 = !DILocation(line: 269, column: 1, scope: !4646)
!4656 = distinct !DISubprogram(name: "kstat_irqs_cpu", scope: !3, file: !3, line: 955, type: !4657, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4659)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{!7, !7, !53}
!4659 = !{!4660, !4661, !4662, !4663, !4666}
!4660 = !DILocalVariable(name: "irq", arg: 1, scope: !4656, file: !3, line: 955, type: !7)
!4661 = !DILocalVariable(name: "cpu", arg: 2, scope: !4656, file: !3, line: 955, type: !53)
!4662 = !DILocalVariable(name: "desc", scope: !4656, file: !3, line: 957, type: !270)
!4663 = !DILocalVariable(name: "__vpp_verify", scope: !4664, file: !3, line: 960, type: !440)
!4664 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 960, column: 5)
!4665 = distinct !DILexicalBlock(scope: !4656, file: !3, line: 960, column: 5)
!4666 = !DILocalVariable(name: "__ptr", scope: !4667, file: !3, line: 960, type: !259)
!4667 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 960, column: 5)
!4668 = !DILocation(line: 955, column: 42, scope: !4656)
!4669 = !DILocation(line: 955, column: 51, scope: !4656)
!4670 = !DILocation(line: 957, column: 2, scope: !4656)
!4671 = !DILocation(line: 957, column: 19, scope: !4656)
!4672 = !DILocation(line: 957, column: 38, scope: !4656)
!4673 = !DILocation(line: 957, column: 26, scope: !4656)
!4674 = !DILocation(line: 959, column: 9, scope: !4656)
!4675 = !DILocation(line: 959, column: 14, scope: !4656)
!4676 = !DILocation(line: 959, column: 17, scope: !4656)
!4677 = !DILocation(line: 959, column: 23, scope: !4656)
!4678 = !DILocation(line: 960, column: 5, scope: !4665)
!4679 = !DILocation(line: 960, column: 5, scope: !4664)
!4680 = !DILocation(line: 960, column: 5, scope: !4667)
!4681 = !DILocation(line: 960, column: 4, scope: !4656)
!4682 = !DILocation(line: 961, column: 1, scope: !4656)
!4683 = !DILocation(line: 959, column: 2, scope: !4656)
!4684 = distinct !DISubprogram(name: "kstat_irqs_usr", scope: !3, file: !3, line: 996, type: !4191, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4685)
!4685 = !{!4686, !4687}
!4686 = !DILocalVariable(name: "irq", arg: 1, scope: !4684, file: !3, line: 996, type: !7)
!4687 = !DILocalVariable(name: "sum", scope: !4684, file: !3, line: 998, type: !7)
!4688 = !DILocation(line: 996, column: 42, scope: !4684)
!4689 = !DILocation(line: 998, column: 2, scope: !4684)
!4690 = !DILocation(line: 998, column: 15, scope: !4684)
!4691 = !DILocation(line: 1000, column: 2, scope: !4684)
!4692 = !DILocation(line: 1001, column: 19, scope: !4684)
!4693 = !DILocation(line: 1001, column: 8, scope: !4684)
!4694 = !DILocation(line: 1001, column: 6, scope: !4684)
!4695 = !DILocation(line: 1002, column: 2, scope: !4684)
!4696 = !DILocation(line: 1003, column: 9, scope: !4684)
!4697 = !DILocation(line: 1004, column: 1, scope: !4684)
!4698 = !DILocation(line: 1003, column: 2, scope: !4684)
!4699 = distinct !DISubprogram(name: "rcu_read_lock", scope: !4377, file: !4377, line: 782, type: !1546, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4700 = !DILocation(line: 784, column: 2, scope: !4699)
!4701 = !DILocation(line: 786, column: 2, scope: !4699)
!4702 = !DILocation(line: 786, column: 2, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4699, file: !4377, line: 786, column: 2)
!4704 = !DILocation(line: 787, column: 2, scope: !4699)
!4705 = !DILocation(line: 787, column: 2, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4699, file: !4377, line: 787, column: 2)
!4707 = !DILocation(line: 789, column: 1, scope: !4699)
!4708 = distinct !DISubprogram(name: "kstat_irqs", scope: !3, file: !3, line: 968, type: !4191, scopeLine: 969, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4709)
!4709 = !{!4710, !4711, !4712, !4713, !4714, !4717, !4721, !4725}
!4710 = !DILocalVariable(name: "irq", arg: 1, scope: !4708, file: !3, line: 968, type: !7)
!4711 = !DILocalVariable(name: "desc", scope: !4708, file: !3, line: 970, type: !270)
!4712 = !DILocalVariable(name: "sum", scope: !4708, file: !3, line: 971, type: !7)
!4713 = !DILocalVariable(name: "cpu", scope: !4708, file: !3, line: 972, type: !53)
!4714 = !DILocalVariable(name: "__v", scope: !4715, file: !3, line: 979, type: !7)
!4715 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 979, column: 10)
!4716 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 976, column: 6)
!4717 = !DILocalVariable(name: "__v", scope: !4718, file: !3, line: 982, type: !7)
!4718 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 982, column: 10)
!4719 = distinct !DILexicalBlock(scope: !4720, file: !3, line: 981, column: 2)
!4720 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 981, column: 2)
!4721 = !DILocalVariable(name: "__vpp_verify", scope: !4722, file: !3, line: 982, type: !440)
!4722 = distinct !DILexicalBlock(scope: !4723, file: !3, line: 982, column: 10)
!4723 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 982, column: 10)
!4724 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 982, column: 10)
!4725 = !DILocalVariable(name: "__ptr", scope: !4726, file: !3, line: 982, type: !259)
!4726 = distinct !DILexicalBlock(scope: !4723, file: !3, line: 982, column: 10)
!4727 = !DILocation(line: 968, column: 45, scope: !4708)
!4728 = !DILocation(line: 970, column: 2, scope: !4708)
!4729 = !DILocation(line: 970, column: 19, scope: !4708)
!4730 = !DILocation(line: 970, column: 38, scope: !4708)
!4731 = !DILocation(line: 970, column: 26, scope: !4708)
!4732 = !DILocation(line: 971, column: 2, scope: !4708)
!4733 = !DILocation(line: 971, column: 15, scope: !4708)
!4734 = !DILocation(line: 972, column: 2, scope: !4708)
!4735 = !DILocation(line: 972, column: 6, scope: !4708)
!4736 = !DILocation(line: 974, column: 7, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 974, column: 6)
!4738 = !DILocation(line: 974, column: 12, scope: !4737)
!4739 = !DILocation(line: 974, column: 16, scope: !4737)
!4740 = !DILocation(line: 974, column: 22, scope: !4737)
!4741 = !DILocation(line: 974, column: 6, scope: !4708)
!4742 = !DILocation(line: 975, column: 3, scope: !4737)
!4743 = !DILocation(line: 976, column: 37, scope: !4716)
!4744 = !DILocation(line: 976, column: 7, scope: !4716)
!4745 = !DILocation(line: 976, column: 43, scope: !4716)
!4746 = !DILocation(line: 977, column: 31, scope: !4716)
!4747 = !DILocation(line: 977, column: 7, scope: !4716)
!4748 = !DILocation(line: 977, column: 37, scope: !4716)
!4749 = !DILocation(line: 978, column: 18, scope: !4716)
!4750 = !DILocation(line: 978, column: 7, scope: !4716)
!4751 = !DILocation(line: 976, column: 6, scope: !4708)
!4752 = !DILocation(line: 979, column: 10, scope: !4715)
!4753 = !DILocation(line: 979, column: 10, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 979, column: 10)
!4755 = !DILocation(line: 979, column: 10, scope: !4716)
!4756 = !DILocation(line: 979, column: 3, scope: !4716)
!4757 = !DILocation(line: 981, column: 2, scope: !4720)
!4758 = !DILocation(line: 981, column: 2, scope: !4719)
!4759 = !DILocation(line: 982, column: 10, scope: !4718)
!4760 = !DILocation(line: 982, column: 10, scope: !4724)
!4761 = !DILocation(line: 982, column: 10, scope: !4723)
!4762 = !DILocation(line: 982, column: 10, scope: !4722)
!4763 = !DILocation(line: 982, column: 10, scope: !4726)
!4764 = !DILocation(line: 982, column: 10, scope: !4719)
!4765 = !DILocation(line: 982, column: 7, scope: !4719)
!4766 = !DILocation(line: 982, column: 3, scope: !4719)
!4767 = distinct !{!4767, !4757, !4768, !3518, !3519}
!4768 = !DILocation(line: 982, column: 10, scope: !4720)
!4769 = !DILocation(line: 983, column: 9, scope: !4708)
!4770 = !DILocation(line: 983, column: 2, scope: !4708)
!4771 = !DILocation(line: 984, column: 1, scope: !4708)
!4772 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !4377, file: !4377, line: 813, type: !1546, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4773 = !DILocation(line: 815, column: 2, scope: !4772)
!4774 = !DILocation(line: 815, column: 2, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4772, file: !4377, line: 815, column: 2)
!4776 = !DILocation(line: 818, column: 2, scope: !4772)
!4777 = !DILocation(line: 819, column: 2, scope: !4772)
!4778 = !DILocation(line: 819, column: 2, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4772, file: !4377, line: 819, column: 2)
!4780 = !DILocation(line: 820, column: 1, scope: !4772)
!4781 = distinct !DISubprogram(name: "alloc_bootmem_cpumask_var", scope: !255, file: !255, line: 942, type: !4782, scopeLine: 943, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4785)
!4782 = !DISubroutineType(types: !4783)
!4783 = !{null, !4784}
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!4785 = !{!4786}
!4786 = !DILocalVariable(name: "mask", arg: 1, scope: !4781, file: !255, line: 942, type: !4784)
!4787 = !DILocation(line: 942, column: 61, scope: !4781)
!4788 = !DILocation(line: 944, column: 1, scope: !4781)
!4789 = distinct !DISubprogram(name: "cpulist_parse", scope: !255, file: !255, line: 814, type: !4790, scopeLine: 815, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4792)
!4790 = !DISubroutineType(types: !4791)
!4791 = !{!53, !304, !3238}
!4792 = !{!4793, !4794}
!4793 = !DILocalVariable(name: "buf", arg: 1, scope: !4789, file: !255, line: 814, type: !304)
!4794 = !DILocalVariable(name: "dstp", arg: 2, scope: !4789, file: !255, line: 814, type: !3238)
!4795 = !DILocation(line: 814, column: 45, scope: !4789)
!4796 = !DILocation(line: 814, column: 66, scope: !4789)
!4797 = !DILocation(line: 816, column: 26, scope: !4789)
!4798 = !DILocation(line: 816, column: 31, scope: !4789)
!4799 = !DILocation(line: 816, column: 51, scope: !4789)
!4800 = !DILocation(line: 816, column: 9, scope: !4789)
!4801 = !DILocation(line: 816, column: 2, scope: !4789)
!4802 = distinct !DISubprogram(name: "cpumask_set_cpu", scope: !255, file: !255, line: 469, type: !4803, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4805)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{null, !7, !3238}
!4805 = !{!4806, !4807}
!4806 = !DILocalVariable(name: "cpu", arg: 1, scope: !4802, file: !255, line: 469, type: !7)
!4807 = !DILocalVariable(name: "dstp", arg: 2, scope: !4802, file: !255, line: 469, type: !3238)
!4808 = !DILocation(line: 469, column: 58, scope: !4802)
!4809 = !DILocation(line: 469, column: 79, scope: !4802)
!4810 = !DILocation(line: 471, column: 24, scope: !4802)
!4811 = !DILocation(line: 471, column: 10, scope: !4802)
!4812 = !DILocation(line: 471, column: 30, scope: !4802)
!4813 = !DILocation(line: 471, column: 2, scope: !4802)
!4814 = !DILocation(line: 472, column: 1, scope: !4802)
!4815 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !4816, file: !4816, line: 313, type: !4817, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4819)
!4816 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!4817 = !DISubroutineType(types: !4818)
!4818 = !{null, !304}
!4819 = !{!4820}
!4820 = !DILocalVariable(name: "op", arg: 1, scope: !4815, file: !4816, line: 313, type: !304)
!4821 = !DILocation(line: 313, column: 66, scope: !4815)
!4822 = !DILocation(line: 313, column: 72, scope: !4815)
!4823 = !DISubprogram(name: "bitmap_parselist", scope: !4824, file: !4824, line: 211, type: !4825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4824 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!4825 = !DISubroutineType(types: !4826)
!4826 = !{!53, !304, !1532, !53}
!4827 = distinct !DISubprogram(name: "set_bit", scope: !4828, file: !4828, line: 26, type: !4829, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4833)
!4828 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!4829 = !DISubroutineType(types: !4830)
!4830 = !{null, !269, !4831}
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !259)
!4833 = !{!4834, !4835}
!4834 = !DILocalVariable(name: "nr", arg: 1, scope: !4827, file: !4828, line: 26, type: !269)
!4835 = !DILocalVariable(name: "addr", arg: 2, scope: !4827, file: !4828, line: 26, type: !4831)
!4836 = !DILocation(line: 26, column: 42, scope: !4827)
!4837 = !DILocation(line: 26, column: 70, scope: !4827)
!4838 = !DILocation(line: 28, column: 26, scope: !4827)
!4839 = !DILocation(line: 28, column: 33, scope: !4827)
!4840 = !DILocation(line: 28, column: 31, scope: !4827)
!4841 = !DILocation(line: 28, column: 2, scope: !4827)
!4842 = !DILocation(line: 29, column: 15, scope: !4827)
!4843 = !DILocation(line: 29, column: 19, scope: !4827)
!4844 = !DILocation(line: 29, column: 2, scope: !4827)
!4845 = !DILocation(line: 30, column: 1, scope: !4827)
!4846 = distinct !DISubprogram(name: "cpumask_check", scope: !255, file: !255, line: 148, type: !4191, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4847)
!4847 = !{!4848}
!4848 = !DILocalVariable(name: "cpu", arg: 1, scope: !4846, file: !255, line: 148, type: !7)
!4849 = !DILocation(line: 148, column: 64, scope: !4846)
!4850 = !DILocation(line: 150, column: 20, scope: !4846)
!4851 = !DILocation(line: 150, column: 2, scope: !4846)
!4852 = !DILocation(line: 151, column: 9, scope: !4846)
!4853 = !DILocation(line: 151, column: 2, scope: !4846)
!4854 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4855, file: !4855, line: 80, type: !4856, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4861)
!4855 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4856 = !DISubroutineType(types: !4857)
!4857 = !{null, !4858, !574}
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4860)
!4860 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4861 = !{!4862, !4863}
!4862 = !DILocalVariable(name: "v", arg: 1, scope: !4854, file: !4855, line: 80, type: !4858)
!4863 = !DILocalVariable(name: "size", arg: 2, scope: !4854, file: !4855, line: 80, type: !574)
!4864 = !DILocation(line: 80, column: 74, scope: !4854)
!4865 = !DILocation(line: 80, column: 84, scope: !4854)
!4866 = !DILocation(line: 82, column: 20, scope: !4854)
!4867 = !DILocation(line: 82, column: 23, scope: !4854)
!4868 = !DILocation(line: 82, column: 2, scope: !4854)
!4869 = !DILocation(line: 83, column: 2, scope: !4854)
!4870 = !DILocation(line: 84, column: 1, scope: !4854)
!4871 = distinct !DISubprogram(name: "arch_set_bit", scope: !4872, file: !4872, line: 52, type: !4829, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4873)
!4872 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4873 = !{!4874, !4875}
!4874 = !DILocalVariable(name: "nr", arg: 1, scope: !4871, file: !4872, line: 52, type: !269)
!4875 = !DILocalVariable(name: "addr", arg: 2, scope: !4871, file: !4872, line: 52, type: !4831)
!4876 = !DILocation(line: 52, column: 19, scope: !4871)
!4877 = !DILocation(line: 52, column: 47, scope: !4871)
!4878 = !DILocation(line: 54, column: 27, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4871, file: !4872, line: 54, column: 6)
!4880 = !DILocation(line: 54, column: 6, scope: !4879)
!4881 = !DILocation(line: 54, column: 6, scope: !4871)
!4882 = !DILocation(line: 56, column: 6, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4879, file: !4872, line: 54, column: 32)
!4884 = !DILocation(line: 57, column: 12, scope: !4883)
!4885 = !DILocation(line: 55, column: 3, scope: !4883)
!4886 = !{i64 2148022111, i64 2148022150, i64 2148022171, i64 2148022208, i64 2148022231, i64 2148022101}
!4887 = !DILocation(line: 59, column: 2, scope: !4883)
!4888 = !DILocation(line: 61, column: 8, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4879, file: !4872, line: 59, column: 9)
!4890 = !DILocation(line: 61, column: 32, scope: !4889)
!4891 = !DILocation(line: 60, column: 3, scope: !4889)
!4892 = !{i64 2148022396, i64 2148022435, i64 2148022456, i64 2148022493, i64 2148022516, i64 2148022386}
!4893 = !DILocation(line: 63, column: 1, scope: !4871)
!4894 = distinct !DISubprogram(name: "kasan_check_write", scope: !4895, file: !4895, line: 44, type: !4896, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4898)
!4895 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4896 = !DISubroutineType(types: !4897)
!4897 = !{!326, !4858, !7}
!4898 = !{!4899, !4900}
!4899 = !DILocalVariable(name: "p", arg: 1, scope: !4894, file: !4895, line: 44, type: !4858)
!4900 = !DILocalVariable(name: "size", arg: 2, scope: !4894, file: !4895, line: 44, type: !7)
!4901 = !DILocation(line: 44, column: 59, scope: !4894)
!4902 = !DILocation(line: 44, column: 75, scope: !4894)
!4903 = !DILocation(line: 46, column: 2, scope: !4894)
!4904 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4905, file: !4905, line: 229, type: !4906, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4908)
!4905 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4906 = !DISubroutineType(types: !4907)
!4907 = !{null, !4858, !574, !53}
!4908 = !{!4909, !4910, !4911}
!4909 = !DILocalVariable(name: "ptr", arg: 1, scope: !4904, file: !4905, line: 229, type: !4858)
!4910 = !DILocalVariable(name: "size", arg: 2, scope: !4904, file: !4905, line: 229, type: !574)
!4911 = !DILocalVariable(name: "type", arg: 3, scope: !4904, file: !4905, line: 230, type: !53)
!4912 = !DILocation(line: 229, column: 60, scope: !4904)
!4913 = !DILocation(line: 229, column: 72, scope: !4904)
!4914 = !DILocation(line: 230, column: 15, scope: !4904)
!4915 = !DILocation(line: 230, column: 23, scope: !4904)
!4916 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !255, file: !255, line: 140, type: !4029, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4917)
!4917 = !{!4918, !4919}
!4918 = !DILocalVariable(name: "cpu", arg: 1, scope: !4916, file: !255, line: 140, type: !7)
!4919 = !DILocalVariable(name: "bits", arg: 2, scope: !4916, file: !255, line: 140, type: !7)
!4920 = !DILocation(line: 140, column: 60, scope: !4916)
!4921 = !DILocation(line: 140, column: 78, scope: !4916)
!4922 = !DILocation(line: 145, column: 1, scope: !4916)
!4923 = !DISubprogram(name: "kobject_create_and_add", scope: !448, file: !448, line: 103, type: !4924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{!453, !304, !453}
!4926 = distinct !DISubprogram(name: "irq_sysfs_add", scope: !3, file: !3, line: 321, type: !4927, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4929)
!4927 = !DISubroutineType(types: !4928)
!4928 = !{null, !53, !270}
!4929 = !{!4930, !4931}
!4930 = !DILocalVariable(name: "irq", arg: 1, scope: !4926, file: !3, line: 321, type: !53)
!4931 = !DILocalVariable(name: "desc", arg: 2, scope: !4926, file: !3, line: 321, type: !270)
!4932 = !DILocation(line: 321, column: 31, scope: !4926)
!4933 = !DILocation(line: 321, column: 53, scope: !4926)
!4934 = !DILocation(line: 323, column: 6, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 323, column: 6)
!4936 = !DILocation(line: 323, column: 6, scope: !4926)
!4937 = !DILocation(line: 329, column: 20, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4939, file: !3, line: 329, column: 7)
!4939 = distinct !DILexicalBlock(scope: !4935, file: !3, line: 323, column: 21)
!4940 = !DILocation(line: 329, column: 26, scope: !4938)
!4941 = !DILocation(line: 329, column: 32, scope: !4938)
!4942 = !DILocation(line: 329, column: 53, scope: !4938)
!4943 = !DILocation(line: 329, column: 7, scope: !4938)
!4944 = !DILocation(line: 329, column: 7, scope: !4939)
!4945 = !DILocation(line: 330, column: 4, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 330, column: 4)
!4947 = !DILocation(line: 330, column: 4, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4946, file: !3, line: 330, column: 4)
!4949 = !DILocation(line: 330, column: 4, scope: !4938)
!4950 = !DILocation(line: 332, column: 4, scope: !4938)
!4951 = !DILocation(line: 332, column: 10, scope: !4938)
!4952 = !DILocation(line: 332, column: 17, scope: !4938)
!4953 = !DILocation(line: 333, column: 2, scope: !4939)
!4954 = !DILocation(line: 334, column: 1, scope: !4926)
!4955 = !DISubprogram(name: "kobject_add", scope: !448, file: !448, line: 93, type: !4956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{!53, !453, !453, !304, null}
!4958 = distinct !DISubprogram(name: "find_first_bit", scope: !4959, file: !4959, line: 200, type: !4960, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4964)
!4959 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!4960 = !DISubroutineType(types: !4961)
!4961 = !{!259, !4962, !259}
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!4964 = !{!4965, !4966, !4967}
!4965 = !DILocalVariable(name: "addr", arg: 1, scope: !4958, file: !4959, line: 200, type: !4962)
!4966 = !DILocalVariable(name: "size", arg: 2, scope: !4958, file: !4959, line: 200, type: !259)
!4967 = !DILocalVariable(name: "val", scope: !4968, file: !4959, line: 203, type: !259)
!4968 = distinct !DILexicalBlock(scope: !4969, file: !4959, line: 202, column: 31)
!4969 = distinct !DILexicalBlock(scope: !4958, file: !4959, line: 202, column: 6)
!4970 = !DILocation(line: 200, column: 51, scope: !4958)
!4971 = !DILocation(line: 200, column: 71, scope: !4958)
!4972 = !DILocation(line: 202, column: 6, scope: !4969)
!4973 = !DILocation(line: 202, column: 6, scope: !4958)
!4974 = !DILocation(line: 203, column: 3, scope: !4968)
!4975 = !DILocation(line: 203, column: 17, scope: !4968)
!4976 = !DILocation(line: 203, column: 24, scope: !4968)
!4977 = !DILocation(line: 203, column: 23, scope: !4968)
!4978 = !DILocation(line: 203, column: 31, scope: !4968)
!4979 = !DILocation(line: 203, column: 29, scope: !4968)
!4980 = !DILocation(line: 205, column: 10, scope: !4968)
!4981 = !DILocation(line: 205, column: 16, scope: !4968)
!4982 = !DILocation(line: 205, column: 29, scope: !4968)
!4983 = !DILocation(line: 205, column: 3, scope: !4968)
!4984 = !DILocation(line: 206, column: 2, scope: !4969)
!4985 = !DILocation(line: 208, column: 25, scope: !4958)
!4986 = !DILocation(line: 208, column: 31, scope: !4958)
!4987 = !DILocation(line: 208, column: 9, scope: !4958)
!4988 = !DILocation(line: 208, column: 2, scope: !4958)
!4989 = !DILocation(line: 209, column: 1, scope: !4958)
!4990 = distinct !DISubprogram(name: "variable__ffs", scope: !4872, file: !4872, line: 250, type: !4991, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4993)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{!259, !259}
!4993 = !{!4994}
!4994 = !DILocalVariable(name: "word", arg: 1, scope: !4990, file: !4872, line: 250, type: !259)
!4995 = !DILocation(line: 250, column: 66, scope: !4990)
!4996 = !DILocation(line: 254, column: 11, scope: !4990)
!4997 = !DILocation(line: 252, column: 2, scope: !4990)
!4998 = !{i64 533645}
!4999 = !DILocation(line: 255, column: 9, scope: !4990)
!5000 = !DILocation(line: 255, column: 2, scope: !4990)
!5001 = !DISubprogram(name: "_find_first_bit", scope: !4959, file: !4959, line: 21, type: !4960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5002 = distinct !DISubprogram(name: "cpumask_available", scope: !255, file: !255, line: 954, type: !5003, scopeLine: 955, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5005)
!5003 = !DISubroutineType(types: !5004)
!5004 = !{!326, !3238}
!5005 = !{!5006}
!5006 = !DILocalVariable(name: "mask", arg: 1, scope: !5002, file: !255, line: 954, type: !3238)
!5007 = !DILocation(line: 954, column: 52, scope: !5002)
!5008 = !DILocation(line: 956, column: 2, scope: !5002)
!5009 = distinct !DISubprogram(name: "zalloc_cpumask_var", scope: !255, file: !255, line: 929, type: !5010, scopeLine: 930, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5012)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{!326, !4784, !250}
!5012 = !{!5013, !5014}
!5013 = !DILocalVariable(name: "mask", arg: 1, scope: !5009, file: !255, line: 929, type: !4784)
!5014 = !DILocalVariable(name: "flags", arg: 2, scope: !5009, file: !255, line: 929, type: !250)
!5015 = !DILocation(line: 929, column: 54, scope: !5009)
!5016 = !DILocation(line: 929, column: 66, scope: !5009)
!5017 = !DILocation(line: 931, column: 17, scope: !5009)
!5018 = !DILocation(line: 931, column: 16, scope: !5009)
!5019 = !DILocation(line: 931, column: 2, scope: !5009)
!5020 = !DILocation(line: 932, column: 2, scope: !5009)
!5021 = distinct !DISubprogram(name: "cpumask_empty", scope: !255, file: !255, line: 672, type: !5022, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5024)
!5022 = !DISubroutineType(types: !5023)
!5023 = !{!326, !252}
!5024 = !{!5025}
!5025 = !DILocalVariable(name: "srcp", arg: 1, scope: !5021, file: !255, line: 672, type: !252)
!5026 = !DILocation(line: 672, column: 56, scope: !5021)
!5027 = !DILocation(line: 674, column: 22, scope: !5021)
!5028 = !DILocation(line: 674, column: 9, scope: !5021)
!5029 = !DILocation(line: 674, column: 2, scope: !5021)
!5030 = distinct !DISubprogram(name: "cpumask_setall", scope: !255, file: !255, line: 539, type: !5031, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5033)
!5031 = !DISubroutineType(types: !5032)
!5032 = !{null, !3238}
!5033 = !{!5034}
!5034 = !DILocalVariable(name: "dstp", arg: 1, scope: !5030, file: !255, line: 539, type: !3238)
!5035 = !DILocation(line: 539, column: 51, scope: !5030)
!5036 = !DILocation(line: 542, column: 27, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !5038, file: !255, line: 541, column: 45)
!5038 = distinct !DILexicalBlock(scope: !5030, file: !255, line: 541, column: 6)
!5039 = !DILocation(line: 542, column: 3, scope: !5037)
!5040 = !DILocation(line: 542, column: 25, scope: !5037)
!5041 = !DILocation(line: 543, column: 3, scope: !5037)
!5042 = distinct !DISubprogram(name: "cpumask_clear", scope: !255, file: !255, line: 552, type: !5031, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5043)
!5043 = !{!5044}
!5044 = !DILocalVariable(name: "dstp", arg: 1, scope: !5042, file: !255, line: 552, type: !3238)
!5045 = !DILocation(line: 552, column: 50, scope: !5042)
!5046 = !DILocation(line: 554, column: 14, scope: !5042)
!5047 = !DILocation(line: 554, column: 2, scope: !5042)
!5048 = !DILocation(line: 555, column: 1, scope: !5042)
!5049 = distinct !DISubprogram(name: "bitmap_zero", scope: !4824, file: !4824, line: 246, type: !5050, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5052)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{null, !1532, !7}
!5052 = !{!5053, !5054, !5055}
!5053 = !DILocalVariable(name: "dst", arg: 1, scope: !5049, file: !4824, line: 246, type: !1532)
!5054 = !DILocalVariable(name: "nbits", arg: 2, scope: !5049, file: !4824, line: 246, type: !7)
!5055 = !DILocalVariable(name: "len", scope: !5049, file: !4824, line: 248, type: !7)
!5056 = !DILocation(line: 246, column: 47, scope: !5049)
!5057 = !DILocation(line: 246, column: 65, scope: !5049)
!5058 = !DILocation(line: 248, column: 2, scope: !5049)
!5059 = !DILocation(line: 248, column: 15, scope: !5049)
!5060 = !DILocation(line: 248, column: 21, scope: !5049)
!5061 = !DILocation(line: 250, column: 6, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5049, file: !4824, line: 250, column: 6)
!5063 = !DILocation(line: 250, column: 6, scope: !5049)
!5064 = !DILocation(line: 251, column: 4, scope: !5062)
!5065 = !DILocation(line: 251, column: 8, scope: !5062)
!5066 = !DILocation(line: 251, column: 3, scope: !5062)
!5067 = !DILocation(line: 253, column: 10, scope: !5062)
!5068 = !DILocation(line: 253, column: 18, scope: !5062)
!5069 = !DILocation(line: 253, column: 3, scope: !5062)
!5070 = !DILocation(line: 254, column: 1, scope: !5049)
!5071 = distinct !DISubprogram(name: "bitmap_empty", scope: !4824, file: !4824, line: 436, type: !5072, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5074)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!326, !4962, !7}
!5074 = !{!5075, !5076}
!5075 = !DILocalVariable(name: "src", arg: 1, scope: !5071, file: !4824, line: 436, type: !4962)
!5076 = !DILocalVariable(name: "nbits", arg: 2, scope: !5071, file: !4824, line: 436, type: !7)
!5077 = !DILocation(line: 436, column: 54, scope: !5071)
!5078 = !DILocation(line: 436, column: 68, scope: !5071)
!5079 = !DILocation(line: 438, column: 6, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5071, file: !4824, line: 438, column: 6)
!5081 = !DILocation(line: 438, column: 6, scope: !5071)
!5082 = !DILocation(line: 439, column: 14, scope: !5080)
!5083 = !DILocation(line: 439, column: 13, scope: !5080)
!5084 = !DILocation(line: 439, column: 20, scope: !5080)
!5085 = !DILocation(line: 439, column: 18, scope: !5080)
!5086 = !DILocation(line: 439, column: 10, scope: !5080)
!5087 = !DILocation(line: 439, column: 3, scope: !5080)
!5088 = !DILocation(line: 441, column: 24, scope: !5071)
!5089 = !DILocation(line: 441, column: 29, scope: !5071)
!5090 = !DILocation(line: 441, column: 9, scope: !5071)
!5091 = !DILocation(line: 441, column: 39, scope: !5071)
!5092 = !DILocation(line: 441, column: 36, scope: !5071)
!5093 = !DILocation(line: 441, column: 2, scope: !5071)
!5094 = !DILocation(line: 442, column: 1, scope: !5071)
!5095 = distinct !DISubprogram(name: "kzalloc_node", scope: !168, file: !168, line: 730, type: !5096, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5098)
!5096 = !DISubroutineType(types: !5097)
!5097 = !{!249, !574, !250, !53}
!5098 = !{!5099, !5100, !5101}
!5099 = !DILocalVariable(name: "size", arg: 1, scope: !5095, file: !168, line: 730, type: !574)
!5100 = !DILocalVariable(name: "flags", arg: 2, scope: !5095, file: !168, line: 730, type: !250)
!5101 = !DILocalVariable(name: "node", arg: 3, scope: !5095, file: !168, line: 730, type: !53)
!5102 = !DILocation(line: 730, column: 57, scope: !5095)
!5103 = !DILocation(line: 730, column: 69, scope: !5095)
!5104 = !DILocation(line: 730, column: 80, scope: !5095)
!5105 = !DILocation(line: 732, column: 22, scope: !5095)
!5106 = !DILocation(line: 732, column: 28, scope: !5095)
!5107 = !DILocation(line: 732, column: 34, scope: !5095)
!5108 = !DILocation(line: 732, column: 48, scope: !5095)
!5109 = !DILocation(line: 732, column: 9, scope: !5095)
!5110 = !DILocation(line: 732, column: 2, scope: !5095)
!5111 = !DISubprogram(name: "__alloc_percpu", scope: !5112, file: !5112, line: 133, type: !5113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5112 = !DIFile(filename: "./include/linux/percpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5b443d1a4673980cdbec5f10c6cbbaa")
!5113 = !DISubroutineType(types: !5114)
!5114 = !{!249, !574, !574}
!5115 = distinct !DISubprogram(name: "alloc_masks", scope: !3, file: !3, line: 54, type: !5116, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5118)
!5116 = !DISubroutineType(types: !5117)
!5117 = !{!53, !270, !53}
!5118 = !{!5119, !5120}
!5119 = !DILocalVariable(name: "desc", arg: 1, scope: !5115, file: !3, line: 54, type: !270)
!5120 = !DILocalVariable(name: "node", arg: 2, scope: !5115, file: !3, line: 54, type: !53)
!5121 = !DILocation(line: 54, column: 41, scope: !5115)
!5122 = !DILocation(line: 54, column: 51, scope: !5115)
!5123 = !DILocation(line: 56, column: 32, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 56, column: 6)
!5125 = !DILocation(line: 56, column: 38, scope: !5124)
!5126 = !DILocation(line: 56, column: 54, scope: !5124)
!5127 = !DILocation(line: 57, column: 22, scope: !5124)
!5128 = !DILocation(line: 56, column: 7, scope: !5124)
!5129 = !DILocation(line: 56, column: 6, scope: !5115)
!5130 = !DILocation(line: 58, column: 3, scope: !5124)
!5131 = !DILocation(line: 61, column: 32, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 61, column: 6)
!5133 = !DILocation(line: 61, column: 38, scope: !5132)
!5134 = !DILocation(line: 61, column: 54, scope: !5132)
!5135 = !DILocation(line: 62, column: 22, scope: !5132)
!5136 = !DILocation(line: 61, column: 7, scope: !5132)
!5137 = !DILocation(line: 61, column: 6, scope: !5115)
!5138 = !DILocation(line: 63, column: 20, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5132, file: !3, line: 62, column: 29)
!5140 = !DILocation(line: 63, column: 26, scope: !5139)
!5141 = !DILocation(line: 63, column: 42, scope: !5139)
!5142 = !DILocation(line: 63, column: 3, scope: !5139)
!5143 = !DILocation(line: 64, column: 3, scope: !5139)
!5144 = !DILocation(line: 69, column: 32, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 69, column: 6)
!5146 = !DILocation(line: 69, column: 38, scope: !5145)
!5147 = !DILocation(line: 69, column: 64, scope: !5145)
!5148 = !DILocation(line: 69, column: 7, scope: !5145)
!5149 = !DILocation(line: 69, column: 6, scope: !5115)
!5150 = !DILocation(line: 71, column: 20, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 69, column: 71)
!5152 = !DILocation(line: 71, column: 26, scope: !5151)
!5153 = !DILocation(line: 71, column: 42, scope: !5151)
!5154 = !DILocation(line: 71, column: 3, scope: !5151)
!5155 = !DILocation(line: 73, column: 20, scope: !5151)
!5156 = !DILocation(line: 73, column: 26, scope: !5151)
!5157 = !DILocation(line: 73, column: 42, scope: !5151)
!5158 = !DILocation(line: 73, column: 3, scope: !5151)
!5159 = !DILocation(line: 74, column: 3, scope: !5151)
!5160 = !DILocation(line: 77, column: 2, scope: !5115)
!5161 = !DILocation(line: 78, column: 1, scope: !5115)
!5162 = !DISubprogram(name: "__mutex_init", scope: !784, file: !784, line: 121, type: !5163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5163 = !DISubroutineType(types: !5164)
!5164 = !{null, !3542, !304, !5165}
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!5166 = distinct !DISubprogram(name: "init_rcu_head", scope: !4377, file: !4377, line: 313, type: !638, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5167)
!5167 = !{!5168}
!5168 = !DILocalVariable(name: "head", arg: 1, scope: !5166, file: !4377, line: 313, type: !635)
!5169 = !DILocation(line: 313, column: 51, scope: !5166)
!5170 = !DILocation(line: 313, column: 59, scope: !5166)
!5171 = !DISubprogram(name: "__init_waitqueue_head", scope: !1757, file: !1757, line: 64, type: !5172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5172 = !DISubroutineType(types: !5173)
!5173 = !{null, !5174, !304, !5165}
!5174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!5175 = distinct !DISubprogram(name: "desc_set_defaults", scope: !3, file: !3, line: 102, type: !5176, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5178)
!5176 = !DISubroutineType(types: !5177)
!5177 = !{null, !7, !270, !53, !252, !1171}
!5178 = !{!5179, !5180, !5181, !5182, !5183, !5184, !5185, !5190}
!5179 = !DILocalVariable(name: "irq", arg: 1, scope: !5175, file: !3, line: 102, type: !7)
!5180 = !DILocalVariable(name: "desc", arg: 2, scope: !5175, file: !3, line: 102, type: !270)
!5181 = !DILocalVariable(name: "node", arg: 3, scope: !5175, file: !3, line: 102, type: !53)
!5182 = !DILocalVariable(name: "affinity", arg: 4, scope: !5175, file: !3, line: 103, type: !252)
!5183 = !DILocalVariable(name: "owner", arg: 5, scope: !5175, file: !3, line: 103, type: !1171)
!5184 = !DILocalVariable(name: "cpu", scope: !5175, file: !3, line: 105, type: !53)
!5185 = !DILocalVariable(name: "__vpp_verify", scope: !5186, file: !3, line: 125, type: !440)
!5186 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 125, column: 4)
!5187 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 125, column: 4)
!5188 = distinct !DILexicalBlock(scope: !5189, file: !3, line: 124, column: 2)
!5189 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 124, column: 2)
!5190 = !DILocalVariable(name: "__ptr", scope: !5191, file: !3, line: 125, type: !259)
!5191 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 125, column: 4)
!5192 = !DILocation(line: 102, column: 44, scope: !5175)
!5193 = !DILocation(line: 102, column: 66, scope: !5175)
!5194 = !DILocation(line: 102, column: 76, scope: !5175)
!5195 = !DILocation(line: 103, column: 32, scope: !5175)
!5196 = !DILocation(line: 103, column: 57, scope: !5175)
!5197 = !DILocation(line: 105, column: 2, scope: !5175)
!5198 = !DILocation(line: 105, column: 6, scope: !5175)
!5199 = !DILocation(line: 107, column: 2, scope: !5175)
!5200 = !DILocation(line: 107, column: 8, scope: !5175)
!5201 = !DILocation(line: 107, column: 24, scope: !5175)
!5202 = !DILocation(line: 107, column: 37, scope: !5175)
!5203 = !DILocation(line: 108, column: 2, scope: !5175)
!5204 = !DILocation(line: 108, column: 8, scope: !5175)
!5205 = !DILocation(line: 108, column: 24, scope: !5175)
!5206 = !DILocation(line: 108, column: 33, scope: !5175)
!5207 = !DILocation(line: 110, column: 27, scope: !5175)
!5208 = !DILocation(line: 110, column: 33, scope: !5175)
!5209 = !DILocation(line: 110, column: 2, scope: !5175)
!5210 = !DILocation(line: 110, column: 8, scope: !5175)
!5211 = !DILocation(line: 110, column: 17, scope: !5175)
!5212 = !DILocation(line: 110, column: 24, scope: !5175)
!5213 = !DILocation(line: 111, column: 23, scope: !5175)
!5214 = !DILocation(line: 111, column: 2, scope: !5175)
!5215 = !DILocation(line: 111, column: 8, scope: !5175)
!5216 = !DILocation(line: 111, column: 17, scope: !5175)
!5217 = !DILocation(line: 111, column: 21, scope: !5175)
!5218 = !DILocation(line: 112, column: 2, scope: !5175)
!5219 = !DILocation(line: 112, column: 8, scope: !5175)
!5220 = !DILocation(line: 112, column: 17, scope: !5175)
!5221 = !DILocation(line: 112, column: 22, scope: !5175)
!5222 = !DILocation(line: 113, column: 2, scope: !5175)
!5223 = !DILocation(line: 113, column: 8, scope: !5175)
!5224 = !DILocation(line: 113, column: 17, scope: !5175)
!5225 = !DILocation(line: 113, column: 27, scope: !5175)
!5226 = !DILocation(line: 114, column: 27, scope: !5175)
!5227 = !DILocation(line: 114, column: 2, scope: !5175)
!5228 = !DILocation(line: 115, column: 12, scope: !5175)
!5229 = !DILocation(line: 115, column: 18, scope: !5175)
!5230 = !DILocation(line: 115, column: 2, scope: !5175)
!5231 = !DILocation(line: 116, column: 12, scope: !5175)
!5232 = !DILocation(line: 116, column: 18, scope: !5175)
!5233 = !DILocation(line: 116, column: 2, scope: !5175)
!5234 = !DILocation(line: 117, column: 2, scope: !5175)
!5235 = !DILocation(line: 117, column: 8, scope: !5175)
!5236 = !DILocation(line: 117, column: 19, scope: !5175)
!5237 = !DILocation(line: 118, column: 2, scope: !5175)
!5238 = !DILocation(line: 118, column: 8, scope: !5175)
!5239 = !DILocation(line: 118, column: 14, scope: !5175)
!5240 = !DILocation(line: 119, column: 2, scope: !5175)
!5241 = !DILocation(line: 119, column: 8, scope: !5175)
!5242 = !DILocation(line: 119, column: 18, scope: !5175)
!5243 = !DILocation(line: 120, column: 2, scope: !5175)
!5244 = !DILocation(line: 120, column: 8, scope: !5175)
!5245 = !DILocation(line: 120, column: 23, scope: !5175)
!5246 = !DILocation(line: 121, column: 2, scope: !5175)
!5247 = !DILocation(line: 121, column: 8, scope: !5175)
!5248 = !DILocation(line: 121, column: 18, scope: !5175)
!5249 = !DILocation(line: 122, column: 2, scope: !5175)
!5250 = !DILocation(line: 122, column: 8, scope: !5175)
!5251 = !DILocation(line: 122, column: 13, scope: !5175)
!5252 = !DILocation(line: 123, column: 16, scope: !5175)
!5253 = !DILocation(line: 123, column: 2, scope: !5175)
!5254 = !DILocation(line: 123, column: 8, scope: !5175)
!5255 = !DILocation(line: 123, column: 14, scope: !5175)
!5256 = !DILocation(line: 124, column: 2, scope: !5189)
!5257 = !DILocation(line: 124, column: 2, scope: !5188)
!5258 = !DILocation(line: 125, column: 4, scope: !5187)
!5259 = !DILocation(line: 125, column: 4, scope: !5186)
!5260 = !DILocation(line: 125, column: 4, scope: !5191)
!5261 = !DILocation(line: 125, column: 39, scope: !5188)
!5262 = !DILocation(line: 125, column: 3, scope: !5188)
!5263 = distinct !{!5263, !5256, !5264, !3518, !3519}
!5264 = !DILocation(line: 125, column: 41, scope: !5189)
!5265 = !DILocation(line: 126, column: 16, scope: !5175)
!5266 = !DILocation(line: 126, column: 22, scope: !5175)
!5267 = !DILocation(line: 126, column: 28, scope: !5175)
!5268 = !DILocation(line: 126, column: 2, scope: !5175)
!5269 = !DILocation(line: 127, column: 1, scope: !5175)
!5270 = distinct !DISubprogram(name: "irqd_set", scope: !154, file: !154, line: 237, type: !373, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5271)
!5271 = !{!5272, !5273}
!5272 = !DILocalVariable(name: "d", arg: 1, scope: !5270, file: !154, line: 237, type: !310)
!5273 = !DILocalVariable(name: "mask", arg: 2, scope: !5270, file: !154, line: 237, type: !7)
!5274 = !DILocation(line: 237, column: 46, scope: !5270)
!5275 = !DILocation(line: 237, column: 62, scope: !5270)
!5276 = !DILocation(line: 239, column: 24, scope: !5270)
!5277 = !DILocation(line: 239, column: 2, scope: !5270)
!5278 = !DILocation(line: 239, column: 21, scope: !5270)
!5279 = !DILocation(line: 240, column: 1, scope: !5270)
!5280 = !DISubprogram(name: "kobject_init", scope: !448, file: !448, line: 92, type: !5281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5281 = !DISubroutineType(types: !5282)
!5282 = !{null, !453, !542}
!5283 = !DISubprogram(name: "irq_resend_init", scope: !154, file: !154, line: 118, type: !2110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5284 = !DISubprogram(name: "free_percpu", scope: !5112, file: !5112, line: 134, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5285 = !DISubprogram(name: "kfree", scope: !168, file: !168, line: 227, type: !5286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5286 = !DISubroutineType(types: !5287)
!5287 = !{null, !440}
!5288 = distinct !DISubprogram(name: "kmalloc_node", scope: !168, file: !168, line: 607, type: !5096, scopeLine: 608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5289)
!5289 = !{!5290, !5291, !5292, !5293}
!5290 = !DILocalVariable(name: "size", arg: 1, scope: !5288, file: !168, line: 607, type: !574)
!5291 = !DILocalVariable(name: "flags", arg: 2, scope: !5288, file: !168, line: 607, type: !250)
!5292 = !DILocalVariable(name: "node", arg: 3, scope: !5288, file: !168, line: 607, type: !53)
!5293 = !DILocalVariable(name: "index", scope: !5294, file: !168, line: 610, type: !7)
!5294 = distinct !DILexicalBlock(scope: !5295, file: !168, line: 609, column: 42)
!5295 = distinct !DILexicalBlock(scope: !5288, file: !168, line: 609, column: 6)
!5296 = !DILocation(line: 607, column: 66, scope: !5288)
!5297 = !DILocation(line: 607, column: 78, scope: !5288)
!5298 = !DILocation(line: 607, column: 89, scope: !5288)
!5299 = !DILocation(line: 609, column: 27, scope: !5295)
!5300 = !DILocation(line: 609, column: 6, scope: !5295)
!5301 = !DILocation(line: 609, column: 33, scope: !5295)
!5302 = !DILocation(line: 609, column: 36, scope: !5295)
!5303 = !DILocation(line: 609, column: 6, scope: !5288)
!5304 = !DILocation(line: 610, column: 3, scope: !5294)
!5305 = !DILocation(line: 610, column: 16, scope: !5294)
!5306 = !DILocation(line: 612, column: 7, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5294, file: !168, line: 612, column: 7)
!5308 = !DILocation(line: 612, column: 12, scope: !5307)
!5309 = !DILocation(line: 612, column: 7, scope: !5294)
!5310 = !DILocation(line: 613, column: 30, scope: !5307)
!5311 = !DILocation(line: 613, column: 36, scope: !5307)
!5312 = !DILocation(line: 613, column: 43, scope: !5307)
!5313 = !DILocation(line: 613, column: 11, scope: !5307)
!5314 = !DILocation(line: 613, column: 4, scope: !5307)
!5315 = !DILocation(line: 615, column: 11, scope: !5294)
!5316 = !DILocation(line: 615, column: 9, scope: !5294)
!5317 = !DILocation(line: 617, column: 33, scope: !5294)
!5318 = !DILocation(line: 617, column: 40, scope: !5294)
!5319 = !DILocation(line: 617, column: 20, scope: !5294)
!5320 = !DILocation(line: 617, column: 5, scope: !5294)
!5321 = !DILocation(line: 617, column: 51, scope: !5294)
!5322 = !DILocation(line: 618, column: 5, scope: !5294)
!5323 = !DILocation(line: 618, column: 12, scope: !5294)
!5324 = !DILocation(line: 618, column: 18, scope: !5294)
!5325 = !DILocation(line: 616, column: 10, scope: !5294)
!5326 = !DILocation(line: 616, column: 3, scope: !5294)
!5327 = !DILocation(line: 619, column: 2, scope: !5295)
!5328 = !DILocation(line: 620, column: 24, scope: !5288)
!5329 = !DILocation(line: 620, column: 30, scope: !5288)
!5330 = !DILocation(line: 620, column: 37, scope: !5288)
!5331 = !DILocation(line: 620, column: 9, scope: !5288)
!5332 = !DILocation(line: 620, column: 2, scope: !5288)
!5333 = !DILocation(line: 621, column: 1, scope: !5288)
!5334 = !DISubprogram(name: "kmalloc_large_node", scope: !168, file: !168, line: 534, type: !5096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5335 = distinct !DISubprogram(name: "__kmalloc_index", scope: !168, file: !168, line: 444, type: !5336, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5338)
!5336 = !DISubroutineType(types: !5337)
!5337 = !{!7, !574, !326}
!5338 = !{!5339, !5340}
!5339 = !DILocalVariable(name: "size", arg: 1, scope: !5335, file: !168, line: 444, type: !574)
!5340 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5335, file: !168, line: 445, type: !326)
!5341 = !DILocation(line: 444, column: 60, scope: !5335)
!5342 = !DILocation(line: 445, column: 16, scope: !5335)
!5343 = !DILocation(line: 447, column: 7, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 447, column: 6)
!5345 = !DILocation(line: 447, column: 6, scope: !5335)
!5346 = !DILocation(line: 448, column: 3, scope: !5344)
!5347 = !DILocation(line: 450, column: 6, scope: !5348)
!5348 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 450, column: 6)
!5349 = !DILocation(line: 450, column: 11, scope: !5348)
!5350 = !DILocation(line: 450, column: 6, scope: !5335)
!5351 = !DILocation(line: 451, column: 3, scope: !5348)
!5352 = !DILocation(line: 453, column: 32, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 453, column: 6)
!5354 = !DILocation(line: 453, column: 37, scope: !5353)
!5355 = !DILocation(line: 453, column: 42, scope: !5353)
!5356 = !DILocation(line: 453, column: 45, scope: !5353)
!5357 = !DILocation(line: 453, column: 50, scope: !5353)
!5358 = !DILocation(line: 453, column: 6, scope: !5335)
!5359 = !DILocation(line: 454, column: 3, scope: !5353)
!5360 = !DILocation(line: 455, column: 32, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 455, column: 6)
!5362 = !DILocation(line: 455, column: 37, scope: !5361)
!5363 = !DILocation(line: 455, column: 43, scope: !5361)
!5364 = !DILocation(line: 455, column: 46, scope: !5361)
!5365 = !DILocation(line: 455, column: 51, scope: !5361)
!5366 = !DILocation(line: 455, column: 6, scope: !5335)
!5367 = !DILocation(line: 456, column: 3, scope: !5361)
!5368 = !DILocation(line: 457, column: 6, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 457, column: 6)
!5370 = !DILocation(line: 457, column: 11, scope: !5369)
!5371 = !DILocation(line: 457, column: 6, scope: !5335)
!5372 = !DILocation(line: 457, column: 26, scope: !5369)
!5373 = !DILocation(line: 458, column: 6, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 458, column: 6)
!5375 = !DILocation(line: 458, column: 11, scope: !5374)
!5376 = !DILocation(line: 458, column: 6, scope: !5335)
!5377 = !DILocation(line: 458, column: 26, scope: !5374)
!5378 = !DILocation(line: 459, column: 6, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 459, column: 6)
!5380 = !DILocation(line: 459, column: 11, scope: !5379)
!5381 = !DILocation(line: 459, column: 6, scope: !5335)
!5382 = !DILocation(line: 459, column: 26, scope: !5379)
!5383 = !DILocation(line: 460, column: 6, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 460, column: 6)
!5385 = !DILocation(line: 460, column: 11, scope: !5384)
!5386 = !DILocation(line: 460, column: 6, scope: !5335)
!5387 = !DILocation(line: 460, column: 26, scope: !5384)
!5388 = !DILocation(line: 461, column: 6, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 461, column: 6)
!5390 = !DILocation(line: 461, column: 11, scope: !5389)
!5391 = !DILocation(line: 461, column: 6, scope: !5335)
!5392 = !DILocation(line: 461, column: 26, scope: !5389)
!5393 = !DILocation(line: 462, column: 6, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 462, column: 6)
!5395 = !DILocation(line: 462, column: 11, scope: !5394)
!5396 = !DILocation(line: 462, column: 6, scope: !5335)
!5397 = !DILocation(line: 462, column: 26, scope: !5394)
!5398 = !DILocation(line: 463, column: 6, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 463, column: 6)
!5400 = !DILocation(line: 463, column: 11, scope: !5399)
!5401 = !DILocation(line: 463, column: 6, scope: !5335)
!5402 = !DILocation(line: 463, column: 26, scope: !5399)
!5403 = !DILocation(line: 464, column: 6, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 464, column: 6)
!5405 = !DILocation(line: 464, column: 11, scope: !5404)
!5406 = !DILocation(line: 464, column: 6, scope: !5335)
!5407 = !DILocation(line: 464, column: 26, scope: !5404)
!5408 = !DILocation(line: 465, column: 6, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 465, column: 6)
!5410 = !DILocation(line: 465, column: 11, scope: !5409)
!5411 = !DILocation(line: 465, column: 6, scope: !5335)
!5412 = !DILocation(line: 465, column: 26, scope: !5409)
!5413 = !DILocation(line: 466, column: 6, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 466, column: 6)
!5415 = !DILocation(line: 466, column: 11, scope: !5414)
!5416 = !DILocation(line: 466, column: 6, scope: !5335)
!5417 = !DILocation(line: 466, column: 26, scope: !5414)
!5418 = !DILocation(line: 467, column: 6, scope: !5419)
!5419 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 467, column: 6)
!5420 = !DILocation(line: 467, column: 11, scope: !5419)
!5421 = !DILocation(line: 467, column: 6, scope: !5335)
!5422 = !DILocation(line: 467, column: 26, scope: !5419)
!5423 = !DILocation(line: 468, column: 6, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 468, column: 6)
!5425 = !DILocation(line: 468, column: 11, scope: !5424)
!5426 = !DILocation(line: 468, column: 6, scope: !5335)
!5427 = !DILocation(line: 468, column: 26, scope: !5424)
!5428 = !DILocation(line: 469, column: 6, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 469, column: 6)
!5430 = !DILocation(line: 469, column: 11, scope: !5429)
!5431 = !DILocation(line: 469, column: 6, scope: !5335)
!5432 = !DILocation(line: 469, column: 26, scope: !5429)
!5433 = !DILocation(line: 470, column: 6, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 470, column: 6)
!5435 = !DILocation(line: 470, column: 11, scope: !5434)
!5436 = !DILocation(line: 470, column: 6, scope: !5335)
!5437 = !DILocation(line: 470, column: 26, scope: !5434)
!5438 = !DILocation(line: 471, column: 6, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 471, column: 6)
!5440 = !DILocation(line: 471, column: 11, scope: !5439)
!5441 = !DILocation(line: 471, column: 6, scope: !5335)
!5442 = !DILocation(line: 471, column: 26, scope: !5439)
!5443 = !DILocation(line: 472, column: 6, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 472, column: 6)
!5445 = !DILocation(line: 472, column: 11, scope: !5444)
!5446 = !DILocation(line: 472, column: 6, scope: !5335)
!5447 = !DILocation(line: 472, column: 26, scope: !5444)
!5448 = !DILocation(line: 473, column: 6, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 473, column: 6)
!5450 = !DILocation(line: 473, column: 11, scope: !5449)
!5451 = !DILocation(line: 473, column: 6, scope: !5335)
!5452 = !DILocation(line: 473, column: 26, scope: !5449)
!5453 = !DILocation(line: 474, column: 6, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 474, column: 6)
!5455 = !DILocation(line: 474, column: 11, scope: !5454)
!5456 = !DILocation(line: 474, column: 6, scope: !5335)
!5457 = !DILocation(line: 474, column: 27, scope: !5454)
!5458 = !DILocation(line: 475, column: 6, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 475, column: 6)
!5460 = !DILocation(line: 475, column: 11, scope: !5459)
!5461 = !DILocation(line: 475, column: 6, scope: !5335)
!5462 = !DILocation(line: 475, column: 32, scope: !5459)
!5463 = !DILocation(line: 477, column: 50, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5335, file: !168, line: 477, column: 6)
!5465 = !DILocation(line: 477, column: 6, scope: !5335)
!5466 = !DILocation(line: 478, column: 3, scope: !5464)
!5467 = !DILocation(line: 478, column: 3, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5469, file: !168, line: 478, column: 3)
!5469 = distinct !DILexicalBlock(scope: !5464, file: !168, line: 478, column: 3)
!5470 = !{i32 -2143385052}
!5471 = !DILocation(line: 478, column: 3, scope: !5469)
!5472 = !DILocation(line: 480, column: 3, scope: !5464)
!5473 = !DILocation(line: 480, column: 3, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5464, file: !168, line: 480, column: 3)
!5475 = !DILocation(line: 480, column: 3, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5474, file: !168, line: 480, column: 3)
!5477 = !DILocation(line: 480, column: 3, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5474, file: !168, line: 480, column: 3)
!5479 = !{i64 2151582447, i64 2151582476, i64 2151582522, i64 2151582580, i64 2151582634, i64 2151582688, i64 2151582743, i64 2151582774}
!5480 = !DILocation(line: 483, column: 2, scope: !5335)
!5481 = !DILocation(line: 484, column: 1, scope: !5335)
!5482 = !DISubprogram(name: "kmalloc_node_trace", scope: !168, file: !168, line: 528, type: !5483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5483 = !DISubroutineType(types: !5484)
!5484 = !{!249, !5485, !250, !53, !574}
!5485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5486, size: 64)
!5486 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5487, line: 11, flags: DIFlagFwdDecl)
!5487 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5488 = distinct !DISubprogram(name: "kmalloc_type", scope: !168, file: !168, line: 401, type: !5489, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5491)
!5489 = !DISubroutineType(types: !5490)
!5490 = !{!167, !250, !259}
!5491 = !{!5492, !5493}
!5492 = !DILocalVariable(name: "flags", arg: 1, scope: !5488, file: !168, line: 401, type: !250)
!5493 = !DILocalVariable(name: "caller", arg: 2, scope: !5488, file: !168, line: 401, type: !259)
!5494 = !DILocation(line: 401, column: 67, scope: !5488)
!5495 = !DILocation(line: 401, column: 88, scope: !5488)
!5496 = !DILocation(line: 407, column: 6, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5488, file: !168, line: 407, column: 6)
!5498 = !DILocation(line: 407, column: 6, scope: !5488)
!5499 = !DILocation(line: 413, column: 3, scope: !5497)
!5500 = !DILocation(line: 423, column: 38, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5488, file: !168, line: 423, column: 6)
!5502 = !DILocation(line: 423, column: 44, scope: !5501)
!5503 = !DILocation(line: 423, column: 6, scope: !5488)
!5504 = !DILocation(line: 424, column: 3, scope: !5501)
!5505 = !DILocation(line: 426, column: 3, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5488, file: !168, line: 425, column: 6)
!5507 = !DILocation(line: 429, column: 1, scope: !5488)
!5508 = !DISubprogram(name: "__kmalloc_node", scope: !168, file: !168, line: 520, type: !5096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5509 = !DISubprogram(name: "__compiletime_assert_117", scope: !168, file: !168, line: 478, type: !1546, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5510 = distinct !DISubprogram(name: "zalloc_cpumask_var_node", scope: !255, file: !255, line: 935, type: !5511, scopeLine: 937, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5513)
!5511 = !DISubroutineType(types: !5512)
!5512 = !{!326, !4784, !250, !53}
!5513 = !{!5514, !5515, !5516}
!5514 = !DILocalVariable(name: "mask", arg: 1, scope: !5510, file: !255, line: 935, type: !4784)
!5515 = !DILocalVariable(name: "flags", arg: 2, scope: !5510, file: !255, line: 935, type: !250)
!5516 = !DILocalVariable(name: "node", arg: 3, scope: !5510, file: !255, line: 936, type: !53)
!5517 = !DILocation(line: 935, column: 59, scope: !5510)
!5518 = !DILocation(line: 935, column: 71, scope: !5510)
!5519 = !DILocation(line: 936, column: 12, scope: !5510)
!5520 = !DILocation(line: 938, column: 17, scope: !5510)
!5521 = !DILocation(line: 938, column: 16, scope: !5510)
!5522 = !DILocation(line: 938, column: 2, scope: !5510)
!5523 = !DILocation(line: 939, column: 2, scope: !5510)
!5524 = distinct !DISubprogram(name: "free_cpumask_var", scope: !255, file: !255, line: 946, type: !5031, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5525)
!5525 = !{!5526}
!5526 = !DILocalVariable(name: "mask", arg: 1, scope: !5524, file: !255, line: 946, type: !3238)
!5527 = !DILocation(line: 946, column: 51, scope: !5524)
!5528 = !DILocation(line: 948, column: 1, scope: !5524)
!5529 = distinct !DISubprogram(name: "irq_settings_clr_and_set", scope: !178, file: !178, line: 42, type: !5530, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5532)
!5530 = !DISubroutineType(types: !5531)
!5531 = !{null, !270, !291, !291}
!5532 = !{!5533, !5534, !5535}
!5533 = !DILocalVariable(name: "desc", arg: 1, scope: !5529, file: !178, line: 42, type: !270)
!5534 = !DILocalVariable(name: "clr", arg: 2, scope: !5529, file: !178, line: 42, type: !291)
!5535 = !DILocalVariable(name: "set", arg: 3, scope: !5529, file: !178, line: 42, type: !291)
!5536 = !DILocation(line: 42, column: 43, scope: !5529)
!5537 = !DILocation(line: 42, column: 53, scope: !5529)
!5538 = !DILocation(line: 42, column: 62, scope: !5529)
!5539 = !DILocation(line: 44, column: 34, scope: !5529)
!5540 = !DILocation(line: 44, column: 38, scope: !5529)
!5541 = !DILocation(line: 44, column: 32, scope: !5529)
!5542 = !DILocation(line: 44, column: 2, scope: !5529)
!5543 = !DILocation(line: 44, column: 8, scope: !5529)
!5544 = !DILocation(line: 44, column: 29, scope: !5529)
!5545 = !DILocation(line: 45, column: 33, scope: !5529)
!5546 = !DILocation(line: 45, column: 37, scope: !5529)
!5547 = !DILocation(line: 45, column: 2, scope: !5529)
!5548 = !DILocation(line: 45, column: 8, scope: !5529)
!5549 = !DILocation(line: 45, column: 29, scope: !5529)
!5550 = !DILocation(line: 46, column: 1, scope: !5529)
!5551 = distinct !DISubprogram(name: "find_next_bit", scope: !4959, file: !4959, line: 54, type: !5552, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5554)
!5552 = !DISubroutineType(types: !5553)
!5553 = !{!259, !4962, !259, !259}
!5554 = !{!5555, !5556, !5557, !5558}
!5555 = !DILocalVariable(name: "addr", arg: 1, scope: !5551, file: !4959, line: 54, type: !4962)
!5556 = !DILocalVariable(name: "size", arg: 2, scope: !5551, file: !4959, line: 54, type: !259)
!5557 = !DILocalVariable(name: "offset", arg: 3, scope: !5551, file: !4959, line: 55, type: !259)
!5558 = !DILocalVariable(name: "val", scope: !5559, file: !4959, line: 58, type: !259)
!5559 = distinct !DILexicalBlock(scope: !5560, file: !4959, line: 57, column: 31)
!5560 = distinct !DILexicalBlock(scope: !5551, file: !4959, line: 57, column: 6)
!5561 = !DILocation(line: 54, column: 50, scope: !5551)
!5562 = !DILocation(line: 54, column: 70, scope: !5551)
!5563 = !DILocation(line: 55, column: 22, scope: !5551)
!5564 = !DILocation(line: 57, column: 6, scope: !5560)
!5565 = !DILocation(line: 57, column: 6, scope: !5551)
!5566 = !DILocation(line: 58, column: 3, scope: !5559)
!5567 = !DILocation(line: 58, column: 17, scope: !5559)
!5568 = !DILocation(line: 60, column: 7, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5559, file: !4959, line: 60, column: 7)
!5570 = !DILocation(line: 60, column: 7, scope: !5559)
!5571 = !DILocation(line: 61, column: 11, scope: !5569)
!5572 = !DILocation(line: 61, column: 4, scope: !5569)
!5573 = !DILocation(line: 63, column: 10, scope: !5559)
!5574 = !DILocation(line: 63, column: 9, scope: !5559)
!5575 = !DILocation(line: 63, column: 17, scope: !5559)
!5576 = !DILocation(line: 63, column: 15, scope: !5559)
!5577 = !DILocation(line: 63, column: 7, scope: !5559)
!5578 = !DILocation(line: 64, column: 10, scope: !5559)
!5579 = !DILocation(line: 64, column: 16, scope: !5559)
!5580 = !DILocation(line: 64, column: 29, scope: !5559)
!5581 = !DILocation(line: 64, column: 3, scope: !5559)
!5582 = !DILocation(line: 65, column: 2, scope: !5560)
!5583 = !DILocation(line: 67, column: 24, scope: !5551)
!5584 = !DILocation(line: 67, column: 30, scope: !5551)
!5585 = !DILocation(line: 67, column: 36, scope: !5551)
!5586 = !DILocation(line: 67, column: 9, scope: !5551)
!5587 = !DILocation(line: 67, column: 2, scope: !5551)
!5588 = !DILocation(line: 68, column: 1, scope: !5551)
!5589 = distinct !DISubprogram(name: "desc_smp_init", scope: !3, file: !3, line: 80, type: !5590, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5592)
!5590 = !DISubroutineType(types: !5591)
!5591 = !{null, !270, !53, !252}
!5592 = !{!5593, !5594, !5595}
!5593 = !DILocalVariable(name: "desc", arg: 1, scope: !5589, file: !3, line: 80, type: !270)
!5594 = !DILocalVariable(name: "node", arg: 2, scope: !5589, file: !3, line: 80, type: !53)
!5595 = !DILocalVariable(name: "affinity", arg: 3, scope: !5589, file: !3, line: 81, type: !252)
!5596 = !DILocation(line: 80, column: 44, scope: !5589)
!5597 = !DILocation(line: 80, column: 54, scope: !5589)
!5598 = !DILocation(line: 81, column: 28, scope: !5589)
!5599 = !DILocation(line: 83, column: 7, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 83, column: 6)
!5601 = !DILocation(line: 83, column: 6, scope: !5589)
!5602 = !DILocation(line: 84, column: 12, scope: !5600)
!5603 = !DILocation(line: 84, column: 3, scope: !5600)
!5604 = !DILocation(line: 85, column: 15, scope: !5589)
!5605 = !DILocation(line: 85, column: 21, scope: !5589)
!5606 = !DILocation(line: 85, column: 37, scope: !5589)
!5607 = !DILocation(line: 85, column: 47, scope: !5589)
!5608 = !DILocation(line: 85, column: 2, scope: !5589)
!5609 = !DILocation(line: 88, column: 16, scope: !5589)
!5610 = !DILocation(line: 88, column: 22, scope: !5589)
!5611 = !DILocation(line: 88, column: 2, scope: !5589)
!5612 = !DILocation(line: 91, column: 31, scope: !5589)
!5613 = !DILocation(line: 91, column: 2, scope: !5589)
!5614 = !DILocation(line: 91, column: 8, scope: !5589)
!5615 = !DILocation(line: 91, column: 24, scope: !5589)
!5616 = !DILocation(line: 91, column: 29, scope: !5589)
!5617 = !DILocation(line: 93, column: 1, scope: !5589)
!5618 = !DISubprogram(name: "_find_next_bit", scope: !4959, file: !4959, line: 11, type: !5552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5619 = distinct !DISubprogram(name: "irq_kobj_release", scope: !3, file: !3, line: 452, type: !548, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5620)
!5620 = !{!5621, !5622, !5623}
!5621 = !DILocalVariable(name: "kobj", arg: 1, scope: !5619, file: !3, line: 452, type: !453)
!5622 = !DILocalVariable(name: "desc", scope: !5619, file: !3, line: 454, type: !270)
!5623 = !DILocalVariable(name: "__mptr", scope: !5624, file: !3, line: 454, type: !249)
!5624 = distinct !DILexicalBlock(scope: !5619, file: !3, line: 454, column: 26)
!5625 = !DILocation(line: 452, column: 46, scope: !5619)
!5626 = !DILocation(line: 454, column: 2, scope: !5619)
!5627 = !DILocation(line: 454, column: 19, scope: !5619)
!5628 = !DILocation(line: 454, column: 26, scope: !5624)
!5629 = !DILocation(line: 454, column: 26, scope: !5619)
!5630 = !DILocation(line: 456, column: 13, scope: !5619)
!5631 = !DILocation(line: 456, column: 2, scope: !5619)
!5632 = !DILocation(line: 457, column: 14, scope: !5619)
!5633 = !DILocation(line: 457, column: 20, scope: !5619)
!5634 = !DILocation(line: 457, column: 2, scope: !5619)
!5635 = !DILocation(line: 458, column: 8, scope: !5619)
!5636 = !DILocation(line: 458, column: 2, scope: !5619)
!5637 = !DILocation(line: 459, column: 1, scope: !5619)
!5638 = distinct !DISubprogram(name: "free_masks", scope: !3, file: !3, line: 391, type: !2110, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5639)
!5639 = !{!5640}
!5640 = !DILocalVariable(name: "desc", arg: 1, scope: !5638, file: !3, line: 391, type: !270)
!5641 = !DILocation(line: 391, column: 41, scope: !5638)
!5642 = !DILocation(line: 394, column: 19, scope: !5638)
!5643 = !DILocation(line: 394, column: 25, scope: !5638)
!5644 = !DILocation(line: 394, column: 2, scope: !5638)
!5645 = !DILocation(line: 396, column: 19, scope: !5638)
!5646 = !DILocation(line: 396, column: 25, scope: !5638)
!5647 = !DILocation(line: 396, column: 41, scope: !5638)
!5648 = !DILocation(line: 396, column: 2, scope: !5638)
!5649 = !DILocation(line: 398, column: 19, scope: !5638)
!5650 = !DILocation(line: 398, column: 25, scope: !5638)
!5651 = !DILocation(line: 398, column: 41, scope: !5638)
!5652 = !DILocation(line: 398, column: 2, scope: !5638)
!5653 = !DILocation(line: 400, column: 1, scope: !5638)
!5654 = distinct !DISubprogram(name: "per_cpu_count_show", scope: !3, file: !3, line: 181, type: !3389, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5655)
!5655 = !{!5656, !5657, !5658, !5659, !5660, !5662, !5663, !5664, !5665}
!5656 = !DILocalVariable(name: "kobj", arg: 1, scope: !5654, file: !3, line: 181, type: !453)
!5657 = !DILocalVariable(name: "attr", arg: 2, scope: !5654, file: !3, line: 182, type: !3391)
!5658 = !DILocalVariable(name: "buf", arg: 3, scope: !5654, file: !3, line: 182, type: !528)
!5659 = !DILocalVariable(name: "desc", scope: !5654, file: !3, line: 184, type: !270)
!5660 = !DILocalVariable(name: "__mptr", scope: !5661, file: !3, line: 184, type: !249)
!5661 = distinct !DILexicalBlock(scope: !5654, file: !3, line: 184, column: 26)
!5662 = !DILocalVariable(name: "ret", scope: !5654, file: !3, line: 185, type: !560)
!5663 = !DILocalVariable(name: "p", scope: !5654, file: !3, line: 186, type: !528)
!5664 = !DILocalVariable(name: "cpu", scope: !5654, file: !3, line: 187, type: !53)
!5665 = !DILocalVariable(name: "c", scope: !5666, file: !3, line: 190, type: !7)
!5666 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 189, column: 29)
!5667 = distinct !DILexicalBlock(scope: !5668, file: !3, line: 189, column: 2)
!5668 = distinct !DILexicalBlock(scope: !5654, file: !3, line: 189, column: 2)
!5669 = !DILocation(line: 181, column: 51, scope: !5654)
!5670 = !DILocation(line: 182, column: 30, scope: !5654)
!5671 = !DILocation(line: 182, column: 42, scope: !5654)
!5672 = !DILocation(line: 184, column: 2, scope: !5654)
!5673 = !DILocation(line: 184, column: 19, scope: !5654)
!5674 = !DILocation(line: 184, column: 26, scope: !5661)
!5675 = !DILocation(line: 184, column: 26, scope: !5654)
!5676 = !DILocation(line: 185, column: 2, scope: !5654)
!5677 = !DILocation(line: 185, column: 10, scope: !5654)
!5678 = !DILocation(line: 186, column: 2, scope: !5654)
!5679 = !DILocation(line: 186, column: 8, scope: !5654)
!5680 = !DILocation(line: 187, column: 2, scope: !5654)
!5681 = !DILocation(line: 187, column: 6, scope: !5654)
!5682 = !DILocation(line: 189, column: 2, scope: !5668)
!5683 = !DILocation(line: 189, column: 2, scope: !5667)
!5684 = !DILocation(line: 190, column: 3, scope: !5666)
!5685 = !DILocation(line: 190, column: 16, scope: !5666)
!5686 = !DILocation(line: 190, column: 39, scope: !5666)
!5687 = !DILocation(line: 190, column: 45, scope: !5666)
!5688 = !DILocation(line: 190, column: 20, scope: !5666)
!5689 = !DILocation(line: 192, column: 20, scope: !5666)
!5690 = !DILocation(line: 192, column: 26, scope: !5666)
!5691 = !DILocation(line: 192, column: 24, scope: !5666)
!5692 = !DILocation(line: 192, column: 43, scope: !5666)
!5693 = !DILocation(line: 192, column: 41, scope: !5666)
!5694 = !DILocation(line: 192, column: 56, scope: !5666)
!5695 = !DILocation(line: 192, column: 59, scope: !5666)
!5696 = !DILocation(line: 192, column: 10, scope: !5666)
!5697 = !DILocation(line: 192, column: 7, scope: !5666)
!5698 = !DILocation(line: 193, column: 5, scope: !5666)
!5699 = !DILocation(line: 194, column: 2, scope: !5667)
!5700 = !DILocation(line: 194, column: 2, scope: !5666)
!5701 = distinct !{!5701, !5682, !5702, !3518, !3519}
!5702 = !DILocation(line: 194, column: 2, scope: !5668)
!5703 = !DILocation(line: 196, column: 19, scope: !5654)
!5704 = !DILocation(line: 196, column: 25, scope: !5654)
!5705 = !DILocation(line: 196, column: 23, scope: !5654)
!5706 = !DILocation(line: 196, column: 42, scope: !5654)
!5707 = !DILocation(line: 196, column: 40, scope: !5654)
!5708 = !DILocation(line: 196, column: 9, scope: !5654)
!5709 = !DILocation(line: 196, column: 6, scope: !5654)
!5710 = !DILocation(line: 197, column: 9, scope: !5654)
!5711 = !DILocation(line: 198, column: 1, scope: !5654)
!5712 = !DILocation(line: 197, column: 2, scope: !5654)
!5713 = distinct !DISubprogram(name: "irq_desc_kstat_cpu", scope: !272, file: !272, line: 119, type: !5714, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5716)
!5714 = !DISubroutineType(types: !5715)
!5715 = !{!7, !270, !7}
!5716 = !{!5717, !5718, !5719, !5722}
!5717 = !DILocalVariable(name: "desc", arg: 1, scope: !5713, file: !272, line: 119, type: !270)
!5718 = !DILocalVariable(name: "cpu", arg: 2, scope: !5713, file: !272, line: 120, type: !7)
!5719 = !DILocalVariable(name: "__vpp_verify", scope: !5720, file: !272, line: 122, type: !440)
!5720 = distinct !DILexicalBlock(scope: !5721, file: !272, line: 122, column: 29)
!5721 = distinct !DILexicalBlock(scope: !5713, file: !272, line: 122, column: 29)
!5722 = !DILocalVariable(name: "__ptr", scope: !5723, file: !272, line: 122, type: !259)
!5723 = distinct !DILexicalBlock(scope: !5721, file: !272, line: 122, column: 29)
!5724 = !DILocation(line: 119, column: 64, scope: !5713)
!5725 = !DILocation(line: 120, column: 25, scope: !5713)
!5726 = !DILocation(line: 122, column: 9, scope: !5713)
!5727 = !DILocation(line: 122, column: 15, scope: !5713)
!5728 = !DILocation(line: 122, column: 29, scope: !5721)
!5729 = !DILocation(line: 122, column: 29, scope: !5720)
!5730 = !DILocation(line: 122, column: 29, scope: !5723)
!5731 = !DILocation(line: 122, column: 28, scope: !5713)
!5732 = !DILocation(line: 122, column: 2, scope: !5713)
!5733 = !DISubprogram(name: "scnprintf", scope: !5734, file: !5734, line: 14, type: !5735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5734 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5735 = !DISubroutineType(types: !5736)
!5736 = !{!53, !528, !574, !304, null}
!5737 = distinct !DISubprogram(name: "chip_name_show", scope: !3, file: !3, line: 201, type: !3389, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5738)
!5738 = !{!5739, !5740, !5741, !5742, !5743, !5745}
!5739 = !DILocalVariable(name: "kobj", arg: 1, scope: !5737, file: !3, line: 201, type: !453)
!5740 = !DILocalVariable(name: "attr", arg: 2, scope: !5737, file: !3, line: 202, type: !3391)
!5741 = !DILocalVariable(name: "buf", arg: 3, scope: !5737, file: !3, line: 202, type: !528)
!5742 = !DILocalVariable(name: "desc", scope: !5737, file: !3, line: 204, type: !270)
!5743 = !DILocalVariable(name: "__mptr", scope: !5744, file: !3, line: 204, type: !249)
!5744 = distinct !DILexicalBlock(scope: !5737, file: !3, line: 204, column: 26)
!5745 = !DILocalVariable(name: "ret", scope: !5737, file: !3, line: 205, type: !560)
!5746 = !DILocation(line: 201, column: 47, scope: !5737)
!5747 = !DILocation(line: 202, column: 33, scope: !5737)
!5748 = !DILocation(line: 202, column: 45, scope: !5737)
!5749 = !DILocation(line: 204, column: 2, scope: !5737)
!5750 = !DILocation(line: 204, column: 19, scope: !5737)
!5751 = !DILocation(line: 204, column: 26, scope: !5744)
!5752 = !DILocation(line: 204, column: 26, scope: !5737)
!5753 = !DILocation(line: 205, column: 2, scope: !5737)
!5754 = !DILocation(line: 205, column: 10, scope: !5737)
!5755 = !DILocation(line: 207, column: 2, scope: !5737)
!5756 = !DILocation(line: 208, column: 6, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5737, file: !3, line: 208, column: 6)
!5758 = !DILocation(line: 208, column: 12, scope: !5757)
!5759 = !DILocation(line: 208, column: 21, scope: !5757)
!5760 = !DILocation(line: 208, column: 26, scope: !5757)
!5761 = !DILocation(line: 208, column: 29, scope: !5757)
!5762 = !DILocation(line: 208, column: 35, scope: !5757)
!5763 = !DILocation(line: 208, column: 44, scope: !5757)
!5764 = !DILocation(line: 208, column: 50, scope: !5757)
!5765 = !DILocation(line: 208, column: 6, scope: !5737)
!5766 = !DILocation(line: 209, column: 19, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5757, file: !3, line: 208, column: 56)
!5768 = !DILocation(line: 210, column: 5, scope: !5767)
!5769 = !DILocation(line: 210, column: 11, scope: !5767)
!5770 = !DILocation(line: 210, column: 20, scope: !5767)
!5771 = !DILocation(line: 210, column: 26, scope: !5767)
!5772 = !DILocation(line: 209, column: 9, scope: !5767)
!5773 = !DILocation(line: 209, column: 7, scope: !5767)
!5774 = !DILocation(line: 211, column: 2, scope: !5767)
!5775 = !DILocation(line: 212, column: 2, scope: !5737)
!5776 = !DILocation(line: 214, column: 9, scope: !5737)
!5777 = !DILocation(line: 215, column: 1, scope: !5737)
!5778 = !DILocation(line: 214, column: 2, scope: !5737)
!5779 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !4481, file: !4481, line: 29, type: !5780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5780 = !DISubroutineType(types: !5781)
!5781 = !{null, !4484}
!5782 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !4481, file: !4481, line: 41, type: !5780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5783 = distinct !DISubprogram(name: "hwirq_show", scope: !3, file: !3, line: 218, type: !3389, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5784)
!5784 = !{!5785, !5786, !5787, !5788, !5789, !5791}
!5785 = !DILocalVariable(name: "kobj", arg: 1, scope: !5783, file: !3, line: 218, type: !453)
!5786 = !DILocalVariable(name: "attr", arg: 2, scope: !5783, file: !3, line: 219, type: !3391)
!5787 = !DILocalVariable(name: "buf", arg: 3, scope: !5783, file: !3, line: 219, type: !528)
!5788 = !DILocalVariable(name: "desc", scope: !5783, file: !3, line: 221, type: !270)
!5789 = !DILocalVariable(name: "__mptr", scope: !5790, file: !3, line: 221, type: !249)
!5790 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 221, column: 26)
!5791 = !DILocalVariable(name: "ret", scope: !5783, file: !3, line: 222, type: !560)
!5792 = !DILocation(line: 218, column: 43, scope: !5783)
!5793 = !DILocation(line: 219, column: 29, scope: !5783)
!5794 = !DILocation(line: 219, column: 41, scope: !5783)
!5795 = !DILocation(line: 221, column: 2, scope: !5783)
!5796 = !DILocation(line: 221, column: 19, scope: !5783)
!5797 = !DILocation(line: 221, column: 26, scope: !5790)
!5798 = !DILocation(line: 221, column: 26, scope: !5783)
!5799 = !DILocation(line: 222, column: 2, scope: !5783)
!5800 = !DILocation(line: 222, column: 10, scope: !5783)
!5801 = !DILocation(line: 224, column: 2, scope: !5783)
!5802 = !DILocation(line: 225, column: 6, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 225, column: 6)
!5804 = !DILocation(line: 225, column: 12, scope: !5803)
!5805 = !DILocation(line: 225, column: 21, scope: !5803)
!5806 = !DILocation(line: 225, column: 6, scope: !5783)
!5807 = !DILocation(line: 226, column: 17, scope: !5803)
!5808 = !DILocation(line: 226, column: 31, scope: !5803)
!5809 = !DILocation(line: 226, column: 37, scope: !5803)
!5810 = !DILocation(line: 226, column: 46, scope: !5803)
!5811 = !DILocation(line: 226, column: 9, scope: !5803)
!5812 = !DILocation(line: 226, column: 7, scope: !5803)
!5813 = !DILocation(line: 226, column: 3, scope: !5803)
!5814 = !DILocation(line: 227, column: 2, scope: !5783)
!5815 = !DILocation(line: 229, column: 9, scope: !5783)
!5816 = !DILocation(line: 230, column: 1, scope: !5783)
!5817 = !DILocation(line: 229, column: 2, scope: !5783)
!5818 = !DISubprogram(name: "sprintf", scope: !5734, file: !5734, line: 10, type: !5819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5819 = !DISubroutineType(types: !5820)
!5820 = !{!53, !528, !304, null}
!5821 = distinct !DISubprogram(name: "type_show", scope: !3, file: !3, line: 233, type: !3389, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5822)
!5822 = !{!5823, !5824, !5825, !5826, !5827, !5829}
!5823 = !DILocalVariable(name: "kobj", arg: 1, scope: !5821, file: !3, line: 233, type: !453)
!5824 = !DILocalVariable(name: "attr", arg: 2, scope: !5821, file: !3, line: 234, type: !3391)
!5825 = !DILocalVariable(name: "buf", arg: 3, scope: !5821, file: !3, line: 234, type: !528)
!5826 = !DILocalVariable(name: "desc", scope: !5821, file: !3, line: 236, type: !270)
!5827 = !DILocalVariable(name: "__mptr", scope: !5828, file: !3, line: 236, type: !249)
!5828 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 236, column: 26)
!5829 = !DILocalVariable(name: "ret", scope: !5821, file: !3, line: 237, type: !560)
!5830 = !DILocation(line: 233, column: 42, scope: !5821)
!5831 = !DILocation(line: 234, column: 28, scope: !5821)
!5832 = !DILocation(line: 234, column: 40, scope: !5821)
!5833 = !DILocation(line: 236, column: 2, scope: !5821)
!5834 = !DILocation(line: 236, column: 19, scope: !5821)
!5835 = !DILocation(line: 236, column: 26, scope: !5828)
!5836 = !DILocation(line: 236, column: 26, scope: !5821)
!5837 = !DILocation(line: 237, column: 2, scope: !5821)
!5838 = !DILocation(line: 237, column: 10, scope: !5821)
!5839 = !DILocation(line: 239, column: 2, scope: !5821)
!5840 = !DILocation(line: 240, column: 16, scope: !5821)
!5841 = !DILocation(line: 241, column: 29, scope: !5821)
!5842 = !DILocation(line: 241, column: 35, scope: !5821)
!5843 = !DILocation(line: 241, column: 9, scope: !5821)
!5844 = !DILocation(line: 240, column: 8, scope: !5821)
!5845 = !DILocation(line: 240, column: 6, scope: !5821)
!5846 = !DILocation(line: 242, column: 2, scope: !5821)
!5847 = !DILocation(line: 244, column: 9, scope: !5821)
!5848 = !DILocation(line: 246, column: 1, scope: !5821)
!5849 = !DILocation(line: 244, column: 2, scope: !5821)
!5850 = distinct !DISubprogram(name: "irqd_is_level_type", scope: !111, file: !111, line: 302, type: !3848, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5851)
!5851 = !{!5852}
!5852 = !DILocalVariable(name: "d", arg: 1, scope: !5850, file: !111, line: 302, type: !310)
!5853 = !DILocation(line: 302, column: 56, scope: !5850)
!5854 = !DILocation(line: 304, column: 9, scope: !5850)
!5855 = !DILocation(line: 304, column: 28, scope: !5850)
!5856 = !DILocation(line: 304, column: 2, scope: !5850)
!5857 = distinct !DISubprogram(name: "wakeup_show", scope: !3, file: !3, line: 249, type: !3389, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5858)
!5858 = !{!5859, !5860, !5861, !5862, !5863, !5865}
!5859 = !DILocalVariable(name: "kobj", arg: 1, scope: !5857, file: !3, line: 249, type: !453)
!5860 = !DILocalVariable(name: "attr", arg: 2, scope: !5857, file: !3, line: 250, type: !3391)
!5861 = !DILocalVariable(name: "buf", arg: 3, scope: !5857, file: !3, line: 250, type: !528)
!5862 = !DILocalVariable(name: "desc", scope: !5857, file: !3, line: 252, type: !270)
!5863 = !DILocalVariable(name: "__mptr", scope: !5864, file: !3, line: 252, type: !249)
!5864 = distinct !DILexicalBlock(scope: !5857, file: !3, line: 252, column: 26)
!5865 = !DILocalVariable(name: "ret", scope: !5857, file: !3, line: 253, type: !560)
!5866 = !DILocation(line: 249, column: 44, scope: !5857)
!5867 = !DILocation(line: 250, column: 30, scope: !5857)
!5868 = !DILocation(line: 250, column: 42, scope: !5857)
!5869 = !DILocation(line: 252, column: 2, scope: !5857)
!5870 = !DILocation(line: 252, column: 19, scope: !5857)
!5871 = !DILocation(line: 252, column: 26, scope: !5864)
!5872 = !DILocation(line: 252, column: 26, scope: !5857)
!5873 = !DILocation(line: 253, column: 2, scope: !5857)
!5874 = !DILocation(line: 253, column: 10, scope: !5857)
!5875 = !DILocation(line: 255, column: 2, scope: !5857)
!5876 = !DILocation(line: 256, column: 16, scope: !5857)
!5877 = !DILocation(line: 257, column: 29, scope: !5857)
!5878 = !DILocation(line: 257, column: 35, scope: !5857)
!5879 = !DILocation(line: 257, column: 9, scope: !5857)
!5880 = !DILocation(line: 256, column: 8, scope: !5857)
!5881 = !DILocation(line: 256, column: 6, scope: !5857)
!5882 = !DILocation(line: 258, column: 2, scope: !5857)
!5883 = !DILocation(line: 260, column: 9, scope: !5857)
!5884 = !DILocation(line: 262, column: 1, scope: !5857)
!5885 = !DILocation(line: 260, column: 2, scope: !5857)
!5886 = distinct !DISubprogram(name: "irqd_is_wakeup_set", scope: !111, file: !111, line: 336, type: !3848, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5887)
!5887 = !{!5888}
!5888 = !DILocalVariable(name: "d", arg: 1, scope: !5886, file: !111, line: 336, type: !310)
!5889 = !DILocation(line: 336, column: 56, scope: !5886)
!5890 = !DILocation(line: 338, column: 9, scope: !5886)
!5891 = !DILocation(line: 338, column: 28, scope: !5886)
!5892 = !DILocation(line: 338, column: 2, scope: !5886)
!5893 = distinct !DISubprogram(name: "name_show", scope: !3, file: !3, line: 265, type: !3389, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5894)
!5894 = !{!5895, !5896, !5897, !5898, !5899, !5901}
!5895 = !DILocalVariable(name: "kobj", arg: 1, scope: !5893, file: !3, line: 265, type: !453)
!5896 = !DILocalVariable(name: "attr", arg: 2, scope: !5893, file: !3, line: 266, type: !3391)
!5897 = !DILocalVariable(name: "buf", arg: 3, scope: !5893, file: !3, line: 266, type: !528)
!5898 = !DILocalVariable(name: "desc", scope: !5893, file: !3, line: 268, type: !270)
!5899 = !DILocalVariable(name: "__mptr", scope: !5900, file: !3, line: 268, type: !249)
!5900 = distinct !DILexicalBlock(scope: !5893, file: !3, line: 268, column: 26)
!5901 = !DILocalVariable(name: "ret", scope: !5893, file: !3, line: 269, type: !560)
!5902 = !DILocation(line: 265, column: 42, scope: !5893)
!5903 = !DILocation(line: 266, column: 28, scope: !5893)
!5904 = !DILocation(line: 266, column: 40, scope: !5893)
!5905 = !DILocation(line: 268, column: 2, scope: !5893)
!5906 = !DILocation(line: 268, column: 19, scope: !5893)
!5907 = !DILocation(line: 268, column: 26, scope: !5900)
!5908 = !DILocation(line: 268, column: 26, scope: !5893)
!5909 = !DILocation(line: 269, column: 2, scope: !5893)
!5910 = !DILocation(line: 269, column: 10, scope: !5893)
!5911 = !DILocation(line: 271, column: 2, scope: !5893)
!5912 = !DILocation(line: 272, column: 6, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5893, file: !3, line: 272, column: 6)
!5914 = !DILocation(line: 272, column: 12, scope: !5913)
!5915 = !DILocation(line: 272, column: 6, scope: !5893)
!5916 = !DILocation(line: 273, column: 19, scope: !5913)
!5917 = !DILocation(line: 273, column: 43, scope: !5913)
!5918 = !DILocation(line: 273, column: 49, scope: !5913)
!5919 = !DILocation(line: 273, column: 9, scope: !5913)
!5920 = !DILocation(line: 273, column: 7, scope: !5913)
!5921 = !DILocation(line: 273, column: 3, scope: !5913)
!5922 = !DILocation(line: 274, column: 2, scope: !5893)
!5923 = !DILocation(line: 276, column: 9, scope: !5893)
!5924 = !DILocation(line: 277, column: 1, scope: !5893)
!5925 = !DILocation(line: 276, column: 2, scope: !5893)
!5926 = distinct !DISubprogram(name: "actions_show", scope: !3, file: !3, line: 280, type: !3389, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5927)
!5927 = !{!5928, !5929, !5930, !5931, !5932, !5934, !5935, !5936}
!5928 = !DILocalVariable(name: "kobj", arg: 1, scope: !5926, file: !3, line: 280, type: !453)
!5929 = !DILocalVariable(name: "attr", arg: 2, scope: !5926, file: !3, line: 281, type: !3391)
!5930 = !DILocalVariable(name: "buf", arg: 3, scope: !5926, file: !3, line: 281, type: !528)
!5931 = !DILocalVariable(name: "desc", scope: !5926, file: !3, line: 283, type: !270)
!5932 = !DILocalVariable(name: "__mptr", scope: !5933, file: !3, line: 283, type: !249)
!5933 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 283, column: 26)
!5934 = !DILocalVariable(name: "action", scope: !5926, file: !3, line: 284, type: !2139)
!5935 = !DILocalVariable(name: "ret", scope: !5926, file: !3, line: 285, type: !560)
!5936 = !DILocalVariable(name: "p", scope: !5926, file: !3, line: 286, type: !528)
!5937 = !DILocation(line: 280, column: 45, scope: !5926)
!5938 = !DILocation(line: 281, column: 31, scope: !5926)
!5939 = !DILocation(line: 281, column: 43, scope: !5926)
!5940 = !DILocation(line: 283, column: 2, scope: !5926)
!5941 = !DILocation(line: 283, column: 19, scope: !5926)
!5942 = !DILocation(line: 283, column: 26, scope: !5933)
!5943 = !DILocation(line: 283, column: 26, scope: !5926)
!5944 = !DILocation(line: 284, column: 2, scope: !5926)
!5945 = !DILocation(line: 284, column: 20, scope: !5926)
!5946 = !DILocation(line: 285, column: 2, scope: !5926)
!5947 = !DILocation(line: 285, column: 10, scope: !5926)
!5948 = !DILocation(line: 286, column: 2, scope: !5926)
!5949 = !DILocation(line: 286, column: 8, scope: !5926)
!5950 = !DILocation(line: 288, column: 2, scope: !5926)
!5951 = !DILocation(line: 289, column: 2, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 289, column: 2)
!5953 = !DILocation(line: 289, column: 2, scope: !5954)
!5954 = distinct !DILexicalBlock(scope: !5952, file: !3, line: 289, column: 2)
!5955 = !DILocation(line: 290, column: 20, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5954, file: !3, line: 289, column: 40)
!5957 = !DILocation(line: 290, column: 26, scope: !5956)
!5958 = !DILocation(line: 290, column: 24, scope: !5956)
!5959 = !DILocation(line: 290, column: 43, scope: !5956)
!5960 = !DILocation(line: 290, column: 41, scope: !5956)
!5961 = !DILocation(line: 291, column: 6, scope: !5956)
!5962 = !DILocation(line: 291, column: 9, scope: !5956)
!5963 = !DILocation(line: 291, column: 17, scope: !5956)
!5964 = !DILocation(line: 290, column: 10, scope: !5956)
!5965 = !DILocation(line: 290, column: 7, scope: !5956)
!5966 = !DILocation(line: 292, column: 5, scope: !5956)
!5967 = !DILocation(line: 293, column: 2, scope: !5956)
!5968 = distinct !{!5968, !5951, !5969, !3518, !3519}
!5969 = !DILocation(line: 293, column: 2, scope: !5952)
!5970 = !DILocation(line: 294, column: 2, scope: !5926)
!5971 = !DILocation(line: 296, column: 6, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 296, column: 6)
!5973 = !DILocation(line: 296, column: 6, scope: !5926)
!5974 = !DILocation(line: 297, column: 20, scope: !5972)
!5975 = !DILocation(line: 297, column: 26, scope: !5972)
!5976 = !DILocation(line: 297, column: 24, scope: !5972)
!5977 = !DILocation(line: 297, column: 43, scope: !5972)
!5978 = !DILocation(line: 297, column: 41, scope: !5972)
!5979 = !DILocation(line: 297, column: 10, scope: !5972)
!5980 = !DILocation(line: 297, column: 7, scope: !5972)
!5981 = !DILocation(line: 297, column: 3, scope: !5972)
!5982 = !DILocation(line: 299, column: 9, scope: !5926)
!5983 = !DILocation(line: 300, column: 1, scope: !5926)
!5984 = !DILocation(line: 299, column: 2, scope: !5926)
!5985 = !DISubprogram(name: "mas_store_gfp", scope: !653, file: !653, line: 465, type: !5986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5986 = !DISubroutineType(types: !5987)
!5987 = !{!53, !5988, !249, !250}
!5988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!5989 = distinct !DISubprogram(name: "irqd_is_handle_enforce_irqctx", scope: !111, file: !111, line: 326, type: !3848, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5990)
!5990 = !{!5991}
!5991 = !DILocalVariable(name: "d", arg: 1, scope: !5989, file: !111, line: 326, type: !310)
!5992 = !DILocation(line: 326, column: 67, scope: !5989)
!5993 = !DILocation(line: 328, column: 9, scope: !5989)
!5994 = !DILocation(line: 328, column: 28, scope: !5989)
!5995 = !DILocation(line: 328, column: 2, scope: !5989)
!5996 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !3912, file: !3912, line: 65, type: !3913, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5997 = !DILocation(line: 67, column: 9, scope: !5996)
!5998 = !DILocation(line: 67, column: 2, scope: !5996)
!5999 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !3912, file: !3912, line: 70, type: !1546, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6000 = !DILocation(line: 72, column: 2, scope: !5999)
!6001 = !DILocation(line: 73, column: 1, scope: !5999)
!6002 = distinct !DISubprogram(name: "native_save_fl", scope: !3912, file: !3912, line: 17, type: !3913, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6003)
!6003 = !{!6004}
!6004 = !DILocalVariable(name: "flags", scope: !6002, file: !3912, line: 19, type: !259)
!6005 = !DILocation(line: 19, column: 2, scope: !6002)
!6006 = !DILocation(line: 19, column: 16, scope: !6002)
!6007 = !DILocation(line: 26, column: 2, scope: !6002)
!6008 = !{i64 1943270, i64 1943291}
!6009 = !DILocation(line: 32, column: 9, scope: !6002)
!6010 = !DILocation(line: 33, column: 1, scope: !6002)
!6011 = !DILocation(line: 32, column: 2, scope: !6002)
!6012 = distinct !DISubprogram(name: "native_irq_disable", scope: !3912, file: !3912, line: 35, type: !1546, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6013 = !DILocation(line: 37, column: 2, scope: !6012)
!6014 = !{i64 1943474}
!6015 = !DILocation(line: 38, column: 1, scope: !6012)
!6016 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !3912, file: !3912, line: 120, type: !6017, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6019)
!6017 = !DISubroutineType(types: !6018)
!6018 = !{!53, !259}
!6019 = !{!6020}
!6020 = !DILocalVariable(name: "flags", arg: 1, scope: !6016, file: !3912, line: 120, type: !259)
!6021 = !DILocation(line: 120, column: 67, scope: !6016)
!6022 = !DILocation(line: 122, column: 11, scope: !6016)
!6023 = !DILocation(line: 122, column: 17, scope: !6016)
!6024 = !DILocation(line: 122, column: 9, scope: !6016)
!6025 = !DILocation(line: 122, column: 2, scope: !6016)
!6026 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !3912, file: !3912, line: 75, type: !1546, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6027 = !DILocation(line: 77, column: 2, scope: !6026)
!6028 = !DILocation(line: 78, column: 1, scope: !6026)
!6029 = distinct !DISubprogram(name: "native_irq_enable", scope: !3912, file: !3912, line: 40, type: !1546, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6030 = !DILocation(line: 42, column: 2, scope: !6029)
!6031 = !{i64 1943566}
!6032 = !DILocation(line: 43, column: 1, scope: !6029)
!6033 = !DISubprogram(name: "__irq_resolve_mapping", scope: !385, file: !385, line: 410, type: !6034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6034 = !DISubroutineType(types: !6035)
!6035 = !{!270, !383, !2011, !262}
!6036 = distinct !DISubprogram(name: "irq_remove_debugfs_entry", scope: !154, file: !154, line: 512, type: !2110, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6037)
!6037 = !{!6038}
!6038 = !DILocalVariable(name: "d", arg: 1, scope: !6036, file: !154, line: 512, type: !270)
!6039 = !DILocation(line: 512, column: 62, scope: !6036)
!6040 = !DILocation(line: 514, column: 1, scope: !6036)
!6041 = !DISubprogram(name: "unregister_irq_proc", scope: !154, file: !154, line: 126, type: !3739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6042 = distinct !DISubprogram(name: "irq_sysfs_del", scope: !3, file: !3, line: 336, type: !2110, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6043)
!6043 = !{!6044}
!6044 = !DILocalVariable(name: "desc", arg: 1, scope: !6042, file: !3, line: 336, type: !270)
!6045 = !DILocation(line: 336, column: 44, scope: !6042)
!6046 = !DILocation(line: 344, column: 6, scope: !6047)
!6047 = distinct !DILexicalBlock(scope: !6042, file: !3, line: 344, column: 6)
!6048 = !DILocation(line: 344, column: 12, scope: !6047)
!6049 = !DILocation(line: 344, column: 19, scope: !6047)
!6050 = !DILocation(line: 344, column: 6, scope: !6042)
!6051 = !DILocation(line: 345, column: 16, scope: !6047)
!6052 = !DILocation(line: 345, column: 22, scope: !6047)
!6053 = !DILocation(line: 345, column: 3, scope: !6047)
!6054 = !DILocation(line: 346, column: 1, scope: !6042)
!6055 = distinct !DISubprogram(name: "delete_irq_desc", scope: !3, file: !3, line: 165, type: !4071, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6056)
!6056 = !{!6057, !6058}
!6057 = !DILocalVariable(name: "irq", arg: 1, scope: !6055, file: !3, line: 165, type: !7)
!6058 = !DILocalVariable(name: "mas", scope: !6055, file: !3, line: 167, type: !3745)
!6059 = !DILocation(line: 165, column: 42, scope: !6055)
!6060 = !DILocation(line: 167, column: 2, scope: !6055)
!6061 = !DILocation(line: 168, column: 2, scope: !6055)
!6062 = !DILocation(line: 169, column: 1, scope: !6055)
!6063 = !DISubprogram(name: "call_rcu", scope: !4377, file: !4377, line: 42, type: !6064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6064 = !DISubroutineType(types: !6065)
!6065 = !{null, !635, !6066}
!6066 = !DIDerivedType(tag: DW_TAG_typedef, name: "rcu_callback_t", file: !251, line: 238, baseType: !637)
!6067 = distinct !DISubprogram(name: "delayed_free_desc", scope: !3, file: !3, line: 461, type: !638, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6068)
!6068 = !{!6069, !6070, !6071}
!6069 = !DILocalVariable(name: "rhp", arg: 1, scope: !6067, file: !3, line: 461, type: !635)
!6070 = !DILocalVariable(name: "desc", scope: !6067, file: !3, line: 463, type: !270)
!6071 = !DILocalVariable(name: "__mptr", scope: !6072, file: !3, line: 463, type: !249)
!6072 = distinct !DILexicalBlock(scope: !6067, file: !3, line: 463, column: 26)
!6073 = !DILocation(line: 461, column: 48, scope: !6067)
!6074 = !DILocation(line: 463, column: 2, scope: !6067)
!6075 = !DILocation(line: 463, column: 19, scope: !6067)
!6076 = !DILocation(line: 463, column: 26, scope: !6072)
!6077 = !DILocation(line: 463, column: 26, scope: !6067)
!6078 = !DILocation(line: 465, column: 15, scope: !6067)
!6079 = !DILocation(line: 465, column: 21, scope: !6067)
!6080 = !DILocation(line: 465, column: 2, scope: !6067)
!6081 = !DILocation(line: 466, column: 1, scope: !6067)
!6082 = !DISubprogram(name: "kobject_del", scope: !448, file: !448, line: 101, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6083 = !DISubprogram(name: "mas_erase", scope: !653, file: !653, line: 464, type: !6084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6084 = !DISubroutineType(types: !6085)
!6085 = !{!249, !5988}
!6086 = !DISubprogram(name: "kobject_put", scope: !448, file: !448, line: 110, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6087 = !DISubprogram(name: "mas_empty_area", scope: !653, file: !653, line: 485, type: !6088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6088 = !DISubroutineType(types: !6089)
!6089 = !{!53, !5988, !259, !259, !259}
!6090 = distinct !DISubprogram(name: "cpu_to_node", scope: !6091, file: !6091, line: 94, type: !6092, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6094)
!6091 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc15680d35900f366282ea60d185adfa")
!6092 = !DISubroutineType(types: !6093)
!6093 = !{!53, !53}
!6094 = !{!6095, !6096, !6099}
!6095 = !DILocalVariable(name: "cpu", arg: 1, scope: !6090, file: !6091, line: 94, type: !53)
!6096 = !DILocalVariable(name: "__vpp_verify", scope: !6097, file: !6091, line: 96, type: !440)
!6097 = distinct !DILexicalBlock(scope: !6098, file: !6091, line: 96, column: 9)
!6098 = distinct !DILexicalBlock(scope: !6090, file: !6091, line: 96, column: 9)
!6099 = !DILocalVariable(name: "__ptr", scope: !6100, file: !6091, line: 96, type: !259)
!6100 = distinct !DILexicalBlock(scope: !6098, file: !6091, line: 96, column: 9)
!6101 = !DILocation(line: 94, column: 35, scope: !6090)
!6102 = !DILocation(line: 96, column: 9, scope: !6098)
!6103 = !DILocation(line: 96, column: 9, scope: !6097)
!6104 = !DILocation(line: 96, column: 9, scope: !6100)
!6105 = !DILocation(line: 96, column: 9, scope: !6090)
!6106 = !DILocation(line: 96, column: 2, scope: !6090)
!6107 = distinct !DISubprogram(name: "cpumask_first", scope: !255, file: !255, line: 160, type: !6108, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6110)
!6108 = !DISubroutineType(types: !6109)
!6109 = !{!7, !252}
!6110 = !{!6111}
!6111 = !DILocalVariable(name: "srcp", arg: 1, scope: !6107, file: !255, line: 160, type: !252)
!6112 = !DILocation(line: 160, column: 64, scope: !6107)
!6113 = !DILocation(line: 162, column: 24, scope: !6107)
!6114 = !DILocation(line: 162, column: 9, scope: !6107)
!6115 = !DILocation(line: 162, column: 2, scope: !6107)
!6116 = distinct !DISubprogram(name: "irq_add_debugfs_entry", scope: !154, file: !154, line: 509, type: !3739, scopeLine: 510, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6117)
!6117 = !{!6118, !6119}
!6118 = !DILocalVariable(name: "irq", arg: 1, scope: !6116, file: !154, line: 509, type: !7)
!6119 = !DILocalVariable(name: "d", arg: 2, scope: !6116, file: !154, line: 509, type: !270)
!6120 = !DILocation(line: 509, column: 55, scope: !6116)
!6121 = !DILocation(line: 509, column: 77, scope: !6116)
!6122 = !DILocation(line: 511, column: 1, scope: !6116)
!6123 = distinct !DISubprogram(name: "class_rcu_constructor", scope: !4377, file: !4377, line: 1098, type: !6124, scopeLine: 1098, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6126)
!6124 = !DISubroutineType(types: !6125)
!6125 = !{!4376}
!6126 = !{!6127, !6128}
!6127 = !DILocalVariable(name: "_t", scope: !6123, file: !4377, line: 1098, type: !4376)
!6128 = !DILocalVariable(name: "_T", scope: !6123, file: !4377, line: 1098, type: !6129)
!6129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!6130 = !DILocation(line: 1098, column: 1, scope: !6123)
!6131 = distinct !DISubprogram(name: "class_rcu_destructor", scope: !4377, file: !4377, line: 1098, type: !6132, scopeLine: 1098, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6134)
!6132 = !DISubroutineType(types: !6133)
!6133 = !{null, !6129}
!6134 = !{!6135}
!6135 = !DILocalVariable(name: "_T", arg: 1, scope: !6131, file: !4377, line: 1098, type: !6129)
!6136 = !DILocation(line: 1098, column: 1, scope: !6131)
!6137 = !DILocation(line: 1098, column: 1, scope: !6138)
!6138 = distinct !DILexicalBlock(scope: !6131, file: !4377, line: 1098, column: 1)
!6139 = !DILocation(line: 1098, column: 1, scope: !6140)
!6140 = distinct !DILexicalBlock(scope: !6138, file: !4377, line: 1098, column: 1)
!6141 = !DISubprogram(name: "mt_find", scope: !653, file: !653, line: 689, type: !6142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6142 = !DISubroutineType(types: !6143)
!6143 = !{!249, !3535, !1532, !259}
!6144 = distinct !DISubprogram(name: "irq_desc_get_irq", scope: !272, file: !272, line: 130, type: !6145, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6147)
!6145 = !DISubroutineType(types: !6146)
!6146 = !{!7, !270}
!6147 = !{!6148}
!6148 = !DILocalVariable(name: "desc", arg: 1, scope: !6144, file: !272, line: 130, type: !270)
!6149 = !DILocation(line: 130, column: 62, scope: !6144)
!6150 = !DILocation(line: 132, column: 9, scope: !6144)
!6151 = !DILocation(line: 132, column: 15, scope: !6144)
!6152 = !DILocation(line: 132, column: 24, scope: !6144)
!6153 = !DILocation(line: 132, column: 2, scope: !6144)
!6154 = distinct !DISubprogram(name: "kmalloc", scope: !168, file: !168, line: 591, type: !4571, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6155)
!6155 = !{!6156, !6157, !6158}
!6156 = !DILocalVariable(name: "size", arg: 1, scope: !6154, file: !168, line: 591, type: !574)
!6157 = !DILocalVariable(name: "flags", arg: 2, scope: !6154, file: !168, line: 591, type: !250)
!6158 = !DILocalVariable(name: "index", scope: !6159, file: !168, line: 594, type: !7)
!6159 = distinct !DILexicalBlock(scope: !6160, file: !168, line: 593, column: 42)
!6160 = distinct !DILexicalBlock(scope: !6154, file: !168, line: 593, column: 6)
!6161 = !DILocation(line: 591, column: 61, scope: !6154)
!6162 = !DILocation(line: 591, column: 73, scope: !6154)
!6163 = !DILocation(line: 593, column: 27, scope: !6160)
!6164 = !DILocation(line: 593, column: 6, scope: !6160)
!6165 = !DILocation(line: 593, column: 33, scope: !6160)
!6166 = !DILocation(line: 593, column: 36, scope: !6160)
!6167 = !DILocation(line: 593, column: 6, scope: !6154)
!6168 = !DILocation(line: 594, column: 3, scope: !6159)
!6169 = !DILocation(line: 594, column: 16, scope: !6159)
!6170 = !DILocation(line: 596, column: 7, scope: !6171)
!6171 = distinct !DILexicalBlock(scope: !6159, file: !168, line: 596, column: 7)
!6172 = !DILocation(line: 596, column: 12, scope: !6171)
!6173 = !DILocation(line: 596, column: 7, scope: !6159)
!6174 = !DILocation(line: 597, column: 25, scope: !6171)
!6175 = !DILocation(line: 597, column: 31, scope: !6171)
!6176 = !DILocation(line: 597, column: 11, scope: !6171)
!6177 = !DILocation(line: 597, column: 4, scope: !6171)
!6178 = !DILocation(line: 599, column: 11, scope: !6159)
!6179 = !DILocation(line: 599, column: 9, scope: !6159)
!6180 = !DILocation(line: 601, column: 33, scope: !6159)
!6181 = !DILocation(line: 601, column: 40, scope: !6159)
!6182 = !DILocation(line: 601, column: 20, scope: !6159)
!6183 = !DILocation(line: 601, column: 5, scope: !6159)
!6184 = !DILocation(line: 601, column: 51, scope: !6159)
!6185 = !DILocation(line: 602, column: 5, scope: !6159)
!6186 = !DILocation(line: 602, column: 12, scope: !6159)
!6187 = !DILocation(line: 600, column: 10, scope: !6159)
!6188 = !DILocation(line: 600, column: 3, scope: !6159)
!6189 = !DILocation(line: 603, column: 2, scope: !6160)
!6190 = !DILocation(line: 604, column: 19, scope: !6154)
!6191 = !DILocation(line: 604, column: 25, scope: !6154)
!6192 = !DILocation(line: 604, column: 9, scope: !6154)
!6193 = !DILocation(line: 604, column: 2, scope: !6154)
!6194 = !DILocation(line: 605, column: 1, scope: !6154)
!6195 = !DISubprogram(name: "kmalloc_large", scope: !168, file: !168, line: 531, type: !4571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6196 = !DISubprogram(name: "kmalloc_trace", scope: !168, file: !168, line: 525, type: !6197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6197 = !DISubroutineType(types: !6198)
!6198 = !{!249, !5485, !250, !574}
!6199 = !DISubprogram(name: "__kmalloc", scope: !168, file: !168, line: 488, type: !4571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6200 = distinct !DISubprogram(name: "irq_set_status_flags", scope: !111, file: !111, line: 760, type: !6201, scopeLine: 761, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6203)
!6201 = !DISubroutineType(types: !6202)
!6202 = !{null, !7, !259}
!6203 = !{!6204, !6205}
!6204 = !DILocalVariable(name: "irq", arg: 1, scope: !6200, file: !111, line: 760, type: !7)
!6205 = !DILocalVariable(name: "set", arg: 2, scope: !6200, file: !111, line: 760, type: !259)
!6206 = !DILocation(line: 760, column: 54, scope: !6200)
!6207 = !DILocation(line: 760, column: 73, scope: !6200)
!6208 = !DILocation(line: 762, column: 20, scope: !6200)
!6209 = !DILocation(line: 762, column: 28, scope: !6200)
!6210 = !DILocation(line: 762, column: 2, scope: !6200)
!6211 = !DILocation(line: 763, column: 1, scope: !6200)
!6212 = !DISubprogram(name: "irq_modify_status", scope: !111, file: !111, line: 758, type: !6213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6213 = !DISubroutineType(types: !6214)
!6214 = !{null, !7, !259, !259}
!6215 = distinct !DISubprogram(name: "bitmap_copy", scope: !4824, file: !4824, line: 266, type: !6216, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6218)
!6216 = !DISubroutineType(types: !6217)
!6217 = !{null, !1532, !4962, !7}
!6218 = !{!6219, !6220, !6221, !6222}
!6219 = !DILocalVariable(name: "dst", arg: 1, scope: !6215, file: !4824, line: 266, type: !1532)
!6220 = !DILocalVariable(name: "src", arg: 2, scope: !6215, file: !4824, line: 266, type: !4962)
!6221 = !DILocalVariable(name: "nbits", arg: 3, scope: !6215, file: !4824, line: 267, type: !7)
!6222 = !DILocalVariable(name: "len", scope: !6215, file: !4824, line: 269, type: !7)
!6223 = !DILocation(line: 266, column: 47, scope: !6215)
!6224 = !DILocation(line: 266, column: 73, scope: !6215)
!6225 = !DILocation(line: 267, column: 17, scope: !6215)
!6226 = !DILocation(line: 269, column: 2, scope: !6215)
!6227 = !DILocation(line: 269, column: 15, scope: !6215)
!6228 = !DILocation(line: 269, column: 21, scope: !6215)
!6229 = !DILocation(line: 271, column: 6, scope: !6230)
!6230 = distinct !DILexicalBlock(scope: !6215, file: !4824, line: 271, column: 6)
!6231 = !DILocation(line: 271, column: 6, scope: !6215)
!6232 = !DILocation(line: 272, column: 11, scope: !6230)
!6233 = !DILocation(line: 272, column: 10, scope: !6230)
!6234 = !DILocation(line: 272, column: 4, scope: !6230)
!6235 = !DILocation(line: 272, column: 8, scope: !6230)
!6236 = !DILocation(line: 272, column: 3, scope: !6230)
!6237 = !DILocation(line: 274, column: 10, scope: !6230)
!6238 = !DILocation(line: 274, column: 15, scope: !6230)
!6239 = !DILocation(line: 274, column: 20, scope: !6230)
!6240 = !DILocation(line: 274, column: 3, scope: !6230)
!6241 = !DILocation(line: 275, column: 1, scope: !6215)
!6242 = distinct !DISubprogram(name: "__kstat_incr_irqs_this_cpu", scope: !154, file: !154, line: 259, type: !2110, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6243)
!6243 = !{!6244, !6245, !6249, !6251, !6255}
!6244 = !DILocalVariable(name: "desc", arg: 1, scope: !6242, file: !154, line: 259, type: !270)
!6245 = !DILocalVariable(name: "__vpp_verify", scope: !6246, file: !154, line: 261, type: !440)
!6246 = distinct !DILexicalBlock(scope: !6247, file: !154, line: 261, column: 2)
!6247 = distinct !DILexicalBlock(scope: !6248, file: !154, line: 261, column: 2)
!6248 = distinct !DILexicalBlock(scope: !6242, file: !154, line: 261, column: 2)
!6249 = !DILocalVariable(name: "pao_ID__", scope: !6250, file: !154, line: 261, type: !1399)
!6250 = distinct !DILexicalBlock(scope: !6247, file: !154, line: 261, column: 2)
!6251 = !DILocalVariable(name: "__vpp_verify", scope: !6252, file: !154, line: 262, type: !440)
!6252 = distinct !DILexicalBlock(scope: !6253, file: !154, line: 262, column: 2)
!6253 = distinct !DILexicalBlock(scope: !6254, file: !154, line: 262, column: 2)
!6254 = distinct !DILexicalBlock(scope: !6242, file: !154, line: 262, column: 2)
!6255 = !DILocalVariable(name: "pao_ID__", scope: !6256, file: !154, line: 262, type: !1399)
!6256 = distinct !DILexicalBlock(scope: !6253, file: !154, line: 262, column: 2)
!6257 = !DILocation(line: 259, column: 64, scope: !6242)
!6258 = !DILocation(line: 261, column: 2, scope: !6248)
!6259 = !DILocation(line: 261, column: 2, scope: !6247)
!6260 = !DILocation(line: 261, column: 2, scope: !6246)
!6261 = !DILocation(line: 261, column: 2, scope: !6250)
!6262 = !DILocation(line: 261, column: 2, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !6264, file: !154, line: 261, column: 2)
!6264 = distinct !DILexicalBlock(scope: !6250, file: !154, line: 261, column: 2)
!6265 = !{i64 2153221157}
!6266 = !DILocation(line: 262, column: 2, scope: !6254)
!6267 = !DILocation(line: 262, column: 2, scope: !6253)
!6268 = !DILocation(line: 262, column: 2, scope: !6252)
!6269 = !DILocation(line: 262, column: 2, scope: !6256)
!6270 = !DILocation(line: 262, column: 2, scope: !6271)
!6271 = distinct !DILexicalBlock(scope: !6272, file: !154, line: 262, column: 2)
!6272 = distinct !DILexicalBlock(scope: !6256, file: !154, line: 262, column: 2)
!6273 = !{i64 2153231738}
!6274 = !DILocation(line: 263, column: 1, scope: !6242)
!6275 = !DISubprogram(name: "__rcu_read_lock", scope: !4377, file: !4377, line: 74, type: !1546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6276 = distinct !DISubprogram(name: "irq_settings_is_per_cpu", scope: !178, file: !178, line: 48, type: !4457, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6277)
!6277 = !{!6278}
!6278 = !DILocalVariable(name: "desc", arg: 1, scope: !6276, file: !178, line: 48, type: !270)
!6279 = !DILocation(line: 48, column: 61, scope: !6276)
!6280 = !DILocation(line: 50, column: 9, scope: !6276)
!6281 = !DILocation(line: 50, column: 15, scope: !6276)
!6282 = !DILocation(line: 50, column: 36, scope: !6276)
!6283 = !DILocation(line: 50, column: 2, scope: !6276)
!6284 = distinct !DISubprogram(name: "irq_is_nmi", scope: !3, file: !3, line: 963, type: !4457, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6285)
!6285 = !{!6286}
!6286 = !DILocalVariable(name: "desc", arg: 1, scope: !6284, file: !3, line: 963, type: !270)
!6287 = !DILocation(line: 963, column: 41, scope: !6284)
!6288 = !DILocation(line: 965, column: 9, scope: !6284)
!6289 = !DILocation(line: 965, column: 15, scope: !6284)
!6290 = !DILocation(line: 965, column: 22, scope: !6284)
!6291 = !DILocation(line: 965, column: 2, scope: !6284)
!6292 = distinct !DISubprogram(name: "__kcsan_disable_current", scope: !4905, file: !4905, line: 232, type: !1546, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6293 = !DILocation(line: 232, column: 52, scope: !6292)
!6294 = distinct !DISubprogram(name: "__kcsan_enable_current", scope: !4905, file: !4905, line: 231, type: !1546, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6295 = !DILocation(line: 231, column: 52, scope: !6294)
!6296 = !DISubprogram(name: "__rcu_read_unlock", scope: !4377, file: !4377, line: 75, type: !1546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
