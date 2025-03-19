; ModuleID = 'kernel/cgroup/rdma.c'
source_filename = "kernel/cgroup/rdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rdmacg_uncharge: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rdmacg_uncharge ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rdmacg_try_charge: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rdmacg_try_charge ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rdmacg_register_device: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rdmacg_register_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rdmacg_unregister_device: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rdmacg_unregister_device ; .previous"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cftype = type { [64 x i8], i64, i64, i32, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cgroup_subsys = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, %struct.idr, %struct.list_head, ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.rdma_cgroup = type { %struct.cgroup_subsys_state, %struct.list_head }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i64, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rdmacg_resource_pool = type { ptr, [2 x %struct.rdmacg_resource], %struct.list_head, %struct.list_head, i64, i32 }
%struct.rdmacg_resource = type { i32, i32 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.percpu_ref_data = type { %struct.atomic64_t, ptr, ptr, i8, %struct.callback_head, ptr }
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
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.css_set = type { [14 x ptr], %struct.refcount_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, [14 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i8, %struct.callback_head }
%struct.seq_file = type { ptr, i64, i64, i64, i64, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.kernfs_open_file = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, %struct.list_head, ptr, i64, i8, ptr }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.15, ptr, i64, i16, i16, ptr, %struct.callback_head }
%union.anon.15 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, ptr, i64 }
%struct.substring_t = type { ptr, ptr }

@__UNIQUE_ID___addressable_rdmacg_uncharge264 = internal global ptr @rdmacg_uncharge, section ".discard.addressable", align 8, !dbg !0
@rdmacg_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rdmacg_mutex, i64 16), ptr getelementptr (i8, ptr @rdmacg_mutex, i64 16) } }, align 8, !dbg !3948
@__UNIQUE_ID___addressable_rdmacg_try_charge265 = internal global ptr @rdmacg_try_charge, section ".discard.addressable", align 8, !dbg !3930
@rdmacg_devices = internal global %struct.list_head { ptr @rdmacg_devices, ptr @rdmacg_devices }, align 8, !dbg !3952
@__UNIQUE_ID___addressable_rdmacg_register_device266 = internal global ptr @rdmacg_register_device, section ".discard.addressable", align 8, !dbg !3932
@__UNIQUE_ID___addressable_rdmacg_unregister_device267 = internal global ptr @rdmacg_unregister_device, section ".discard.addressable", align 8, !dbg !3934
@rdmacg_files = internal global [3 x %struct.cftype] [%struct.cftype { [64 x i8] c"max\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rdmacg_resource_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rdmacg_resource_set_max, ptr null }, %struct.cftype { [64 x i8] c"current\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 1, i64 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rdmacg_resource_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.cftype zeroinitializer], align 16, !dbg !3954
@rdma_cgrp_subsys = hidden global %struct.cgroup_subsys { ptr @rdmacg_css_alloc, ptr null, ptr @rdmacg_css_offline, ptr null, ptr @rdmacg_css_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, %struct.idr zeroinitializer, %struct.list_head zeroinitializer, ptr @rdmacg_files, ptr @rdmacg_files, i32 0 }, align 8, !dbg !3936
@.str = private unnamed_addr constant [39 x i8] c"\014Invalid device %p or rdma cgroup %p\0A\00", align 1, !dbg !3938
@.str.1 = private unnamed_addr constant [21 x i8] c"kernel/cgroup/rdma.c\00", align 1, !dbg !3943
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3950
@.str.3 = private unnamed_addr constant [4 x i8] c"%s \00", align 1, !dbg !3957
@rdmacg_resource_names = internal global [2 x ptr] [ptr @.str.6, ptr @.str.7], align 16, !dbg !3972
@.str.4 = private unnamed_addr constant [4 x i8] c"max\00", align 1, !dbg !3960
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !3962
@.str.6 = private unnamed_addr constant [11 x i8] c"hca_handle\00", align 1, !dbg !3965
@.str.7 = private unnamed_addr constant [11 x i8] c"hca_object\00", align 1, !dbg !3970
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !3975
@.str.9 = private unnamed_addr constant [2 x i8] c"=\00", align 1, !dbg !3978
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_rdmacg_uncharge264, ptr @__UNIQUE_ID___addressable_rdmacg_try_charge265, ptr @__UNIQUE_ID___addressable_rdmacg_register_device266, ptr @__UNIQUE_ID___addressable_rdmacg_unregister_device267], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rdmacg_uncharge(ptr noundef %cg, ptr noundef %device, i32 noundef %index) #0 align 16 !dbg !3989 {
entry:
  %cg.addr = alloca ptr, align 8
  %device.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  store ptr %cg, ptr %cg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cg.addr, metadata !3993, metadata !DIExpression()), !dbg !3996
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !3994, metadata !DIExpression()), !dbg !3997
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !3995, metadata !DIExpression()), !dbg !3998
  %0 = load i32, ptr %index.addr, align 4, !dbg !3999
  %cmp = icmp uge i32 %0, 2, !dbg !4001
  br i1 %cmp, label %if.then, label %if.end, !dbg !4002

if.then:                                          ; preds = %entry
  br label %return, !dbg !4003

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %cg.addr, align 8, !dbg !4004
  %2 = load ptr, ptr %device.addr, align 8, !dbg !4005
  %3 = load i32, ptr %index.addr, align 4, !dbg !4006
  call void @rdmacg_uncharge_hierarchy(ptr noundef %1, ptr noundef %2, ptr noundef null, i32 noundef %3) #16, !dbg !4007
  br label %return, !dbg !4008

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4008
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rdmacg_uncharge_hierarchy(ptr noundef %cg, ptr noundef %device, ptr noundef %stop_cg, i32 noundef %index) #0 align 16 !dbg !4009 {
entry:
  %cg.addr = alloca ptr, align 8
  %device.addr = alloca ptr, align 8
  %stop_cg.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %cg, ptr %cg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cg.addr, metadata !4013, metadata !DIExpression()), !dbg !4018
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !4014, metadata !DIExpression()), !dbg !4019
  store ptr %stop_cg, ptr %stop_cg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stop_cg.addr, metadata !4015, metadata !DIExpression()), !dbg !4020
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !4016, metadata !DIExpression()), !dbg !4021
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !4022
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4017, metadata !DIExpression()), !dbg !4023
  call void @mutex_lock(ptr noundef @rdmacg_mutex) #16, !dbg !4024
  %0 = load ptr, ptr %cg.addr, align 8, !dbg !4025
  store ptr %0, ptr %p, align 8, !dbg !4027
  br label %for.cond, !dbg !4028

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %p, align 8, !dbg !4029
  %2 = load ptr, ptr %stop_cg.addr, align 8, !dbg !4031
  %cmp = icmp ne ptr %1, %2, !dbg !4032
  br i1 %cmp, label %for.body, label %for.end, !dbg !4033

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %p, align 8, !dbg !4034
  %4 = load ptr, ptr %device.addr, align 8, !dbg !4035
  %5 = load i32, ptr %index.addr, align 4, !dbg !4036
  call void @uncharge_cg_locked(ptr noundef %3, ptr noundef %4, i32 noundef %5) #16, !dbg !4037
  br label %for.inc, !dbg !4037

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %p, align 8, !dbg !4038
  %call = call ptr @parent_rdmacg(ptr noundef %6) #16, !dbg !4039
  store ptr %call, ptr %p, align 8, !dbg !4040
  br label %for.cond, !dbg !4041, !llvm.loop !4042

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @rdmacg_mutex) #16, !dbg !4046
  %7 = load ptr, ptr %cg.addr, align 8, !dbg !4047
  %css = getelementptr inbounds %struct.rdma_cgroup, ptr %7, i32 0, i32 0, !dbg !4048
  call void @css_put(ptr noundef %css) #16, !dbg !4049
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !4050
  ret void, !dbg !4050
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rdmacg_try_charge(ptr noundef %rdmacg, ptr noundef %device, i32 noundef %index) #0 align 16 !dbg !4051 {
entry:
  %retval = alloca i32, align 4
  %rdmacg.addr = alloca ptr, align 8
  %device.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %cg = alloca ptr, align 8
  %p = alloca ptr, align 8
  %rpool = alloca ptr, align 8
  %new = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rdmacg, ptr %rdmacg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rdmacg.addr, metadata !4056, metadata !DIExpression()), !dbg !4065
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !4057, metadata !DIExpression()), !dbg !4066
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !4058, metadata !DIExpression()), !dbg !4067
  call void @llvm.lifetime.start.p0(i64 8, ptr %cg) #17, !dbg !4068
  call void @llvm.dbg.declare(metadata ptr %cg, metadata !4059, metadata !DIExpression()), !dbg !4069
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !4068
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4060, metadata !DIExpression()), !dbg !4070
  call void @llvm.lifetime.start.p0(i64 8, ptr %rpool) #17, !dbg !4071
  call void @llvm.dbg.declare(metadata ptr %rpool, metadata !4061, metadata !DIExpression()), !dbg !4072
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #17, !dbg !4073
  call void @llvm.dbg.declare(metadata ptr %new, metadata !4062, metadata !DIExpression()), !dbg !4074
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !4075
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4063, metadata !DIExpression()), !dbg !4076
  store i32 0, ptr %ret, align 4, !dbg !4076
  %0 = load i32, ptr %index.addr, align 4, !dbg !4077
  %cmp = icmp uge i32 %0, 2, !dbg !4079
  br i1 %cmp, label %if.then, label %if.end, !dbg !4080

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4081
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4081

if.end:                                           ; preds = %entry
  %call = call ptr @get_current_rdmacg() #16, !dbg !4082
  store ptr %call, ptr %cg, align 8, !dbg !4083
  call void @mutex_lock(ptr noundef @rdmacg_mutex) #16, !dbg !4084
  %1 = load ptr, ptr %cg, align 8, !dbg !4085
  store ptr %1, ptr %p, align 8, !dbg !4087
  br label %for.cond, !dbg !4088

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load ptr, ptr %p, align 8, !dbg !4089
  %tobool = icmp ne ptr %2, null, !dbg !4091
  br i1 %tobool, label %for.body, label %for.end, !dbg !4091

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %p, align 8, !dbg !4092
  %4 = load ptr, ptr %device.addr, align 8, !dbg !4094
  %call1 = call ptr @get_cg_rpool_locked(ptr noundef %3, ptr noundef %4) #16, !dbg !4095
  store ptr %call1, ptr %rpool, align 8, !dbg !4096
  %5 = load ptr, ptr %rpool, align 8, !dbg !4097
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %5) #16, !dbg !4099
  br i1 %call2, label %if.then3, label %if.else, !dbg !4100

if.then3:                                         ; preds = %for.body
  %6 = load ptr, ptr %rpool, align 8, !dbg !4101
  %call4 = call i64 @PTR_ERR(ptr noundef %6) #16, !dbg !4103
  %conv = trunc i64 %call4 to i32, !dbg !4103
  store i32 %conv, ptr %ret, align 4, !dbg !4104
  br label %err, !dbg !4105

if.else:                                          ; preds = %for.body
  %7 = load ptr, ptr %rpool, align 8, !dbg !4106
  %resources = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %7, i32 0, i32 1, !dbg !4108
  %8 = load i32, ptr %index.addr, align 4, !dbg !4109
  %idxprom = zext i32 %8 to i64, !dbg !4106
  %arrayidx = getelementptr [2 x %struct.rdmacg_resource], ptr %resources, i64 0, i64 %idxprom, !dbg !4106
  %usage = getelementptr inbounds %struct.rdmacg_resource, ptr %arrayidx, i32 0, i32 1, !dbg !4110
  %9 = load i32, ptr %usage, align 4, !dbg !4110
  %add = add i32 %9, 1, !dbg !4111
  %conv5 = sext i32 %add to i64, !dbg !4106
  store i64 %conv5, ptr %new, align 8, !dbg !4112
  %10 = load i64, ptr %new, align 8, !dbg !4113
  %11 = load ptr, ptr %rpool, align 8, !dbg !4115
  %resources6 = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %11, i32 0, i32 1, !dbg !4116
  %12 = load i32, ptr %index.addr, align 4, !dbg !4117
  %idxprom7 = zext i32 %12 to i64, !dbg !4115
  %arrayidx8 = getelementptr [2 x %struct.rdmacg_resource], ptr %resources6, i64 0, i64 %idxprom7, !dbg !4115
  %max = getelementptr inbounds %struct.rdmacg_resource, ptr %arrayidx8, i32 0, i32 0, !dbg !4118
  %13 = load i32, ptr %max, align 8, !dbg !4118
  %conv9 = sext i32 %13 to i64, !dbg !4115
  %cmp10 = icmp sgt i64 %10, %conv9, !dbg !4119
  br i1 %cmp10, label %if.then12, label %if.else13, !dbg !4120

if.then12:                                        ; preds = %if.else
  store i32 -11, ptr %ret, align 4, !dbg !4121
  br label %err, !dbg !4123

if.else13:                                        ; preds = %if.else
  %14 = load i64, ptr %new, align 8, !dbg !4124
  %conv14 = trunc i64 %14 to i32, !dbg !4124
  %15 = load ptr, ptr %rpool, align 8, !dbg !4126
  %resources15 = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %15, i32 0, i32 1, !dbg !4127
  %16 = load i32, ptr %index.addr, align 4, !dbg !4128
  %idxprom16 = zext i32 %16 to i64, !dbg !4126
  %arrayidx17 = getelementptr [2 x %struct.rdmacg_resource], ptr %resources15, i64 0, i64 %idxprom16, !dbg !4126
  %usage18 = getelementptr inbounds %struct.rdmacg_resource, ptr %arrayidx17, i32 0, i32 1, !dbg !4129
  store i32 %conv14, ptr %usage18, align 4, !dbg !4130
  %17 = load ptr, ptr %rpool, align 8, !dbg !4131
  %usage_sum = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %17, i32 0, i32 4, !dbg !4132
  %18 = load i64, ptr %usage_sum, align 8, !dbg !4133
  %inc = add i64 %18, 1, !dbg !4133
  store i64 %inc, ptr %usage_sum, align 8, !dbg !4133
  br label %if.end19

if.end19:                                         ; preds = %if.else13
  br label %if.end20

if.end20:                                         ; preds = %if.end19
  br label %for.inc, !dbg !4134

for.inc:                                          ; preds = %if.end20
  %19 = load ptr, ptr %p, align 8, !dbg !4135
  %call21 = call ptr @parent_rdmacg(ptr noundef %19) #16, !dbg !4136
  store ptr %call21, ptr %p, align 8, !dbg !4137
  br label %for.cond, !dbg !4138, !llvm.loop !4139

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @rdmacg_mutex) #16, !dbg !4141
  %20 = load ptr, ptr %cg, align 8, !dbg !4142
  %21 = load ptr, ptr %rdmacg.addr, align 8, !dbg !4143
  store ptr %20, ptr %21, align 8, !dbg !4144
  store i32 0, ptr %retval, align 4, !dbg !4145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4145

err:                                              ; preds = %if.then12, %if.then3
  call void @llvm.dbg.label(metadata !4064), !dbg !4146
  call void @mutex_unlock(ptr noundef @rdmacg_mutex) #16, !dbg !4147
  %22 = load ptr, ptr %cg, align 8, !dbg !4148
  %23 = load ptr, ptr %device.addr, align 8, !dbg !4149
  %24 = load ptr, ptr %p, align 8, !dbg !4150
  %25 = load i32, ptr %index.addr, align 4, !dbg !4151
  call void @rdmacg_uncharge_hierarchy(ptr noundef %22, ptr noundef %23, ptr noundef %24, i32 noundef %25) #16, !dbg !4152
  %26 = load i32, ptr %ret, align 4, !dbg !4153
  store i32 %26, ptr %retval, align 4, !dbg !4154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4154

cleanup:                                          ; preds = %err, %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !4155
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #17, !dbg !4155
  call void @llvm.lifetime.end.p0(i64 8, ptr %rpool) #17, !dbg !4155
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !4155
  call void @llvm.lifetime.end.p0(i64 8, ptr %cg) #17, !dbg !4155
  %27 = load i32, ptr %retval, align 4, !dbg !4155
  ret i32 %27, !dbg !4155
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current_rdmacg() #3 align 16 !dbg !4156 {
entry:
  %call = call ptr @get_current() #16, !dbg !4159
  %call1 = call ptr @task_get_css(ptr noundef %call, i32 noundef 11) #16, !dbg !4160
  %call2 = call ptr @css_rdmacg(ptr noundef %call1) #16, !dbg !4161
  ret ptr %call2, !dbg !4162
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4163 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_cg_rpool_locked(ptr noundef %cg, ptr noundef %device) #0 align 16 !dbg !4167 {
entry:
  %retval = alloca ptr, align 8
  %cg.addr = alloca ptr, align 8
  %device.addr = alloca ptr, align 8
  %rpool = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cg, ptr %cg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cg.addr, metadata !4171, metadata !DIExpression()), !dbg !4174
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !4172, metadata !DIExpression()), !dbg !4175
  call void @llvm.lifetime.start.p0(i64 8, ptr %rpool) #17, !dbg !4176
  call void @llvm.dbg.declare(metadata ptr %rpool, metadata !4173, metadata !DIExpression()), !dbg !4177
  %0 = load ptr, ptr %cg.addr, align 8, !dbg !4178
  %1 = load ptr, ptr %device.addr, align 8, !dbg !4179
  %call = call ptr @find_cg_rpool_locked(ptr noundef %0, ptr noundef %1) #16, !dbg !4180
  store ptr %call, ptr %rpool, align 8, !dbg !4181
  %2 = load ptr, ptr %rpool, align 8, !dbg !4182
  %tobool = icmp ne ptr %2, null, !dbg !4182
  br i1 %tobool, label %if.then, label %if.end, !dbg !4184

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %rpool, align 8, !dbg !4185
  store ptr %3, ptr %retval, align 8, !dbg !4186
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4186

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @kzalloc(i64 noundef 72, i32 noundef 3264) #18, !dbg !4187
  store ptr %call1, ptr %rpool, align 8, !dbg !4188
  %4 = load ptr, ptr %rpool, align 8, !dbg !4189
  %tobool2 = icmp ne ptr %4, null, !dbg !4189
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !4191

if.then3:                                         ; preds = %if.end
  %call4 = call ptr @ERR_PTR(i64 noundef -12) #16, !dbg !4192
  store ptr %call4, ptr %retval, align 8, !dbg !4193
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4193

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %device.addr, align 8, !dbg !4194
  %6 = load ptr, ptr %rpool, align 8, !dbg !4195
  %device6 = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %6, i32 0, i32 0, !dbg !4196
  store ptr %5, ptr %device6, align 8, !dbg !4197
  %7 = load ptr, ptr %rpool, align 8, !dbg !4198
  call void @set_all_resource_max_limit(ptr noundef %7) #16, !dbg !4199
  %8 = load ptr, ptr %rpool, align 8, !dbg !4200
  %cg_node = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %8, i32 0, i32 2, !dbg !4201
  call void @INIT_LIST_HEAD(ptr noundef %cg_node) #16, !dbg !4202
  %9 = load ptr, ptr %rpool, align 8, !dbg !4203
  %dev_node = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %9, i32 0, i32 3, !dbg !4204
  call void @INIT_LIST_HEAD(ptr noundef %dev_node) #16, !dbg !4205
  %10 = load ptr, ptr %rpool, align 8, !dbg !4206
  %cg_node7 = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %10, i32 0, i32 2, !dbg !4207
  %11 = load ptr, ptr %cg.addr, align 8, !dbg !4208
  %rpools = getelementptr inbounds %struct.rdma_cgroup, ptr %11, i32 0, i32 1, !dbg !4209
  call void @list_add_tail(ptr noundef %cg_node7, ptr noundef %rpools) #16, !dbg !4210
  %12 = load ptr, ptr %rpool, align 8, !dbg !4211
  %dev_node8 = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %12, i32 0, i32 3, !dbg !4212
  %13 = load ptr, ptr %device.addr, align 8, !dbg !4213
  %rpools9 = getelementptr inbounds %struct.rdmacg_device, ptr %13, i32 0, i32 1, !dbg !4214
  call void @list_add_tail(ptr noundef %dev_node8, ptr noundef %rpools9) #16, !dbg !4215
  %14 = load ptr, ptr %rpool, align 8, !dbg !4216
  store ptr %14, ptr %retval, align 8, !dbg !4217
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4217

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rpool) #17, !dbg !4218
  %15 = load ptr, ptr %retval, align 8, !dbg !4218
  ret ptr %15, !dbg !4218
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !4219 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4224, metadata !DIExpression()), !dbg !4225
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4226
  %1 = ptrtoint ptr %0 to i64, !dbg !4226
  %2 = inttoptr i64 %1 to ptr, !dbg !4226
  %3 = ptrtoint ptr %2 to i64, !dbg !4226
  %cmp = icmp uge i64 %3, -4095, !dbg !4226
  %lnot = xor i1 %cmp, true, !dbg !4226
  %lnot1 = xor i1 %lnot, true, !dbg !4226
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4226
  %conv = sext i32 %lnot.ext to i64, !dbg !4226
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4226
  %tobool = icmp ne i64 %expval, 0, !dbg !4226
  ret i1 %tobool, !dbg !4227
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !4228 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4232, metadata !DIExpression()), !dbg !4233
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4234
  %1 = ptrtoint ptr %0 to i64, !dbg !4235
  ret i64 %1, !dbg !4236
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @parent_rdmacg(ptr noundef %cg) #0 align 16 !dbg !4237 {
entry:
  %cg.addr = alloca ptr, align 8
  store ptr %cg, ptr %cg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cg.addr, metadata !4241, metadata !DIExpression()), !dbg !4242
  %0 = load ptr, ptr %cg.addr, align 8, !dbg !4243
  %css = getelementptr inbounds %struct.rdma_cgroup, ptr %0, i32 0, i32 0, !dbg !4244
  %parent = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 12, !dbg !4245
  %1 = load ptr, ptr %parent, align 8, !dbg !4245
  %call = call ptr @css_rdmacg(ptr noundef %1) #16, !dbg !4246
  ret ptr %call, !dbg !4247
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4248 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rdmacg_register_device(ptr noundef %device) #0 align 16 !dbg !4249 {
entry:
  %device.addr = alloca ptr, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !4253, metadata !DIExpression()), !dbg !4254
  %0 = load ptr, ptr %device.addr, align 8, !dbg !4255
  %dev_node = getelementptr inbounds %struct.rdmacg_device, ptr %0, i32 0, i32 0, !dbg !4256
  call void @INIT_LIST_HEAD(ptr noundef %dev_node) #16, !dbg !4257
  %1 = load ptr, ptr %device.addr, align 8, !dbg !4258
  %rpools = getelementptr inbounds %struct.rdmacg_device, ptr %1, i32 0, i32 1, !dbg !4259
  call void @INIT_LIST_HEAD(ptr noundef %rpools) #16, !dbg !4260
  call void @mutex_lock(ptr noundef @rdmacg_mutex) #16, !dbg !4261
  %2 = load ptr, ptr %device.addr, align 8, !dbg !4262
  %dev_node1 = getelementptr inbounds %struct.rdmacg_device, ptr %2, i32 0, i32 0, !dbg !4263
  call void @list_add_tail(ptr noundef %dev_node1, ptr noundef @rdmacg_devices) #16, !dbg !4264
  call void @mutex_unlock(ptr noundef @rdmacg_mutex) #16, !dbg !4265
  ret void, !dbg !4266
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !4267 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4272, metadata !DIExpression()), !dbg !4273
  br label %do.body, !dbg !4274

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4275

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4277

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4275

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4279
  %1 = load ptr, ptr %list.addr, align 8, !dbg !4279
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4279
  store volatile ptr %0, ptr %next, align 8, !dbg !4279
  br label %do.end3, !dbg !4279

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4275

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !4281

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !4282

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4284

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !4282

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !4286
  %3 = load ptr, ptr %list.addr, align 8, !dbg !4286
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !4286
  store volatile ptr %2, ptr %prev, align 8, !dbg !4286
  br label %do.end9, !dbg !4286

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !4282

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !4288
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !4289 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4293, metadata !DIExpression()), !dbg !4295
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4294, metadata !DIExpression()), !dbg !4296
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4297
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4298
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4299
  %2 = load ptr, ptr %prev, align 8, !dbg !4299
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4300
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #16, !dbg !4301
  ret void, !dbg !4302
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rdmacg_unregister_device(ptr noundef %device) #0 align 16 !dbg !4303 {
entry:
  %device.addr = alloca ptr, align 8
  %rpool = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !4305, metadata !DIExpression()), !dbg !4316
  call void @llvm.lifetime.start.p0(i64 8, ptr %rpool) #17, !dbg !4317
  call void @llvm.dbg.declare(metadata ptr %rpool, metadata !4306, metadata !DIExpression()), !dbg !4318
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #17, !dbg !4317
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4307, metadata !DIExpression()), !dbg !4319
  call void @mutex_lock(ptr noundef @rdmacg_mutex) #16, !dbg !4320
  %0 = load ptr, ptr %device.addr, align 8, !dbg !4321
  %dev_node = getelementptr inbounds %struct.rdmacg_device, ptr %0, i32 0, i32 0, !dbg !4322
  call void @list_del_init(ptr noundef %dev_node) #16, !dbg !4323
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !4324
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4308, metadata !DIExpression()), !dbg !4324
  %1 = load ptr, ptr %device.addr, align 8, !dbg !4324
  %rpools = getelementptr inbounds %struct.rdmacg_device, ptr %1, i32 0, i32 1, !dbg !4324
  %next = getelementptr inbounds %struct.list_head, ptr %rpools, i32 0, i32 0, !dbg !4324
  %2 = load ptr, ptr %next, align 8, !dbg !4324
  store ptr %2, ptr %__mptr, align 8, !dbg !4324
  %3 = load ptr, ptr %__mptr, align 8, !dbg !4324
  %add.ptr = getelementptr i8, ptr %3, i64 -40, !dbg !4324
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !4324
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !4325
  %4 = load ptr, ptr %tmp1, align 8, !dbg !4324
  store ptr %4, ptr %rpool, align 8, !dbg !4325
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #17, !dbg !4326
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !4311, metadata !DIExpression()), !dbg !4326
  %5 = load ptr, ptr %rpool, align 8, !dbg !4326
  %dev_node3 = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %5, i32 0, i32 3, !dbg !4326
  %next4 = getelementptr inbounds %struct.list_head, ptr %dev_node3, i32 0, i32 0, !dbg !4326
  %6 = load ptr, ptr %next4, align 8, !dbg !4326
  store ptr %6, ptr %__mptr2, align 8, !dbg !4326
  %7 = load ptr, ptr %__mptr2, align 8, !dbg !4326
  %add.ptr6 = getelementptr i8, ptr %7, i64 -40, !dbg !4326
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !4326
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #17, !dbg !4325
  %8 = load ptr, ptr %tmp5, align 8, !dbg !4326
  store ptr %8, ptr %tmp, align 8, !dbg !4325
  br label %for.cond, !dbg !4325

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load ptr, ptr %rpool, align 8, !dbg !4327
  %dev_node7 = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %9, i32 0, i32 3, !dbg !4327
  %10 = load ptr, ptr %device.addr, align 8, !dbg !4327
  %rpools8 = getelementptr inbounds %struct.rdmacg_device, ptr %10, i32 0, i32 1, !dbg !4327
  %cmp = icmp eq ptr %dev_node7, %rpools8, !dbg !4327
  %lnot = xor i1 %cmp, true, !dbg !4327
  br i1 %lnot, label %for.body, label %for.end, !dbg !4325

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %rpool, align 8, !dbg !4328
  call void @free_cg_rpool_locked(ptr noundef %11) #16, !dbg !4329
  br label %for.inc, !dbg !4329

for.inc:                                          ; preds = %for.body
  %12 = load ptr, ptr %tmp, align 8, !dbg !4327
  store ptr %12, ptr %rpool, align 8, !dbg !4327
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #17, !dbg !4330
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !4313, metadata !DIExpression()), !dbg !4330
  %13 = load ptr, ptr %tmp, align 8, !dbg !4330
  %dev_node10 = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %13, i32 0, i32 3, !dbg !4330
  %next11 = getelementptr inbounds %struct.list_head, ptr %dev_node10, i32 0, i32 0, !dbg !4330
  %14 = load ptr, ptr %next11, align 8, !dbg !4330
  store ptr %14, ptr %__mptr9, align 8, !dbg !4330
  %15 = load ptr, ptr %__mptr9, align 8, !dbg !4330
  %add.ptr13 = getelementptr i8, ptr %15, i64 -40, !dbg !4330
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !4330
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #17, !dbg !4327
  %16 = load ptr, ptr %tmp12, align 8, !dbg !4330
  store ptr %16, ptr %tmp, align 8, !dbg !4327
  br label %for.cond, !dbg !4327, !llvm.loop !4331

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @rdmacg_mutex) #16, !dbg !4333
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #17, !dbg !4334
  call void @llvm.lifetime.end.p0(i64 8, ptr %rpool) #17, !dbg !4334
  ret void, !dbg !4334
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #3 align 16 !dbg !4335 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4337, metadata !DIExpression()), !dbg !4338
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4339
  call void @__list_del_entry(ptr noundef %0) #16, !dbg !4340
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4341
  call void @INIT_LIST_HEAD(ptr noundef %1) #16, !dbg !4342
  ret void, !dbg !4343
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_cg_rpool_locked(ptr noundef %rpool) #0 align 16 !dbg !4344 {
entry:
  %rpool.addr = alloca ptr, align 8
  store ptr %rpool, ptr %rpool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rpool.addr, metadata !4348, metadata !DIExpression()), !dbg !4349
  br label %do.body, !dbg !4350

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4351

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %rpool.addr, align 8, !dbg !4353
  %cg_node = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %0, i32 0, i32 2, !dbg !4354
  call void @list_del(ptr noundef %cg_node) #16, !dbg !4355
  %1 = load ptr, ptr %rpool.addr, align 8, !dbg !4356
  %dev_node = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %1, i32 0, i32 3, !dbg !4357
  call void @list_del(ptr noundef %dev_node) #16, !dbg !4358
  %2 = load ptr, ptr %rpool.addr, align 8, !dbg !4359
  call void @kfree(ptr noundef %2) #16, !dbg !4360
  ret void, !dbg !4361
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rdmacg_css_alloc(ptr noundef %parent) #0 align 16 !dbg !4362 {
entry:
  %retval = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %cg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4364, metadata !DIExpression()), !dbg !4366
  call void @llvm.lifetime.start.p0(i64 8, ptr %cg) #17, !dbg !4367
  call void @llvm.dbg.declare(metadata ptr %cg, metadata !4365, metadata !DIExpression()), !dbg !4368
  %call = call noalias ptr @kzalloc(i64 noundef 216, i32 noundef 3264) #18, !dbg !4369
  store ptr %call, ptr %cg, align 8, !dbg !4370
  %0 = load ptr, ptr %cg, align 8, !dbg !4371
  %tobool = icmp ne ptr %0, null, !dbg !4371
  br i1 %tobool, label %if.end, label %if.then, !dbg !4373

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #16, !dbg !4374
  store ptr %call1, ptr %retval, align 8, !dbg !4375
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4375

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %cg, align 8, !dbg !4376
  %rpools = getelementptr inbounds %struct.rdma_cgroup, ptr %1, i32 0, i32 1, !dbg !4377
  call void @INIT_LIST_HEAD(ptr noundef %rpools) #16, !dbg !4378
  %2 = load ptr, ptr %cg, align 8, !dbg !4379
  %css = getelementptr inbounds %struct.rdma_cgroup, ptr %2, i32 0, i32 0, !dbg !4380
  store ptr %css, ptr %retval, align 8, !dbg !4381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4381

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cg) #17, !dbg !4382
  %3 = load ptr, ptr %retval, align 8, !dbg !4382
  ret ptr %3, !dbg !4382
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rdmacg_css_offline(ptr noundef %css) #0 align 16 !dbg !4383 {
entry:
  %css.addr = alloca ptr, align 8
  %cg = alloca ptr, align 8
  %rpool = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %css, ptr %css.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %css.addr, metadata !4385, metadata !DIExpression()), !dbg !4394
  call void @llvm.lifetime.start.p0(i64 8, ptr %cg) #17, !dbg !4395
  call void @llvm.dbg.declare(metadata ptr %cg, metadata !4386, metadata !DIExpression()), !dbg !4396
  %0 = load ptr, ptr %css.addr, align 8, !dbg !4397
  %call = call ptr @css_rdmacg(ptr noundef %0) #16, !dbg !4398
  store ptr %call, ptr %cg, align 8, !dbg !4396
  call void @llvm.lifetime.start.p0(i64 8, ptr %rpool) #17, !dbg !4399
  call void @llvm.dbg.declare(metadata ptr %rpool, metadata !4387, metadata !DIExpression()), !dbg !4400
  call void @mutex_lock(ptr noundef @rdmacg_mutex) #16, !dbg !4401
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !4402
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4388, metadata !DIExpression()), !dbg !4402
  %1 = load ptr, ptr %cg, align 8, !dbg !4402
  %rpools = getelementptr inbounds %struct.rdma_cgroup, ptr %1, i32 0, i32 1, !dbg !4402
  %next = getelementptr inbounds %struct.list_head, ptr %rpools, i32 0, i32 0, !dbg !4402
  %2 = load ptr, ptr %next, align 8, !dbg !4402
  store ptr %2, ptr %__mptr, align 8, !dbg !4402
  %3 = load ptr, ptr %__mptr, align 8, !dbg !4402
  %add.ptr = getelementptr i8, ptr %3, i64 -24, !dbg !4402
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4402
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !4403
  %4 = load ptr, ptr %tmp, align 8, !dbg !4402
  store ptr %4, ptr %rpool, align 8, !dbg !4403
  br label %for.cond, !dbg !4403

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %rpool, align 8, !dbg !4404
  %cg_node = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %5, i32 0, i32 2, !dbg !4404
  %6 = load ptr, ptr %cg, align 8, !dbg !4404
  %rpools1 = getelementptr inbounds %struct.rdma_cgroup, ptr %6, i32 0, i32 1, !dbg !4404
  %cmp = icmp eq ptr %cg_node, %rpools1, !dbg !4404
  %lnot = xor i1 %cmp, true, !dbg !4404
  br i1 %lnot, label %for.body, label %for.end, !dbg !4403

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %rpool, align 8, !dbg !4405
  call void @set_all_resource_max_limit(ptr noundef %7) #16, !dbg !4406
  br label %for.inc, !dbg !4406

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #17, !dbg !4407
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !4391, metadata !DIExpression()), !dbg !4407
  %8 = load ptr, ptr %rpool, align 8, !dbg !4407
  %cg_node3 = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %8, i32 0, i32 2, !dbg !4407
  %next4 = getelementptr inbounds %struct.list_head, ptr %cg_node3, i32 0, i32 0, !dbg !4407
  %9 = load ptr, ptr %next4, align 8, !dbg !4407
  store ptr %9, ptr %__mptr2, align 8, !dbg !4407
  %10 = load ptr, ptr %__mptr2, align 8, !dbg !4407
  %add.ptr6 = getelementptr i8, ptr %10, i64 -24, !dbg !4407
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !4407
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #17, !dbg !4404
  %11 = load ptr, ptr %tmp5, align 8, !dbg !4407
  store ptr %11, ptr %rpool, align 8, !dbg !4404
  br label %for.cond, !dbg !4404, !llvm.loop !4408

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @rdmacg_mutex) #16, !dbg !4410
  call void @llvm.lifetime.end.p0(i64 8, ptr %rpool) #17, !dbg !4411
  call void @llvm.lifetime.end.p0(i64 8, ptr %cg) #17, !dbg !4411
  ret void, !dbg !4411
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rdmacg_css_free(ptr noundef %css) #0 align 16 !dbg !4412 {
entry:
  %css.addr = alloca ptr, align 8
  %cg = alloca ptr, align 8
  store ptr %css, ptr %css.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %css.addr, metadata !4414, metadata !DIExpression()), !dbg !4416
  call void @llvm.lifetime.start.p0(i64 8, ptr %cg) #17, !dbg !4417
  call void @llvm.dbg.declare(metadata ptr %cg, metadata !4415, metadata !DIExpression()), !dbg !4418
  %0 = load ptr, ptr %css.addr, align 8, !dbg !4419
  %call = call ptr @css_rdmacg(ptr noundef %0) #16, !dbg !4420
  store ptr %call, ptr %cg, align 8, !dbg !4418
  %1 = load ptr, ptr %cg, align 8, !dbg !4421
  call void @kfree(ptr noundef %1) #16, !dbg !4422
  call void @llvm.lifetime.end.p0(i64 8, ptr %cg) #17, !dbg !4423
  ret void, !dbg !4423
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @uncharge_cg_locked(ptr noundef %cg, ptr noundef %device, i32 noundef %index) #0 align 16 !dbg !4424 {
entry:
  %cg.addr = alloca ptr, align 8
  %device.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %rpool = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp36 = alloca i64, align 8
  store ptr %cg, ptr %cg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cg.addr, metadata !4426, metadata !DIExpression()), !dbg !4435
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !4427, metadata !DIExpression()), !dbg !4436
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !4428, metadata !DIExpression()), !dbg !4437
  call void @llvm.lifetime.start.p0(i64 8, ptr %rpool) #17, !dbg !4438
  call void @llvm.dbg.declare(metadata ptr %rpool, metadata !4429, metadata !DIExpression()), !dbg !4439
  %0 = load ptr, ptr %cg.addr, align 8, !dbg !4440
  %1 = load ptr, ptr %device.addr, align 8, !dbg !4441
  %call = call ptr @find_cg_rpool_locked(ptr noundef %0, ptr noundef %1) #16, !dbg !4442
  store ptr %call, ptr %rpool, align 8, !dbg !4443
  %2 = load ptr, ptr %rpool, align 8, !dbg !4444
  %tobool = icmp ne ptr %2, null, !dbg !4444
  %lnot = xor i1 %tobool, true, !dbg !4444
  %lnot1 = xor i1 %lnot, true, !dbg !4444
  %lnot2 = xor i1 %lnot1, true, !dbg !4444
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4444
  %conv = sext i32 %lnot.ext to i64, !dbg !4444
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4444
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4444
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4446

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4447

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !4450

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4450

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %cg.addr, align 8, !dbg !4447
  %4 = load ptr, ptr %device.addr, align 8, !dbg !4447
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %3, ptr noundef %4) #19, !dbg !4447
  store i32 %call4, ptr %tmp, align 4, !dbg !4450
  %5 = load i32, ptr %tmp, align 4, !dbg !4447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4452

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %rpool, align 8, !dbg !4453
  %resources = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %6, i32 0, i32 1, !dbg !4454
  %7 = load i32, ptr %index.addr, align 4, !dbg !4455
  %idxprom = zext i32 %7 to i64, !dbg !4453
  %arrayidx = getelementptr [2 x %struct.rdmacg_resource], ptr %resources, i64 0, i64 %idxprom, !dbg !4453
  %usage = getelementptr inbounds %struct.rdmacg_resource, ptr %arrayidx, i32 0, i32 1, !dbg !4456
  %8 = load i32, ptr %usage, align 4, !dbg !4457
  %dec = add i32 %8, -1, !dbg !4457
  store i32 %dec, ptr %usage, align 4, !dbg !4457
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !4458
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4430, metadata !DIExpression()), !dbg !4458
  %9 = load ptr, ptr %rpool, align 8, !dbg !4458
  %resources5 = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %9, i32 0, i32 1, !dbg !4458
  %10 = load i32, ptr %index.addr, align 4, !dbg !4458
  %idxprom6 = zext i32 %10 to i64, !dbg !4458
  %arrayidx7 = getelementptr [2 x %struct.rdmacg_resource], ptr %resources5, i64 0, i64 %idxprom6, !dbg !4458
  %usage8 = getelementptr inbounds %struct.rdmacg_resource, ptr %arrayidx7, i32 0, i32 1, !dbg !4458
  %11 = load i32, ptr %usage8, align 4, !dbg !4458
  %cmp = icmp slt i32 %11, 0, !dbg !4458
  %lnot10 = xor i1 %cmp, true, !dbg !4458
  %lnot12 = xor i1 %lnot10, true, !dbg !4458
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !4458
  store i32 %lnot.ext13, ptr %__ret_warn_on, align 4, !dbg !4458
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !4459
  %tobool14 = icmp ne i32 %12, 0, !dbg !4459
  %lnot15 = xor i1 %tobool14, true, !dbg !4459
  %lnot17 = xor i1 %lnot15, true, !dbg !4459
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !4459
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !4459
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 0), !dbg !4459
  %tobool21 = icmp ne i64 %expval20, 0, !dbg !4459
  br i1 %tobool21, label %if.then22, label %if.end35, !dbg !4458

if.then22:                                        ; preds = %if.end
  br label %do.body23, !dbg !4459

do.body23:                                        ; preds = %if.then22
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !4460
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4432, metadata !DIExpression()), !dbg !4460
  store i32 2307, ptr %__flags, align 4, !dbg !4460
  br label %do.body24, !dbg !4460

do.body24:                                        ; preds = %do.body23
  br label %do.cond25, !dbg !4461

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !4461

do.end26:                                         ; preds = %do.cond25
  br label %do.body27, !dbg !4460

do.body27:                                        ; preds = %do.end26
  %13 = load i32, ptr %__flags, align 4, !dbg !4463
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 186, i32 %13, i64 12) #17, !dbg !4463, !srcloc !4465
  br label %do.cond28, !dbg !4463

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !4463

do.end29:                                         ; preds = %do.cond28
  br label %do.body30, !dbg !4460

do.body30:                                        ; preds = %do.end29
  br label %do.cond31, !dbg !4466

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !4466

do.end32:                                         ; preds = %do.cond31
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !4459
  br label %do.cond33, !dbg !4460

do.cond33:                                        ; preds = %do.end32
  br label %do.end34, !dbg !4460

do.end34:                                         ; preds = %do.cond33
  br label %if.end35, !dbg !4460

if.end35:                                         ; preds = %do.end34, %if.end
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !4458
  %tobool37 = icmp ne i32 %14, 0, !dbg !4458
  %lnot38 = xor i1 %tobool37, true, !dbg !4458
  %lnot40 = xor i1 %lnot38, true, !dbg !4458
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !4458
  %conv42 = sext i32 %lnot.ext41 to i64, !dbg !4458
  %expval43 = call i64 @llvm.expect.i64(i64 %conv42, i64 0), !dbg !4458
  store i64 %expval43, ptr %tmp36, align 8, !dbg !4459
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !4468
  %15 = load i64, ptr %tmp36, align 8, !dbg !4458
  %16 = load ptr, ptr %rpool, align 8, !dbg !4469
  %usage_sum = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %16, i32 0, i32 4, !dbg !4470
  %17 = load i64, ptr %usage_sum, align 8, !dbg !4471
  %dec44 = add i64 %17, -1, !dbg !4471
  store i64 %dec44, ptr %usage_sum, align 8, !dbg !4471
  %18 = load ptr, ptr %rpool, align 8, !dbg !4472
  %usage_sum45 = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %18, i32 0, i32 4, !dbg !4474
  %19 = load i64, ptr %usage_sum45, align 8, !dbg !4474
  %cmp46 = icmp eq i64 %19, 0, !dbg !4475
  br i1 %cmp46, label %land.lhs.true, label %if.end51, !dbg !4476

land.lhs.true:                                    ; preds = %if.end35
  %20 = load ptr, ptr %rpool, align 8, !dbg !4477
  %num_max_cnt = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %20, i32 0, i32 5, !dbg !4478
  %21 = load i32, ptr %num_max_cnt, align 8, !dbg !4478
  %cmp48 = icmp eq i32 %21, 2, !dbg !4479
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !4480

if.then50:                                        ; preds = %land.lhs.true
  %22 = load ptr, ptr %rpool, align 8, !dbg !4481
  call void @free_cg_rpool_locked(ptr noundef %22) #16, !dbg !4483
  br label %if.end51, !dbg !4484

if.end51:                                         ; preds = %if.then50, %land.lhs.true, %if.end35
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4485
  br label %cleanup, !dbg !4485

cleanup:                                          ; preds = %if.end51, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %rpool) #17, !dbg !4485
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4485

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @css_put(ptr noundef %css) #3 align 16 !dbg !4486 {
entry:
  %css.addr = alloca ptr, align 8
  store ptr %css, ptr %css.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %css.addr, metadata !4489, metadata !DIExpression()), !dbg !4490
  %0 = load ptr, ptr %css.addr, align 8, !dbg !4491
  %flags = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 7, !dbg !4493
  %1 = load i32, ptr %flags, align 4, !dbg !4493
  %and = and i32 %1, 1, !dbg !4494
  %tobool = icmp ne i32 %and, 0, !dbg !4494
  br i1 %tobool, label %if.end, label %if.then, !dbg !4495

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %css.addr, align 8, !dbg !4496
  %refcnt = getelementptr inbounds %struct.cgroup_subsys_state, ptr %2, i32 0, i32 2, !dbg !4497
  call void @percpu_ref_put(ptr noundef %refcnt) #16, !dbg !4498
  br label %if.end, !dbg !4498

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4499
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_cg_rpool_locked(ptr noundef %cg, ptr noundef %device) #0 align 16 !dbg !4500 {
entry:
  %retval = alloca ptr, align 8
  %cg.addr = alloca ptr, align 8
  %device.addr = alloca ptr, align 8
  %pool = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %cg, ptr %cg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cg.addr, metadata !4502, metadata !DIExpression()), !dbg !4511
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !4503, metadata !DIExpression()), !dbg !4512
  call void @llvm.lifetime.start.p0(i64 8, ptr %pool) #17, !dbg !4513
  call void @llvm.dbg.declare(metadata ptr %pool, metadata !4504, metadata !DIExpression()), !dbg !4514
  br label %do.body, !dbg !4515

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4516

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4516

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !4518
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4505, metadata !DIExpression()), !dbg !4518
  %0 = load ptr, ptr %cg.addr, align 8, !dbg !4518
  %rpools = getelementptr inbounds %struct.rdma_cgroup, ptr %0, i32 0, i32 1, !dbg !4518
  %next = getelementptr inbounds %struct.list_head, ptr %rpools, i32 0, i32 0, !dbg !4518
  %1 = load ptr, ptr %next, align 8, !dbg !4518
  store ptr %1, ptr %__mptr, align 8, !dbg !4518
  %2 = load ptr, ptr %__mptr, align 8, !dbg !4518
  %add.ptr = getelementptr i8, ptr %2, i64 -24, !dbg !4518
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4518
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !4519
  %3 = load ptr, ptr %tmp, align 8, !dbg !4518
  store ptr %3, ptr %pool, align 8, !dbg !4519
  br label %for.cond, !dbg !4519

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load ptr, ptr %pool, align 8, !dbg !4520
  %cg_node = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %4, i32 0, i32 2, !dbg !4520
  %5 = load ptr, ptr %cg.addr, align 8, !dbg !4520
  %rpools1 = getelementptr inbounds %struct.rdma_cgroup, ptr %5, i32 0, i32 1, !dbg !4520
  %cmp = icmp eq ptr %cg_node, %rpools1, !dbg !4520
  %lnot = xor i1 %cmp, true, !dbg !4520
  br i1 %lnot, label %for.body, label %for.end, !dbg !4519

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %pool, align 8, !dbg !4521
  %device2 = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %6, i32 0, i32 0, !dbg !4523
  %7 = load ptr, ptr %device2, align 8, !dbg !4523
  %8 = load ptr, ptr %device.addr, align 8, !dbg !4524
  %cmp3 = icmp eq ptr %7, %8, !dbg !4525
  br i1 %cmp3, label %if.then, label %if.end, !dbg !4526

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %pool, align 8, !dbg !4527
  store ptr %9, ptr %retval, align 8, !dbg !4528
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4528

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4524

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #17, !dbg !4529
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !4508, metadata !DIExpression()), !dbg !4529
  %10 = load ptr, ptr %pool, align 8, !dbg !4529
  %cg_node5 = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %10, i32 0, i32 2, !dbg !4529
  %next6 = getelementptr inbounds %struct.list_head, ptr %cg_node5, i32 0, i32 0, !dbg !4529
  %11 = load ptr, ptr %next6, align 8, !dbg !4529
  store ptr %11, ptr %__mptr4, align 8, !dbg !4529
  %12 = load ptr, ptr %__mptr4, align 8, !dbg !4529
  %add.ptr8 = getelementptr i8, ptr %12, i64 -24, !dbg !4529
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !4529
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #17, !dbg !4520
  %13 = load ptr, ptr %tmp7, align 8, !dbg !4529
  store ptr %13, ptr %pool, align 8, !dbg !4520
  br label %for.cond, !dbg !4520, !llvm.loop !4530

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !4532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4532

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pool) #17, !dbg !4533
  %14 = load ptr, ptr %retval, align 8, !dbg !4533
  ret ptr %14, !dbg !4533
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4534 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @percpu_ref_put(ptr noundef %ref) #3 align 16 !dbg !4538 {
entry:
  %ref.addr = alloca ptr, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !4540, metadata !DIExpression()), !dbg !4541
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !4542
  call void @percpu_ref_put_many(ptr noundef %0, i64 noundef 1) #16, !dbg !4543
  ret void, !dbg !4544
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @percpu_ref_put_many(ptr noundef %ref, i64 noundef %nr) #3 align 16 !dbg !4545 {
entry:
  %ref.addr = alloca ptr, align 8
  %nr.addr = alloca i64, align 8
  %percpu_count = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i64, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !4549, metadata !DIExpression()), !dbg !4563
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4550, metadata !DIExpression()), !dbg !4564
  call void @llvm.lifetime.start.p0(i64 8, ptr %percpu_count) #17, !dbg !4565
  call void @llvm.dbg.declare(metadata ptr %percpu_count, metadata !4551, metadata !DIExpression()), !dbg !4566
  call void @rcu_read_lock() #16, !dbg !4567
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !4568
  %call = call zeroext i1 @__ref_is_percpu(ptr noundef %0, ptr noundef %percpu_count) #16, !dbg !4569
  br i1 %call, label %if.then, label %if.else23, !dbg !4570

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4571

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !4572

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !4573
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4552, metadata !DIExpression()), !dbg !4573
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4573
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !4573
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !4572
  br label %do.cond, !dbg !4573

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4573

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !4572

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #17, !dbg !4574
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !4556, metadata !DIExpression()), !dbg !4574
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4574
  %sub = sub i64 0, %2, !dbg !4574
  %3 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4574
  br i1 %3, label %land.lhs.true, label %cond.false, !dbg !4574

land.lhs.true:                                    ; preds = %do.body2
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4574
  %sub3 = sub i64 0, %4, !dbg !4574
  %cmp = icmp eq i64 %sub3, 1, !dbg !4574
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !4574

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load i64, ptr %nr.addr, align 8, !dbg !4574
  %sub4 = sub i64 0, %5, !dbg !4574
  %cmp5 = icmp eq i64 %sub4, -1, !dbg !4574
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !4574

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %6 = load i64, ptr %nr.addr, align 8, !dbg !4574
  %sub6 = sub i64 0, %6, !dbg !4574
  %conv = trunc i64 %sub6 to i32, !dbg !4574
  br label %cond.end, !dbg !4574

cond.false:                                       ; preds = %lor.lhs.false, %do.body2
  br label %cond.end, !dbg !4574

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ], !dbg !4574
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !4574
  %7 = load i32, ptr %pao_ID__, align 4, !dbg !4575
  %cmp7 = icmp eq i32 %7, 1, !dbg !4575
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !4574

if.then9:                                         ; preds = %cond.end
  %8 = load ptr, ptr %percpu_count, align 8, !dbg !4576
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %8, ptr elementtype(i64) %8) #17, !dbg !4576, !srcloc !4578
  br label %if.end18, !dbg !4575

if.else:                                          ; preds = %cond.end
  %9 = load i32, ptr %pao_ID__, align 4, !dbg !4579
  %cmp10 = icmp eq i32 %9, -1, !dbg !4579
  br i1 %cmp10, label %if.then12, label %if.else13, !dbg !4575

if.then12:                                        ; preds = %if.else
  %10 = load ptr, ptr %percpu_count, align 8, !dbg !4580
  call void asm sideeffect "decq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %10, ptr elementtype(i64) %10) #17, !dbg !4580, !srcloc !4582
  br label %if.end, !dbg !4579

if.else13:                                        ; preds = %if.else
  br label %do.body14, !dbg !4579

do.body14:                                        ; preds = %if.else13
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__) #17, !dbg !4583
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !4559, metadata !DIExpression()), !dbg !4583
  %11 = load i64, ptr %nr.addr, align 8, !dbg !4583
  %sub15 = sub i64 0, %11, !dbg !4583
  store i64 %sub15, ptr %pto_val__, align 8, !dbg !4583
  %12 = load ptr, ptr %percpu_count, align 8, !dbg !4583
  %13 = load i64, ptr %pto_val__, align 8, !dbg !4583
  call void asm sideeffect "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %12, i64 %13, ptr elementtype(i64) %12) #17, !dbg !4583, !srcloc !4584
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__) #17, !dbg !4579
  br label %do.cond16, !dbg !4583

do.cond16:                                        ; preds = %do.body14
  br label %do.end17, !dbg !4583

do.end17:                                         ; preds = %do.cond16
  br label %if.end

if.end:                                           ; preds = %do.end17, %if.then12
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #17, !dbg !4572
  br label %do.cond19, !dbg !4574

do.cond19:                                        ; preds = %if.end18
  br label %do.end20, !dbg !4574

do.end20:                                         ; preds = %do.cond19
  br label %do.cond21, !dbg !4572

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !4572

do.end22:                                         ; preds = %do.cond21
  br label %if.end30, !dbg !4572

if.else23:                                        ; preds = %entry
  %14 = load i64, ptr %nr.addr, align 8, !dbg !4585
  %15 = load ptr, ptr %ref.addr, align 8, !dbg !4585
  %data = getelementptr inbounds %struct.percpu_ref, ptr %15, i32 0, i32 1, !dbg !4585
  %16 = load ptr, ptr %data, align 8, !dbg !4585
  %count = getelementptr inbounds %struct.percpu_ref_data, ptr %16, i32 0, i32 0, !dbg !4585
  %call24 = call zeroext i1 @atomic_long_sub_and_test(i64 noundef %14, ptr noundef %count) #16, !dbg !4585
  %lnot = xor i1 %call24, true, !dbg !4585
  %lnot25 = xor i1 %lnot, true, !dbg !4585
  %lnot.ext = zext i1 %lnot25 to i32, !dbg !4585
  %conv26 = sext i32 %lnot.ext to i64, !dbg !4585
  %expval = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !4585
  %tobool = icmp ne i64 %expval, 0, !dbg !4585
  br i1 %tobool, label %if.then27, label %if.end29, !dbg !4587

if.then27:                                        ; preds = %if.else23
  %17 = load ptr, ptr %ref.addr, align 8, !dbg !4588
  %data28 = getelementptr inbounds %struct.percpu_ref, ptr %17, i32 0, i32 1, !dbg !4589
  %18 = load ptr, ptr %data28, align 8, !dbg !4589
  %release = getelementptr inbounds %struct.percpu_ref_data, ptr %18, i32 0, i32 1, !dbg !4590
  %19 = load ptr, ptr %release, align 8, !dbg !4590
  %20 = load ptr, ptr %ref.addr, align 8, !dbg !4591
  call void %19(ptr noundef %20) #16, !dbg !4588
  br label %if.end29, !dbg !4588

if.end29:                                         ; preds = %if.then27, %if.else23
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %do.end22
  call void @rcu_read_unlock() #16, !dbg !4592
  call void @llvm.lifetime.end.p0(i64 8, ptr %percpu_count) #17, !dbg !4593
  ret void, !dbg !4593
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #7 align 16 !dbg !4594 {
entry:
  call void @__rcu_read_lock() #16, !dbg !4596
  br label %do.body, !dbg !4597

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4598

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4600

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4601

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4603
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__ref_is_percpu(ptr noundef %ref, ptr noundef %percpu_countp) #3 align 16 !dbg !4604 {
entry:
  %retval = alloca i1, align 1
  %ref.addr = alloca ptr, align 8
  %percpu_countp.addr = alloca ptr, align 8
  %percpu_ptr = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !4609, metadata !DIExpression()), !dbg !4612
  store ptr %percpu_countp, ptr %percpu_countp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %percpu_countp.addr, metadata !4610, metadata !DIExpression()), !dbg !4613
  call void @llvm.lifetime.start.p0(i64 8, ptr %percpu_ptr) #17, !dbg !4614
  call void @llvm.dbg.declare(metadata ptr %percpu_ptr, metadata !4611, metadata !DIExpression()), !dbg !4615
  br label %do.body, !dbg !4616

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4618

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4618

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !4616
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, ptr %0, i32 0, i32 0, !dbg !4616
  %1 = load volatile i64, ptr %percpu_count_ptr, align 8, !dbg !4616
  store i64 %1, ptr %tmp, align 8, !dbg !4618
  %2 = load i64, ptr %tmp, align 8, !dbg !4616
  store i64 %2, ptr %percpu_ptr, align 8, !dbg !4620
  %3 = load i64, ptr %percpu_ptr, align 8, !dbg !4621
  %and = and i64 %3, 3, !dbg !4621
  %tobool = icmp ne i64 %and, 0, !dbg !4621
  %lnot = xor i1 %tobool, true, !dbg !4621
  %lnot1 = xor i1 %lnot, true, !dbg !4621
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4621
  %conv = sext i32 %lnot.ext to i64, !dbg !4621
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4621
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4621
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4623

if.then:                                          ; preds = %do.end
  store i1 false, ptr %retval, align 1, !dbg !4624
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4624

if.end:                                           ; preds = %do.end
  %4 = load i64, ptr %percpu_ptr, align 8, !dbg !4625
  %5 = inttoptr i64 %4 to ptr, !dbg !4626
  %6 = load ptr, ptr %percpu_countp.addr, align 8, !dbg !4627
  store ptr %5, ptr %6, align 8, !dbg !4628
  store i1 true, ptr %retval, align 1, !dbg !4629
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4629

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %percpu_ptr) #17, !dbg !4630
  %7 = load i1, ptr %retval, align 1, !dbg !4630
  ret i1 %7, !dbg !4630
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_long_sub_and_test(i64 noundef %i, ptr noundef %v) #7 align 16 !dbg !4631 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4636, metadata !DIExpression()), !dbg !4638
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4637, metadata !DIExpression()), !dbg !4639
  br label %do.body, !dbg !4640

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4641

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4643
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #16, !dbg !4644
  %1 = load i64, ptr %i.addr, align 8, !dbg !4645
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4646
  %call = call zeroext i1 @raw_atomic_long_sub_and_test(i64 noundef %1, ptr noundef %2) #16, !dbg !4647
  ret i1 %call, !dbg !4648
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #3 align 16 !dbg !4649 {
entry:
  br label %do.body, !dbg !4650

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4651

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #16, !dbg !4653
  br label %do.body1, !dbg !4654

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4655

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4657
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4658 dso_local void @__rcu_read_lock() #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !4659 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4667, metadata !DIExpression()), !dbg !4669
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4668, metadata !DIExpression()), !dbg !4670
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4671
  %1 = load i64, ptr %size.addr, align 8, !dbg !4672
  %conv = trunc i64 %1 to i32, !dbg !4672
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !4673
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4674
  %3 = load i64, ptr %size.addr, align 8, !dbg !4674
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #16, !dbg !4674
  ret void, !dbg !4675
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_long_sub_and_test(i64 noundef %i, ptr noundef %v) #7 align 16 !dbg !4676 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4678, metadata !DIExpression()), !dbg !4680
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4679, metadata !DIExpression()), !dbg !4681
  %0 = load i64, ptr %i.addr, align 8, !dbg !4682
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4683
  %call = call zeroext i1 @raw_atomic64_sub_and_test(i64 noundef %0, ptr noundef %1) #16, !dbg !4684
  ret i1 %call, !dbg !4685
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !4686 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4691, metadata !DIExpression()), !dbg !4693
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4692, metadata !DIExpression()), !dbg !4694
  ret i1 true, !dbg !4695
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !4696 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4701, metadata !DIExpression()), !dbg !4704
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4702, metadata !DIExpression()), !dbg !4705
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4703, metadata !DIExpression()), !dbg !4706
  ret void, !dbg !4707
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic64_sub_and_test(i64 noundef %i, ptr noundef %v) #7 align 16 !dbg !4708 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4714, metadata !DIExpression()), !dbg !4716
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4715, metadata !DIExpression()), !dbg !4717
  %0 = load i64, ptr %i.addr, align 8, !dbg !4718
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4719
  %call = call zeroext i1 @arch_atomic64_sub_and_test(i64 noundef %0, ptr noundef %1) #16, !dbg !4720
  ret i1 %call, !dbg !4721
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic64_sub_and_test(i64 noundef %i, ptr noundef %v) #7 align 16 !dbg !4722 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4725, metadata !DIExpression()), !dbg !4729
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4726, metadata !DIExpression()), !dbg !4730
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #17, !dbg !4731
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4727, metadata !DIExpression()), !dbg !4731
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4731
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !4731
  %1 = load i64, ptr %i.addr, align 8, !dbg !4731
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; subq $2, $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter) #17, !dbg !4731, !srcloc !4732
  %3 = icmp ult i8 %2, 2, !dbg !4731
  call void @llvm.assume(i1 %3), !dbg !4731
  store i8 %2, ptr %c, align 1, !dbg !4731
  %4 = load i8, ptr %c, align 1, !dbg !4731, !range !4733, !noundef !1103
  %tobool = trunc i8 %4 to i1, !dbg !4731
  %frombool = zext i1 %tobool to i8, !dbg !4731
  store i8 %frombool, ptr %tmp, align 1, !dbg !4731
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #17, !dbg !4734
  %5 = load i8, ptr %tmp, align 1, !dbg !4731, !range !4733, !noundef !1103
  %tobool1 = trunc i8 %5 to i1, !dbg !4731
  ret i1 %tobool1, !dbg !4735
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4736 dso_local void @__rcu_read_unlock() #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @css_rdmacg(ptr noundef %css) #0 align 16 !dbg !4737 {
entry:
  %css.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %css, ptr %css.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %css.addr, metadata !4741, metadata !DIExpression()), !dbg !4744
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !4745
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4742, metadata !DIExpression()), !dbg !4745
  %0 = load ptr, ptr %css.addr, align 8, !dbg !4745
  store ptr %0, ptr %__mptr, align 8, !dbg !4745
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4745
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4745
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4745
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !4746
  %2 = load ptr, ptr %tmp, align 8, !dbg !4745
  ret ptr %2, !dbg !4747
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_get_css(ptr noundef %task, i32 noundef %subsys_id) #3 align 16 !dbg !4748 {
entry:
  %task.addr = alloca ptr, align 8
  %subsys_id.addr = alloca i32, align 4
  %css = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4752, metadata !DIExpression()), !dbg !4755
  store i32 %subsys_id, ptr %subsys_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %subsys_id.addr, metadata !4753, metadata !DIExpression()), !dbg !4756
  call void @llvm.lifetime.start.p0(i64 8, ptr %css) #17, !dbg !4757
  call void @llvm.dbg.declare(metadata ptr %css, metadata !4754, metadata !DIExpression()), !dbg !4758
  call void @rcu_read_lock() #16, !dbg !4759
  br label %while.cond, !dbg !4760

while.cond:                                       ; preds = %if.end, %entry
  br label %while.body, !dbg !4760

while.body:                                       ; preds = %while.cond
  %0 = load ptr, ptr %task.addr, align 8, !dbg !4761
  %1 = load i32, ptr %subsys_id.addr, align 4, !dbg !4763
  %call = call ptr @task_css(ptr noundef %0, i32 noundef %1) #16, !dbg !4764
  store ptr %call, ptr %css, align 8, !dbg !4765
  %2 = load ptr, ptr %css, align 8, !dbg !4766
  %call1 = call zeroext i1 @css_tryget(ptr noundef %2) #16, !dbg !4766
  %lnot = xor i1 %call1, true, !dbg !4766
  %lnot2 = xor i1 %lnot, true, !dbg !4766
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4766
  %conv = sext i32 %lnot.ext to i64, !dbg !4766
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4766
  %tobool = icmp ne i64 %expval, 0, !dbg !4766
  br i1 %tobool, label %if.then, label %if.end, !dbg !4768

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !4769

if.end:                                           ; preds = %while.body
  call void @cpu_relax() #16, !dbg !4770
  br label %while.cond, !dbg !4760, !llvm.loop !4771

while.end:                                        ; preds = %if.then
  call void @rcu_read_unlock() #16, !dbg !4773
  %3 = load ptr, ptr %css, align 8, !dbg !4774
  call void @llvm.lifetime.end.p0(i64 8, ptr %css) #17, !dbg !4775
  ret ptr %3, !dbg !4776
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #7 align 16 !dbg !4777 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #17, !dbg !4788
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4782, metadata !DIExpression()), !dbg !4788
  br label %do.body, !dbg !4788

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !4789
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4784, metadata !DIExpression()), !dbg !4789
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4789
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4789
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !4788
  br label %do.cond, !dbg !4789

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4789

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #17, !dbg !4790
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4786, metadata !DIExpression()), !dbg !4790
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #20, !dbg !4790, !srcloc !4791
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4790
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4790
  %3 = inttoptr i64 %2 to ptr, !dbg !4790
  store ptr %3, ptr %tmp, align 8, !dbg !4790
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #17, !dbg !4788
  %4 = load ptr, ptr %tmp, align 8, !dbg !4790
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4788
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4788
  store ptr %5, ptr %tmp1, align 8, !dbg !4788
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #17, !dbg !4792
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4788
  ret ptr %6, !dbg !4793
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_css(ptr noundef %task, i32 noundef %subsys_id) #3 align 16 !dbg !4794 {
entry:
  %task.addr = alloca ptr, align 8
  %subsys_id.addr = alloca i32, align 4
  %__UNIQUE_ID_rcu260 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4796, metadata !DIExpression()), !dbg !4800
  store i32 %subsys_id, ptr %subsys_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %subsys_id.addr, metadata !4797, metadata !DIExpression()), !dbg !4801
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu260) #17, !dbg !4802
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu260, metadata !4798, metadata !DIExpression()), !dbg !4802
  br label %do.body, !dbg !4803

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4805

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4805

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %task.addr, align 8, !dbg !4803
  %cgroups = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 143, !dbg !4803
  %1 = load volatile ptr, ptr %cgroups, align 8, !dbg !4803
  store ptr %1, ptr %tmp, align 8, !dbg !4805
  %2 = load ptr, ptr %tmp, align 8, !dbg !4803
  store ptr %2, ptr %__UNIQUE_ID_rcu260, align 8, !dbg !4802
  br label %do.body1, !dbg !4802

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !4807

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4807

do.end3:                                          ; preds = %do.cond2
  %3 = load ptr, ptr %__UNIQUE_ID_rcu260, align 8, !dbg !4802
  store ptr %3, ptr %tmp4, align 8, !dbg !4807
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu260) #17, !dbg !4809
  %4 = load ptr, ptr %tmp4, align 8, !dbg !4802
  %subsys = getelementptr inbounds %struct.css_set, ptr %4, i32 0, i32 0, !dbg !4809
  %5 = load i32, ptr %subsys_id.addr, align 4, !dbg !4809
  %idxprom = sext i32 %5 to i64, !dbg !4809
  %arrayidx = getelementptr [14 x ptr], ptr %subsys, i64 0, i64 %idxprom, !dbg !4809
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !4809
  ret ptr %6, !dbg !4810
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @css_tryget(ptr noundef %css) #3 align 16 !dbg !4811 {
entry:
  %retval = alloca i1, align 1
  %css.addr = alloca ptr, align 8
  store ptr %css, ptr %css.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %css.addr, metadata !4815, metadata !DIExpression()), !dbg !4816
  %0 = load ptr, ptr %css.addr, align 8, !dbg !4817
  %flags = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 7, !dbg !4819
  %1 = load i32, ptr %flags, align 4, !dbg !4819
  %and = and i32 %1, 1, !dbg !4820
  %tobool = icmp ne i32 %and, 0, !dbg !4820
  br i1 %tobool, label %if.end, label %if.then, !dbg !4821

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %css.addr, align 8, !dbg !4822
  %refcnt = getelementptr inbounds %struct.cgroup_subsys_state, ptr %2, i32 0, i32 2, !dbg !4823
  %call = call zeroext i1 @percpu_ref_tryget(ptr noundef %refcnt) #16, !dbg !4824
  store i1 %call, ptr %retval, align 1, !dbg !4825
  br label %return, !dbg !4825

if.end:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !4826
  br label %return, !dbg !4826

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, ptr %retval, align 1, !dbg !4827
  ret i1 %3, !dbg !4827
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #7 align 16 !dbg !4828 {
entry:
  call void @rep_nop() #16, !dbg !4830
  ret void, !dbg !4831
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @percpu_ref_tryget(ptr noundef %ref) #3 align 16 !dbg !4832 {
entry:
  %ref.addr = alloca ptr, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !4836, metadata !DIExpression()), !dbg !4837
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !4838
  %call = call zeroext i1 @percpu_ref_tryget_many(ptr noundef %0, i64 noundef 1) #16, !dbg !4839
  ret i1 %call, !dbg !4840
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @percpu_ref_tryget_many(ptr noundef %ref, i64 noundef %nr) #3 align 16 !dbg !4841 {
entry:
  %ref.addr = alloca ptr, align 8
  %nr.addr = alloca i64, align 8
  %percpu_count = alloca ptr, align 8
  %ret = alloca i8, align 1
  %__vpp_verify = alloca ptr, align 8
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i64, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !4845, metadata !DIExpression()), !dbg !4860
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4846, metadata !DIExpression()), !dbg !4861
  call void @llvm.lifetime.start.p0(i64 8, ptr %percpu_count) #17, !dbg !4862
  call void @llvm.dbg.declare(metadata ptr %percpu_count, metadata !4847, metadata !DIExpression()), !dbg !4863
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #17, !dbg !4864
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4848, metadata !DIExpression()), !dbg !4865
  call void @rcu_read_lock() #16, !dbg !4866
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !4867
  %call = call zeroext i1 @__ref_is_percpu(ptr noundef %0, ptr noundef %percpu_count) #16, !dbg !4868
  br i1 %call, label %if.then, label %if.else19, !dbg !4869

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4870

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !4871

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !4872
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4849, metadata !DIExpression()), !dbg !4872
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4872
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !4872
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !4871
  br label %do.cond, !dbg !4872

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4872

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !4871

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #17, !dbg !4873
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !4854, metadata !DIExpression()), !dbg !4873
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4873
  %3 = call i1 @llvm.is.constant.i64(i64 %2), !dbg !4873
  br i1 %3, label %land.lhs.true, label %cond.false, !dbg !4873

land.lhs.true:                                    ; preds = %do.body2
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4873
  %cmp = icmp eq i64 %4, 1, !dbg !4873
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !4873

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load i64, ptr %nr.addr, align 8, !dbg !4873
  %cmp3 = icmp eq i64 %5, -1, !dbg !4873
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !4873

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %6 = load i64, ptr %nr.addr, align 8, !dbg !4873
  %conv = trunc i64 %6 to i32, !dbg !4873
  br label %cond.end, !dbg !4873

cond.false:                                       ; preds = %lor.lhs.false, %do.body2
  br label %cond.end, !dbg !4873

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ], !dbg !4873
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !4873
  %7 = load i32, ptr %pao_ID__, align 4, !dbg !4874
  %cmp4 = icmp eq i32 %7, 1, !dbg !4874
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !4873

if.then6:                                         ; preds = %cond.end
  %8 = load ptr, ptr %percpu_count, align 8, !dbg !4875
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %8, ptr elementtype(i64) %8) #17, !dbg !4875, !srcloc !4877
  br label %if.end14, !dbg !4874

if.else:                                          ; preds = %cond.end
  %9 = load i32, ptr %pao_ID__, align 4, !dbg !4878
  %cmp7 = icmp eq i32 %9, -1, !dbg !4878
  br i1 %cmp7, label %if.then9, label %if.else10, !dbg !4874

if.then9:                                         ; preds = %if.else
  %10 = load ptr, ptr %percpu_count, align 8, !dbg !4879
  call void asm sideeffect "decq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %10, ptr elementtype(i64) %10) #17, !dbg !4879, !srcloc !4881
  br label %if.end, !dbg !4878

if.else10:                                        ; preds = %if.else
  br label %do.body11, !dbg !4878

do.body11:                                        ; preds = %if.else10
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__) #17, !dbg !4882
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !4856, metadata !DIExpression()), !dbg !4882
  %11 = load i64, ptr %nr.addr, align 8, !dbg !4882
  store i64 %11, ptr %pto_val__, align 8, !dbg !4882
  %12 = load ptr, ptr %percpu_count, align 8, !dbg !4882
  %13 = load i64, ptr %pto_val__, align 8, !dbg !4882
  call void asm sideeffect "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %12, i64 %13, ptr elementtype(i64) %12) #17, !dbg !4882, !srcloc !4883
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__) #17, !dbg !4878
  br label %do.cond12, !dbg !4882

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4882

do.end13:                                         ; preds = %do.cond12
  br label %if.end

if.end:                                           ; preds = %do.end13, %if.then9
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #17, !dbg !4871
  br label %do.cond15, !dbg !4873

do.cond15:                                        ; preds = %if.end14
  br label %do.end16, !dbg !4873

do.end16:                                         ; preds = %do.cond15
  br label %do.cond17, !dbg !4871

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !4871

do.end18:                                         ; preds = %do.cond17
  store i8 1, ptr %ret, align 1, !dbg !4884
  br label %if.end21, !dbg !4885

if.else19:                                        ; preds = %entry
  %14 = load ptr, ptr %ref.addr, align 8, !dbg !4886
  %data = getelementptr inbounds %struct.percpu_ref, ptr %14, i32 0, i32 1, !dbg !4888
  %15 = load ptr, ptr %data, align 8, !dbg !4888
  %count = getelementptr inbounds %struct.percpu_ref_data, ptr %15, i32 0, i32 0, !dbg !4889
  %16 = load i64, ptr %nr.addr, align 8, !dbg !4890
  %call20 = call zeroext i1 @atomic_long_add_unless(ptr noundef %count, i64 noundef %16, i64 noundef 0) #16, !dbg !4891
  %frombool = zext i1 %call20 to i8, !dbg !4892
  store i8 %frombool, ptr %ret, align 1, !dbg !4892
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %do.end18
  call void @rcu_read_unlock() #16, !dbg !4893
  %17 = load i8, ptr %ret, align 1, !dbg !4894, !range !4733, !noundef !1103
  %tobool = trunc i8 %17 to i1, !dbg !4894
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #17, !dbg !4895
  call void @llvm.lifetime.end.p0(i64 8, ptr %percpu_count) #17, !dbg !4895
  ret i1 %tobool, !dbg !4896
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_long_add_unless(ptr noundef %v, i64 noundef %a, i64 noundef %u) #7 align 16 !dbg !4897 {
entry:
  %v.addr = alloca ptr, align 8
  %a.addr = alloca i64, align 8
  %u.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4901, metadata !DIExpression()), !dbg !4904
  store i64 %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !4902, metadata !DIExpression()), !dbg !4905
  store i64 %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !4903, metadata !DIExpression()), !dbg !4906
  br label %do.body, !dbg !4907

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4908

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4910
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #16, !dbg !4911
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4912
  %2 = load i64, ptr %a.addr, align 8, !dbg !4913
  %3 = load i64, ptr %u.addr, align 8, !dbg !4914
  %call = call zeroext i1 @raw_atomic_long_add_unless(ptr noundef %1, i64 noundef %2, i64 noundef %3) #16, !dbg !4915
  ret i1 %call, !dbg !4916
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_long_add_unless(ptr noundef %v, i64 noundef %a, i64 noundef %u) #7 align 16 !dbg !4917 {
entry:
  %v.addr = alloca ptr, align 8
  %a.addr = alloca i64, align 8
  %u.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4919, metadata !DIExpression()), !dbg !4922
  store i64 %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !4920, metadata !DIExpression()), !dbg !4923
  store i64 %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !4921, metadata !DIExpression()), !dbg !4924
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4925
  %1 = load i64, ptr %a.addr, align 8, !dbg !4926
  %2 = load i64, ptr %u.addr, align 8, !dbg !4927
  %call = call zeroext i1 @raw_atomic64_add_unless(ptr noundef %0, i64 noundef %1, i64 noundef %2) #16, !dbg !4928
  ret i1 %call, !dbg !4929
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic64_add_unless(ptr noundef %v, i64 noundef %a, i64 noundef %u) #7 align 16 !dbg !4930 {
entry:
  %v.addr = alloca ptr, align 8
  %a.addr = alloca i64, align 8
  %u.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4934, metadata !DIExpression()), !dbg !4937
  store i64 %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !4935, metadata !DIExpression()), !dbg !4938
  store i64 %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !4936, metadata !DIExpression()), !dbg !4939
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4940
  %1 = load i64, ptr %a.addr, align 8, !dbg !4941
  %2 = load i64, ptr %u.addr, align 8, !dbg !4942
  %call = call i64 @raw_atomic64_fetch_add_unless(ptr noundef %0, i64 noundef %1, i64 noundef %2) #16, !dbg !4943
  %3 = load i64, ptr %u.addr, align 8, !dbg !4944
  %cmp = icmp ne i64 %call, %3, !dbg !4945
  ret i1 %cmp, !dbg !4946
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_fetch_add_unless(ptr noundef %v, i64 noundef %a, i64 noundef %u) #7 align 16 !dbg !4947 {
entry:
  %v.addr = alloca ptr, align 8
  %a.addr = alloca i64, align 8
  %u.addr = alloca i64, align 8
  %c = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4951, metadata !DIExpression()), !dbg !4955
  store i64 %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !4952, metadata !DIExpression()), !dbg !4956
  store i64 %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !4953, metadata !DIExpression()), !dbg !4957
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #17, !dbg !4958
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4954, metadata !DIExpression()), !dbg !4959
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4960
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #16, !dbg !4961
  store i64 %call, ptr %c, align 8, !dbg !4959
  br label %do.body, !dbg !4962

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i64, ptr %c, align 8, !dbg !4963
  %2 = load i64, ptr %u.addr, align 8, !dbg !4963
  %cmp = icmp eq i64 %1, %2, !dbg !4963
  %lnot = xor i1 %cmp, true, !dbg !4963
  %lnot1 = xor i1 %lnot, true, !dbg !4963
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4963
  %conv = sext i32 %lnot.ext to i64, !dbg !4963
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4963
  %tobool = icmp ne i64 %expval, 0, !dbg !4963
  br i1 %tobool, label %if.then, label %if.end, !dbg !4966

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !4967

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !4968

do.cond:                                          ; preds = %if.end
  %3 = load ptr, ptr %v.addr, align 8, !dbg !4969
  %4 = load i64, ptr %c, align 8, !dbg !4970
  %5 = load i64, ptr %a.addr, align 8, !dbg !4971
  %add = add i64 %4, %5, !dbg !4972
  %call2 = call zeroext i1 @raw_atomic64_try_cmpxchg(ptr noundef %3, ptr noundef %c, i64 noundef %add) #16, !dbg !4973
  %lnot3 = xor i1 %call2, true, !dbg !4974
  br i1 %lnot3, label %do.body, label %do.end, !dbg !4968, !llvm.loop !4975

do.end:                                           ; preds = %do.cond, %if.then
  %6 = load i64, ptr %c, align 8, !dbg !4977
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #17, !dbg !4978
  ret i64 %6, !dbg !4979
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #7 align 16 !dbg !4980 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4986, metadata !DIExpression()), !dbg !4987
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4988
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #16, !dbg !4989
  ret i64 %call, !dbg !4990
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic64_try_cmpxchg(ptr noundef %v, ptr noundef %old, i64 noundef %new) #7 align 16 !dbg !4991 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4995, metadata !DIExpression()), !dbg !4998
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !4996, metadata !DIExpression()), !dbg !4999
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4997, metadata !DIExpression()), !dbg !5000
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5001
  %1 = load ptr, ptr %old.addr, align 8, !dbg !5002
  %2 = load i64, ptr %new.addr, align 8, !dbg !5003
  %call = call zeroext i1 @arch_atomic64_try_cmpxchg(ptr noundef %0, ptr noundef %1, i64 noundef %2) #16, !dbg !5004
  ret i1 %call, !dbg !5005
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #7 align 16 !dbg !5006 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5008, metadata !DIExpression()), !dbg !5009
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5010
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !5010
  %1 = load volatile i64, ptr %counter, align 8, !dbg !5010
  ret i64 %1, !dbg !5011
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic64_try_cmpxchg(ptr noundef %v, ptr noundef %old, i64 noundef %new) #7 align 16 !dbg !5012 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5014, metadata !DIExpression()), !dbg !5023
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !5015, metadata !DIExpression()), !dbg !5024
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5016, metadata !DIExpression()), !dbg !5025
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #17, !dbg !5026
  call void @llvm.dbg.declare(metadata ptr %success, metadata !5017, metadata !DIExpression()), !dbg !5026
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #17, !dbg !5026
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !5019, metadata !DIExpression()), !dbg !5026
  %0 = load ptr, ptr %old.addr, align 8, !dbg !5026
  store ptr %0, ptr %_old, align 8, !dbg !5026
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #17, !dbg !5026
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !5020, metadata !DIExpression()), !dbg !5026
  %1 = load ptr, ptr %_old, align 8, !dbg !5026
  %2 = load i64, ptr %1, align 8, !dbg !5026
  store i64 %2, ptr %__old, align 8, !dbg !5026
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #17, !dbg !5026
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !5021, metadata !DIExpression()), !dbg !5026
  %3 = load i64, ptr %new.addr, align 8, !dbg !5026
  store i64 %3, ptr %__new, align 8, !dbg !5026
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !5026
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5022, metadata !DIExpression()), !dbg !5026
  %4 = load ptr, ptr %v.addr, align 8, !dbg !5026
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %4, i32 0, i32 0, !dbg !5026
  store ptr %counter, ptr %__ptr, align 8, !dbg !5026
  %5 = load ptr, ptr %__ptr, align 8, !dbg !5026
  %6 = load i64, ptr %__old, align 8, !dbg !5026
  %7 = load i64, ptr %__new, align 8, !dbg !5026
  %8 = call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %7, ptr elementtype(i64) %5, i64 %6) #17, !dbg !5026, !srcloc !5027
  %asmresult = extractvalue { i8, i64 } %8, 0, !dbg !5026
  %asmresult1 = extractvalue { i8, i64 } %8, 1, !dbg !5026
  %9 = icmp ult i8 %asmresult, 2, !dbg !5026
  call void @llvm.assume(i1 %9), !dbg !5026
  store i8 %asmresult, ptr %success, align 1, !dbg !5026
  store i64 %asmresult1, ptr %__old, align 8, !dbg !5026
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !5026
  %10 = load i8, ptr %success, align 1, !dbg !5028, !range !4733, !noundef !1103
  %tobool = trunc i8 %10 to i1, !dbg !5028
  %lnot = xor i1 %tobool, true, !dbg !5028
  %lnot2 = xor i1 %lnot, true, !dbg !5028
  %lnot3 = xor i1 %lnot2, true, !dbg !5028
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5028
  %conv = sext i32 %lnot.ext to i64, !dbg !5028
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5028
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5028
  br i1 %tobool4, label %if.then, label %if.end, !dbg !5026

if.then:                                          ; preds = %entry
  %11 = load i64, ptr %__old, align 8, !dbg !5028
  %12 = load ptr, ptr %_old, align 8, !dbg !5028
  store i64 %11, ptr %12, align 8, !dbg !5028
  br label %if.end, !dbg !5028

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !5026, !range !4733, !noundef !1103
  %tobool5 = trunc i8 %13 to i1, !dbg !5026
  %lnot6 = xor i1 %tobool5, true, !dbg !5026
  %lnot8 = xor i1 %lnot6, true, !dbg !5026
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !5026
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !5026
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !5026
  store i64 %expval11, ptr %tmp, align 8, !dbg !5028
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #17, !dbg !5030
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #17, !dbg !5030
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #17, !dbg !5030
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #17, !dbg !5030
  %14 = load i64, ptr %tmp, align 8, !dbg !5026
  %tobool12 = icmp ne i64 %14, 0, !dbg !5030
  ret i1 %tobool12, !dbg !5031
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #7 align 16 !dbg !5032 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !5033, !srcloc !5034
  ret void, !dbg !5035
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !5036 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5040, metadata !DIExpression()), !dbg !5042
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5041, metadata !DIExpression()), !dbg !5043
  %0 = load i64, ptr %size.addr, align 8, !dbg !5044
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5045
  %or = or i32 %1, 256, !dbg !5046
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !5047
  ret ptr %call, !dbg !5048
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !5049 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5053, metadata !DIExpression()), !dbg !5054
  %0 = load i64, ptr %error.addr, align 8, !dbg !5055
  %1 = inttoptr i64 %0 to ptr, !dbg !5056
  ret ptr %1, !dbg !5057
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_all_resource_max_limit(ptr noundef %rpool) #0 align 16 !dbg !5058 {
entry:
  %rpool.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %rpool, ptr %rpool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rpool.addr, metadata !5060, metadata !DIExpression()), !dbg !5062
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !5063
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5061, metadata !DIExpression()), !dbg !5064
  store i32 0, ptr %i, align 4, !dbg !5065
  br label %for.cond, !dbg !5067

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5068
  %cmp = icmp slt i32 %0, 2, !dbg !5070
  br i1 %cmp, label %for.body, label %for.end, !dbg !5071

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %rpool.addr, align 8, !dbg !5072
  %2 = load i32, ptr %i, align 4, !dbg !5073
  call void @set_resource_limit(ptr noundef %1, i32 noundef %2, i32 noundef 2147483647) #16, !dbg !5074
  br label %for.inc, !dbg !5074

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !dbg !5075
  %inc = add i32 %3, 1, !dbg !5075
  store i32 %inc, ptr %i, align 4, !dbg !5075
  br label %for.cond, !dbg !5076, !llvm.loop !5077

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !5079
  ret void, !dbg !5079
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !5080 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5082, metadata !DIExpression()), !dbg !5087
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5083, metadata !DIExpression()), !dbg !5088
  %0 = load i64, ptr %size.addr, align 8, !dbg !5089
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5090
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5091

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5092
  %tobool = icmp ne i64 %2, 0, !dbg !5092
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5093

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !5094
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5084, metadata !DIExpression()), !dbg !5095
  %3 = load i64, ptr %size.addr, align 8, !dbg !5096
  %cmp = icmp ugt i64 %3, 8192, !dbg !5098
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5099

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5100
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5101
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !5102
  store ptr %call, ptr %retval, align 8, !dbg !5103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5103

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5104
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !5104
  store i32 %call2, ptr %index, align 4, !dbg !5105
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5106
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5107
  %9 = ptrtoint ptr %8 to i64, !dbg !5107
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !5108
  %idxprom = zext i32 %call3 to i64, !dbg !5109
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5109
  %10 = load i32, ptr %index, align 4, !dbg !5110
  %idxprom4 = zext i32 %10 to i64, !dbg !5109
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5109
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5109
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5111
  %13 = load i64, ptr %size.addr, align 8, !dbg !5112
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !5113
  store ptr %call6, ptr %retval, align 8, !dbg !5114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5114

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !5115
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5116
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5117
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !5118
  store ptr %call8, ptr %retval, align 8, !dbg !5119
  br label %return, !dbg !5119

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5120
  ret ptr %16, !dbg !5120
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5121 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !5122 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5126, metadata !DIExpression()), !dbg !5128
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5127, metadata !DIExpression()), !dbg !5129
  %0 = load i64, ptr %size.addr, align 8, !dbg !5130
  %tobool = icmp ne i64 %0, 0, !dbg !5130
  br i1 %tobool, label %if.end, label %if.then, !dbg !5132

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5133
  br label %return, !dbg !5133

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5134
  %cmp = icmp ule i64 %1, 8, !dbg !5136
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5137

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5138
  br label %return, !dbg !5138

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5139
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5141
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5142

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5143
  %cmp4 = icmp ule i64 %3, 96, !dbg !5144
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5145

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5146
  br label %return, !dbg !5146

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5147
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5149
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5150

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5151
  %cmp9 = icmp ule i64 %5, 192, !dbg !5152
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5153

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5154
  br label %return, !dbg !5154

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5155
  %cmp12 = icmp ule i64 %6, 8, !dbg !5157
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5158

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5159
  br label %return, !dbg !5159

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5160
  %cmp15 = icmp ule i64 %7, 16, !dbg !5162
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5163

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5164
  br label %return, !dbg !5164

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5165
  %cmp18 = icmp ule i64 %8, 32, !dbg !5167
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5168

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5169
  br label %return, !dbg !5169

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5170
  %cmp21 = icmp ule i64 %9, 64, !dbg !5172
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5173

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5174
  br label %return, !dbg !5174

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5175
  %cmp24 = icmp ule i64 %10, 128, !dbg !5177
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5178

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5179
  br label %return, !dbg !5179

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5180
  %cmp27 = icmp ule i64 %11, 256, !dbg !5182
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5183

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5184
  br label %return, !dbg !5184

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5185
  %cmp30 = icmp ule i64 %12, 512, !dbg !5187
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5188

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5189
  br label %return, !dbg !5189

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5190
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5192
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5193

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5194
  br label %return, !dbg !5194

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5195
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5197
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5198

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5199
  br label %return, !dbg !5199

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5200
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5202
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5203

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5204
  br label %return, !dbg !5204

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5205
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5207
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5208

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5209
  br label %return, !dbg !5209

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5210
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5212
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5213

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5214
  br label %return, !dbg !5214

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5215
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5217
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5218

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5219
  br label %return, !dbg !5219

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5220
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5222
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5223

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5224
  br label %return, !dbg !5224

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5225
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5227
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5228

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5229
  br label %return, !dbg !5229

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5230
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5232
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5233

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5234
  br label %return, !dbg !5234

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5235
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5237
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5238

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5239
  br label %return, !dbg !5239

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5240
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5242
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5243

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5244
  br label %return, !dbg !5244

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5245
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5247
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5248

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5249
  br label %return, !dbg !5249

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5250, !range !4733, !noundef !1103
  %tobool69 = trunc i8 %25 to i1, !dbg !5250
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5252

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5253

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #22, !dbg !5254, !srcloc !5257
  unreachable, !dbg !5254

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5258

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5259

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5260

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5262

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5260

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #17, !dbg !5264, !srcloc !5266
  br label %do.end75, !dbg !5264

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5260

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5267
  br label %return, !dbg !5267

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5268
  ret i32 %26, !dbg !5268
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5269 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !5274 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5278, metadata !DIExpression()), !dbg !5280
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5279, metadata !DIExpression()), !dbg !5281
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5282
  %and = and i32 %0, 17, !dbg !5282
  %cmp = icmp eq i32 %and, 0, !dbg !5282
  %lnot = xor i1 %cmp, true, !dbg !5282
  %lnot1 = xor i1 %lnot, true, !dbg !5282
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5282
  %conv = sext i32 %lnot.ext to i64, !dbg !5282
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5282
  %tobool = icmp ne i64 %expval, 0, !dbg !5282
  br i1 %tobool, label %if.then, label %if.end, !dbg !5284

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5285
  br label %return, !dbg !5285

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5286
  %and2 = and i32 %1, 1, !dbg !5288
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5288
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5289

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5290
  br label %return, !dbg !5290

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5291
  br label %return, !dbg !5291

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5293
  ret i32 %2, !dbg !5293
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5294 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5295 dso_local void @__compiletime_assert_117() #14

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_resource_limit(ptr noundef %rpool, i32 noundef %index, i32 noundef %new_max) #0 align 16 !dbg !5296 {
entry:
  %rpool.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %new_max.addr = alloca i32, align 4
  store ptr %rpool, ptr %rpool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rpool.addr, metadata !5300, metadata !DIExpression()), !dbg !5303
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !5301, metadata !DIExpression()), !dbg !5304
  store i32 %new_max, ptr %new_max.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new_max.addr, metadata !5302, metadata !DIExpression()), !dbg !5305
  %0 = load i32, ptr %new_max.addr, align 4, !dbg !5306
  %cmp = icmp eq i32 %0, 2147483647, !dbg !5308
  br i1 %cmp, label %if.then, label %if.else, !dbg !5309

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %rpool.addr, align 8, !dbg !5310
  %resources = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %1, i32 0, i32 1, !dbg !5313
  %2 = load i32, ptr %index.addr, align 4, !dbg !5314
  %idxprom = sext i32 %2 to i64, !dbg !5310
  %arrayidx = getelementptr [2 x %struct.rdmacg_resource], ptr %resources, i64 0, i64 %idxprom, !dbg !5310
  %max = getelementptr inbounds %struct.rdmacg_resource, ptr %arrayidx, i32 0, i32 0, !dbg !5315
  %3 = load i32, ptr %max, align 8, !dbg !5315
  %cmp1 = icmp ne i32 %3, 2147483647, !dbg !5316
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !5317

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %rpool.addr, align 8, !dbg !5318
  %num_max_cnt = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %4, i32 0, i32 5, !dbg !5319
  %5 = load i32, ptr %num_max_cnt, align 8, !dbg !5320
  %inc = add i32 %5, 1, !dbg !5320
  store i32 %inc, ptr %num_max_cnt, align 8, !dbg !5320
  br label %if.end, !dbg !5318

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end11, !dbg !5321

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %rpool.addr, align 8, !dbg !5322
  %resources3 = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %6, i32 0, i32 1, !dbg !5325
  %7 = load i32, ptr %index.addr, align 4, !dbg !5326
  %idxprom4 = sext i32 %7 to i64, !dbg !5322
  %arrayidx5 = getelementptr [2 x %struct.rdmacg_resource], ptr %resources3, i64 0, i64 %idxprom4, !dbg !5322
  %max6 = getelementptr inbounds %struct.rdmacg_resource, ptr %arrayidx5, i32 0, i32 0, !dbg !5327
  %8 = load i32, ptr %max6, align 8, !dbg !5327
  %cmp7 = icmp eq i32 %8, 2147483647, !dbg !5328
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !5329

if.then8:                                         ; preds = %if.else
  %9 = load ptr, ptr %rpool.addr, align 8, !dbg !5330
  %num_max_cnt9 = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %9, i32 0, i32 5, !dbg !5331
  %10 = load i32, ptr %num_max_cnt9, align 8, !dbg !5332
  %dec = add i32 %10, -1, !dbg !5332
  store i32 %dec, ptr %num_max_cnt9, align 8, !dbg !5332
  br label %if.end10, !dbg !5330

if.end10:                                         ; preds = %if.then8, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  %11 = load i32, ptr %new_max.addr, align 4, !dbg !5333
  %12 = load ptr, ptr %rpool.addr, align 8, !dbg !5334
  %resources12 = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %12, i32 0, i32 1, !dbg !5335
  %13 = load i32, ptr %index.addr, align 4, !dbg !5336
  %idxprom13 = sext i32 %13 to i64, !dbg !5334
  %arrayidx14 = getelementptr [2 x %struct.rdmacg_resource], ptr %resources12, i64 0, i64 %idxprom13, !dbg !5334
  %max15 = getelementptr inbounds %struct.rdmacg_resource, ptr %arrayidx14, i32 0, i32 0, !dbg !5337
  store i32 %11, ptr %max15, align 8, !dbg !5338
  ret void, !dbg !5339
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5340 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5344, metadata !DIExpression()), !dbg !5347
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5345, metadata !DIExpression()), !dbg !5348
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5346, metadata !DIExpression()), !dbg !5349
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5350
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5352
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5353
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !5354
  br i1 %call, label %if.end, label %if.then, !dbg !5355

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5356

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5357
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5358
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5359
  store ptr %3, ptr %prev1, align 8, !dbg !5360
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5361
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5362
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5363
  store ptr %5, ptr %next2, align 8, !dbg !5364
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5365
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5366
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5367
  store ptr %7, ptr %prev3, align 8, !dbg !5368
  br label %do.body, !dbg !5369

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5370

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5372

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5370

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5374
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5374
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5374
  store volatile ptr %9, ptr %next6, align 8, !dbg !5374
  br label %do.end7, !dbg !5374

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5370

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5376
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5377 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5381, metadata !DIExpression()), !dbg !5384
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5382, metadata !DIExpression()), !dbg !5385
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5383, metadata !DIExpression()), !dbg !5386
  ret i1 true, !dbg !5387
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !5388 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5390, metadata !DIExpression()), !dbg !5391
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5392
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #16, !dbg !5394
  br i1 %call, label %if.end, label %if.then, !dbg !5395

if.then:                                          ; preds = %entry
  br label %return, !dbg !5396

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5397
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5398
  %2 = load ptr, ptr %prev, align 8, !dbg !5398
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5399
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5400
  %4 = load ptr, ptr %next, align 8, !dbg !5400
  call void @__list_del(ptr noundef %2, ptr noundef %4) #16, !dbg !5401
  br label %return, !dbg !5402

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5402
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !5403 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5407, metadata !DIExpression()), !dbg !5408
  ret i1 true, !dbg !5409
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5410 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5412, metadata !DIExpression()), !dbg !5414
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5413, metadata !DIExpression()), !dbg !5415
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !5416
  %1 = load ptr, ptr %next.addr, align 8, !dbg !5417
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5418
  store ptr %0, ptr %prev1, align 8, !dbg !5419
  br label %do.body, !dbg !5420

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5421

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5423

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5421

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5425
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5425
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5425
  store volatile ptr %2, ptr %next4, align 8, !dbg !5425
  br label %do.end5, !dbg !5425

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5421

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5427
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #3 align 16 !dbg !5428 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5430, metadata !DIExpression()), !dbg !5431
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5432
  call void @__list_del_entry(ptr noundef %0) #16, !dbg !5433
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5434
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5435
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5436
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5437
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5438
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5439
  ret void, !dbg !5440
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5441 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rdmacg_resource_read(ptr noundef %sf, ptr noundef %v) #0 align 16 !dbg !5444 {
entry:
  %sf.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %device = alloca ptr, align 8
  %rpool = alloca ptr, align 8
  %cg = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %sf, ptr %sf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sf.addr, metadata !5446, metadata !DIExpression()), !dbg !5457
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5447, metadata !DIExpression()), !dbg !5458
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #17, !dbg !5459
  call void @llvm.dbg.declare(metadata ptr %device, metadata !5448, metadata !DIExpression()), !dbg !5460
  call void @llvm.lifetime.start.p0(i64 8, ptr %rpool) #17, !dbg !5461
  call void @llvm.dbg.declare(metadata ptr %rpool, metadata !5449, metadata !DIExpression()), !dbg !5462
  call void @llvm.lifetime.start.p0(i64 8, ptr %cg) #17, !dbg !5463
  call void @llvm.dbg.declare(metadata ptr %cg, metadata !5450, metadata !DIExpression()), !dbg !5464
  %0 = load ptr, ptr %sf.addr, align 8, !dbg !5465
  %call = call ptr @seq_css(ptr noundef %0) #16, !dbg !5466
  %call1 = call ptr @css_rdmacg(ptr noundef %call) #16, !dbg !5467
  store ptr %call1, ptr %cg, align 8, !dbg !5464
  call void @mutex_lock(ptr noundef @rdmacg_mutex) #16, !dbg !5468
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5469
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5451, metadata !DIExpression()), !dbg !5469
  %1 = load ptr, ptr @rdmacg_devices, align 8, !dbg !5469
  store ptr %1, ptr %__mptr, align 8, !dbg !5469
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5469
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5469
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5469
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5470
  %3 = load ptr, ptr %tmp, align 8, !dbg !5469
  store ptr %3, ptr %device, align 8, !dbg !5470
  br label %for.cond, !dbg !5470

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %device, align 8, !dbg !5471
  %dev_node = getelementptr inbounds %struct.rdmacg_device, ptr %4, i32 0, i32 0, !dbg !5471
  %cmp = icmp eq ptr %dev_node, @rdmacg_devices, !dbg !5471
  %lnot = xor i1 %cmp, true, !dbg !5471
  br i1 %lnot, label %for.body, label %for.end, !dbg !5470

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %sf.addr, align 8, !dbg !5472
  %6 = load ptr, ptr %device, align 8, !dbg !5474
  %name = getelementptr inbounds %struct.rdmacg_device, ptr %6, i32 0, i32 2, !dbg !5475
  %7 = load ptr, ptr %name, align 8, !dbg !5475
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef @.str.3, ptr noundef %7) #16, !dbg !5476
  %8 = load ptr, ptr %cg, align 8, !dbg !5477
  %9 = load ptr, ptr %device, align 8, !dbg !5478
  %call2 = call ptr @find_cg_rpool_locked(ptr noundef %8, ptr noundef %9) #16, !dbg !5479
  store ptr %call2, ptr %rpool, align 8, !dbg !5480
  %10 = load ptr, ptr %sf.addr, align 8, !dbg !5481
  %11 = load ptr, ptr %rpool, align 8, !dbg !5482
  call void @print_rpool_values(ptr noundef %10, ptr noundef %11) #16, !dbg !5483
  %12 = load ptr, ptr %sf.addr, align 8, !dbg !5484
  call void @seq_putc(ptr noundef %12, i8 noundef zeroext 10) #16, !dbg !5485
  br label %for.inc, !dbg !5486

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #17, !dbg !5487
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !5454, metadata !DIExpression()), !dbg !5487
  %13 = load ptr, ptr %device, align 8, !dbg !5487
  %dev_node4 = getelementptr inbounds %struct.rdmacg_device, ptr %13, i32 0, i32 0, !dbg !5487
  %next = getelementptr inbounds %struct.list_head, ptr %dev_node4, i32 0, i32 0, !dbg !5487
  %14 = load ptr, ptr %next, align 8, !dbg !5487
  store ptr %14, ptr %__mptr3, align 8, !dbg !5487
  %15 = load ptr, ptr %__mptr3, align 8, !dbg !5487
  %add.ptr6 = getelementptr i8, ptr %15, i64 0, !dbg !5487
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !5487
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #17, !dbg !5471
  %16 = load ptr, ptr %tmp5, align 8, !dbg !5487
  store ptr %16, ptr %device, align 8, !dbg !5471
  br label %for.cond, !dbg !5471, !llvm.loop !5488

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @rdmacg_mutex) #16, !dbg !5490
  call void @llvm.lifetime.end.p0(i64 8, ptr %cg) #17, !dbg !5491
  call void @llvm.lifetime.end.p0(i64 8, ptr %rpool) #17, !dbg !5491
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #17, !dbg !5491
  ret i32 0, !dbg !5492
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rdmacg_resource_set_max(ptr noundef %of, ptr noundef %buf, i64 noundef %nbytes, i64 noundef %off) #0 align 16 !dbg !5493 {
entry:
  %of.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %nbytes.addr = alloca i64, align 8
  %off.addr = alloca i64, align 8
  %cg = alloca ptr, align 8
  %dev_name = alloca ptr, align 8
  %rpool = alloca ptr, align 8
  %device = alloca ptr, align 8
  %options = alloca ptr, align 8
  %new_limits = alloca ptr, align 8
  %enables = alloca i64, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %of, ptr %of.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %of.addr, metadata !5495, metadata !DIExpression()), !dbg !5511
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5496, metadata !DIExpression()), !dbg !5512
  store i64 %nbytes, ptr %nbytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbytes.addr, metadata !5497, metadata !DIExpression()), !dbg !5513
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5498, metadata !DIExpression()), !dbg !5514
  call void @llvm.lifetime.start.p0(i64 8, ptr %cg) #17, !dbg !5515
  call void @llvm.dbg.declare(metadata ptr %cg, metadata !5499, metadata !DIExpression()), !dbg !5516
  %0 = load ptr, ptr %of.addr, align 8, !dbg !5517
  %call = call ptr @of_css(ptr noundef %0) #16, !dbg !5518
  %call1 = call ptr @css_rdmacg(ptr noundef %call) #16, !dbg !5519
  store ptr %call1, ptr %cg, align 8, !dbg !5516
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev_name) #17, !dbg !5520
  call void @llvm.dbg.declare(metadata ptr %dev_name, metadata !5500, metadata !DIExpression()), !dbg !5521
  call void @llvm.lifetime.start.p0(i64 8, ptr %rpool) #17, !dbg !5522
  call void @llvm.dbg.declare(metadata ptr %rpool, metadata !5501, metadata !DIExpression()), !dbg !5523
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #17, !dbg !5524
  call void @llvm.dbg.declare(metadata ptr %device, metadata !5502, metadata !DIExpression()), !dbg !5525
  call void @llvm.lifetime.start.p0(i64 8, ptr %options) #17, !dbg !5526
  call void @llvm.dbg.declare(metadata ptr %options, metadata !5503, metadata !DIExpression()), !dbg !5527
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !5528
  %call2 = call ptr @strstrip(ptr noundef %1) #16, !dbg !5529
  store ptr %call2, ptr %options, align 8, !dbg !5527
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_limits) #17, !dbg !5530
  call void @llvm.dbg.declare(metadata ptr %new_limits, metadata !5504, metadata !DIExpression()), !dbg !5531
  call void @llvm.lifetime.start.p0(i64 8, ptr %enables) #17, !dbg !5532
  call void @llvm.dbg.declare(metadata ptr %enables, metadata !5505, metadata !DIExpression()), !dbg !5533
  store i64 0, ptr %enables, align 8, !dbg !5533
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !5534
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5506, metadata !DIExpression()), !dbg !5535
  store i32 0, ptr %i, align 4, !dbg !5535
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !5534
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5507, metadata !DIExpression()), !dbg !5536
  store i32 0, ptr %ret, align 4, !dbg !5536
  %call3 = call ptr @strsep(ptr noundef %options, ptr noundef @.str.8) #16, !dbg !5537
  store ptr %call3, ptr %dev_name, align 8, !dbg !5538
  %2 = load ptr, ptr %dev_name, align 8, !dbg !5539
  %tobool = icmp ne ptr %2, null, !dbg !5539
  br i1 %tobool, label %if.end, label %if.then, !dbg !5541

if.then:                                          ; preds = %entry
  store i32 -22, ptr %ret, align 4, !dbg !5542
  br label %err, !dbg !5544

if.end:                                           ; preds = %entry
  %call4 = call noalias ptr @kcalloc(i64 noundef 2, i64 noundef 4, i32 noundef 3264) #23, !dbg !5545
  store ptr %call4, ptr %new_limits, align 8, !dbg !5546
  %3 = load ptr, ptr %new_limits, align 8, !dbg !5547
  %tobool5 = icmp ne ptr %3, null, !dbg !5547
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !5549

if.then6:                                         ; preds = %if.end
  store i32 -12, ptr %ret, align 4, !dbg !5550
  br label %err, !dbg !5552

if.end7:                                          ; preds = %if.end
  %4 = load ptr, ptr %options, align 8, !dbg !5553
  %5 = load ptr, ptr %new_limits, align 8, !dbg !5554
  %call8 = call i32 @rdmacg_parse_limits(ptr noundef %4, ptr noundef %5, ptr noundef %enables) #16, !dbg !5555
  store i32 %call8, ptr %ret, align 4, !dbg !5556
  %6 = load i32, ptr %ret, align 4, !dbg !5557
  %tobool9 = icmp ne i32 %6, 0, !dbg !5557
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5559

if.then10:                                        ; preds = %if.end7
  br label %parse_err, !dbg !5560

if.end11:                                         ; preds = %if.end7
  call void @mutex_lock(ptr noundef @rdmacg_mutex) #16, !dbg !5561
  %7 = load ptr, ptr %dev_name, align 8, !dbg !5562
  %call12 = call ptr @rdmacg_get_device_locked(ptr noundef %7) #16, !dbg !5563
  store ptr %call12, ptr %device, align 8, !dbg !5564
  %8 = load ptr, ptr %device, align 8, !dbg !5565
  %tobool13 = icmp ne ptr %8, null, !dbg !5565
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !5567

if.then14:                                        ; preds = %if.end11
  store i32 -19, ptr %ret, align 4, !dbg !5568
  br label %dev_err, !dbg !5570

if.end15:                                         ; preds = %if.end11
  %9 = load ptr, ptr %cg, align 8, !dbg !5571
  %10 = load ptr, ptr %device, align 8, !dbg !5572
  %call16 = call ptr @get_cg_rpool_locked(ptr noundef %9, ptr noundef %10) #16, !dbg !5573
  store ptr %call16, ptr %rpool, align 8, !dbg !5574
  %11 = load ptr, ptr %rpool, align 8, !dbg !5575
  %call17 = call zeroext i1 @IS_ERR(ptr noundef %11) #16, !dbg !5577
  br i1 %call17, label %if.then18, label %if.end20, !dbg !5578

if.then18:                                        ; preds = %if.end15
  %12 = load ptr, ptr %rpool, align 8, !dbg !5579
  %call19 = call i64 @PTR_ERR(ptr noundef %12) #16, !dbg !5581
  %conv = trunc i64 %call19 to i32, !dbg !5581
  store i32 %conv, ptr %ret, align 4, !dbg !5582
  br label %dev_err, !dbg !5583

if.end20:                                         ; preds = %if.end15
  store i32 0, ptr %i, align 4, !dbg !5584
  br label %for.cond, !dbg !5584

for.cond:                                         ; preds = %for.inc, %if.end20
  %13 = load i32, ptr %i, align 4, !dbg !5586
  %conv21 = sext i32 %13 to i64, !dbg !5586
  %call22 = call i64 @find_next_bit(ptr noundef %enables, i64 noundef 2, i64 noundef %conv21) #16, !dbg !5586
  %conv23 = trunc i64 %call22 to i32, !dbg !5586
  store i32 %conv23, ptr %i, align 4, !dbg !5586
  %14 = load i32, ptr %i, align 4, !dbg !5586
  %cmp = icmp slt i32 %14, 2, !dbg !5586
  br i1 %cmp, label %for.body, label %for.end, !dbg !5584

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %rpool, align 8, !dbg !5588
  %16 = load i32, ptr %i, align 4, !dbg !5589
  %17 = load ptr, ptr %new_limits, align 8, !dbg !5590
  %18 = load i32, ptr %i, align 4, !dbg !5591
  %idxprom = sext i32 %18 to i64, !dbg !5590
  %arrayidx = getelementptr i32, ptr %17, i64 %idxprom, !dbg !5590
  %19 = load i32, ptr %arrayidx, align 4, !dbg !5590
  call void @set_resource_limit(ptr noundef %15, i32 noundef %16, i32 noundef %19) #16, !dbg !5592
  br label %for.inc, !dbg !5592

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %i, align 4, !dbg !5586
  %inc = add i32 %20, 1, !dbg !5586
  store i32 %inc, ptr %i, align 4, !dbg !5586
  br label %for.cond, !dbg !5586, !llvm.loop !5593

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %rpool, align 8, !dbg !5595
  %usage_sum = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %21, i32 0, i32 4, !dbg !5597
  %22 = load i64, ptr %usage_sum, align 8, !dbg !5597
  %cmp25 = icmp eq i64 %22, 0, !dbg !5598
  br i1 %cmp25, label %land.lhs.true, label %if.end30, !dbg !5599

land.lhs.true:                                    ; preds = %for.end
  %23 = load ptr, ptr %rpool, align 8, !dbg !5600
  %num_max_cnt = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %23, i32 0, i32 5, !dbg !5601
  %24 = load i32, ptr %num_max_cnt, align 8, !dbg !5601
  %cmp27 = icmp eq i32 %24, 2, !dbg !5602
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !5603

if.then29:                                        ; preds = %land.lhs.true
  %25 = load ptr, ptr %rpool, align 8, !dbg !5604
  call void @free_cg_rpool_locked(ptr noundef %25) #16, !dbg !5606
  br label %if.end30, !dbg !5607

if.end30:                                         ; preds = %if.then29, %land.lhs.true, %for.end
  br label %dev_err, !dbg !5608

dev_err:                                          ; preds = %if.end30, %if.then18, %if.then14
  call void @llvm.dbg.label(metadata !5508), !dbg !5609
  call void @mutex_unlock(ptr noundef @rdmacg_mutex) #16, !dbg !5610
  br label %parse_err, !dbg !5610

parse_err:                                        ; preds = %dev_err, %if.then10
  call void @llvm.dbg.label(metadata !5509), !dbg !5611
  %26 = load ptr, ptr %new_limits, align 8, !dbg !5612
  call void @kfree(ptr noundef %26) #16, !dbg !5613
  br label %err, !dbg !5613

err:                                              ; preds = %parse_err, %if.then6, %if.then
  call void @llvm.dbg.label(metadata !5510), !dbg !5614
  %27 = load i32, ptr %ret, align 4, !dbg !5615
  %tobool31 = icmp ne i32 %27, 0, !dbg !5615
  br i1 %tobool31, label %cond.true, label %cond.false, !dbg !5615

cond.true:                                        ; preds = %err
  %conv32 = sext i32 %27 to i64, !dbg !5615
  br label %cond.end, !dbg !5615

cond.false:                                       ; preds = %err
  %28 = load i64, ptr %nbytes.addr, align 8, !dbg !5616
  br label %cond.end, !dbg !5615

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv32, %cond.true ], [ %28, %cond.false ], !dbg !5615
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !5617
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !5617
  call void @llvm.lifetime.end.p0(i64 8, ptr %enables) #17, !dbg !5617
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_limits) #17, !dbg !5617
  call void @llvm.lifetime.end.p0(i64 8, ptr %options) #17, !dbg !5617
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #17, !dbg !5617
  call void @llvm.lifetime.end.p0(i64 8, ptr %rpool) #17, !dbg !5617
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev_name) #17, !dbg !5617
  call void @llvm.lifetime.end.p0(i64 8, ptr %cg) #17, !dbg !5617
  ret i64 %cond, !dbg !5618
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @seq_css(ptr noundef %seq) #3 align 16 !dbg !5619 {
entry:
  %seq.addr = alloca ptr, align 8
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !5623, metadata !DIExpression()), !dbg !5624
  %0 = load ptr, ptr %seq.addr, align 8, !dbg !5625
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !5626
  %1 = load ptr, ptr %private, align 8, !dbg !5626
  %call = call ptr @of_css(ptr noundef %1) #16, !dbg !5627
  ret ptr %call, !dbg !5628
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5629 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @print_rpool_values(ptr noundef %sf, ptr noundef %rpool) #0 align 16 !dbg !5632 {
entry:
  %sf.addr = alloca ptr, align 8
  %rpool.addr = alloca ptr, align 8
  %sf_type = alloca i32, align 4
  %i = alloca i32, align 4
  %value = alloca i32, align 4
  store ptr %sf, ptr %sf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sf.addr, metadata !5636, metadata !DIExpression()), !dbg !5641
  store ptr %rpool, ptr %rpool.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rpool.addr, metadata !5637, metadata !DIExpression()), !dbg !5642
  call void @llvm.lifetime.start.p0(i64 4, ptr %sf_type) #17, !dbg !5643
  call void @llvm.dbg.declare(metadata ptr %sf_type, metadata !5638, metadata !DIExpression()), !dbg !5644
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !5645
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5639, metadata !DIExpression()), !dbg !5646
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #17, !dbg !5647
  call void @llvm.dbg.declare(metadata ptr %value, metadata !5640, metadata !DIExpression()), !dbg !5648
  %0 = load ptr, ptr %sf.addr, align 8, !dbg !5649
  %call = call ptr @seq_cft(ptr noundef %0) #16, !dbg !5650
  %private = getelementptr inbounds %struct.cftype, ptr %call, i32 0, i32 1, !dbg !5651
  %1 = load i64, ptr %private, align 8, !dbg !5651
  %conv = trunc i64 %1 to i32, !dbg !5650
  store i32 %conv, ptr %sf_type, align 4, !dbg !5652
  store i32 0, ptr %i, align 4, !dbg !5653
  br label %for.cond, !dbg !5655

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !5656
  %cmp = icmp slt i32 %2, 2, !dbg !5658
  br i1 %cmp, label %for.body, label %for.end, !dbg !5659

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %sf.addr, align 8, !dbg !5660
  %4 = load i32, ptr %i, align 4, !dbg !5662
  %idxprom = sext i32 %4 to i64, !dbg !5663
  %arrayidx = getelementptr [2 x ptr], ptr @rdmacg_resource_names, i64 0, i64 %idxprom, !dbg !5663
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !5663
  call void @seq_puts(ptr noundef %3, ptr noundef %5) #16, !dbg !5664
  %6 = load ptr, ptr %sf.addr, align 8, !dbg !5665
  call void @seq_putc(ptr noundef %6, i8 noundef zeroext 61) #16, !dbg !5666
  %7 = load i32, ptr %sf_type, align 4, !dbg !5667
  %cmp2 = icmp eq i32 %7, 0, !dbg !5669
  br i1 %cmp2, label %if.then, label %if.else7, !dbg !5670

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %rpool.addr, align 8, !dbg !5671
  %tobool = icmp ne ptr %8, null, !dbg !5671
  br i1 %tobool, label %if.then4, label %if.else, !dbg !5674

if.then4:                                         ; preds = %if.then
  %9 = load ptr, ptr %rpool.addr, align 8, !dbg !5675
  %resources = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %9, i32 0, i32 1, !dbg !5676
  %10 = load i32, ptr %i, align 4, !dbg !5677
  %idxprom5 = sext i32 %10 to i64, !dbg !5675
  %arrayidx6 = getelementptr [2 x %struct.rdmacg_resource], ptr %resources, i64 0, i64 %idxprom5, !dbg !5675
  %max = getelementptr inbounds %struct.rdmacg_resource, ptr %arrayidx6, i32 0, i32 0, !dbg !5678
  %11 = load i32, ptr %max, align 8, !dbg !5678
  store i32 %11, ptr %value, align 4, !dbg !5679
  br label %if.end, !dbg !5680

if.else:                                          ; preds = %if.then
  store i32 2147483647, ptr %value, align 4, !dbg !5681
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %if.end15, !dbg !5682

if.else7:                                         ; preds = %for.body
  %12 = load ptr, ptr %rpool.addr, align 8, !dbg !5683
  %tobool8 = icmp ne ptr %12, null, !dbg !5683
  br i1 %tobool8, label %if.then9, label %if.else13, !dbg !5686

if.then9:                                         ; preds = %if.else7
  %13 = load ptr, ptr %rpool.addr, align 8, !dbg !5687
  %resources10 = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %13, i32 0, i32 1, !dbg !5688
  %14 = load i32, ptr %i, align 4, !dbg !5689
  %idxprom11 = sext i32 %14 to i64, !dbg !5687
  %arrayidx12 = getelementptr [2 x %struct.rdmacg_resource], ptr %resources10, i64 0, i64 %idxprom11, !dbg !5687
  %usage = getelementptr inbounds %struct.rdmacg_resource, ptr %arrayidx12, i32 0, i32 1, !dbg !5690
  %15 = load i32, ptr %usage, align 4, !dbg !5690
  store i32 %15, ptr %value, align 4, !dbg !5691
  br label %if.end14, !dbg !5692

if.else13:                                        ; preds = %if.else7
  store i32 0, ptr %value, align 4, !dbg !5693
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then9
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  %16 = load i32, ptr %value, align 4, !dbg !5694
  %cmp16 = icmp eq i32 %16, 2147483647, !dbg !5696
  br i1 %cmp16, label %if.then18, label %if.else19, !dbg !5697

if.then18:                                        ; preds = %if.end15
  %17 = load ptr, ptr %sf.addr, align 8, !dbg !5698
  call void @seq_puts(ptr noundef %17, ptr noundef @.str.4) #16, !dbg !5699
  br label %if.end20, !dbg !5699

if.else19:                                        ; preds = %if.end15
  %18 = load ptr, ptr %sf.addr, align 8, !dbg !5700
  %19 = load i32, ptr %value, align 4, !dbg !5701
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef @.str.5, i32 noundef %19) #16, !dbg !5702
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then18
  %20 = load ptr, ptr %sf.addr, align 8, !dbg !5703
  call void @seq_putc(ptr noundef %20, i8 noundef zeroext 32) #16, !dbg !5704
  br label %for.inc, !dbg !5705

for.inc:                                          ; preds = %if.end20
  %21 = load i32, ptr %i, align 4, !dbg !5706
  %inc = add i32 %21, 1, !dbg !5706
  store i32 %inc, ptr %i, align 4, !dbg !5706
  br label %for.cond, !dbg !5707, !llvm.loop !5708

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #17, !dbg !5710
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !5710
  call void @llvm.lifetime.end.p0(i64 4, ptr %sf_type) #17, !dbg !5710
  ret void, !dbg !5710
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5711 dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5714 dso_local ptr @of_css(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @seq_cft(ptr noundef %seq) #3 align 16 !dbg !5717 {
entry:
  %seq.addr = alloca ptr, align 8
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !5721, metadata !DIExpression()), !dbg !5722
  %0 = load ptr, ptr %seq.addr, align 8, !dbg !5723
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !5724
  %1 = load ptr, ptr %private, align 8, !dbg !5724
  %call = call ptr @of_cft(ptr noundef %1) #16, !dbg !5725
  ret ptr %call, !dbg !5726
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5727 dso_local void @seq_puts(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @of_cft(ptr noundef %of) #3 align 16 !dbg !5730 {
entry:
  %of.addr = alloca ptr, align 8
  store ptr %of, ptr %of.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %of.addr, metadata !5734, metadata !DIExpression()), !dbg !5735
  %0 = load ptr, ptr %of.addr, align 8, !dbg !5736
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 0, !dbg !5737
  %1 = load ptr, ptr %kn, align 8, !dbg !5737
  %priv = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 8, !dbg !5738
  %2 = load ptr, ptr %priv, align 8, !dbg !5738
  ret ptr %2, !dbg !5739
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @strstrip(ptr noundef %str) #3 align 16 !dbg !5740 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5745, metadata !DIExpression()), !dbg !5746
  %0 = load ptr, ptr %str.addr, align 8, !dbg !5747
  %call = call ptr @strim(ptr noundef %0) #16, !dbg !5748
  ret ptr %call, !dbg !5749
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5750 dso_local ptr @strsep(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #15 align 16 !dbg !5754 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5758, metadata !DIExpression()), !dbg !5761
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5759, metadata !DIExpression()), !dbg !5762
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5760, metadata !DIExpression()), !dbg !5763
  %0 = load i64, ptr %n.addr, align 8, !dbg !5764
  %1 = load i64, ptr %size.addr, align 8, !dbg !5765
  %2 = load i32, ptr %flags.addr, align 4, !dbg !5766
  %or = or i32 %2, 256, !dbg !5767
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #23, !dbg !5768
  ret ptr %call, !dbg !5769
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rdmacg_parse_limits(ptr noundef %options, ptr noundef %new_limits, ptr noundef %enables) #0 align 16 !dbg !5770 {
entry:
  %retval = alloca i32, align 4
  %options.addr = alloca ptr, align 8
  %new_limits.addr = alloca ptr, align 8
  %enables.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %err = alloca i32, align 4
  %index = alloca i32, align 4
  %intval = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %options, ptr %options.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %options.addr, metadata !5774, metadata !DIExpression()), !dbg !5783
  store ptr %new_limits, ptr %new_limits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_limits.addr, metadata !5775, metadata !DIExpression()), !dbg !5784
  store ptr %enables, ptr %enables.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %enables.addr, metadata !5776, metadata !DIExpression()), !dbg !5785
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #17, !dbg !5786
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5777, metadata !DIExpression()), !dbg !5787
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !5788
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5778, metadata !DIExpression()), !dbg !5789
  store i32 -22, ptr %err, align 4, !dbg !5789
  br label %while.cond, !dbg !5790

while.cond:                                       ; preds = %cleanup.cont, %entry
  %call = call ptr @strsep(ptr noundef %options.addr, ptr noundef @.str.8) #16, !dbg !5791
  store ptr %call, ptr %c, align 8, !dbg !5792
  %cmp = icmp ne ptr %call, null, !dbg !5793
  br i1 %cmp, label %while.body, label %while.end, !dbg !5790

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !5794
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5779, metadata !DIExpression()), !dbg !5795
  call void @llvm.lifetime.start.p0(i64 4, ptr %intval) #17, !dbg !5794
  call void @llvm.dbg.declare(metadata ptr %intval, metadata !5781, metadata !DIExpression()), !dbg !5796
  %0 = load ptr, ptr %c, align 8, !dbg !5797
  %call1 = call i32 @parse_resource(ptr noundef %0, ptr noundef %intval) #16, !dbg !5798
  store i32 %call1, ptr %index, align 4, !dbg !5799
  %1 = load i32, ptr %index, align 4, !dbg !5800
  %cmp2 = icmp slt i32 %1, 0, !dbg !5802
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5803

if.then:                                          ; preds = %while.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5804

if.end:                                           ; preds = %while.body
  %2 = load i32, ptr %intval, align 4, !dbg !5805
  %3 = load ptr, ptr %new_limits.addr, align 8, !dbg !5806
  %4 = load i32, ptr %index, align 4, !dbg !5807
  %idxprom = sext i32 %4 to i64, !dbg !5806
  %arrayidx = getelementptr i32, ptr %3, i64 %idxprom, !dbg !5806
  store i32 %2, ptr %arrayidx, align 4, !dbg !5808
  %5 = load i32, ptr %index, align 4, !dbg !5809
  %sh_prom = zext i32 %5 to i64, !dbg !5809
  %shl = shl i64 1, %sh_prom, !dbg !5809
  %6 = load ptr, ptr %enables.addr, align 8, !dbg !5810
  %7 = load i64, ptr %6, align 8, !dbg !5811
  %or = or i64 %7, %shl, !dbg !5811
  store i64 %or, ptr %6, align 8, !dbg !5811
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5812
  br label %cleanup, !dbg !5812

cleanup:                                          ; preds = %if.then, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %intval) #17, !dbg !5812
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !5812
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup5 [
    i32 0, label %cleanup.cont
    i32 4, label %err4
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !5790, !llvm.loop !5813

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !5814
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup5, !dbg !5814

err4:                                             ; preds = %cleanup
  call void @llvm.dbg.label(metadata !5782), !dbg !5815
  %8 = load i32, ptr %err, align 4, !dbg !5816
  store i32 %8, ptr %retval, align 4, !dbg !5817
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup5, !dbg !5817

cleanup5:                                         ; preds = %err4, %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !5818
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #17, !dbg !5818
  %9 = load i32, ptr %retval, align 4, !dbg !5818
  ret i32 %9, !dbg !5818
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rdmacg_get_device_locked(ptr noundef %name) #0 align 16 !dbg !5819 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %device = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5823, metadata !DIExpression()), !dbg !5831
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #17, !dbg !5832
  call void @llvm.dbg.declare(metadata ptr %device, metadata !5824, metadata !DIExpression()), !dbg !5833
  br label %do.body, !dbg !5834

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5835

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5835

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5837
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5825, metadata !DIExpression()), !dbg !5837
  %0 = load ptr, ptr @rdmacg_devices, align 8, !dbg !5837
  store ptr %0, ptr %__mptr, align 8, !dbg !5837
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5837
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5837
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5837
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5838
  %2 = load ptr, ptr %tmp, align 8, !dbg !5837
  store ptr %2, ptr %device, align 8, !dbg !5838
  br label %for.cond, !dbg !5838

for.cond:                                         ; preds = %for.inc, %do.end
  %3 = load ptr, ptr %device, align 8, !dbg !5839
  %dev_node = getelementptr inbounds %struct.rdmacg_device, ptr %3, i32 0, i32 0, !dbg !5839
  %cmp = icmp eq ptr %dev_node, @rdmacg_devices, !dbg !5839
  %lnot = xor i1 %cmp, true, !dbg !5839
  br i1 %lnot, label %for.body, label %for.end, !dbg !5838

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %name.addr, align 8, !dbg !5840
  %5 = load ptr, ptr %device, align 8, !dbg !5842
  %name1 = getelementptr inbounds %struct.rdmacg_device, ptr %5, i32 0, i32 2, !dbg !5843
  %6 = load ptr, ptr %name1, align 8, !dbg !5843
  %call = call i32 @strcmp(ptr noundef %4, ptr noundef %6) #16, !dbg !5844
  %tobool = icmp ne i32 %call, 0, !dbg !5844
  br i1 %tobool, label %if.end, label %if.then, !dbg !5845

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %device, align 8, !dbg !5846
  store ptr %7, ptr %retval, align 8, !dbg !5847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5847

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5848

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #17, !dbg !5849
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !5828, metadata !DIExpression()), !dbg !5849
  %8 = load ptr, ptr %device, align 8, !dbg !5849
  %dev_node3 = getelementptr inbounds %struct.rdmacg_device, ptr %8, i32 0, i32 0, !dbg !5849
  %next = getelementptr inbounds %struct.list_head, ptr %dev_node3, i32 0, i32 0, !dbg !5849
  %9 = load ptr, ptr %next, align 8, !dbg !5849
  store ptr %9, ptr %__mptr2, align 8, !dbg !5849
  %10 = load ptr, ptr %__mptr2, align 8, !dbg !5849
  %add.ptr5 = getelementptr i8, ptr %10, i64 0, !dbg !5849
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !5849
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #17, !dbg !5839
  %11 = load ptr, ptr %tmp4, align 8, !dbg !5849
  store ptr %11, ptr %device, align 8, !dbg !5839
  br label %for.cond, !dbg !5839, !llvm.loop !5850

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !5852
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5852

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #17, !dbg !5853
  %12 = load ptr, ptr %retval, align 8, !dbg !5853
  ret ptr %12, !dbg !5853
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #3 align 16 !dbg !5854 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5861, metadata !DIExpression()), !dbg !5867
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5862, metadata !DIExpression()), !dbg !5868
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5863, metadata !DIExpression()), !dbg !5869
  %0 = load i64, ptr %size.addr, align 8, !dbg !5870
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5870
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !5870

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5870
  %cmp = icmp ule i64 %2, 64, !dbg !5870
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !5870

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !5870
  %cmp2 = icmp ugt i64 %3, 0, !dbg !5870
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !5871

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !5872
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5864, metadata !DIExpression()), !dbg !5873
  %4 = load i64, ptr %offset.addr, align 8, !dbg !5874
  %5 = load i64, ptr %size.addr, align 8, !dbg !5874
  %cmp3 = icmp uge i64 %4, %5, !dbg !5874
  %lnot = xor i1 %cmp3, true, !dbg !5874
  %lnot4 = xor i1 %lnot, true, !dbg !5874
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5874
  %conv = sext i32 %lnot.ext to i64, !dbg !5874
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5874
  %tobool = icmp ne i64 %expval, 0, !dbg !5874
  br i1 %tobool, label %if.then5, label %if.end, !dbg !5876

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5877
  store i64 %6, ptr %retval, align 8, !dbg !5878
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5878

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !5879
  %8 = load i64, ptr %7, align 8, !dbg !5880
  %9 = load i64, ptr %offset.addr, align 8, !dbg !5881
  %shl = shl i64 1, %9, !dbg !5881
  %sub = sub i64 -1, %shl, !dbg !5881
  %add = add i64 %sub, 1, !dbg !5881
  %10 = load i64, ptr %size.addr, align 8, !dbg !5881
  %sub6 = sub i64 %10, 1, !dbg !5881
  %sub7 = sub i64 63, %sub6, !dbg !5881
  %shr = lshr i64 -1, %sub7, !dbg !5881
  %and = and i64 %add, %shr, !dbg !5881
  %add8 = add i64 0, %and, !dbg !5881
  %and9 = and i64 %8, %add8, !dbg !5882
  store i64 %and9, ptr %val, align 8, !dbg !5883
  %11 = load i64, ptr %val, align 8, !dbg !5884
  %tobool10 = icmp ne i64 %11, 0, !dbg !5884
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !5884

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !5885
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !5885
  br i1 %13, label %cond.true11, label %cond.false, !dbg !5885

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !5885
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !5885
  %cast = trunc i64 %15 to i32, !dbg !5885
  %conv12 = sext i32 %cast to i64, !dbg !5885
  br label %cond.end, !dbg !5885

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !5885
  %call = call i64 @variable__ffs(i64 noundef %16) #16, !dbg !5885
  br label %cond.end, !dbg !5885

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !5885
  br label %cond.end14, !dbg !5884

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !5886
  br label %cond.end14, !dbg !5884

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !5884
  store i64 %cond15, ptr %retval, align 8, !dbg !5887
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5887

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !5888
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !5889
  %19 = load i64, ptr %size.addr, align 8, !dbg !5890
  %20 = load i64, ptr %offset.addr, align 8, !dbg !5891
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #16, !dbg !5892
  store i64 %call17, ptr %retval, align 8, !dbg !5893
  br label %return, !dbg !5893

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !5894
  ret i64 %21, !dbg !5894
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5895 dso_local ptr @strim(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #15 align 16 !dbg !5896 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5898, metadata !DIExpression()), !dbg !5902
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5899, metadata !DIExpression()), !dbg !5903
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5900, metadata !DIExpression()), !dbg !5904
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #17, !dbg !5905
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5901, metadata !DIExpression()), !dbg !5906
  %0 = load i64, ptr %n.addr, align 8, !dbg !5907
  %1 = load i64, ptr %size.addr, align 8, !dbg !5907
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !5907
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5907
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5907
  store i64 %4, ptr %bytes, align 8, !dbg !5907
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #16, !dbg !5907
  %lnot = xor i1 %call, true, !dbg !5907
  %lnot1 = xor i1 %lnot, true, !dbg !5907
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5907
  %conv = sext i32 %lnot.ext to i64, !dbg !5907
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5907
  %tobool = icmp ne i64 %expval, 0, !dbg !5907
  br i1 %tobool, label %if.then, label %if.end, !dbg !5909

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5910
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5910

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5911
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !5913
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !5914

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !5915
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5916
  br i1 %8, label %if.then2, label %if.end4, !dbg !5917

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !5918
  %10 = load i32, ptr %flags.addr, align 4, !dbg !5919
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #18, !dbg !5920
  store ptr %call3, ptr %retval, align 8, !dbg !5921
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5921

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !5922
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5923
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #18, !dbg !5924
  store ptr %call5, ptr %retval, align 8, !dbg !5925
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5925

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #17, !dbg !5926
  %13 = load ptr, ptr %retval, align 8, !dbg !5926
  ret ptr %13, !dbg !5926
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #3 align 16 !dbg !5927 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !5932, metadata !DIExpression()), !dbg !5933
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !5934, !range !4733, !noundef !1103
  %tobool = trunc i8 %0 to i1, !dbg !5934
  %lnot = xor i1 %tobool, true, !dbg !5934
  %lnot1 = xor i1 %lnot, true, !dbg !5934
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5934
  %conv = sext i32 %lnot.ext to i64, !dbg !5934
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5934
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5934
  ret i1 %tobool2, !dbg !5935
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @parse_resource(ptr noundef %c, ptr noundef %intval) #0 align 16 !dbg !5936 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  %intval.addr = alloca ptr, align 8
  %argstr = alloca %struct.substring_t, align 8
  %name = alloca ptr, align 8
  %value = alloca ptr, align 8
  %len = alloca i64, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !5940, metadata !DIExpression()), !dbg !5954
  store ptr %intval, ptr %intval.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %intval.addr, metadata !5941, metadata !DIExpression()), !dbg !5955
  call void @llvm.lifetime.start.p0(i64 16, ptr %argstr) #17, !dbg !5956
  call void @llvm.dbg.declare(metadata ptr %argstr, metadata !5942, metadata !DIExpression()), !dbg !5957
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #17, !dbg !5958
  call void @llvm.dbg.declare(metadata ptr %name, metadata !5949, metadata !DIExpression()), !dbg !5959
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #17, !dbg !5958
  call void @llvm.dbg.declare(metadata ptr %value, metadata !5950, metadata !DIExpression()), !dbg !5960
  %0 = load ptr, ptr %c.addr, align 8, !dbg !5961
  store ptr %0, ptr %value, align 8, !dbg !5960
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #17, !dbg !5962
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5951, metadata !DIExpression()), !dbg !5963
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !5964
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5952, metadata !DIExpression()), !dbg !5965
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !5964
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5953, metadata !DIExpression()), !dbg !5966
  %call = call ptr @strsep(ptr noundef %value, ptr noundef @.str.9) #16, !dbg !5967
  store ptr %call, ptr %name, align 8, !dbg !5968
  %1 = load ptr, ptr %name, align 8, !dbg !5969
  %tobool = icmp ne ptr %1, null, !dbg !5969
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5971

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %value, align 8, !dbg !5972
  %tobool1 = icmp ne ptr %2, null, !dbg !5972
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5973

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !5974
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5974

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %name, align 8, !dbg !5975
  %call2 = call i32 @match_string(ptr noundef @rdmacg_resource_names, i64 noundef 2, ptr noundef %3) #16, !dbg !5976
  store i32 %call2, ptr %i, align 4, !dbg !5977
  %4 = load i32, ptr %i, align 4, !dbg !5978
  %cmp = icmp slt i32 %4, 0, !dbg !5980
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5981

if.then3:                                         ; preds = %if.end
  %5 = load i32, ptr %i, align 4, !dbg !5982
  store i32 %5, ptr %retval, align 4, !dbg !5983
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5983

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %value, align 8, !dbg !5984
  %call5 = call i64 @strlen(ptr noundef %6) #16, !dbg !5985
  store i64 %call5, ptr %len, align 8, !dbg !5986
  %7 = load ptr, ptr %value, align 8, !dbg !5987
  %from = getelementptr inbounds %struct.substring_t, ptr %argstr, i32 0, i32 0, !dbg !5988
  store ptr %7, ptr %from, align 8, !dbg !5989
  %8 = load ptr, ptr %value, align 8, !dbg !5990
  %9 = load i64, ptr %len, align 8, !dbg !5991
  %add.ptr = getelementptr i8, ptr %8, i64 %9, !dbg !5992
  %to = getelementptr inbounds %struct.substring_t, ptr %argstr, i32 0, i32 1, !dbg !5993
  store ptr %add.ptr, ptr %to, align 8, !dbg !5994
  %10 = load ptr, ptr %intval.addr, align 8, !dbg !5995
  %call6 = call i32 @match_int(ptr noundef %argstr, ptr noundef %10) #16, !dbg !5996
  store i32 %call6, ptr %ret, align 4, !dbg !5997
  %11 = load i32, ptr %ret, align 4, !dbg !5998
  %cmp7 = icmp sge i32 %11, 0, !dbg !6000
  br i1 %cmp7, label %if.then8, label %if.end12, !dbg !6001

if.then8:                                         ; preds = %if.end4
  %12 = load ptr, ptr %intval.addr, align 8, !dbg !6002
  %13 = load i32, ptr %12, align 4, !dbg !6005
  %cmp9 = icmp slt i32 %13, 0, !dbg !6006
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6007

if.then10:                                        ; preds = %if.then8
  store i32 -22, ptr %retval, align 4, !dbg !6008
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6008

if.end11:                                         ; preds = %if.then8
  %14 = load i32, ptr %i, align 4, !dbg !6009
  store i32 %14, ptr %retval, align 4, !dbg !6010
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6010

if.end12:                                         ; preds = %if.end4
  %15 = load ptr, ptr %value, align 8, !dbg !6011
  %16 = load i64, ptr %len, align 8, !dbg !6013
  %call13 = call i32 @strncmp(ptr noundef %15, ptr noundef @.str.4, i64 noundef %16) #16, !dbg !6014
  %cmp14 = icmp eq i32 %call13, 0, !dbg !6015
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !6016

if.then15:                                        ; preds = %if.end12
  %17 = load ptr, ptr %intval.addr, align 8, !dbg !6017
  store i32 2147483647, ptr %17, align 4, !dbg !6019
  %18 = load i32, ptr %i, align 4, !dbg !6020
  store i32 %18, ptr %retval, align 4, !dbg !6021
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6021

if.end16:                                         ; preds = %if.end12
  store i32 -22, ptr %retval, align 4, !dbg !6022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6022

cleanup:                                          ; preds = %if.end16, %if.then15, %if.end11, %if.then10, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !6023
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !6023
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #17, !dbg !6023
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #17, !dbg !6023
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #17, !dbg !6023
  call void @llvm.lifetime.end.p0(i64 16, ptr %argstr) #17, !dbg !6023
  %19 = load i32, ptr %retval, align 4, !dbg !6023
  ret i32 %19, !dbg !6023
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6024 dso_local i32 @match_string(ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6029 dso_local i64 @strlen(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6032 dso_local i32 @match_int(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6036 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6039 dso_local i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #7 align 16 !dbg !6042 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !6047, metadata !DIExpression()), !dbg !6048
  %0 = load i64, ptr %word.addr, align 8, !dbg !6049
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #24, !dbg !6050, !srcloc !6051
  store i64 %1, ptr %word.addr, align 8, !dbg !6050
  %2 = load i64, ptr %word.addr, align 8, !dbg !6052
  ret i64 %2, !dbg !6053
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6054 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone }
attributes #17 = { nounwind }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { cold noredzone }
attributes #20 = { nounwind memory(none) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }
attributes #23 = { noredzone allocsize(0,1) }
attributes #24 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987}
!llvm.ident = !{!3988}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rdmacg_uncharge264", scope: !2, file: !3, line: 238, type: !23, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/cgroup/.rdma.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/cgroup/rdma\22 -D KBUILD_BASENAME=\22rdma\22 -D KBUILD_MODNAME=\22rdma\22 -D __KBUILD_MODNAME=kmod_rdma -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/cgroup/rdma.ll kernel/cgroup/rdma.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !203, globals: !3929, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/cgroup/rdma.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8fe1dd0fcef3f89e2cb57dc381bb9336")
!4 = !{!5, !14, !110, !115, !121, !126, !132, !139, !146, !152, !160, !167, !172, !189, !199}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !16, file: !15, line: 147, baseType: !7, size: 32, elements: !107)
!15 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !15, line: 135, size: 512, elements: !17)
!17 = !{!18, !22, !24, !26, !30, !31, !47, !105, !106}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !16, file: !15, line: 136, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !16, file: !15, line: 137, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !16, file: !15, line: 138, baseType: !25, size: 32, offset: 128)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !16, file: !15, line: 139, baseType: !27, size: 16, offset: 160)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !28, line: 24, baseType: !29)
!28 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!29 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !16, file: !15, line: 150, baseType: !14, size: 32, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !16, file: !15, line: 151, baseType: !32, size: 64, offset: 256)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !15, line: 64, baseType: !34)
!34 = !DISubroutineType(types: !35)
!35 = !{!25, !36, !25, !23, !37, !43}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 61, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !40, line: 72, baseType: !41)
!40 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !40, line: 16, baseType: !42)
!42 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !28, line: 52, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !40, line: 88, baseType: !46)
!46 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !16, file: !15, line: 152, baseType: !48, size: 64, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !15, line: 117, size: 256, elements: !50)
!50 = !{!51, !56}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !49, file: !15, line: 118, baseType: !52, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !28, line: 174, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 172, size: 32, elements: !54)
!54 = !{!55}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !53, file: !28, line: 173, baseType: !25, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !49, file: !15, line: 119, baseType: !57, size: 192, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !58, line: 41, baseType: !59)
!58 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !58, line: 37, size: 192, elements: !60)
!60 = !{!61, !99}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !59, file: !58, line: 38, baseType: !62, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !63, line: 29, baseType: !64)
!63 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !63, line: 17, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, scope: !64, file: !63, line: 18, baseType: !67, size: 32)
!67 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !64, file: !63, line: 18, size: 32, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !67, file: !63, line: 19, baseType: !70, size: 32)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !71, line: 14, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !70, file: !71, line: 15, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !75, line: 44, baseType: !76)
!75 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !75, line: 14, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !75, line: 15, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !76, file: !75, line: 15, size: 32, elements: !80)
!80 = !{!81, !82, !92}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !79, file: !75, line: 16, baseType: !52, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !75, line: 24, baseType: !83, size: 16)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !79, file: !75, line: 24, size: 16, elements: !84)
!84 = !{!85, !91}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !83, file: !75, line: 25, baseType: !86, size: 8)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !87, line: 17, baseType: !88)
!87 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !89, line: 21, baseType: !90)
!89 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!90 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !83, file: !75, line: 26, baseType: !86, size: 8, offset: 8)
!92 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !75, line: 28, baseType: !93, size: 32)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !79, file: !75, line: 28, size: 32, elements: !94)
!94 = !{!95, !98}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !93, file: !75, line: 29, baseType: !96, size: 16)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !87, line: 19, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !89, line: 24, baseType: !29)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !93, file: !75, line: 30, baseType: !96, size: 16, offset: 16)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !59, file: !58, line: 39, baseType: !100, size: 128, offset: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !28, line: 190, size: 128, elements: !101)
!101 = !{!102, !104}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !100, file: !28, line: 191, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !100, file: !28, line: 191, baseType: !103, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !16, file: !15, line: 153, baseType: !23, size: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !16, file: !15, line: 154, baseType: !23, size: 64, offset: 448)
!107 = !{!108, !109}
!108 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!109 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !111, line: 2052, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!112 = !{!113, !114}
!113 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!114 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !116, line: 54, baseType: !7, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!117 = !{!118, !119, !120}
!118 = !DIEnumerator(name: "USRQUOTA", value: 0)
!119 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!120 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !122, line: 65, baseType: !7, size: 32, elements: !123)
!122 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!123 = !{!124, !125}
!124 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!125 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !127, line: 16, baseType: !7, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!128 = !{!129, !130, !131}
!129 = !DIEnumerator(name: "TT_NONE", value: 0)
!130 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!131 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !133, line: 15, baseType: !7, size: 32, elements: !134)
!133 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!134 = !{!135, !136, !137, !138}
!135 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!136 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!137 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!138 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !140, line: 51, baseType: !7, size: 32, elements: !141)
!140 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!141 = !{!142, !143, !144, !145}
!142 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!143 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!144 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!145 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rdmacg_resource_type", file: !147, line: 11, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/cgroup_rdma.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54fb13110d677040219349a37703f8b3")
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "RDMACG_RESOURCE_HCA_HANDLE", value: 0)
!150 = !DIEnumerator(name: "RDMACG_RESOURCE_HCA_OBJECT", value: 1)
!151 = !DIEnumerator(name: "RDMACG_RESOURCE_MAX", value: 2)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !153, line: 50, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!154 = !{!155, !156, !157, !158, !159}
!155 = !DIEnumerator(name: "CSS_NO_REF", value: 1)
!156 = !DIEnumerator(name: "CSS_ONLINE", value: 2)
!157 = !DIEnumerator(name: "CSS_RELEASED", value: 4)
!158 = !DIEnumerator(name: "CSS_VISIBLE", value: 8)
!159 = !DIEnumerator(name: "CSS_DYING", value: 16)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !161, line: 63, baseType: !7, size: 32, elements: !162)
!161 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!162 = !{!163, !164, !165, !166}
!163 = !DIEnumerator(name: "__PERCPU_REF_ATOMIC", value: 1)
!164 = !DIEnumerator(name: "__PERCPU_REF_DEAD", value: 2)
!165 = !DIEnumerator(name: "__PERCPU_REF_ATOMIC_DEAD", value: 3)
!166 = !DIEnumerator(name: "__PERCPU_REF_FLAG_BITS", value: 2)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !168, line: 10, baseType: !7, size: 32, elements: !169)
!168 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!169 = !{!170, !171}
!170 = !DIEnumerator(name: "false", value: 0)
!171 = !DIEnumerator(name: "true", value: 1)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cgroup_subsys_id", file: !153, line: 43, baseType: !7, size: 32, elements: !173)
!173 = !{!174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!174 = !DIEnumerator(name: "cpuset_cgrp_id", value: 0)
!175 = !DIEnumerator(name: "cpu_cgrp_id", value: 1)
!176 = !DIEnumerator(name: "cpuacct_cgrp_id", value: 2)
!177 = !DIEnumerator(name: "io_cgrp_id", value: 3)
!178 = !DIEnumerator(name: "devices_cgrp_id", value: 4)
!179 = !DIEnumerator(name: "freezer_cgrp_id", value: 5)
!180 = !DIEnumerator(name: "net_cls_cgrp_id", value: 6)
!181 = !DIEnumerator(name: "perf_event_cgrp_id", value: 7)
!182 = !DIEnumerator(name: "net_prio_cgrp_id", value: 8)
!183 = !DIEnumerator(name: "hugetlb_cgrp_id", value: 9)
!184 = !DIEnumerator(name: "pids_cgrp_id", value: 10)
!185 = !DIEnumerator(name: "rdma_cgrp_id", value: 11)
!186 = !DIEnumerator(name: "misc_cgrp_id", value: 12)
!187 = !DIEnumerator(name: "debug_cgrp_id", value: 13)
!188 = !DIEnumerator(name: "CGROUP_SUBSYS_COUNT", value: 14)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !190, line: 364, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!191 = !{!192, !193, !194, !195, !196, !197, !198}
!192 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!193 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!194 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!195 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!196 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!197 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!198 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rdmacg_file_type", file: !3, line: 27, baseType: !7, size: 32, elements: !200)
!200 = !{!201, !202}
!201 = !DIEnumerator(name: "RDMACG_RESOURCE_TYPE_MAX", value: 0)
!202 = !DIEnumerator(name: "RDMACG_RESOURCE_TYPE_STAT", value: 1)
!203 = !{!23, !204, !230, !42, !25, !226, !231, !234, !2126, !3917, !3920, !3923, !3924, !3926, !1511, !1058, !479, !512, !778, !3927, !208}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rdmacg_resource_pool", file: !3, line: 54, size: 576, elements: !206)
!206 = !{!207, !215, !223, !224, !225, !229}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !205, file: !3, line: 55, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rdmacg_device", file: !147, line: 29, size: 320, elements: !210)
!210 = !{!211, !212, !213}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "dev_node", scope: !209, file: !147, line: 30, baseType: !100, size: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "rpools", scope: !209, file: !147, line: 31, baseType: !100, size: 128, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !147, line: 32, baseType: !214, size: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !205, file: !3, line: 56, baseType: !216, size: 128, offset: 64)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 128, elements: !221)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rdmacg_resource", file: !3, line: 43, size: 64, elements: !218)
!218 = !{!219, !220}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !217, file: !3, line: 44, baseType: !25, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !217, file: !3, line: 45, baseType: !25, size: 32, offset: 32)
!221 = !{!222}
!222 = !DISubrange(count: 2)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "cg_node", scope: !205, file: !3, line: 58, baseType: !100, size: 128, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "dev_node", scope: !205, file: !3, line: 59, baseType: !100, size: 128, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "usage_sum", scope: !205, file: !3, line: 62, baseType: !226, size: 64, offset: 448)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !87, line: 23, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !89, line: 31, baseType: !228)
!228 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "num_max_cnt", scope: !205, file: !3, line: 64, baseType: !25, size: 32, offset: 512)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !42)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rdma_cgroup", file: !147, line: 19, size: 1728, elements: !236)
!236 = !{!237, !3916}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !235, file: !147, line: 20, baseType: !238, size: 1600)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !153, line: 152, size: 1600, elements: !239)
!239 = !{!240, !3771, !3881, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3915}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !238, file: !153, line: 154, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !153, line: 389, size: 7872, elements: !243)
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !3687, !3693, !3694, !3698, !3699, !3700, !3701, !3702, !3703, !3720, !3721, !3722, !3723, !3724, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3758, !3761, !3762, !3769}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !242, file: !153, line: 391, baseType: !238, size: 1600)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !242, file: !153, line: 393, baseType: !42, size: 64, offset: 1600)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !242, file: !153, line: 401, baseType: !25, size: 32, offset: 1664)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !242, file: !153, line: 404, baseType: !25, size: 32, offset: 1696)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !242, file: !153, line: 417, baseType: !25, size: 32, offset: 1728)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !242, file: !153, line: 418, baseType: !25, size: 32, offset: 1760)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !242, file: !153, line: 419, baseType: !25, size: 32, offset: 1792)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !242, file: !153, line: 432, baseType: !25, size: 32, offset: 1824)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !242, file: !153, line: 433, baseType: !25, size: 32, offset: 1856)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !242, file: !153, line: 434, baseType: !25, size: 32, offset: 1888)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !242, file: !153, line: 436, baseType: !25, size: 32, offset: 1920)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !242, file: !153, line: 439, baseType: !7, size: 32, offset: 1952)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !242, file: !153, line: 441, baseType: !257, size: 64, offset: 1984)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !259, line: 190, size: 1152, elements: !260)
!259 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!260 = !{!261, !262, !263, !264, !265, !273, !276, !277, !3679, !3680, !3681, !3682, !3683, !3686}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !258, file: !259, line: 191, baseType: !52, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !258, file: !259, line: 192, baseType: !52, size: 32, offset: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !258, file: !259, line: 202, baseType: !257, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !258, file: !259, line: 203, baseType: !19, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !258, file: !259, line: 205, baseType: !266, size: 192, align: 64, offset: 192)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !267, line: 5, size: 192, align: 64, elements: !268)
!267 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!268 = !{!269, !270, !272}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !266, file: !267, line: 6, baseType: !42, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !266, file: !267, line: 7, baseType: !271, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !266, file: !267, line: 8, baseType: !271, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !258, file: !259, line: 207, baseType: !274, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !258, file: !259, line: 208, baseType: !7, size: 32, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_member, scope: !258, file: !259, line: 209, baseType: !278, size: 256, offset: 512)
!278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !258, file: !259, line: 209, size: 256, elements: !279)
!279 = !{!280, !292, !296}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !278, file: !259, line: 210, baseType: !281, size: 256)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !259, line: 153, size: 256, elements: !282)
!282 = !{!283, !284, !288, !291}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !281, file: !259, line: 154, baseType: !42, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !281, file: !259, line: 156, baseType: !285, size: 64, offset: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !267, line: 12, size: 64, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !285, file: !267, line: 13, baseType: !271, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !281, file: !259, line: 162, baseType: !289, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !259, line: 162, flags: DIFlagFwdDecl)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !281, file: !259, line: 167, baseType: !42, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !278, file: !259, line: 211, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !259, line: 170, size: 64, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !293, file: !259, line: 171, baseType: !257, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !278, file: !259, line: 212, baseType: !297, size: 256)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !259, line: 174, size: 256, elements: !298)
!298 = !{!299, !3674, !3677, !3678}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !297, file: !259, line: 175, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !259, line: 271, size: 768, elements: !303)
!303 = !{!304, !3651, !3655, !3656, !3657, !3658, !3659, !3663, !3664, !3665, !3666, !3670}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !302, file: !259, line: 276, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!25, !308}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !259, line: 251, size: 1216, elements: !310)
!310 = !{!311, !312, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !309, file: !259, line: 253, baseType: !257, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !309, file: !259, line: 254, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !111, line: 994, size: 1856, align: 64, elements: !315)
!315 = !{!316, !335, !336, !338, !347, !360, !361, !362, !437, !795, !804, !3630, !3631, !3632, !3633, !3634, !3635, !3637, !3638, !3639}
!316 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !111, line: 995, baseType: !317, size: 128)
!317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !111, line: 995, size: 128, elements: !318)
!318 = !{!319, !325, !334}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !317, file: !111, line: 996, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !321, line: 60, size: 64, elements: !322)
!321 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !321, line: 61, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !317, file: !111, line: 997, baseType: !326, size: 128, align: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !28, line: 232, size: 128, align: 64, elements: !327)
!327 = !{!328, !330}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !28, line: 233, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !326, file: !28, line: 234, baseType: !331, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !329}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !317, file: !111, line: 998, baseType: !7, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !314, file: !111, line: 1005, baseType: !62, size: 32, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !314, file: !111, line: 1006, baseType: !337, size: 32, offset: 160)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !28, line: 156, baseType: !7)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !314, file: !111, line: 1007, baseType: !339, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !340, line: 13, baseType: !341)
!340 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !28, line: 181, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 179, size: 64, elements: !343)
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !342, file: !28, line: 180, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !87, line: 22, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !89, line: 30, baseType: !46)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !314, file: !111, line: 1008, baseType: !348, size: 256, offset: 256)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !349, line: 66, size: 256, elements: !350)
!349 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!350 = !{!351, !352, !354, !359}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !348, file: !349, line: 67, baseType: !339, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !348, file: !349, line: 68, baseType: !353, size: 32, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !71, line: 23, baseType: !70)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !348, file: !349, line: 70, baseType: !355, size: 32, offset: 96)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !356, line: 15, size: 32, elements: !357)
!356 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !355, file: !356, line: 20, baseType: !52, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !348, file: !349, line: 72, baseType: !100, size: 128, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !314, file: !111, line: 1009, baseType: !44, size: 64, offset: 512)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !314, file: !111, line: 1010, baseType: !7, size: 32, offset: 576)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !314, file: !111, line: 1011, baseType: !363, size: 256, offset: 640)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !111, line: 948, size: 256, elements: !364)
!364 = !{!365, !388, !426, !427, !435, !436}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !363, file: !111, line: 949, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !367, line: 34, baseType: !368)
!367 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 25, size: 64, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !368, file: !367, line: 26, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !372, line: 27, baseType: !373)
!372 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !372, line: 13, size: 64, elements: !374)
!374 = !{!375, !387}
!375 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !372, line: 14, baseType: !376, size: 32)
!376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !372, line: 14, size: 32, elements: !377)
!377 = !{!378, !379}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !376, file: !372, line: 15, baseType: !52, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, scope: !376, file: !372, line: 16, baseType: !380, size: 32)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !376, file: !372, line: 16, size: 32, elements: !381)
!381 = !{!382, !383}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !380, file: !372, line: 18, baseType: !86, size: 8)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !380, file: !372, line: 19, baseType: !384, size: 24, offset: 8)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 24, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 3)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !373, file: !372, line: 26, baseType: !74, size: 32, offset: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !363, file: !111, line: 950, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !391)
!391 = !{!392, !398, !399, !400, !413, !414, !415, !416}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !390, file: !6, line: 61, baseType: !393, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !394, line: 113, baseType: !395)
!394 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !394, line: 111, size: 32, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !395, file: !394, line: 112, baseType: !52, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !390, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !390, file: !6, line: 63, baseType: !62, size: 32, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !390, file: !6, line: 65, baseType: !401, size: 256, offset: 128)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 256, elements: !411)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !28, line: 194, size: 64, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !402, file: !28, line: 195, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !28, line: 198, size: 128, elements: !407)
!407 = !{!408, !409}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !406, file: !28, line: 199, baseType: !405, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !406, file: !28, line: 199, baseType: !410, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!411 = !{!412}
!412 = !DISubrange(count: 4)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !390, file: !6, line: 66, baseType: !402, size: 64, offset: 384)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !390, file: !6, line: 68, baseType: !57, size: 192, offset: 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !390, file: !6, line: 69, baseType: !326, size: 128, align: 64, offset: 640)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !390, file: !6, line: 70, baseType: !417, offset: 768)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, elements: !424)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !419)
!419 = !{!420, !421}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !418, file: !6, line: 55, baseType: !25, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !418, file: !6, line: 56, baseType: !422, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!424 = !{!425}
!425 = !DISubrange(count: -1)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !363, file: !111, line: 951, baseType: !5, size: 32, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !363, file: !111, line: 952, baseType: !428, size: 32, offset: 160)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !429, line: 23, baseType: !430)
!429 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !429, line: 21, size: 32, elements: !431)
!431 = !{!432}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !430, file: !429, line: 22, baseType: !433, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !28, line: 37, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !40, line: 49, baseType: !7)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !363, file: !111, line: 952, baseType: !428, size: 32, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !363, file: !111, line: 953, baseType: !25, size: 32, offset: 224)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !314, file: !111, line: 1012, baseType: !438, size: 64, offset: 896)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !441, line: 110, size: 1472, elements: !442)
!441 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!442 = !{!443, !444, !445, !452, !453, !454, !455, !456, !457, !458, !459, !465, !466, !467, !468, !469, !470, !595, !596, !597, !598, !599, !630, !781, !782, !790}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !440, file: !441, line: 111, baseType: !339, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !440, file: !441, line: 112, baseType: !428, size: 32, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !440, file: !441, line: 113, baseType: !446, size: 32, offset: 96)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !429, line: 28, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !429, line: 26, size: 32, elements: !448)
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !447, file: !429, line: 27, baseType: !450, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !28, line: 38, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !40, line: 50, baseType: !7)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !440, file: !441, line: 114, baseType: !428, size: 32, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !440, file: !441, line: 115, baseType: !446, size: 32, offset: 160)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !440, file: !441, line: 116, baseType: !428, size: 32, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !440, file: !441, line: 117, baseType: !446, size: 32, offset: 224)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !440, file: !441, line: 118, baseType: !428, size: 32, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !440, file: !441, line: 119, baseType: !446, size: 32, offset: 288)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !440, file: !441, line: 120, baseType: !7, size: 32, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !440, file: !441, line: 121, baseType: !460, size: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !461, line: 24, baseType: !462)
!461 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 24, size: 64, elements: !463)
!463 = !{!464}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !462, file: !461, line: 24, baseType: !226, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !440, file: !441, line: 122, baseType: !460, size: 64, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !440, file: !441, line: 123, baseType: !460, size: 64, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !440, file: !441, line: 124, baseType: !460, size: 64, offset: 576)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !440, file: !441, line: 125, baseType: !460, size: 64, offset: 640)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !440, file: !441, line: 127, baseType: !90, size: 8, offset: 704)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !440, file: !441, line: 129, baseType: !471, size: 64, offset: 768)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !473, line: 195, size: 1728, elements: !474)
!473 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!474 = !{!475, !476, !481, !486, !495, !498, !499, !506, !507, !508, !509, !514, !515, !516, !518, !519, !559, !580}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !472, file: !473, line: 196, baseType: !393, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !472, file: !473, line: 197, baseType: !477, size: 32, offset: 32)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !473, line: 28, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !28, line: 104, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !87, line: 20, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !89, line: 26, baseType: !25)
!481 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !473, line: 198, baseType: !482, size: 192, offset: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !472, file: !473, line: 198, size: 192, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !482, file: !473, line: 199, baseType: !100, size: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !482, file: !473, line: 200, baseType: !266, size: 192, align: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !472, file: !473, line: 205, baseType: !487, size: 320, offset: 256)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !488, line: 48, size: 320, elements: !489)
!488 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!489 = !{!490, !491, !492, !493, !494}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !487, file: !488, line: 49, baseType: !339, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !487, file: !488, line: 55, baseType: !339, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !487, file: !488, line: 57, baseType: !355, size: 32, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !487, file: !488, line: 59, baseType: !353, size: 32, offset: 160)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !487, file: !488, line: 60, baseType: !100, size: 128, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !472, file: !473, line: 206, baseType: !496, size: 64, offset: 576)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !473, line: 206, flags: DIFlagFwdDecl)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !472, file: !473, line: 207, baseType: !23, size: 64, offset: 640)
!499 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !473, line: 208, baseType: !500, size: 64, offset: 704)
!500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !472, file: !473, line: 208, size: 64, elements: !501)
!501 = !{!502, !505}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !500, file: !473, line: 209, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !504, line: 8, baseType: !346)
!504 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!505 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !500, file: !473, line: 210, baseType: !503, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !472, file: !473, line: 212, baseType: !503, size: 64, offset: 768)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !472, file: !473, line: 213, baseType: !428, size: 32, offset: 832)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !472, file: !473, line: 214, baseType: !446, size: 32, offset: 864)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !472, file: !473, line: 215, baseType: !510, size: 32, offset: 896)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !473, line: 31, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !28, line: 110, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !87, line: 21, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !89, line: 27, baseType: !7)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !472, file: !473, line: 216, baseType: !29, size: 16, offset: 928)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !472, file: !473, line: 217, baseType: !29, size: 16, offset: 944)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !472, file: !473, line: 221, baseType: !517, size: 16, offset: 960)
!517 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !472, file: !473, line: 228, baseType: !42, size: 64, offset: 1024)
!519 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !473, line: 245, baseType: !520, size: 320, offset: 1088)
!520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !472, file: !473, line: 245, size: 320, elements: !521)
!521 = !{!522, !551}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !520, file: !473, line: 246, baseType: !523, size: 320)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !473, line: 114, size: 320, elements: !524)
!524 = !{!525, !526, !538, !541, !550}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !523, file: !473, line: 116, baseType: !42, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, scope: !523, file: !473, line: 117, baseType: !527, size: 64, offset: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !523, file: !473, line: 117, size: 64, elements: !528)
!528 = !{!529, !537}
!529 = !DIDerivedType(tag: DW_TAG_member, scope: !527, file: !473, line: 118, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !527, file: !473, line: 118, size: 64, elements: !531)
!531 = !{!532, !533}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !530, file: !473, line: 120, baseType: !96, size: 16)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !530, file: !473, line: 121, baseType: !534, size: 48, offset: 16)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 48, elements: !535)
!535 = !{!536}
!536 = !DISubrange(count: 6)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !527, file: !473, line: 127, baseType: !42, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !523, file: !473, line: 129, baseType: !539, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !473, line: 102, flags: DIFlagFwdDecl)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !523, file: !473, line: 130, baseType: !542, size: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !473, line: 108, size: 192, elements: !544)
!544 = !{!545, !546, !547}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !543, file: !473, line: 109, baseType: !326, size: 128, align: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !543, file: !473, line: 110, baseType: !393, size: 32, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !543, file: !473, line: 111, baseType: !548, size: 8, offset: 160)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !28, line: 35, baseType: !549)
!549 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !523, file: !473, line: 131, baseType: !19, size: 64, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_member, scope: !520, file: !473, line: 247, baseType: !552, size: 320)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !520, file: !473, line: 247, size: 320, elements: !553)
!553 = !{!554, !555, !556, !557, !558}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !552, file: !473, line: 248, baseType: !42, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !552, file: !473, line: 249, baseType: !42, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !552, file: !473, line: 250, baseType: !539, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !552, file: !473, line: 251, baseType: !542, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !552, file: !473, line: 252, baseType: !214, size: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !473, line: 260, baseType: !560, size: 256, offset: 1408)
!560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !472, file: !473, line: 260, size: 256, elements: !561)
!561 = !{!562, !568}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !560, file: !473, line: 261, baseType: !563, size: 256)
!563 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !473, line: 134, size: 256, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !563, file: !473, line: 135, baseType: !23, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !563, file: !473, line: 136, baseType: !567, size: 256)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 256, elements: !411)
!568 = !DIDerivedType(tag: DW_TAG_member, scope: !560, file: !473, line: 262, baseType: !569, size: 256)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !560, file: !473, line: 262, size: 256, elements: !570)
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !569, file: !473, line: 264, baseType: !100, size: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !569, file: !473, line: 265, baseType: !573, size: 128, offset: 128)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !574, line: 22, size: 128, elements: !575)
!574 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!575 = !{!576, !579}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !573, file: !574, line: 23, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !574, line: 23, flags: DIFlagFwdDecl)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !573, file: !574, line: 24, baseType: !42, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !472, file: !473, line: 280, baseType: !581, size: 64, offset: 1664)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !473, line: 176, size: 192, elements: !583)
!583 = !{!584, !593, !594}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !582, file: !473, line: 177, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !473, line: 171, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!25, !471, !589, !591, !471}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !582, file: !473, line: 178, baseType: !471, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !582, file: !473, line: 179, baseType: !539, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !440, file: !441, line: 130, baseType: !471, size: 64, offset: 832)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !440, file: !441, line: 131, baseType: !471, size: 64, offset: 896)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !440, file: !441, line: 132, baseType: !471, size: 64, offset: 960)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !440, file: !441, line: 135, baseType: !23, size: 64, offset: 1024)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !440, file: !441, line: 137, baseType: !600, size: 64, offset: 1088)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !602, line: 14, size: 1088, elements: !603)
!602 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!603 = !{!604, !605, !614, !615, !616, !617, !618, !619}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !601, file: !602, line: 15, baseType: !393, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !601, file: !602, line: 17, baseType: !606, size: 320, offset: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !607, line: 22, size: 320, elements: !608)
!607 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!608 = !{!609, !610, !611, !612}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !606, file: !607, line: 23, baseType: !353, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !606, file: !607, line: 24, baseType: !345, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !606, file: !607, line: 26, baseType: !100, size: 128, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !606, file: !607, line: 28, baseType: !613, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !601, file: !602, line: 19, baseType: !42, size: 64, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !601, file: !602, line: 20, baseType: !339, size: 64, offset: 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !601, file: !602, line: 23, baseType: !406, size: 128, offset: 512)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !601, file: !602, line: 24, baseType: !428, size: 32, offset: 640)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !601, file: !602, line: 29, baseType: !339, size: 64, offset: 704)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !601, file: !602, line: 36, baseType: !620, size: 320, offset: 768)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !621, line: 15, size: 320, elements: !622)
!621 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!622 = !{!623, !624, !625, !626, !627, !628, !629}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !620, file: !621, line: 16, baseType: !353, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !620, file: !621, line: 18, baseType: !25, size: 32, offset: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !620, file: !621, line: 19, baseType: !25, size: 32, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !620, file: !621, line: 20, baseType: !25, size: 32, offset: 96)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !620, file: !621, line: 21, baseType: !25, size: 32, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !620, file: !621, line: 22, baseType: !42, size: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !620, file: !621, line: 23, baseType: !42, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !440, file: !441, line: 138, baseType: !631, size: 64, offset: 1152)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !633, line: 68, size: 4800, elements: !634)
!633 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!634 = !{!635, !657, !658, !659, !660, !661, !662, !663, !674, !675, !676, !677, !678, !679, !691, !761, !762, !776, !779}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !632, file: !633, line: 69, baseType: !636, size: 576)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !633, line: 23, size: 576, elements: !637)
!637 = !{!638, !639}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !636, file: !633, line: 24, baseType: !512, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !633, line: 25, baseType: !640, size: 512, offset: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !636, file: !633, line: 25, size: 512, elements: !641)
!641 = !{!642, !651}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !640, file: !633, line: 26, baseType: !643, size: 480)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 480, elements: !649)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !633, line: 17, size: 96, elements: !645)
!645 = !{!646, !647, !648}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !644, file: !633, line: 18, baseType: !512, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !644, file: !633, line: 19, baseType: !512, size: 32, offset: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !644, file: !633, line: 20, baseType: !512, size: 32, offset: 64)
!649 = !{!650}
!650 = !DISubrange(count: 5)
!651 = !DIDerivedType(tag: DW_TAG_member, scope: !640, file: !633, line: 27, baseType: !652, size: 128)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !640, file: !633, line: 27, size: 128, elements: !653)
!653 = !{!654, !656}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !652, file: !633, line: 28, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !652, file: !633, line: 29, baseType: !655, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !632, file: !633, line: 70, baseType: !636, size: 576, offset: 576)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !632, file: !633, line: 71, baseType: !636, size: 576, offset: 1152)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !632, file: !633, line: 72, baseType: !631, size: 64, offset: 1728)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !632, file: !633, line: 73, baseType: !25, size: 32, offset: 1792)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !632, file: !633, line: 74, baseType: !428, size: 32, offset: 1824)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !632, file: !633, line: 75, baseType: !446, size: 32, offset: 1856)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !632, file: !633, line: 76, baseType: !664, size: 192, offset: 1920)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !665, line: 9, size: 192, elements: !666)
!665 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!666 = !{!667, !668, !672, !673}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !664, file: !665, line: 10, baseType: !339, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !664, file: !665, line: 11, baseType: !669, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!671 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !665, line: 7, flags: DIFlagFwdDecl)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !664, file: !665, line: 12, baseType: !7, size: 32, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !664, file: !665, line: 13, baseType: !393, size: 32, offset: 160)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !633, line: 77, baseType: !42, size: 64, offset: 2112)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !632, file: !633, line: 80, baseType: !548, size: 8, offset: 2176)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !632, file: !633, line: 88, baseType: !100, size: 128, offset: 2240)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !632, file: !633, line: 89, baseType: !471, size: 64, offset: 2368)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !632, file: !633, line: 90, baseType: !487, size: 320, offset: 2432)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !632, file: !633, line: 97, baseType: !680, size: 256, offset: 2752)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !681, line: 98, size: 256, elements: !682)
!681 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!682 = !{!683, !684, !685}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !680, file: !681, line: 99, baseType: !339, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !680, file: !681, line: 100, baseType: !100, size: 128, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !680, file: !681, line: 101, baseType: !686, size: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !681, line: 21, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !690}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !632, file: !633, line: 99, baseType: !692, size: 768, offset: 3008)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !15, line: 199, size: 768, elements: !693)
!693 = !{!694, !699}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !692, file: !15, line: 200, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!25, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !692, file: !15, line: 201, baseType: !700, size: 704, offset: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !15, line: 193, size: 704, elements: !701)
!701 = !{!702, !760}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !700, file: !15, line: 195, baseType: !703, size: 640)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !15, line: 173, size: 640, elements: !704)
!704 = !{!705, !717, !729, !730, !750, !751, !753, !759}
!705 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !15, line: 174, baseType: !706, size: 192)
!706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !703, file: !15, line: 174, size: 192, elements: !707)
!707 = !{!708, !716}
!708 = !DIDerivedType(tag: DW_TAG_member, scope: !706, file: !15, line: 175, baseType: !709, size: 192)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !706, file: !15, line: 175, size: 192, elements: !710)
!710 = !{!711, !712, !713, !714, !715}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !709, file: !15, line: 176, baseType: !36, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !709, file: !15, line: 177, baseType: !25, size: 32, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !709, file: !15, line: 178, baseType: !25, size: 32, offset: 96)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !709, file: !15, line: 179, baseType: !25, size: 32, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !709, file: !15, line: 180, baseType: !25, size: 32, offset: 160)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !706, file: !15, line: 182, baseType: !326, size: 128, align: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !703, file: !15, line: 184, baseType: !718, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !720, line: 26, size: 256, elements: !721)
!720 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !719, file: !720, line: 27, baseType: !7, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !719, file: !720, line: 28, baseType: !724, size: 192, offset: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !725, line: 43, size: 192, elements: !726)
!725 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!726 = !{!727, !728}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !724, file: !725, line: 44, baseType: !353, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !724, file: !725, line: 45, baseType: !100, size: 128, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !703, file: !15, line: 185, baseType: !36, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !703, file: !15, line: 186, baseType: !731, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !15, line: 204, size: 960, elements: !733)
!733 = !{!734, !735, !739, !746}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !732, file: !15, line: 205, baseType: !692, size: 768)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !732, file: !15, line: 206, baseType: !736, size: 64, offset: 768)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!698, !731}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !732, file: !15, line: 207, baseType: !740, size: 64, offset: 832)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{null, !743, !744, !745}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !732, file: !15, line: 209, baseType: !747, size: 64, offset: 896)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!25, !743, !36}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !703, file: !15, line: 187, baseType: !698, size: 64, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !703, file: !15, line: 188, baseType: !752, size: 64, offset: 448)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !703, file: !15, line: 189, baseType: !754, size: 64, offset: 512)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !15, line: 157, size: 256, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !755, file: !15, line: 158, baseType: !266, size: 192, align: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !755, file: !15, line: 159, baseType: !743, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !703, file: !15, line: 190, baseType: !402, size: 64, offset: 576)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !700, file: !15, line: 196, baseType: !285, size: 64, offset: 640)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !632, file: !633, line: 100, baseType: !743, size: 64, offset: 3776)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !632, file: !633, line: 102, baseType: !763, size: 64, offset: 3840)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !633, line: 107, size: 1152, elements: !765)
!765 = !{!766, !767, !768, !769, !770, !774}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !764, file: !633, line: 108, baseType: !406, size: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !764, file: !633, line: 109, baseType: !631, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !764, file: !633, line: 110, baseType: !428, size: 32, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !764, file: !633, line: 111, baseType: !52, size: 32, offset: 224)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !764, file: !633, line: 112, baseType: !771, size: 640, offset: 256)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 640, elements: !772)
!772 = !{!773}
!773 = !DISubrange(count: 10)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !764, file: !633, line: 113, baseType: !775, size: 256, offset: 896)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 256, elements: !411)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !632, file: !633, line: 103, baseType: !777, size: 640, offset: 3904)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 640, elements: !772)
!778 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !632, file: !633, line: 104, baseType: !780, size: 256, offset: 4544)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 256, elements: !411)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !440, file: !441, line: 139, baseType: !763, size: 64, offset: 1216)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !440, file: !441, line: 140, baseType: !783, size: 64, offset: 1280)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !441, line: 25, size: 64, elements: !785)
!785 = !{!786, !787, !788}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !784, file: !441, line: 26, baseType: !52, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !784, file: !441, line: 27, baseType: !25, size: 32, offset: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !784, file: !441, line: 28, baseType: !789, offset: 64)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, elements: !424)
!790 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !441, line: 142, baseType: !791, size: 128, offset: 1344)
!791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !441, line: 142, size: 128, elements: !792)
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !791, file: !441, line: 143, baseType: !25, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !791, file: !441, line: 144, baseType: !326, size: 128, align: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !314, file: !111, line: 1013, baseType: !796, size: 256, offset: 960)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !111, line: 970, size: 256, elements: !797)
!797 = !{!798, !799, !800, !801, !802, !803}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !796, file: !111, line: 971, baseType: !42, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !796, file: !111, line: 972, baseType: !7, size: 32, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !796, file: !111, line: 973, baseType: !7, size: 32, offset: 96)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !796, file: !111, line: 974, baseType: !7, size: 32, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !796, file: !111, line: 975, baseType: !7, size: 32, offset: 160)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !796, file: !111, line: 976, baseType: !44, size: 64, offset: 192)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !314, file: !111, line: 1014, baseType: !805, size: 128, offset: 1216)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !806, line: 8, size: 128, elements: !807)
!806 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!807 = !{!808, !3629}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !805, file: !806, line: 9, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !811, line: 70, size: 256, elements: !812)
!811 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!812 = !{!813, !3626, !3627, !3628}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !810, file: !811, line: 71, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !816, line: 82, size: 1536, elements: !817)
!816 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!817 = !{!818, !819, !829, !837, !838, !853, !3593, !3595, !3608, !3609, !3610, !3611, !3612, !3618, !3619, !3620}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !815, file: !816, line: 84, baseType: !7, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !815, file: !816, line: 85, baseType: !820, size: 32, offset: 32)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !821, line: 275, baseType: !822)
!821 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !821, line: 275, size: 32, elements: !823)
!823 = !{!824}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !822, file: !821, line: 275, baseType: !825, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !821, line: 69, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !821, line: 64, size: 32, elements: !827)
!827 = !{!828}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !826, file: !821, line: 65, baseType: !7, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !815, file: !816, line: 86, baseType: !830, size: 128, offset: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !831, line: 38, size: 128, elements: !832)
!831 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!832 = !{!833, !835}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !830, file: !831, line: 39, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !830, file: !831, line: 39, baseType: !836, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !815, file: !816, line: 87, baseType: !814, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !815, file: !816, line: 88, baseType: !839, size: 128, offset: 256)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !816, line: 49, size: 128, elements: !840)
!840 = !{!841, !850}
!841 = !DIDerivedType(tag: DW_TAG_member, scope: !839, file: !816, line: 50, baseType: !842, size: 64)
!842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !839, file: !816, line: 50, size: 64, elements: !843)
!843 = !{!844, !849}
!844 = !DIDerivedType(tag: DW_TAG_member, scope: !842, file: !816, line: 51, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !842, file: !816, line: 51, size: 64, elements: !846)
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !845, file: !816, line: 52, baseType: !512, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !845, file: !816, line: 52, baseType: !512, size: 32, offset: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !842, file: !816, line: 54, baseType: !226, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !839, file: !816, line: 56, baseType: !851, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !815, file: !816, line: 89, baseType: !854, size: 64, offset: 384)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !111, line: 641, size: 4800, elements: !856)
!856 = !{!857, !858, !859, !860, !861, !862, !863, !866, !867, !1061, !3352, !3353, !3354, !3355, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3575, !3578, !3579, !3580, !3589, !3590, !3591, !3592}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !855, file: !111, line: 642, baseType: !27, size: 16)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !855, file: !111, line: 643, baseType: !29, size: 16, offset: 16)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !855, file: !111, line: 644, baseType: !428, size: 32, offset: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !855, file: !111, line: 645, baseType: !100, size: 128, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !855, file: !111, line: 646, baseType: !446, size: 32, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !855, file: !111, line: 647, baseType: !7, size: 32, offset: 224)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !855, file: !111, line: 650, baseType: !864, size: 64, offset: 256)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !111, line: 607, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !855, file: !111, line: 651, baseType: !864, size: 64, offset: 320)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !855, file: !111, line: 654, baseType: !868, size: 64, offset: 384)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !870)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !111, line: 1966, size: 2048, align: 512, elements: !871)
!871 = !{!872, !876, !889, !895, !899, !903, !907, !911, !915, !919, !923, !924, !930, !934, !971, !1002, !1009, !1015, !1019, !1023, !1027, !1031, !1035, !1041, !1045}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !870, file: !111, line: 1967, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!814, !854, !814, !7}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !870, file: !111, line: 1968, baseType: !877, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{!19, !814, !854, !880}
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !882, line: 10, size: 128, elements: !883)
!882 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!883 = !{!884, !888}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !881, file: !882, line: 11, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !23}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !881, file: !882, line: 12, baseType: !23, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !870, file: !111, line: 1969, baseType: !890, size: 64, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!25, !893, !854, !25}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !461, line: 42, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !870, file: !111, line: 1970, baseType: !896, size: 64, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!864, !854, !25, !548}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !870, file: !111, line: 1972, baseType: !900, size: 64, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!25, !814, !214, !25}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !870, file: !111, line: 1974, baseType: !904, size: 64, offset: 320)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!25, !893, !854, !814, !27, !548}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !870, file: !111, line: 1976, baseType: !908, size: 64, offset: 384)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!25, !814, !854, !814}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !870, file: !111, line: 1977, baseType: !912, size: 64, offset: 448)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!25, !854, !814}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !870, file: !111, line: 1978, baseType: !916, size: 64, offset: 512)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!25, !893, !854, !814, !19}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !870, file: !111, line: 1980, baseType: !920, size: 64, offset: 576)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!25, !893, !854, !814, !27}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !870, file: !111, line: 1982, baseType: !912, size: 64, offset: 640)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !870, file: !111, line: 1983, baseType: !925, size: 64, offset: 704)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!25, !893, !854, !814, !27, !928}
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !28, line: 21, baseType: !929)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !28, line: 18, baseType: !512)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !870, file: !111, line: 1985, baseType: !931, size: 64, offset: 768)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!25, !893, !854, !814, !854, !814, !7}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !870, file: !111, line: 1987, baseType: !935, size: 64, offset: 832)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!25, !893, !814, !938}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !111, line: 226, size: 640, elements: !940)
!940 = !{!941, !942, !943, !953, !962, !963, !968, !969, !970}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !939, file: !111, line: 227, baseType: !7, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !939, file: !111, line: 228, baseType: !27, size: 16, offset: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !111, line: 241, baseType: !944, size: 32, offset: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !939, file: !111, line: 241, size: 32, elements: !945)
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !944, file: !111, line: 242, baseType: !428, size: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !944, file: !111, line: 243, baseType: !948, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !949, line: 16, baseType: !950)
!949 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !949, line: 14, size: 32, elements: !951)
!951 = !{!952}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !950, file: !949, line: 15, baseType: !433, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !111, line: 245, baseType: !954, size: 32, offset: 96)
!954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !939, file: !111, line: 245, size: 32, elements: !955)
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !954, file: !111, line: 246, baseType: !446, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !954, file: !111, line: 247, baseType: !958, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !949, line: 20, baseType: !959)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !949, line: 18, size: 32, elements: !960)
!960 = !{!961}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !959, file: !949, line: 19, baseType: !450, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !939, file: !111, line: 249, baseType: !44, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !939, file: !111, line: 250, baseType: !964, size: 128, offset: 192)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !504, line: 13, size: 128, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !964, file: !504, line: 14, baseType: !503, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !964, file: !504, line: 15, baseType: !778, size: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !939, file: !111, line: 251, baseType: !964, size: 128, offset: 320)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !939, file: !111, line: 252, baseType: !964, size: 128, offset: 448)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !939, file: !111, line: 259, baseType: !313, size: 64, offset: 576)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !870, file: !111, line: 1988, baseType: !972, size: 64, offset: 896)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!25, !893, !975, !977, !512, !7}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !805)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !979, line: 22, size: 1280, elements: !980)
!979 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!980 = !{!981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !978, file: !979, line: 23, baseType: !512, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !978, file: !979, line: 24, baseType: !27, size: 16, offset: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !978, file: !979, line: 25, baseType: !7, size: 32, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !978, file: !979, line: 26, baseType: !511, size: 32, offset: 96)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !978, file: !979, line: 27, baseType: !226, size: 64, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !978, file: !979, line: 28, baseType: !226, size: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !978, file: !979, line: 41, baseType: !226, size: 64, offset: 256)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !978, file: !979, line: 42, baseType: !928, size: 32, offset: 320)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !978, file: !979, line: 43, baseType: !928, size: 32, offset: 352)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !978, file: !979, line: 44, baseType: !428, size: 32, offset: 384)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !978, file: !979, line: 45, baseType: !446, size: 32, offset: 416)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !978, file: !979, line: 46, baseType: !44, size: 64, offset: 448)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !978, file: !979, line: 47, baseType: !964, size: 128, offset: 512)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !978, file: !979, line: 48, baseType: !964, size: 128, offset: 640)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !978, file: !979, line: 49, baseType: !964, size: 128, offset: 768)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !978, file: !979, line: 50, baseType: !964, size: 128, offset: 896)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !978, file: !979, line: 51, baseType: !226, size: 64, offset: 1024)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !978, file: !979, line: 52, baseType: !226, size: 64, offset: 1088)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !978, file: !979, line: 53, baseType: !512, size: 32, offset: 1152)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !978, file: !979, line: 54, baseType: !512, size: 32, offset: 1184)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !978, file: !979, line: 55, baseType: !226, size: 64, offset: 1216)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !870, file: !111, line: 1990, baseType: !1003, size: 64, offset: 960)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!1006, !814, !214, !38}
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !28, line: 66, baseType: !1007)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !40, line: 73, baseType: !1008)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !40, line: 15, baseType: !778)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !870, file: !111, line: 1991, baseType: !1010, size: 64, offset: 1024)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!25, !854, !1013, !226, !226}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !111, line: 55, flags: DIFlagFwdDecl)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !870, file: !111, line: 1993, baseType: !1016, size: 64, offset: 1088)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!25, !854, !25}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !870, file: !111, line: 1994, baseType: !1020, size: 64, offset: 1152)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!25, !854, !814, !313, !7, !27}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !870, file: !111, line: 1997, baseType: !1024, size: 64, offset: 1216)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!25, !893, !854, !313, !27}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !870, file: !111, line: 1999, baseType: !1028, size: 64, offset: 1280)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!864, !893, !814, !25}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !870, file: !111, line: 2001, baseType: !1032, size: 64, offset: 1344)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!25, !893, !814, !864, !25}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !870, file: !111, line: 2003, baseType: !1036, size: 64, offset: 1408)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!25, !893, !814, !1039}
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !111, line: 76, flags: DIFlagFwdDecl)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !870, file: !111, line: 2005, baseType: !1042, size: 64, offset: 1472)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!25, !814, !1039}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !870, file: !111, line: 2006, baseType: !1046, size: 64, offset: 1536)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!1049, !854}
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !111, line: 3192, size: 192, elements: !1051)
!1051 = !{!1052, !1060}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1050, file: !111, line: 3193, baseType: !1053, size: 128)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1054, line: 296, size: 128, elements: !1055)
!1054 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1055 = !{!1056, !1057, !1059}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1053, file: !1054, line: 297, baseType: !62, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1053, file: !1054, line: 299, baseType: !1058, size: 32, offset: 32)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !28, line: 154, baseType: !7)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1053, file: !1054, line: 300, baseType: !23, size: 64, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1050, file: !111, line: 3194, baseType: !512, size: 32, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !855, file: !111, line: 655, baseType: !1062, size: 64, offset: 448)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !111, line: 1190, size: 10752, elements: !1064)
!1064 = !{!1065, !1066, !1067, !1068, !1069, !1070, !1112, !1286, !1326, !1409, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1426, !1430, !1431, !1434, !1437, !1440, !1443, !1444, !1445, !1486, !3226, !3227, !3228, !3229, !3230, !3231, !3234, !3235, !3242, !3243, !3244, !3245, !3304, !3319, !3320, !3321, !3322, !3323, !3326, !3327, !3328, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1063, file: !111, line: 1191, baseType: !100, size: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1063, file: !111, line: 1192, baseType: !928, size: 32, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1063, file: !111, line: 1193, baseType: !90, size: 8, offset: 160)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1063, file: !111, line: 1194, baseType: !42, size: 64, offset: 192)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1063, file: !111, line: 1195, baseType: !44, size: 64, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1063, file: !111, line: 1196, baseType: !1071, size: 64, offset: 320)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !111, line: 2366, size: 576, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1082, !1086, !1090, !1094, !1098, !1099, !1100, !1104, !1105, !1106, !1108, !1109, !1110, !1111}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1072, file: !111, line: 2367, baseType: !19, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1072, file: !111, line: 2368, baseType: !25, size: 32, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1072, file: !111, line: 2376, baseType: !1077, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!25, !1080}
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !811, line: 21, flags: DIFlagFwdDecl)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1072, file: !111, line: 2377, baseType: !1083, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1085)
!1085 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !111, line: 75, flags: DIFlagFwdDecl)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1072, file: !111, line: 2378, baseType: !1087, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!814, !1071, !25, !19, !23}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1072, file: !111, line: 2380, baseType: !1091, size: 64, offset: 320)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{null, !1062}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1072, file: !111, line: 2381, baseType: !1095, size: 64, offset: 384)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1097, line: 103, flags: DIFlagFwdDecl)
!1097 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1072, file: !111, line: 2382, baseType: !1071, size: 64, offset: 448)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1072, file: !111, line: 2383, baseType: !402, size: 64, offset: 512)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1072, file: !111, line: 2385, baseType: !1101, offset: 576)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1102, line: 206, elements: !1103)
!1102 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1103 = !{}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1072, file: !111, line: 2386, baseType: !1101, offset: 576)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1072, file: !111, line: 2387, baseType: !1101, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1072, file: !111, line: 2388, baseType: !1107, offset: 576)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1101, elements: !385)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1072, file: !111, line: 2390, baseType: !1101, offset: 576)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1072, file: !111, line: 2391, baseType: !1101, offset: 576)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1072, file: !111, line: 2392, baseType: !1101, offset: 576)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1072, file: !111, line: 2393, baseType: !1101, offset: 576)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1063, file: !111, line: 1197, baseType: !1113, size: 64, offset: 384)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1115)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !111, line: 2057, size: 1664, elements: !1116)
!1116 = !{!1117, !1121, !1125, !1126, !1130, !1136, !1140, !1141, !1142, !1146, !1150, !1154, !1155, !1156, !1162, !1167, !1168, !1210, !1211, !1212, !1213, !1217, !1221, !1268, !1284, !1285}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1115, file: !111, line: 2058, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!854, !1062}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1115, file: !111, line: 2059, baseType: !1122, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null, !854}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1115, file: !111, line: 2060, baseType: !1122, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1115, file: !111, line: 2062, baseType: !1127, size: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{null, !854, !25}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1115, file: !111, line: 2063, baseType: !1131, size: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!25, !854, !1134}
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !111, line: 309, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1115, file: !111, line: 2064, baseType: !1137, size: 64, offset: 320)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!25, !854}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1115, file: !111, line: 2065, baseType: !1122, size: 64, offset: 384)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1115, file: !111, line: 2066, baseType: !1091, size: 64, offset: 448)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1115, file: !111, line: 2067, baseType: !1143, size: 64, offset: 512)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!25, !1062, !25}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1115, file: !111, line: 2068, baseType: !1147, size: 64, offset: 576)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!25, !1062, !110}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1115, file: !111, line: 2069, baseType: !1151, size: 64, offset: 640)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!25, !1062}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1115, file: !111, line: 2070, baseType: !1147, size: 64, offset: 704)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1115, file: !111, line: 2071, baseType: !1151, size: 64, offset: 768)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1115, file: !111, line: 2072, baseType: !1157, size: 64, offset: 832)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!25, !814, !1160}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !111, line: 62, flags: DIFlagFwdDecl)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1115, file: !111, line: 2073, baseType: !1163, size: 64, offset: 896)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!25, !1062, !1166, !214}
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1115, file: !111, line: 2074, baseType: !1091, size: 64, offset: 960)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1115, file: !111, line: 2076, baseType: !1169, size: 64, offset: 1024)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!25, !1172, !814}
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1174, line: 17, size: 960, elements: !1175)
!1174 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1175 = !{!1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1205, !1206, !1209}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1173, file: !1174, line: 18, baseType: !214, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1173, file: !1174, line: 19, baseType: !38, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1173, file: !1174, line: 20, baseType: !38, size: 64, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1173, file: !1174, line: 21, baseType: !38, size: 64, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1173, file: !1174, line: 22, baseType: !38, size: 64, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1173, file: !1174, line: 23, baseType: !44, size: 64, offset: 320)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1173, file: !1174, line: 24, baseType: !44, size: 64, offset: 384)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1173, file: !1174, line: 25, baseType: !348, size: 256, offset: 448)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1173, file: !1174, line: 26, baseType: !1185, size: 64, offset: 704)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1187)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1174, line: 32, size: 256, elements: !1188)
!1188 = !{!1189, !1193, !1197, !1201}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1187, file: !1174, line: 33, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!23, !1172, !43}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1187, file: !1174, line: 34, baseType: !1194, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !1172, !23}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1187, file: !1174, line: 35, baseType: !1198, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!23, !1172, !23, !43}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1187, file: !1174, line: 36, baseType: !1202, size: 64, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!25, !1172, !23}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1173, file: !1174, line: 27, baseType: !25, size: 32, offset: 768)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1173, file: !1174, line: 28, baseType: !1207, size: 64, offset: 832)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1173, file: !1174, line: 29, baseType: !23, size: 64, offset: 896)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1115, file: !111, line: 2077, baseType: !1169, size: 64, offset: 1088)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1115, file: !111, line: 2078, baseType: !1169, size: 64, offset: 1152)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1115, file: !111, line: 2079, baseType: !1169, size: 64, offset: 1216)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1115, file: !111, line: 2081, baseType: !1214, size: 64, offset: 1280)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!1006, !1062, !25, !214, !38, !44}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1115, file: !111, line: 2082, baseType: !1218, size: 64, offset: 1344)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!1006, !1062, !25, !19, !38, !44}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1115, file: !111, line: 2083, baseType: !1222, size: 64, offset: 1408)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!1225, !854}
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !116, line: 296, size: 1664, elements: !1228)
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1253, !1254, !1255}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1227, file: !116, line: 297, baseType: !406, size: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1227, file: !116, line: 298, baseType: !100, size: 128, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1227, file: !116, line: 299, baseType: !100, size: 128, offset: 256)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1227, file: !116, line: 300, baseType: !100, size: 128, offset: 384)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1227, file: !116, line: 301, baseType: !348, size: 256, offset: 512)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1227, file: !116, line: 302, baseType: !62, size: 32, offset: 768)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1227, file: !116, line: 303, baseType: !52, size: 32, offset: 800)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1227, file: !116, line: 304, baseType: !1062, size: 64, offset: 832)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1227, file: !116, line: 305, baseType: !1238, size: 64, offset: 896)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !116, line: 68, size: 64, elements: !1239)
!1239 = !{!1240, !1252}
!1240 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !116, line: 69, baseType: !1241, size: 32)
!1241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1238, file: !116, line: 69, size: 32, elements: !1242)
!1242 = !{!1243, !1244, !1245}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1241, file: !116, line: 70, baseType: !428, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1241, file: !116, line: 71, baseType: !446, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1241, file: !116, line: 72, baseType: !1246, size: 32)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1247, line: 24, baseType: !1248)
!1247 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1247, line: 22, size: 32, elements: !1249)
!1249 = !{!1250}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1248, file: !1247, line: 23, baseType: !1251, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1247, line: 20, baseType: !434)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1238, file: !116, line: 74, baseType: !115, size: 32, offset: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1227, file: !116, line: 306, baseType: !44, size: 64, offset: 960)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1227, file: !116, line: 307, baseType: !42, size: 64, offset: 1024)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1227, file: !116, line: 308, baseType: !1256, size: 576, offset: 1088)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !116, line: 205, size: 576, elements: !1257)
!1257 = !{!1258, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1256, file: !116, line: 206, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !116, line: 66, baseType: !46)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1256, file: !116, line: 207, baseType: !1259, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1256, file: !116, line: 208, baseType: !1259, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1256, file: !116, line: 209, baseType: !1259, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1256, file: !116, line: 210, baseType: !1259, size: 64, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1256, file: !116, line: 211, baseType: !1259, size: 64, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1256, file: !116, line: 212, baseType: !1259, size: 64, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1256, file: !116, line: 213, baseType: !503, size: 64, offset: 448)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1256, file: !116, line: 214, baseType: !503, size: 64, offset: 512)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1115, file: !111, line: 2085, baseType: !1269, size: 64, offset: 1472)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!778, !1062, !1272}
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1274, line: 15, size: 256, elements: !1275)
!1274 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1275 = !{!1276, !1277, !1278, !1279, !1280}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1273, file: !1274, line: 16, baseType: !1058, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1273, file: !1274, line: 19, baseType: !25, size: 32, offset: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1273, file: !1274, line: 26, baseType: !42, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1273, file: !1274, line: 33, baseType: !42, size: 64, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1273, file: !1274, line: 36, baseType: !1281, size: 64, offset: 192)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1283, line: 33, flags: DIFlagFwdDecl)
!1283 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1115, file: !111, line: 2087, baseType: !1269, size: 64, offset: 1536)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1115, file: !111, line: 2089, baseType: !1091, size: 64, offset: 1600)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1063, file: !111, line: 1198, baseType: !1287, size: 64, offset: 448)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1289)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !116, line: 324, size: 704, elements: !1290)
!1290 = !{!1291, !1295, !1299, !1303, !1304, !1305, !1306, !1307, !1312, !1317, !1321}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1289, file: !116, line: 325, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!25, !1226}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1289, file: !116, line: 326, baseType: !1296, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!1226, !1062, !25}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1289, file: !116, line: 327, baseType: !1300, size: 64, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !1226}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1289, file: !116, line: 328, baseType: !1292, size: 64, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1289, file: !116, line: 329, baseType: !1292, size: 64, offset: 256)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1289, file: !116, line: 330, baseType: !1292, size: 64, offset: 320)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1289, file: !116, line: 331, baseType: !1143, size: 64, offset: 384)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1289, file: !116, line: 334, baseType: !1308, size: 64, offset: 448)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!1311, !854}
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1289, file: !116, line: 335, baseType: !1313, size: 64, offset: 512)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!25, !854, !1316}
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1289, file: !116, line: 337, baseType: !1318, size: 64, offset: 576)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!25, !854, !1311}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1289, file: !116, line: 339, baseType: !1322, size: 64, offset: 640)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!25, !1062, !1325}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1063, file: !111, line: 1199, baseType: !1327, size: 64, offset: 512)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1329)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !116, line: 430, size: 704, elements: !1330)
!1330 = !{!1331, !1335, !1336, !1340, !1341, !1342, !1357, !1380, !1384, !1385, !1408}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1329, file: !116, line: 431, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!25, !1062, !25, !25, !975}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1329, file: !116, line: 432, baseType: !1143, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1329, file: !116, line: 433, baseType: !1337, size: 64, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!25, !1062, !7}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1329, file: !116, line: 434, baseType: !1337, size: 64, offset: 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1329, file: !116, line: 435, baseType: !1143, size: 64, offset: 256)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1329, file: !116, line: 436, baseType: !1343, size: 64, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!25, !1062, !25, !1346}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !116, line: 417, size: 256, elements: !1348)
!1348 = !{!1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1347, file: !116, line: 418, baseType: !25, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1347, file: !116, line: 419, baseType: !7, size: 32, offset: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1347, file: !116, line: 420, baseType: !7, size: 32, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1347, file: !116, line: 422, baseType: !7, size: 32, offset: 96)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1347, file: !116, line: 423, baseType: !7, size: 32, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1347, file: !116, line: 424, baseType: !7, size: 32, offset: 160)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1347, file: !116, line: 425, baseType: !7, size: 32, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1347, file: !116, line: 426, baseType: !7, size: 32, offset: 224)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1329, file: !116, line: 437, baseType: !1358, size: 64, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!25, !1062, !1238, !1361}
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !116, line: 345, size: 960, elements: !1363)
!1363 = !{!1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1362, file: !116, line: 346, baseType: !25, size: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1362, file: !116, line: 347, baseType: !226, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1362, file: !116, line: 348, baseType: !226, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1362, file: !116, line: 349, baseType: !226, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1362, file: !116, line: 350, baseType: !226, size: 64, offset: 256)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1362, file: !116, line: 351, baseType: !226, size: 64, offset: 320)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1362, file: !116, line: 352, baseType: !226, size: 64, offset: 384)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1362, file: !116, line: 353, baseType: !345, size: 64, offset: 448)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1362, file: !116, line: 355, baseType: !345, size: 64, offset: 512)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1362, file: !116, line: 356, baseType: !25, size: 32, offset: 576)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1362, file: !116, line: 357, baseType: !25, size: 32, offset: 608)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1362, file: !116, line: 358, baseType: !226, size: 64, offset: 640)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1362, file: !116, line: 359, baseType: !226, size: 64, offset: 704)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1362, file: !116, line: 360, baseType: !226, size: 64, offset: 768)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1362, file: !116, line: 361, baseType: !345, size: 64, offset: 832)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1362, file: !116, line: 362, baseType: !25, size: 32, offset: 896)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1329, file: !116, line: 438, baseType: !1381, size: 64, offset: 448)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!25, !1062, !1325, !1361}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1329, file: !116, line: 440, baseType: !1358, size: 64, offset: 512)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1329, file: !116, line: 441, baseType: !1386, size: 64, offset: 576)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!25, !1062, !1389}
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !116, line: 411, size: 1408, elements: !1391)
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1390, file: !116, line: 412, baseType: !7, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1390, file: !116, line: 413, baseType: !1394, size: 1344, offset: 64)
!1394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1395, size: 1344, elements: !385)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !116, line: 397, size: 448, elements: !1396)
!1396 = !{!1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1407}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1395, file: !116, line: 398, baseType: !7, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1395, file: !116, line: 399, baseType: !7, size: 32, offset: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1395, file: !116, line: 401, baseType: !7, size: 32, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1395, file: !116, line: 402, baseType: !7, size: 32, offset: 96)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1395, file: !116, line: 403, baseType: !7, size: 32, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1395, file: !116, line: 404, baseType: !7, size: 32, offset: 160)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1395, file: !116, line: 405, baseType: !7, size: 32, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1395, file: !116, line: 406, baseType: !228, size: 64, offset: 256)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1395, file: !116, line: 407, baseType: !1406, size: 64, offset: 320)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !28, line: 132, baseType: !226)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1395, file: !116, line: 408, baseType: !1406, size: 64, offset: 384)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1329, file: !116, line: 442, baseType: !1337, size: 64, offset: 640)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1063, file: !111, line: 1200, baseType: !1410, size: 64, offset: 576)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1412)
!1412 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !111, line: 54, flags: DIFlagFwdDecl)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1063, file: !111, line: 1201, baseType: !42, size: 64, offset: 640)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1063, file: !111, line: 1202, baseType: !42, size: 64, offset: 704)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1063, file: !111, line: 1203, baseType: !42, size: 64, offset: 768)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1063, file: !111, line: 1204, baseType: !814, size: 64, offset: 832)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1063, file: !111, line: 1205, baseType: !487, size: 320, offset: 896)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1063, file: !111, line: 1206, baseType: !25, size: 32, offset: 1216)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1063, file: !111, line: 1207, baseType: !52, size: 32, offset: 1248)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1063, file: !111, line: 1209, baseType: !23, size: 64, offset: 1280)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1063, file: !111, line: 1211, baseType: !1422, size: 64, offset: 1344)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1425)
!1425 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !111, line: 1211, flags: DIFlagFwdDecl)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1063, file: !111, line: 1223, baseType: !1427, size: 64, offset: 1408)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !831, line: 34, size: 64, elements: !1428)
!1428 = !{!1429}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1427, file: !831, line: 35, baseType: !834, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1063, file: !111, line: 1224, baseType: !100, size: 128, offset: 1472)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1063, file: !111, line: 1225, baseType: !1432, size: 64, offset: 1600)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !111, line: 1225, flags: DIFlagFwdDecl)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1063, file: !111, line: 1226, baseType: !1435, size: 64, offset: 1664)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !111, line: 1226, flags: DIFlagFwdDecl)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1063, file: !111, line: 1227, baseType: !1438, size: 64, offset: 1728)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !111, line: 50, flags: DIFlagFwdDecl)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1063, file: !111, line: 1228, baseType: !1441, size: 64, offset: 1792)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !111, line: 1228, flags: DIFlagFwdDecl)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1063, file: !111, line: 1229, baseType: !406, size: 128, offset: 1856)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1063, file: !111, line: 1230, baseType: !7, size: 32, offset: 1984)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1063, file: !111, line: 1231, baseType: !1446, size: 2496, offset: 2048)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !116, line: 521, size: 2496, elements: !1447)
!1447 = !{!1448, !1449, !1450, !1452, !1484}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1446, file: !116, line: 522, baseType: !7, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1446, file: !116, line: 523, baseType: !487, size: 320, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1446, file: !116, line: 524, baseType: !1451, size: 192, offset: 384)
!1451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !854, size: 192, elements: !385)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1446, file: !116, line: 525, baseType: !1453, size: 1728, offset: 576)
!1453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1454, size: 1728, elements: !385)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !116, line: 222, size: 576, elements: !1455)
!1455 = !{!1456, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1454, file: !116, line: 223, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !116, line: 445, size: 256, elements: !1459)
!1459 = !{!1460, !1461, !1474, !1475}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1458, file: !116, line: 446, baseType: !25, size: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1458, file: !116, line: 447, baseType: !1462, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1464)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !116, line: 312, size: 512, elements: !1465)
!1465 = !{!1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1464, file: !116, line: 313, baseType: !1143, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1464, file: !116, line: 314, baseType: !1143, size: 64, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1464, file: !116, line: 315, baseType: !1143, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1464, file: !116, line: 316, baseType: !1143, size: 64, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1464, file: !116, line: 317, baseType: !1292, size: 64, offset: 256)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1464, file: !116, line: 318, baseType: !1292, size: 64, offset: 320)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1464, file: !116, line: 319, baseType: !1292, size: 64, offset: 384)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1464, file: !116, line: 320, baseType: !1322, size: 64, offset: 448)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1458, file: !116, line: 448, baseType: !1095, size: 64, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1458, file: !116, line: 449, baseType: !1457, size: 64, offset: 192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1454, file: !116, line: 224, baseType: !25, size: 32, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1454, file: !116, line: 226, baseType: !100, size: 128, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1454, file: !116, line: 227, baseType: !42, size: 64, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1454, file: !116, line: 228, baseType: !7, size: 32, offset: 320)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1454, file: !116, line: 229, baseType: !7, size: 32, offset: 352)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1454, file: !116, line: 230, baseType: !1259, size: 64, offset: 384)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1454, file: !116, line: 231, baseType: !1259, size: 64, offset: 448)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1454, file: !116, line: 232, baseType: !23, size: 64, offset: 512)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1446, file: !116, line: 526, baseType: !1485, size: 192, offset: 2304)
!1485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1462, size: 192, elements: !385)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1063, file: !111, line: 1233, baseType: !1487, size: 2368, offset: 4544)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !111, line: 1184, size: 2368, elements: !1488)
!1488 = !{!1489, !1490, !1491}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1487, file: !111, line: 1185, baseType: !29, size: 16)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1487, file: !111, line: 1186, baseType: !29, size: 16, offset: 16)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1487, file: !111, line: 1187, baseType: !1492, size: 2304, offset: 64)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1493, size: 2304, elements: !385)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1494, line: 12, size: 768, elements: !1495)
!1494 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1495 = !{!1496, !1504, !1506, !3224, !3225}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1493, file: !1494, line: 13, baseType: !1497, size: 384)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1498, line: 17, size: 384, elements: !1499)
!1498 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1499 = !{!1500, !1501, !1502, !1503}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1497, file: !1498, line: 18, baseType: !25, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1497, file: !1498, line: 19, baseType: !25, size: 32, offset: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1497, file: !1498, line: 20, baseType: !57, size: 192, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1497, file: !1498, line: 22, baseType: !326, size: 128, align: 64, offset: 256)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1493, file: !1494, line: 14, baseType: !1505, size: 64, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1493, file: !1494, line: 15, baseType: !1507, size: 64, offset: 448)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1508, line: 16, size: 64, elements: !1509)
!1508 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1509 = !{!1510}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1507, file: !1508, line: 17, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1513, line: 746, size: 58368, elements: !1514)
!1513 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1514 = !{!1515, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1595, !1606, !1698, !1702, !1705, !1736, !1737, !1738, !1739, !1750, !1752, !1753, !1754, !1755, !1756, !1757, !1768, !1769, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1786, !1787, !1794, !1795, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !2008, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2056, !2062, !2063, !2064, !2065, !2066, !2070, !2073, !2080, !2085, !2088, !2091, !2094, !2156, !2357, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2399, !2400, !2401, !2410, !2418, !2419, !2420, !2421, !2422, !2427, !2428, !2429, !2432, !2433, !2436, !2439, !2442, !2450, !2453, !2454, !2540, !2541, !2542, !2543, !2544, !2550, !2551, !2552, !2553, !2554, !2555, !2558, !2561, !2562, !2565, !2566, !2567, !2570, !2571, !2572, !2575, !2576, !2577, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2609, !2612, !2881, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2893, !2965, !2967, !2968, !2969, !2970, !2971, !2983, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !3001, !3002, !3003}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1512, file: !1513, line: 752, baseType: !1516, size: 192)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1517, line: 56, size: 192, elements: !1518)
!1517 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1518 = !{!1519, !1520, !1521, !1522}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1516, file: !1517, line: 57, baseType: !42, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1516, file: !1517, line: 58, baseType: !42, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1516, file: !1517, line: 59, baseType: !512, size: 32, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1516, file: !1517, line: 61, baseType: !512, size: 32, offset: 160)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1512, file: !1513, line: 754, baseType: !7, size: 32, offset: 192)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1512, file: !1513, line: 767, baseType: !23, size: 64, offset: 256)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1512, file: !1513, line: 768, baseType: !393, size: 32, offset: 320)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1512, file: !1513, line: 770, baseType: !7, size: 32, offset: 352)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1512, file: !1513, line: 771, baseType: !7, size: 32, offset: 384)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1512, file: !1513, line: 774, baseType: !25, size: 32, offset: 416)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1512, file: !1513, line: 775, baseType: !1530, size: 128, offset: 448)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1531, line: 58, size: 128, elements: !1532)
!1531 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1532 = !{!1533, !1534, !1539, !1540}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1530, file: !1531, line: 59, baseType: !320, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, scope: !1530, file: !1531, line: 60, baseType: !1535, size: 32, offset: 64)
!1535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1530, file: !1531, line: 60, size: 32, elements: !1536)
!1536 = !{!1537, !1538}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1535, file: !1531, line: 61, baseType: !7, size: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1535, file: !1531, line: 62, baseType: !52, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1530, file: !1531, line: 65, baseType: !96, size: 16, offset: 96)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1530, file: !1531, line: 65, baseType: !96, size: 16, offset: 112)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1512, file: !1513, line: 776, baseType: !7, size: 32, offset: 576)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1512, file: !1513, line: 777, baseType: !42, size: 64, offset: 640)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1512, file: !1513, line: 778, baseType: !1511, size: 64, offset: 704)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1512, file: !1513, line: 787, baseType: !25, size: 32, offset: 768)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1512, file: !1513, line: 788, baseType: !25, size: 32, offset: 800)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1512, file: !1513, line: 790, baseType: !25, size: 32, offset: 832)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1512, file: !1513, line: 792, baseType: !25, size: 32, offset: 864)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1512, file: !1513, line: 793, baseType: !25, size: 32, offset: 896)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1512, file: !1513, line: 794, baseType: !25, size: 32, offset: 928)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1512, file: !1513, line: 795, baseType: !7, size: 32, offset: 960)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1512, file: !1513, line: 797, baseType: !1552, size: 2048, offset: 1024)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1513, line: 551, size: 2048, elements: !1553)
!1553 = !{!1554, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1574, !1577, !1578, !1579}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1552, file: !1513, line: 553, baseType: !1555, size: 128)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1513, line: 411, size: 128, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1555, file: !1513, line: 412, baseType: !42, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1555, file: !1513, line: 413, baseType: !512, size: 32, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1552, file: !1513, line: 554, baseType: !266, size: 192, align: 64, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1552, file: !1513, line: 555, baseType: !226, size: 64, offset: 320)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1552, file: !1513, line: 556, baseType: !226, size: 64, offset: 384)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1552, file: !1513, line: 558, baseType: !100, size: 128, offset: 448)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1552, file: !1513, line: 559, baseType: !7, size: 32, offset: 576)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1552, file: !1513, line: 561, baseType: !226, size: 64, offset: 640)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1552, file: !1513, line: 562, baseType: !226, size: 64, offset: 704)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1552, file: !1513, line: 563, baseType: !226, size: 64, offset: 768)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1552, file: !1513, line: 564, baseType: !226, size: 64, offset: 832)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1552, file: !1513, line: 565, baseType: !345, size: 64, offset: 896)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1552, file: !1513, line: 566, baseType: !226, size: 64, offset: 960)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1552, file: !1513, line: 568, baseType: !226, size: 64, offset: 1024)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1552, file: !1513, line: 571, baseType: !25, size: 32, offset: 1088)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1552, file: !1513, line: 572, baseType: !1573, size: 64, offset: 1152)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1552, file: !1513, line: 574, baseType: !1575, size: 64, offset: 1216)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1513, line: 49, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1552, file: !1513, line: 576, baseType: !1575, size: 64, offset: 1280)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1552, file: !1513, line: 578, baseType: !42, size: 64, offset: 1344)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1552, file: !1513, line: 588, baseType: !1580, size: 512, align: 512, offset: 1536)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1513, line: 497, size: 512, align: 512, elements: !1581)
!1581 = !{!1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1580, file: !1513, line: 498, baseType: !226, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1580, file: !1513, line: 499, baseType: !226, size: 64, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1580, file: !1513, line: 500, baseType: !226, size: 64, offset: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1580, file: !1513, line: 501, baseType: !512, size: 32, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1580, file: !1513, line: 502, baseType: !512, size: 32, offset: 224)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1580, file: !1513, line: 503, baseType: !42, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1580, file: !1513, line: 504, baseType: !42, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1580, file: !1513, line: 505, baseType: !42, size: 64, offset: 384)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1580, file: !1513, line: 506, baseType: !1591, size: 64, align: 64, offset: 448)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1513, line: 445, size: 64, align: 64, elements: !1592)
!1592 = !{!1593, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1591, file: !1513, line: 446, baseType: !7, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1591, file: !1513, line: 447, baseType: !7, size: 32, offset: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1512, file: !1513, line: 798, baseType: !1596, size: 384, offset: 3072)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1513, line: 592, size: 384, elements: !1597)
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603, !1604}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1596, file: !1513, line: 593, baseType: !100, size: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1596, file: !1513, line: 594, baseType: !42, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1596, file: !1513, line: 595, baseType: !42, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1596, file: !1513, line: 596, baseType: !7, size: 32, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1596, file: !1513, line: 597, baseType: !29, size: 16, offset: 288)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1596, file: !1513, line: 598, baseType: !29, size: 16, offset: 304)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1596, file: !1513, line: 600, baseType: !1605, size: 64, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1512, file: !1513, line: 799, baseType: !1607, size: 1792, offset: 3456)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1513, line: 610, size: 1792, elements: !1608)
!1608 = !{!1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1695, !1696}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1607, file: !1513, line: 611, baseType: !266, size: 192, align: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1607, file: !1513, line: 618, baseType: !226, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1607, file: !1513, line: 619, baseType: !226, size: 64, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1607, file: !1513, line: 620, baseType: !226, size: 64, offset: 320)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1607, file: !1513, line: 621, baseType: !226, size: 64, offset: 384)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1607, file: !1513, line: 622, baseType: !226, size: 64, offset: 448)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1607, file: !1513, line: 629, baseType: !345, size: 64, offset: 512)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1607, file: !1513, line: 630, baseType: !226, size: 64, offset: 576)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1607, file: !1513, line: 631, baseType: !7, size: 32, offset: 640)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1607, file: !1513, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1607, file: !1513, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1607, file: !1513, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1607, file: !1513, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1607, file: !1513, line: 662, baseType: !1623, size: 512, offset: 704)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !122, line: 118, size: 512, elements: !1624)
!1624 = !{!1625, !1633, !1634, !1639, !1691, !1692, !1693, !1694}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1623, file: !122, line: 119, baseType: !1626, size: 256)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1627, line: 9, size: 256, elements: !1628)
!1627 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1628 = !{!1629, !1630}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1626, file: !1627, line: 10, baseType: !266, size: 192, align: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1626, file: !1627, line: 11, baseType: !1631, size: 64, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1632, line: 29, baseType: !345)
!1632 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1623, file: !122, line: 120, baseType: !1631, size: 64, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1623, file: !122, line: 121, baseType: !1635, size: 64, offset: 320)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!121, !1638}
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1623, file: !122, line: 122, baseType: !1640, size: 64, offset: 384)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !122, line: 159, size: 512, align: 512, elements: !1642)
!1642 = !{!1643, !1668, !1669, !1672, !1677, !1678, !1686, !1690}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1641, file: !122, line: 160, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !122, line: 215, size: 4608, align: 512, elements: !1646)
!1646 = !{!1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1645, file: !122, line: 216, baseType: !353, size: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1645, file: !122, line: 217, baseType: !7, size: 32, offset: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1645, file: !122, line: 218, baseType: !7, size: 32, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1645, file: !122, line: 219, baseType: !7, size: 32, offset: 96)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1645, file: !122, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1645, file: !122, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1645, file: !122, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1645, file: !122, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1645, file: !122, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1645, file: !122, line: 226, baseType: !7, size: 32, offset: 160)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1645, file: !122, line: 227, baseType: !29, size: 16, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1645, file: !122, line: 228, baseType: !29, size: 16, offset: 208)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1645, file: !122, line: 229, baseType: !7, size: 32, offset: 224)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1645, file: !122, line: 235, baseType: !1631, size: 64, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1645, file: !122, line: 236, baseType: !1638, size: 64, offset: 320)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1645, file: !122, line: 237, baseType: !1631, size: 64, offset: 384)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1645, file: !122, line: 238, baseType: !1638, size: 64, offset: 448)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1645, file: !122, line: 239, baseType: !1665, size: 4096, align: 512, offset: 512)
!1665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1641, size: 4096, align: 512, elements: !1666)
!1666 = !{!1667}
!1667 = !DISubrange(count: 8)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1641, file: !122, line: 161, baseType: !7, size: 32, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1641, file: !122, line: 162, baseType: !1670, size: 32, offset: 96)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !28, line: 32, baseType: !1671)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !40, line: 96, baseType: !25)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1641, file: !122, line: 163, baseType: !1673, size: 32, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !821, line: 274, baseType: !1674)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !821, line: 274, size: 32, elements: !1675)
!1675 = !{!1676}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1674, file: !821, line: 274, baseType: !825, size: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1641, file: !122, line: 164, baseType: !1638, size: 64, offset: 192)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1641, file: !122, line: 165, baseType: !1679, size: 128, offset: 256)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1627, line: 14, size: 128, elements: !1680)
!1680 = !{!1681}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1679, file: !1627, line: 15, baseType: !1682, size: 128)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !267, line: 26, size: 128, elements: !1683)
!1683 = !{!1684, !1685}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1682, file: !267, line: 27, baseType: !285, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1682, file: !267, line: 28, baseType: !271, size: 64, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1641, file: !122, line: 166, baseType: !1687, size: 64, offset: 384)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!1631}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1641, file: !122, line: 167, baseType: !1631, size: 64, offset: 448)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1623, file: !122, line: 123, baseType: !86, size: 8, offset: 448)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1623, file: !122, line: 124, baseType: !86, size: 8, offset: 456)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1623, file: !122, line: 125, baseType: !86, size: 8, offset: 464)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1623, file: !122, line: 126, baseType: !86, size: 8, offset: 472)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1607, file: !1513, line: 671, baseType: !1623, size: 512, offset: 1216)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1607, file: !1513, line: 679, baseType: !1697, size: 64, offset: 1728)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1512, file: !1513, line: 800, baseType: !1699, size: 64, offset: 5248)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1701)
!1701 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1513, line: 800, flags: DIFlagFwdDecl)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1512, file: !1513, line: 809, baseType: !1703, size: 64, offset: 5312)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1513, line: 70, flags: DIFlagFwdDecl)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1512, file: !1513, line: 825, baseType: !1706, size: 2048, align: 512, offset: 5632)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1513, line: 509, size: 2048, align: 512, elements: !1707)
!1707 = !{!1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1706, file: !1513, line: 511, baseType: !226, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1706, file: !1513, line: 512, baseType: !226, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1706, file: !1513, line: 513, baseType: !226, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1706, file: !1513, line: 514, baseType: !226, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1706, file: !1513, line: 515, baseType: !226, size: 64, offset: 256)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1706, file: !1513, line: 516, baseType: !226, size: 64, offset: 320)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1706, file: !1513, line: 518, baseType: !226, size: 64, offset: 384)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1706, file: !1513, line: 519, baseType: !226, size: 64, offset: 448)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1706, file: !1513, line: 520, baseType: !345, size: 64, offset: 512)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1706, file: !1513, line: 522, baseType: !226, size: 64, offset: 576)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1706, file: !1513, line: 523, baseType: !226, size: 64, offset: 640)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1706, file: !1513, line: 524, baseType: !345, size: 64, offset: 704)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1706, file: !1513, line: 526, baseType: !345, size: 64, offset: 768)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1706, file: !1513, line: 527, baseType: !226, size: 64, offset: 832)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1706, file: !1513, line: 529, baseType: !226, size: 64, offset: 896)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1706, file: !1513, line: 530, baseType: !226, size: 64, offset: 960)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1706, file: !1513, line: 531, baseType: !226, size: 64, offset: 1024)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1706, file: !1513, line: 532, baseType: !226, size: 64, offset: 1088)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1706, file: !1513, line: 533, baseType: !226, size: 64, offset: 1152)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1706, file: !1513, line: 535, baseType: !226, size: 64, offset: 1216)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1706, file: !1513, line: 536, baseType: !226, size: 64, offset: 1280)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1706, file: !1513, line: 537, baseType: !226, size: 64, offset: 1344)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1706, file: !1513, line: 538, baseType: !226, size: 64, offset: 1408)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1706, file: !1513, line: 539, baseType: !226, size: 64, offset: 1472)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1706, file: !1513, line: 540, baseType: !226, size: 64, offset: 1536)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1706, file: !1513, line: 541, baseType: !226, size: 64, offset: 1600)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1706, file: !1513, line: 542, baseType: !226, size: 64, offset: 1664)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1706, file: !1513, line: 543, baseType: !226, size: 64, offset: 1728)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1512, file: !1513, line: 833, baseType: !7, size: 32, offset: 7680)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1512, file: !1513, line: 836, baseType: !7, size: 32, offset: 7712)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1512, file: !1513, line: 837, baseType: !25, size: 32, offset: 7744)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1512, file: !1513, line: 838, baseType: !1740, size: 64, offset: 7808)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1742)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1743, line: 19, baseType: !1744)
!1743 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1743, line: 19, size: 64, elements: !1745)
!1745 = !{!1746}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1744, file: !1743, line: 19, baseType: !1747, size: 64)
!1747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, elements: !1748)
!1748 = !{!1749}
!1749 = !DISubrange(count: 1)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1512, file: !1513, line: 839, baseType: !1751, size: 64, offset: 7872)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1512, file: !1513, line: 840, baseType: !1742, size: 64, offset: 7936)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1512, file: !1513, line: 841, baseType: !23, size: 64, offset: 8000)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1512, file: !1513, line: 843, baseType: !29, size: 16, offset: 8064)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1512, file: !1513, line: 845, baseType: !29, size: 16, offset: 8080)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1512, file: !1513, line: 848, baseType: !25, size: 32, offset: 8096)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1512, file: !1513, line: 849, baseType: !1758, size: 32, offset: 8128)
!1758 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1513, line: 718, size: 32, elements: !1759)
!1759 = !{!1760, !1767}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1758, file: !1513, line: 724, baseType: !1761, size: 32)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1758, file: !1513, line: 719, size: 32, elements: !1762)
!1762 = !{!1763, !1764, !1765, !1766}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1761, file: !1513, line: 720, baseType: !86, size: 8)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1761, file: !1513, line: 721, baseType: !86, size: 8, offset: 8)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1761, file: !1513, line: 722, baseType: !86, size: 8, offset: 16)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1761, file: !1513, line: 723, baseType: !86, size: 8, offset: 24)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1758, file: !1513, line: 725, baseType: !512, size: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1512, file: !1513, line: 850, baseType: !100, size: 128, offset: 8192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1512, file: !1513, line: 851, baseType: !1770, size: 64, offset: 8320)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1513, line: 60, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1512, file: !1513, line: 855, baseType: !42, size: 64, offset: 8384)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1512, file: !1513, line: 856, baseType: !86, size: 8, offset: 8448)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1512, file: !1513, line: 857, baseType: !86, size: 8, offset: 8456)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1512, file: !1513, line: 858, baseType: !25, size: 32, offset: 8480)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1512, file: !1513, line: 859, baseType: !100, size: 128, offset: 8512)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1512, file: !1513, line: 860, baseType: !25, size: 32, offset: 8640)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1512, file: !1513, line: 861, baseType: !100, size: 128, offset: 8704)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1512, file: !1513, line: 873, baseType: !1780, size: 256, offset: 8832)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1513, line: 376, size: 256, elements: !1781)
!1781 = !{!1782, !1783, !1784, !1785}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1780, file: !1513, line: 381, baseType: !42, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1780, file: !1513, line: 384, baseType: !228, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1780, file: !1513, line: 389, baseType: !228, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1780, file: !1513, line: 392, baseType: !228, size: 64, offset: 192)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1512, file: !1513, line: 875, baseType: !100, size: 128, offset: 9088)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1512, file: !1513, line: 877, baseType: !1788, size: 320, offset: 9216)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1789, line: 86, size: 320, elements: !1790)
!1789 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1790 = !{!1791, !1792, !1793}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1788, file: !1789, line: 87, baseType: !25, size: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1788, file: !1789, line: 88, baseType: !100, size: 128, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1788, file: !1789, line: 89, baseType: !100, size: 128, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1512, file: !1513, line: 878, baseType: !266, size: 192, align: 64, offset: 9536)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1512, file: !1513, line: 881, baseType: !1796, size: 64, offset: 9728)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1283, line: 733, size: 10240, elements: !1798)
!1798 = !{!1799, !1927}
!1799 = !DIDerivedType(tag: DW_TAG_member, scope: !1797, file: !1283, line: 734, baseType: !1800, size: 10240)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1797, file: !1283, line: 734, size: 10240, elements: !1801)
!1801 = !{!1802, !1806, !1819, !1823, !1824, !1825, !1826, !1827, !1828, !1837, !1838, !1839, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1878, !1880, !1883, !1907, !1908, !1909, !1912, !1913, !1914, !1917, !1918, !1919, !1925, !1926}
!1802 = !DIDerivedType(tag: DW_TAG_member, scope: !1800, file: !1283, line: 739, baseType: !1803, size: 512, align: 512)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1800, file: !1283, line: 739, size: 512, align: 512, elements: !1804)
!1804 = !{!1805}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1803, file: !1283, line: 747, baseType: !52, size: 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1800, file: !1283, line: 750, baseType: !1807, size: 128, offset: 512)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1808, line: 218, size: 128, elements: !1809)
!1808 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1809 = !{!1810, !1817, !1818}
!1810 = !DIDerivedType(tag: DW_TAG_member, scope: !1807, file: !1808, line: 219, baseType: !1811, size: 32)
!1811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1807, file: !1808, line: 219, size: 32, elements: !1812)
!1812 = !{!1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1811, file: !1808, line: 220, baseType: !62, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1811, file: !1808, line: 221, baseType: !1815)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1808, line: 197, baseType: !1816)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1808, line: 197, elements: !1103)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1807, file: !1808, line: 223, baseType: !7, size: 32, offset: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1807, file: !1808, line: 224, baseType: !23, size: 64, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1800, file: !1283, line: 752, baseType: !1820, size: 64, offset: 640)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!42, !313, !42, !42, !42, !42}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1800, file: !1283, line: 756, baseType: !42, size: 64, offset: 704)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1800, file: !1283, line: 757, baseType: !42, size: 64, offset: 768)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1800, file: !1283, line: 760, baseType: !42, size: 64, offset: 832)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1800, file: !1283, line: 761, baseType: !42, size: 64, offset: 896)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1800, file: !1283, line: 763, baseType: !42, size: 64, offset: 960)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1800, file: !1283, line: 764, baseType: !1829, size: 64, offset: 1024)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1831, line: 299, baseType: !1832)
!1831 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1831, line: 299, size: 64, elements: !1833)
!1833 = !{!1834}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1832, file: !1831, line: 299, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1836, line: 18, baseType: !42)
!1836 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1800, file: !1283, line: 773, baseType: !52, size: 32, offset: 1088)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1800, file: !1283, line: 785, baseType: !52, size: 32, offset: 1120)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1800, file: !1283, line: 795, baseType: !1840, size: 64, offset: 1152)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1283, line: 726, size: 128, elements: !1842)
!1842 = !{!1843, !1844}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1841, file: !1283, line: 727, baseType: !226, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1841, file: !1283, line: 728, baseType: !25, size: 32, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1800, file: !1283, line: 801, baseType: !42, size: 64, offset: 1216)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1800, file: !1283, line: 804, baseType: !339, size: 64, offset: 1280)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1800, file: !1283, line: 806, baseType: !25, size: 32, offset: 1344)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1800, file: !1283, line: 808, baseType: !62, size: 32, offset: 1376)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1800, file: !1283, line: 823, baseType: !487, size: 320, offset: 1408)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1800, file: !1283, line: 825, baseType: !100, size: 128, offset: 1728)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1800, file: !1283, line: 845, baseType: !25, size: 32, offset: 1856)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1800, file: !1283, line: 849, baseType: !42, size: 64, offset: 1920)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1800, file: !1283, line: 850, baseType: !42, size: 64, offset: 1984)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1800, file: !1283, line: 852, baseType: !42, size: 64, offset: 2048)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1800, file: !1283, line: 853, baseType: !42, size: 64, offset: 2112)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1800, file: !1283, line: 854, baseType: !341, size: 64, offset: 2176)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1800, file: !1283, line: 855, baseType: !42, size: 64, offset: 2240)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1800, file: !1283, line: 856, baseType: !42, size: 64, offset: 2304)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1800, file: !1283, line: 857, baseType: !42, size: 64, offset: 2368)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1800, file: !1283, line: 858, baseType: !42, size: 64, offset: 2432)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1800, file: !1283, line: 865, baseType: !825, size: 32, offset: 2496)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1800, file: !1283, line: 867, baseType: !62, size: 32, offset: 2528)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1800, file: !1283, line: 869, baseType: !42, size: 64, offset: 2560)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1800, file: !1283, line: 869, baseType: !42, size: 64, offset: 2624)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1800, file: !1283, line: 869, baseType: !42, size: 64, offset: 2688)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1800, file: !1283, line: 869, baseType: !42, size: 64, offset: 2752)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1800, file: !1283, line: 870, baseType: !42, size: 64, offset: 2816)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1800, file: !1283, line: 870, baseType: !42, size: 64, offset: 2880)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1800, file: !1283, line: 870, baseType: !42, size: 64, offset: 2944)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1800, file: !1283, line: 871, baseType: !42, size: 64, offset: 3008)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1800, file: !1283, line: 871, baseType: !42, size: 64, offset: 3072)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1800, file: !1283, line: 871, baseType: !42, size: 64, offset: 3136)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1800, file: !1283, line: 871, baseType: !42, size: 64, offset: 3200)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1800, file: !1283, line: 873, baseType: !1875, size: 3328, offset: 3264)
!1875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 3328, elements: !1876)
!1876 = !{!1877}
!1877 = !DISubrange(count: 52)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1800, file: !1283, line: 875, baseType: !1879, size: 1280, offset: 6592)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, size: 1280, elements: !411)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1800, file: !1283, line: 877, baseType: !1881, size: 64, offset: 7872)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1283, line: 877, flags: DIFlagFwdDecl)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1800, file: !1283, line: 880, baseType: !1884, size: 1088, offset: 7936)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1885, line: 72, baseType: !1886)
!1885 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1885, line: 23, size: 1088, elements: !1887)
!1887 = !{!1888, !1889, !1890, !1891, !1892, !1895, !1896, !1897, !1898, !1902, !1903, !1904}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1886, file: !1885, line: 28, baseType: !226, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1886, file: !1885, line: 38, baseType: !341, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1886, file: !1885, line: 40, baseType: !42, size: 64, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1886, file: !1885, line: 43, baseType: !487, size: 320, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1886, file: !1885, line: 44, baseType: !1893, size: 64, offset: 512)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1885, line: 44, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1886, file: !1885, line: 48, baseType: !42, size: 64, offset: 576)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1886, file: !1885, line: 59, baseType: !348, size: 256, offset: 640)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1886, file: !1885, line: 60, baseType: !23, size: 64, offset: 896)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1886, file: !1885, line: 61, baseType: !1899, size: 64, offset: 960)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1901)
!1901 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1885, line: 61, flags: DIFlagFwdDecl)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1886, file: !1885, line: 63, baseType: !52, size: 32, offset: 1024)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1886, file: !1885, line: 69, baseType: !96, size: 16, offset: 1056)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1886, file: !1885, line: 70, baseType: !1905, size: 16, offset: 1072)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !87, line: 18, baseType: !1906)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !89, line: 23, baseType: !517)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1800, file: !1283, line: 882, baseType: !42, size: 64, offset: 9024)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1800, file: !1283, line: 885, baseType: !62, size: 32, offset: 9088)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1800, file: !1283, line: 886, baseType: !1910, size: 64, offset: 9152)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1283, line: 732, flags: DIFlagFwdDecl)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1800, file: !1283, line: 901, baseType: !631, size: 64, offset: 9216)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1800, file: !1283, line: 904, baseType: !313, size: 64, offset: 9280)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1800, file: !1283, line: 906, baseType: !1915, size: 64, offset: 9344)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1283, line: 906, flags: DIFlagFwdDecl)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1800, file: !1283, line: 930, baseType: !52, size: 32, offset: 9408)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1800, file: !1283, line: 933, baseType: !52, size: 32, offset: 9440)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1800, file: !1283, line: 935, baseType: !1920, size: 64, offset: 9472)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !140, line: 103, size: 64, elements: !1921)
!1921 = !{!1922}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1920, file: !140, line: 104, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !140, line: 101, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1800, file: !1283, line: 940, baseType: !339, size: 64, offset: 9536)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1800, file: !1283, line: 942, baseType: !680, size: 256, offset: 9600)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1797, file: !1283, line: 986, baseType: !1928, offset: 10240)
!1928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, elements: !424)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1512, file: !1513, line: 882, baseType: !1796, size: 64, offset: 9792)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1512, file: !1513, line: 884, baseType: !25, size: 32, offset: 9856)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1512, file: !1513, line: 885, baseType: !25, size: 32, offset: 9888)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1512, file: !1513, line: 886, baseType: !25, size: 32, offset: 9920)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1512, file: !1513, line: 888, baseType: !25, size: 32, offset: 9952)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1512, file: !1513, line: 890, baseType: !42, size: 64, offset: 9984)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1512, file: !1513, line: 893, baseType: !7, size: 32, offset: 10048)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1512, file: !1513, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1512, file: !1513, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1512, file: !1513, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1512, file: !1513, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1512, file: !1513, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1512, file: !1513, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1512, file: !1513, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1512, file: !1513, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1512, file: !1513, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1512, file: !1513, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1512, file: !1513, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1512, file: !1513, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1512, file: !1513, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1512, file: !1513, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1512, file: !1513, line: 969, baseType: !42, size: 64, offset: 10176)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1512, file: !1513, line: 971, baseType: !1952, size: 448, offset: 10240)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !127, line: 25, size: 448, elements: !1953)
!1953 = !{!1954, !1955, !1960}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1952, file: !127, line: 26, baseType: !42, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1952, file: !127, line: 27, baseType: !1956, size: 64, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!778, !1959}
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, scope: !1952, file: !127, line: 28, baseType: !1961, size: 320, offset: 128)
!1961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1952, file: !127, line: 28, size: 320, elements: !1962)
!1962 = !{!1963, !1973, !1998}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1961, file: !127, line: 37, baseType: !1964, size: 320)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1961, file: !127, line: 30, size: 320, elements: !1965)
!1965 = !{!1966, !1968, !1969, !1970, !1971, !1972}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1964, file: !127, line: 31, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1964, file: !127, line: 32, baseType: !512, size: 32, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1964, file: !127, line: 33, baseType: !512, size: 32, offset: 96)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1964, file: !127, line: 34, baseType: !512, size: 32, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1964, file: !127, line: 35, baseType: !226, size: 64, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1964, file: !127, line: 36, baseType: !1967, size: 64, offset: 256)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1961, file: !127, line: 47, baseType: !1974, size: 192)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1961, file: !127, line: 39, size: 192, elements: !1975)
!1975 = !{!1976, !1977, !1978, !1997}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1974, file: !127, line: 40, baseType: !1670, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1974, file: !127, line: 41, baseType: !126, size: 32, offset: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, scope: !1974, file: !127, line: 42, baseType: !1979, size: 64, offset: 64)
!1979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1974, file: !127, line: 42, size: 64, elements: !1980)
!1980 = !{!1981, !1989}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1979, file: !127, line: 43, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1984, line: 7, size: 128, elements: !1985)
!1984 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1985 = !{!1986, !1988}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1983, file: !1984, line: 8, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !40, line: 93, baseType: !46)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1983, file: !1984, line: 9, baseType: !46, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1979, file: !127, line: 44, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1992, line: 7, size: 64, elements: !1993)
!1992 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1993 = !{!1994, !1996}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1991, file: !1992, line: 8, baseType: !1995, size: 32)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1992, line: 5, baseType: !479)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1991, file: !1992, line: 9, baseType: !479, size: 32, offset: 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1974, file: !127, line: 46, baseType: !226, size: 64, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1961, file: !127, line: 55, baseType: !1999, size: 256)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1961, file: !127, line: 49, size: 256, elements: !2000)
!2000 = !{!2001, !2004, !2005, !2006, !2007}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1999, file: !127, line: 50, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !127, line: 14, flags: DIFlagFwdDecl)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1999, file: !127, line: 51, baseType: !25, size: 32, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1999, file: !127, line: 52, baseType: !25, size: 32, offset: 96)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1999, file: !127, line: 53, baseType: !42, size: 64, offset: 128)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1999, file: !127, line: 54, baseType: !42, size: 64, offset: 192)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1512, file: !1513, line: 973, baseType: !2009, size: 32, offset: 10688)
!2009 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !28, line: 27, baseType: !2010)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !40, line: 28, baseType: !25)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1512, file: !1513, line: 974, baseType: !2009, size: 32, offset: 10720)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1512, file: !1513, line: 978, baseType: !42, size: 64, offset: 10752)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1512, file: !1513, line: 987, baseType: !1511, size: 64, offset: 10816)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1512, file: !1513, line: 990, baseType: !1511, size: 64, offset: 10880)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1512, file: !1513, line: 995, baseType: !100, size: 128, offset: 10944)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1512, file: !1513, line: 996, baseType: !100, size: 128, offset: 11072)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1512, file: !1513, line: 997, baseType: !1511, size: 64, offset: 11200)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1512, file: !1513, line: 1005, baseType: !100, size: 128, offset: 11264)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1512, file: !1513, line: 1006, baseType: !100, size: 128, offset: 11392)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1512, file: !1513, line: 1009, baseType: !389, size: 64, offset: 11520)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1512, file: !1513, line: 1010, baseType: !2022, size: 512, offset: 11584)
!2022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 512, elements: !411)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1512, file: !1513, line: 1011, baseType: !100, size: 128, offset: 12096)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1512, file: !1513, line: 1012, baseType: !100, size: 128, offset: 12224)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1512, file: !1513, line: 1014, baseType: !718, size: 64, offset: 12352)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1512, file: !1513, line: 1017, baseType: !1166, size: 64, offset: 12416)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1512, file: !1513, line: 1020, baseType: !1166, size: 64, offset: 12480)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1512, file: !1513, line: 1023, baseType: !23, size: 64, offset: 12544)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1512, file: !1513, line: 1025, baseType: !226, size: 64, offset: 12608)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1512, file: !1513, line: 1026, baseType: !226, size: 64, offset: 12672)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1512, file: !1513, line: 1031, baseType: !226, size: 64, offset: 12736)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1512, file: !1513, line: 1032, baseType: !2033, size: 192, offset: 12800)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1513, line: 324, size: 192, elements: !2034)
!2034 = !{!2035, !2036, !2037}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2033, file: !1513, line: 326, baseType: !226, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2033, file: !1513, line: 327, baseType: !226, size: 64, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2033, file: !1513, line: 328, baseType: !353, size: 32, offset: 128)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1512, file: !1513, line: 1041, baseType: !42, size: 64, offset: 12992)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1512, file: !1513, line: 1042, baseType: !42, size: 64, offset: 13056)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1512, file: !1513, line: 1045, baseType: !226, size: 64, offset: 13120)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1512, file: !1513, line: 1048, baseType: !226, size: 64, offset: 13184)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1512, file: !1513, line: 1051, baseType: !42, size: 64, offset: 13248)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1512, file: !1513, line: 1052, baseType: !42, size: 64, offset: 13312)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1512, file: !1513, line: 1055, baseType: !2045, size: 640, offset: 13376)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2046, line: 132, size: 640, elements: !2047)
!2046 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2047 = !{!2048, !2054, !2055}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2045, file: !2046, line: 133, baseType: !2049, size: 576)
!2049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2050, size: 576, elements: !385)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2046, line: 117, size: 192, elements: !2051)
!2051 = !{!2052, !2053}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2050, file: !2046, line: 118, baseType: !226, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2050, file: !2046, line: 119, baseType: !1679, size: 128, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2045, file: !2046, line: 134, baseType: !7, size: 32, offset: 576)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2045, file: !2046, line: 135, baseType: !7, size: 32, offset: 608)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1512, file: !1513, line: 1058, baseType: !2057, size: 448, offset: 14016)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2046, line: 144, size: 448, elements: !2058)
!2058 = !{!2059, !2060, !2061}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2057, file: !2046, line: 145, baseType: !326, size: 128, align: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2057, file: !2046, line: 146, baseType: !348, size: 256, offset: 128)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2057, file: !2046, line: 147, baseType: !7, size: 32, offset: 384)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1512, file: !1513, line: 1064, baseType: !438, size: 64, offset: 14464)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1512, file: !1513, line: 1067, baseType: !438, size: 64, offset: 14528)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1512, file: !1513, line: 1070, baseType: !438, size: 64, offset: 14592)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1512, file: !1513, line: 1074, baseType: !471, size: 64, offset: 14656)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1512, file: !1513, line: 1084, baseType: !2067, size: 128, offset: 14720)
!2067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !2068)
!2068 = !{!2069}
!2069 = !DISubrange(count: 16)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1512, file: !1513, line: 1086, baseType: !2071, size: 64, offset: 14848)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1513, line: 55, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1512, file: !1513, line: 1089, baseType: !2074, size: 64, offset: 14912)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2075, line: 12, size: 64, elements: !2076)
!2075 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2076 = !{!2077}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2074, file: !2075, line: 13, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2075, line: 8, flags: DIFlagFwdDecl)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1512, file: !1513, line: 1090, baseType: !2081, size: 128, offset: 14976)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2082, line: 13, size: 128, elements: !2083)
!2082 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2083 = !{!2084}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2081, file: !2082, line: 14, baseType: !100, size: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1512, file: !1513, line: 1097, baseType: !2086, size: 64, offset: 15104)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1513, line: 50, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1512, file: !1513, line: 1100, baseType: !2089, size: 64, offset: 15168)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1513, line: 1100, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1512, file: !1513, line: 1103, baseType: !2092, size: 64, offset: 15232)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1513, line: 53, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1512, file: !1513, line: 1107, baseType: !2095, size: 64, offset: 15296)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2097, line: 31, size: 576, elements: !2098)
!2097 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2098 = !{!2099, !2100, !2103, !2106, !2109, !2110, !2113, !2116, !2117}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2096, file: !2097, line: 32, baseType: !393, size: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2096, file: !2097, line: 33, baseType: !2101, size: 64, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2097, line: 9, flags: DIFlagFwdDecl)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2096, file: !2097, line: 34, baseType: !2104, size: 64, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2097, line: 10, flags: DIFlagFwdDecl)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2096, file: !2097, line: 35, baseType: !2107, size: 64, offset: 192)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2097, line: 8, flags: DIFlagFwdDecl)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2096, file: !2097, line: 36, baseType: !422, size: 64, offset: 256)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2096, file: !2097, line: 37, baseType: !2111, size: 64, offset: 320)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !473, line: 34, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2096, file: !2097, line: 38, baseType: !2114, size: 64, offset: 384)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2097, line: 38, flags: DIFlagFwdDecl)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2096, file: !2097, line: 39, baseType: !2114, size: 64, offset: 448)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2096, file: !2097, line: 40, baseType: !2118, size: 64, offset: 512)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2120, line: 771, size: 384, elements: !2121)
!2120 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!2121 = !{!2122, !2123, !2124, !2125}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2119, file: !2120, line: 772, baseType: !664, size: 192)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2119, file: !2120, line: 773, baseType: !631, size: 64, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2119, file: !2120, line: 774, baseType: !763, size: 64, offset: 256)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !2119, file: !2120, line: 775, baseType: !2126, size: 64, offset: 320)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !153, line: 209, size: 4736, elements: !2128)
!2128 = !{!2129, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !2127, file: !153, line: 215, baseType: !2130, size: 896)
!2130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2131, size: 896, elements: !2132)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!2132 = !{!2133}
!2133 = !DISubrange(count: 14)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2127, file: !153, line: 218, baseType: !393, size: 32, offset: 896)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !2127, file: !153, line: 226, baseType: !2126, size: 64, offset: 960)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !2127, file: !153, line: 229, baseType: !241, size: 64, offset: 1024)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2127, file: !153, line: 232, baseType: !25, size: 32, offset: 1088)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2127, file: !153, line: 241, baseType: !100, size: 128, offset: 1152)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !2127, file: !153, line: 242, baseType: !100, size: 128, offset: 1280)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !2127, file: !153, line: 243, baseType: !100, size: 128, offset: 1408)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !2127, file: !153, line: 246, baseType: !100, size: 128, offset: 1536)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !2127, file: !153, line: 255, baseType: !2143, size: 1792, offset: 1664)
!2143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 1792, elements: !2132)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !2127, file: !153, line: 258, baseType: !100, size: 128, offset: 3456)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !2127, file: !153, line: 259, baseType: !100, size: 128, offset: 3584)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !2127, file: !153, line: 265, baseType: !406, size: 128, offset: 3712)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !2127, file: !153, line: 271, baseType: !100, size: 128, offset: 3840)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !2127, file: !153, line: 277, baseType: !100, size: 128, offset: 3968)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !2127, file: !153, line: 278, baseType: !100, size: 128, offset: 4096)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !2127, file: !153, line: 279, baseType: !100, size: 128, offset: 4224)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !2127, file: !153, line: 288, baseType: !241, size: 64, offset: 4352)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !2127, file: !153, line: 289, baseType: !241, size: 64, offset: 4416)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !2127, file: !153, line: 290, baseType: !2126, size: 64, offset: 4480)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !2127, file: !153, line: 293, baseType: !548, size: 8, offset: 4544)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2127, file: !153, line: 296, baseType: !326, size: 128, align: 64, offset: 4608)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1512, file: !1513, line: 1110, baseType: !2157, size: 64, offset: 15360)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2159, line: 93, size: 8768, elements: !2160)
!2159 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2160 = !{!2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2209, !2218, !2219, !2221, !2222, !2223, !2226, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2264, !2265, !2272, !2282, !2347, !2348, !2351, !2352, !2353, !2354, !2355, !2356}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2158, file: !2159, line: 94, baseType: !393, size: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2158, file: !2159, line: 95, baseType: !52, size: 32, offset: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2158, file: !2159, line: 96, baseType: !25, size: 32, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2158, file: !2159, line: 97, baseType: !25, size: 32, offset: 96)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2158, file: !2159, line: 98, baseType: !100, size: 128, offset: 128)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2158, file: !2159, line: 100, baseType: !57, size: 192, offset: 256)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2158, file: !2159, line: 103, baseType: !1511, size: 64, offset: 448)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2158, file: !2159, line: 106, baseType: !2169, size: 192, offset: 512)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2170, line: 32, size: 192, elements: !2171)
!2170 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2171 = !{!2172, !2173}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2169, file: !2170, line: 33, baseType: !100, size: 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2169, file: !2170, line: 34, baseType: !2174, size: 64, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2175, line: 25, baseType: !2176)
!2175 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2175, line: 23, size: 64, elements: !2177)
!2177 = !{!2178}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2176, file: !2175, line: 24, baseType: !1747, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2158, file: !2159, line: 109, baseType: !402, size: 64, offset: 704)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2158, file: !2159, line: 112, baseType: !25, size: 32, offset: 768)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2158, file: !2159, line: 114, baseType: !25, size: 32, offset: 800)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2158, file: !2159, line: 115, baseType: !1511, size: 64, offset: 832)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2158, file: !2159, line: 118, baseType: !25, size: 32, offset: 896)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2158, file: !2159, line: 119, baseType: !7, size: 32, offset: 928)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2158, file: !2159, line: 121, baseType: !2186, size: 64, offset: 960)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2159, line: 80, size: 448, elements: !2188)
!2188 = !{!2189, !2190, !2196}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2187, file: !2159, line: 81, baseType: !52, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2187, file: !2159, line: 82, baseType: !2191, size: 128, offset: 64)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2159, line: 75, size: 128, elements: !2192)
!2192 = !{!2193, !2194}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2191, file: !2159, line: 76, baseType: !1511, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2191, file: !2159, line: 77, baseType: !2195, size: 64, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2187, file: !2159, line: 83, baseType: !719, size: 256, offset: 192)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2158, file: !2159, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2158, file: !2159, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2158, file: !2159, line: 138, baseType: !7, size: 32, offset: 1056)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2158, file: !2159, line: 139, baseType: !100, size: 128, offset: 1088)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2158, file: !2159, line: 142, baseType: !1623, size: 512, offset: 1216)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2158, file: !2159, line: 143, baseType: !1631, size: 64, offset: 1728)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2158, file: !2159, line: 150, baseType: !2204, size: 256, offset: 1792)
!2204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2205, size: 256, elements: !221)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2159, line: 38, size: 128, elements: !2206)
!2206 = !{!2207, !2208}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2205, file: !2159, line: 39, baseType: !226, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2205, file: !2159, line: 40, baseType: !226, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2158, file: !2159, line: 156, baseType: !2210, size: 192, offset: 2048)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2159, line: 66, size: 192, elements: !2211)
!2211 = !{!2212}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2210, file: !2159, line: 67, baseType: !2213, size: 192)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2159, line: 47, size: 192, elements: !2214)
!2214 = !{!2215, !2216, !2217}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2213, file: !2159, line: 48, baseType: !341, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2213, file: !2159, line: 49, baseType: !341, size: 64, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2213, file: !2159, line: 50, baseType: !341, size: 64, offset: 128)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2158, file: !2159, line: 160, baseType: !2045, size: 640, offset: 2240)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2158, file: !2159, line: 163, baseType: !2220, size: 256, offset: 2880)
!2220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 256, elements: !411)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2158, file: !2159, line: 169, baseType: !389, size: 64, offset: 3136)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2158, file: !2159, line: 172, baseType: !25, size: 32, offset: 3200)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2158, file: !2159, line: 174, baseType: !2224, size: 64, offset: 3264)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2159, line: 174, flags: DIFlagFwdDecl)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2158, file: !2159, line: 185, baseType: !2227, size: 64, offset: 3328)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !821, line: 860, baseType: !2228)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !821, line: 853, size: 64, elements: !2229)
!2229 = !{!2230, !2231}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2228, file: !821, line: 858, baseType: !820, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2228, file: !821, line: 859, baseType: !62, size: 32, offset: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2158, file: !2159, line: 186, baseType: !226, size: 64, offset: 3392)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2158, file: !2159, line: 186, baseType: !226, size: 64, offset: 3456)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2158, file: !2159, line: 186, baseType: !226, size: 64, offset: 3520)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2158, file: !2159, line: 186, baseType: !226, size: 64, offset: 3584)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2158, file: !2159, line: 187, baseType: !226, size: 64, offset: 3648)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2158, file: !2159, line: 188, baseType: !226, size: 64, offset: 3712)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2158, file: !2159, line: 189, baseType: !2033, size: 192, offset: 3776)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2158, file: !2159, line: 190, baseType: !42, size: 64, offset: 3968)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2158, file: !2159, line: 190, baseType: !42, size: 64, offset: 4032)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2158, file: !2159, line: 190, baseType: !42, size: 64, offset: 4096)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2158, file: !2159, line: 190, baseType: !42, size: 64, offset: 4160)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2158, file: !2159, line: 191, baseType: !42, size: 64, offset: 4224)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2158, file: !2159, line: 191, baseType: !42, size: 64, offset: 4288)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2158, file: !2159, line: 191, baseType: !42, size: 64, offset: 4352)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2158, file: !2159, line: 191, baseType: !42, size: 64, offset: 4416)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2158, file: !2159, line: 192, baseType: !42, size: 64, offset: 4480)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2158, file: !2159, line: 192, baseType: !42, size: 64, offset: 4544)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2158, file: !2159, line: 192, baseType: !42, size: 64, offset: 4608)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2158, file: !2159, line: 192, baseType: !42, size: 64, offset: 4672)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2158, file: !2159, line: 193, baseType: !42, size: 64, offset: 4736)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2158, file: !2159, line: 193, baseType: !42, size: 64, offset: 4800)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2158, file: !2159, line: 194, baseType: !2254, size: 448, offset: 4864)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2255, line: 12, size: 448, elements: !2256)
!2255 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2256 = !{!2257, !2258, !2259, !2260, !2261, !2262, !2263}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2254, file: !2255, line: 15, baseType: !226, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2254, file: !2255, line: 17, baseType: !226, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2254, file: !2255, line: 19, baseType: !226, size: 64, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2254, file: !2255, line: 21, baseType: !226, size: 64, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2254, file: !2255, line: 29, baseType: !226, size: 64, offset: 256)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2254, file: !2255, line: 35, baseType: !226, size: 64, offset: 320)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2254, file: !2255, line: 44, baseType: !226, size: 64, offset: 384)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2158, file: !2159, line: 202, baseType: !228, size: 64, offset: 5312)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2158, file: !2159, line: 213, baseType: !2266, size: 2048, offset: 5376)
!2266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2267, size: 2048, elements: !2068)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2268, line: 43, size: 128, elements: !2269)
!2268 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2269 = !{!2270, !2271}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2267, file: !2268, line: 44, baseType: !41, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2267, file: !2268, line: 45, baseType: !41, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2158, file: !2159, line: 216, baseType: !2273, size: 448, offset: 7424)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2159, line: 30, size: 448, elements: !2274)
!2274 = !{!2275, !2276, !2277, !2278, !2279, !2280, !2281}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2273, file: !2159, line: 31, baseType: !25, size: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2273, file: !2159, line: 32, baseType: !778, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2273, file: !2159, line: 33, baseType: !42, size: 64, offset: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2273, file: !2159, line: 34, baseType: !226, size: 64, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2273, file: !2159, line: 34, baseType: !226, size: 64, offset: 256)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2273, file: !2159, line: 35, baseType: !42, size: 64, offset: 320)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2273, file: !2159, line: 35, baseType: !42, size: 64, offset: 384)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2158, file: !2159, line: 219, baseType: !2283, size: 64, offset: 7872)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2285, line: 41, size: 3456, elements: !2286)
!2285 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2286 = !{!2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2303, !2304, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2284, file: !2285, line: 47, baseType: !97, size: 16)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2284, file: !2285, line: 48, baseType: !513, size: 32, offset: 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2284, file: !2285, line: 54, baseType: !88, size: 8, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2284, file: !2285, line: 55, baseType: !88, size: 8, offset: 72)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2284, file: !2285, line: 73, baseType: !227, size: 64, align: 64, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2284, file: !2285, line: 74, baseType: !227, size: 64, offset: 192)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2284, file: !2285, line: 81, baseType: !227, size: 64, offset: 256)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2284, file: !2285, line: 82, baseType: !227, size: 64, offset: 320)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2284, file: !2285, line: 85, baseType: !227, size: 64, offset: 384)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2284, file: !2285, line: 86, baseType: !227, size: 64, offset: 448)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2284, file: !2285, line: 94, baseType: !227, size: 64, offset: 512)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2284, file: !2285, line: 102, baseType: !227, size: 64, offset: 576)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2284, file: !2285, line: 107, baseType: !2300, size: 256, offset: 640)
!2300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !2301)
!2301 = !{!2302}
!2302 = !DISubrange(count: 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2284, file: !2285, line: 108, baseType: !88, size: 8, align: 64, offset: 896)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2284, file: !2285, line: 110, baseType: !2305, size: 24, offset: 904)
!2305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 24, elements: !385)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2284, file: !2285, line: 111, baseType: !513, size: 32, align: 64, offset: 960)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2284, file: !2285, line: 113, baseType: !513, size: 32, offset: 992)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2284, file: !2285, line: 114, baseType: !513, size: 32, offset: 1024)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2284, file: !2285, line: 115, baseType: !513, size: 32, offset: 1056)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2284, file: !2285, line: 117, baseType: !513, size: 32, offset: 1088)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2284, file: !2285, line: 118, baseType: !227, size: 64, align: 64, offset: 1152)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2284, file: !2285, line: 120, baseType: !227, size: 64, offset: 1216)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2284, file: !2285, line: 121, baseType: !227, size: 64, offset: 1280)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2284, file: !2285, line: 122, baseType: !227, size: 64, offset: 1344)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2284, file: !2285, line: 123, baseType: !227, size: 64, offset: 1408)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2284, file: !2285, line: 133, baseType: !227, size: 64, offset: 1472)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2284, file: !2285, line: 137, baseType: !227, size: 64, offset: 1536)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2284, file: !2285, line: 142, baseType: !227, size: 64, offset: 1600)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2284, file: !2285, line: 143, baseType: !227, size: 64, offset: 1664)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2284, file: !2285, line: 146, baseType: !227, size: 64, offset: 1728)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2284, file: !2285, line: 147, baseType: !227, size: 64, offset: 1792)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2284, file: !2285, line: 148, baseType: !227, size: 64, offset: 1856)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2284, file: !2285, line: 149, baseType: !227, size: 64, offset: 1920)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2284, file: !2285, line: 154, baseType: !227, size: 64, offset: 1984)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2284, file: !2285, line: 155, baseType: !227, size: 64, offset: 2048)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2284, file: !2285, line: 156, baseType: !227, size: 64, offset: 2112)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2284, file: !2285, line: 158, baseType: !227, size: 64, offset: 2176)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2284, file: !2285, line: 159, baseType: !227, size: 64, offset: 2240)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2284, file: !2285, line: 162, baseType: !227, size: 64, offset: 2304)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2284, file: !2285, line: 163, baseType: !227, size: 64, offset: 2368)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2284, file: !2285, line: 164, baseType: !227, size: 64, offset: 2432)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2284, file: !2285, line: 167, baseType: !227, size: 64, offset: 2496)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2284, file: !2285, line: 168, baseType: !227, size: 64, offset: 2560)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2284, file: !2285, line: 171, baseType: !227, size: 64, offset: 2624)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2284, file: !2285, line: 172, baseType: !227, size: 64, offset: 2688)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2284, file: !2285, line: 175, baseType: !227, size: 64, offset: 2752)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2284, file: !2285, line: 178, baseType: !227, size: 64, offset: 2816)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2284, file: !2285, line: 179, baseType: !227, size: 64, offset: 2880)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2284, file: !2285, line: 182, baseType: !513, size: 32, offset: 2944)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2284, file: !2285, line: 186, baseType: !227, size: 64, align: 64, offset: 3008)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2284, file: !2285, line: 194, baseType: !227, size: 64, offset: 3072)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2284, file: !2285, line: 195, baseType: !227, size: 64, offset: 3136)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2284, file: !2285, line: 199, baseType: !227, size: 64, offset: 3200)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2284, file: !2285, line: 200, baseType: !227, size: 64, offset: 3264)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2284, file: !2285, line: 203, baseType: !227, size: 64, offset: 3328)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2284, file: !2285, line: 204, baseType: !227, size: 64, offset: 3392)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2158, file: !2159, line: 222, baseType: !7, size: 32, offset: 7936)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2158, file: !2159, line: 223, baseType: !2349, size: 64, offset: 8000)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2159, line: 223, flags: DIFlagFwdDecl)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2158, file: !2159, line: 230, baseType: !548, size: 8, offset: 8064)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2158, file: !2159, line: 231, baseType: !517, size: 16, offset: 8080)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2158, file: !2159, line: 232, baseType: !517, size: 16, offset: 8096)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2158, file: !2159, line: 234, baseType: !1796, size: 64, offset: 8128)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2158, file: !2159, line: 237, baseType: !348, size: 256, offset: 8192)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2158, file: !2159, line: 243, baseType: !487, size: 320, offset: 8448)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1512, file: !1513, line: 1111, baseType: !2358, size: 64, offset: 15424)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2159, line: 20, size: 16640, elements: !2360)
!2360 = !{!2361, !2362, !2363, !2364}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2359, file: !2159, line: 21, baseType: !62, size: 32)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2359, file: !2159, line: 22, baseType: !393, size: 32, offset: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2359, file: !2159, line: 23, baseType: !57, size: 192, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2359, file: !2159, line: 24, baseType: !2365, size: 16384, offset: 256)
!2365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2366, size: 16384, elements: !2386)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2170, line: 51, size: 256, elements: !2367)
!2367 = !{!2368}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2366, file: !2170, line: 52, baseType: !2369, size: 256)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2170, line: 37, size: 256, elements: !2370)
!2370 = !{!2371, !2378, !2379, !2385}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2369, file: !2170, line: 39, baseType: !2372, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2373, line: 83, baseType: !2374)
!2373 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2373, line: 82, baseType: !2376)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{null, !25}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2369, file: !2170, line: 40, baseType: !42, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2369, file: !2170, line: 46, baseType: !2380, size: 64, offset: 128)
!2380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2373, line: 86, baseType: !2381)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2373, line: 85, baseType: !2383)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{null}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2369, file: !2170, line: 48, baseType: !2174, size: 64, offset: 192)
!2386 = !{!2387}
!2387 = !DISubrange(count: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1512, file: !1513, line: 1112, baseType: !2174, size: 64, offset: 15488)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1512, file: !1513, line: 1113, baseType: !2174, size: 64, offset: 15552)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1512, file: !1513, line: 1115, baseType: !2174, size: 64, offset: 15616)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1512, file: !1513, line: 1116, baseType: !2169, size: 192, offset: 15680)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1512, file: !1513, line: 1117, baseType: !42, size: 64, offset: 15872)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1512, file: !1513, line: 1118, baseType: !38, size: 64, offset: 15936)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1512, file: !1513, line: 1119, baseType: !7, size: 32, offset: 16000)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1512, file: !1513, line: 1121, baseType: !329, size: 64, offset: 16064)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1512, file: !1513, line: 1125, baseType: !2397, size: 64, offset: 16128)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1513, line: 43, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1512, file: !1513, line: 1127, baseType: !428, size: 32, offset: 16192)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1512, file: !1513, line: 1128, baseType: !7, size: 32, offset: 16224)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1512, file: !1513, line: 1130, baseType: !2402, size: 128, offset: 16256)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2403, line: 37, size: 128, elements: !2404)
!2403 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2404 = !{!2405, !2406, !2407}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2402, file: !2403, line: 38, baseType: !25, size: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2402, file: !2403, line: 39, baseType: !52, size: 32, offset: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2402, file: !2403, line: 40, baseType: !2408, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2403, line: 24, flags: DIFlagFwdDecl)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1512, file: !1513, line: 1131, baseType: !2411, size: 256, offset: 16384)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2412, line: 12, size: 256, elements: !2413)
!2412 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2413 = !{!2414, !2415, !2416, !2417}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2411, file: !2412, line: 13, baseType: !214, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2411, file: !2412, line: 14, baseType: !42, size: 64, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2411, file: !2412, line: 15, baseType: !42, size: 64, offset: 128)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2411, file: !2412, line: 16, baseType: !548, size: 8, offset: 192)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1512, file: !1513, line: 1134, baseType: !226, size: 64, offset: 16640)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1512, file: !1513, line: 1135, baseType: !226, size: 64, offset: 16704)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1512, file: !1513, line: 1138, baseType: !62, size: 32, offset: 16768)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1512, file: !1513, line: 1141, baseType: !353, size: 32, offset: 16800)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1512, file: !1513, line: 1143, baseType: !2423, size: 64, offset: 16832)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1513, line: 735, size: 64, elements: !2424)
!2424 = !{!2425}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2423, file: !1513, line: 736, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1512, file: !1513, line: 1147, baseType: !1682, size: 128, offset: 16896)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1512, file: !1513, line: 1149, baseType: !1511, size: 64, offset: 17024)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1512, file: !1513, line: 1151, baseType: !2430, size: 64, offset: 17088)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1513, line: 1151, flags: DIFlagFwdDecl)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1512, file: !1513, line: 1188, baseType: !23, size: 64, offset: 17152)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1512, file: !1513, line: 1191, baseType: !2434, size: 64, offset: 17216)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1513, line: 44, flags: DIFlagFwdDecl)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1512, file: !1513, line: 1194, baseType: !2437, size: 64, offset: 17280)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1513, line: 45, flags: DIFlagFwdDecl)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1512, file: !1513, line: 1197, baseType: !2440, size: 64, offset: 17344)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1513, line: 61, flags: DIFlagFwdDecl)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1512, file: !1513, line: 1199, baseType: !2443, size: 64, offset: 17408)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2445, line: 99, size: 128, elements: !2446)
!2445 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2446 = !{!2447, !2448, !2449}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2444, file: !2445, line: 100, baseType: !339, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2444, file: !2445, line: 101, baseType: !52, size: 32, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2444, file: !2445, line: 103, baseType: !29, size: 16, offset: 96)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1512, file: !1513, line: 1202, baseType: !2451, size: 64, offset: 17472)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1513, line: 48, flags: DIFlagFwdDecl)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1512, file: !1513, line: 1205, baseType: !42, size: 64, offset: 17536)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1512, file: !1513, line: 1206, baseType: !2455, size: 64, offset: 17600)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2170, line: 14, baseType: !2457)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2170, line: 12, size: 384, elements: !2458)
!2458 = !{!2459}
!2459 = !DIDerivedType(tag: DW_TAG_member, scope: !2457, file: !2170, line: 13, baseType: !2460, size: 384)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2457, file: !2170, line: 13, size: 384, elements: !2461)
!2461 = !{!2462, !2463, !2464, !2465}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2460, file: !2170, line: 13, baseType: !25, size: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2460, file: !2170, line: 13, baseType: !25, size: 32, offset: 32)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2460, file: !2170, line: 13, baseType: !25, size: 32, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2460, file: !2170, line: 13, baseType: !2466, size: 256, offset: 128)
!2466 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2467, line: 37, size: 256, elements: !2468)
!2467 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2468 = !{!2469, !2474, !2487, !2493, !2502, !2529, !2534}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2466, file: !2467, line: 42, baseType: !2470, size: 64)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2466, file: !2467, line: 39, size: 64, elements: !2471)
!2471 = !{!2472, !2473}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2470, file: !2467, line: 40, baseType: !2010, size: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2470, file: !2467, line: 41, baseType: !434, size: 32, offset: 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2466, file: !2467, line: 50, baseType: !2475, size: 192)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2466, file: !2467, line: 45, size: 192, elements: !2476)
!2476 = !{!2477, !2479, !2480, !2486}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2475, file: !2467, line: 46, baseType: !2478, size: 32)
!2478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !40, line: 95, baseType: !25)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2475, file: !2467, line: 47, baseType: !25, size: 32, offset: 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2475, file: !2467, line: 48, baseType: !2481, size: 64, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2467, line: 11, baseType: !2482)
!2482 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2467, line: 8, size: 64, elements: !2483)
!2483 = !{!2484, !2485}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2482, file: !2467, line: 9, baseType: !25, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2482, file: !2467, line: 10, baseType: !23, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2475, file: !2467, line: 49, baseType: !25, size: 32, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2466, file: !2467, line: 57, baseType: !2488, size: 128)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2466, file: !2467, line: 53, size: 128, elements: !2489)
!2489 = !{!2490, !2491, !2492}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2488, file: !2467, line: 54, baseType: !2010, size: 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2488, file: !2467, line: 55, baseType: !434, size: 32, offset: 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2488, file: !2467, line: 56, baseType: !2481, size: 64, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2466, file: !2467, line: 66, baseType: !2494, size: 256)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2466, file: !2467, line: 60, size: 256, elements: !2495)
!2495 = !{!2496, !2497, !2498, !2499, !2501}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2494, file: !2467, line: 61, baseType: !2010, size: 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2494, file: !2467, line: 62, baseType: !434, size: 32, offset: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2494, file: !2467, line: 63, baseType: !25, size: 32, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2494, file: !2467, line: 64, baseType: !2500, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !40, line: 94, baseType: !1008)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2494, file: !2467, line: 65, baseType: !2500, size: 64, offset: 192)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2466, file: !2467, line: 105, baseType: !2503, size: 256)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2466, file: !2467, line: 69, size: 256, elements: !2504)
!2504 = !{!2505, !2506}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2503, file: !2467, line: 70, baseType: !23, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, scope: !2503, file: !2467, line: 79, baseType: !2507, size: 192, offset: 64)
!2507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2503, file: !2467, line: 79, size: 192, elements: !2508)
!2508 = !{!2509, !2510, !2511, !2518, !2523}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2507, file: !2467, line: 81, baseType: !25, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2507, file: !2467, line: 86, baseType: !517, size: 16)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2507, file: !2467, line: 92, baseType: !2512, size: 192)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2507, file: !2467, line: 88, size: 192, elements: !2513)
!2513 = !{!2514, !2516, !2517}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2512, file: !2467, line: 89, baseType: !2515, size: 64)
!2515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 64, elements: !1666)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2512, file: !2467, line: 90, baseType: !23, size: 64, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2512, file: !2467, line: 91, baseType: !23, size: 64, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2507, file: !2467, line: 97, baseType: !2519, size: 96)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2507, file: !2467, line: 94, size: 96, elements: !2520)
!2520 = !{!2521, !2522}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2519, file: !2467, line: 95, baseType: !2515, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2519, file: !2467, line: 96, baseType: !513, size: 32, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2507, file: !2467, line: 103, baseType: !2524, size: 128)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2507, file: !2467, line: 99, size: 128, elements: !2525)
!2525 = !{!2526, !2527, !2528}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2524, file: !2467, line: 100, baseType: !42, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2524, file: !2467, line: 101, baseType: !513, size: 32, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2524, file: !2467, line: 102, baseType: !513, size: 32, offset: 96)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2466, file: !2467, line: 111, baseType: !2530, size: 128)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2466, file: !2467, line: 108, size: 128, elements: !2531)
!2531 = !{!2532, !2533}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2530, file: !2467, line: 109, baseType: !778, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2530, file: !2467, line: 110, baseType: !25, size: 32, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2466, file: !2467, line: 118, baseType: !2535, size: 128)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2466, file: !2467, line: 114, size: 128, elements: !2536)
!2536 = !{!2537, !2538, !2539}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2535, file: !2467, line: 115, baseType: !23, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2535, file: !2467, line: 116, baseType: !25, size: 32, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2535, file: !2467, line: 117, baseType: !7, size: 32, offset: 96)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1512, file: !1513, line: 1208, baseType: !2254, size: 448, offset: 17664)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1512, file: !1513, line: 1215, baseType: !226, size: 64, offset: 18112)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1512, file: !1513, line: 1217, baseType: !226, size: 64, offset: 18176)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1512, file: !1513, line: 1219, baseType: !226, size: 64, offset: 18240)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1512, file: !1513, line: 1223, baseType: !2545, size: 64, offset: 18304)
!2545 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2546, line: 99, baseType: !2547)
!2546 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2546, line: 99, size: 64, elements: !2548)
!2548 = !{!2549}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2547, file: !2546, line: 99, baseType: !1747, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1512, file: !1513, line: 1225, baseType: !820, size: 32, offset: 18368)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1512, file: !1513, line: 1226, baseType: !25, size: 32, offset: 18400)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1512, file: !1513, line: 1227, baseType: !25, size: 32, offset: 18432)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1512, file: !1513, line: 1231, baseType: !2126, size: 64, offset: 18496)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1512, file: !1513, line: 1233, baseType: !100, size: 128, offset: 18560)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1512, file: !1513, line: 1240, baseType: !2556, size: 64, offset: 18688)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1513, line: 62, flags: DIFlagFwdDecl)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1512, file: !1513, line: 1242, baseType: !2559, size: 64, offset: 18752)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1513, line: 1242, flags: DIFlagFwdDecl)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1512, file: !1513, line: 1244, baseType: !100, size: 128, offset: 18816)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1512, file: !1513, line: 1245, baseType: !2563, size: 64, offset: 18944)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1513, line: 51, flags: DIFlagFwdDecl)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1512, file: !1513, line: 1246, baseType: !348, size: 256, offset: 19008)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1512, file: !1513, line: 1247, baseType: !7, size: 32, offset: 19264)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1512, file: !1513, line: 1250, baseType: !2568, size: 64, offset: 19328)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1513, line: 57, flags: DIFlagFwdDecl)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1512, file: !1513, line: 1251, baseType: !348, size: 256, offset: 19392)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1512, file: !1513, line: 1252, baseType: !100, size: 128, offset: 19648)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1512, file: !1513, line: 1259, baseType: !2573, size: 64, offset: 19776)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1283, line: 717, flags: DIFlagFwdDecl)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1512, file: !1513, line: 1260, baseType: !517, size: 16, offset: 19840)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1512, file: !1513, line: 1261, baseType: !517, size: 16, offset: 19856)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1512, file: !1513, line: 1314, baseType: !2578, size: 64, offset: 19904)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2580, line: 62, size: 256, align: 256, elements: !2581)
!2580 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2581 = !{!2582, !2583, !2584, !2585, !2586, !2587, !2588}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2579, file: !2580, line: 75, baseType: !513, size: 32)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2579, file: !2580, line: 90, baseType: !513, size: 32, offset: 32)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2579, file: !2580, line: 112, baseType: !227, size: 64, offset: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2579, file: !2580, line: 132, baseType: !513, size: 32, offset: 128)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2579, file: !2580, line: 140, baseType: !513, size: 32, offset: 160)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2579, file: !2580, line: 149, baseType: !513, size: 32, offset: 192)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2579, file: !2580, line: 154, baseType: !2589, offset: 224)
!2589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, elements: !424)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1512, file: !1513, line: 1315, baseType: !512, size: 32, offset: 19968)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1512, file: !1513, line: 1316, baseType: !512, size: 32, offset: 20000)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1512, file: !1513, line: 1321, baseType: !42, size: 64, offset: 20032)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1512, file: !1513, line: 1325, baseType: !25, size: 32, offset: 20096)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1512, file: !1513, line: 1326, baseType: !25, size: 32, offset: 20128)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1512, file: !1513, line: 1327, baseType: !25, size: 32, offset: 20160)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1512, file: !1513, line: 1328, baseType: !25, size: 32, offset: 20192)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1512, file: !1513, line: 1329, baseType: !326, size: 128, align: 64, offset: 20224)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1512, file: !1513, line: 1332, baseType: !2599, size: 128, offset: 20352)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2600, line: 51, size: 128, elements: !2601)
!2600 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2601 = !{!2602, !2607, !2608}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2599, file: !2600, line: 60, baseType: !2603, size: 64)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2604, line: 7, size: 64, elements: !2605)
!2604 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2605 = !{!2606}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2603, file: !2604, line: 12, baseType: !1744, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2599, file: !2600, line: 63, baseType: !548, size: 8, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2599, file: !2600, line: 70, baseType: !548, size: 8, offset: 72)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1512, file: !1513, line: 1335, baseType: !2610, size: 64, offset: 20480)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1513, line: 59, flags: DIFlagFwdDecl)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1512, file: !1513, line: 1337, baseType: !2613, size: 128, offset: 20544)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2600, line: 39, size: 128, elements: !2614)
!2614 = !{!2615, !2879, !2880}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2613, file: !2600, line: 40, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1283, line: 74, size: 512, align: 128, elements: !2618)
!2618 = !{!2619, !2620, !2873, !2878}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2617, file: !1283, line: 75, baseType: !42, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, scope: !2617, file: !1283, line: 83, baseType: !2621, size: 320, offset: 64)
!2621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2617, file: !1283, line: 83, size: 320, elements: !2622)
!2622 = !{!2623, !2847, !2861, !2865, !2872}
!2623 = !DIDerivedType(tag: DW_TAG_member, scope: !2621, file: !1283, line: 84, baseType: !2624, size: 320)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2621, file: !1283, line: 84, size: 320, elements: !2625)
!2625 = !{!2626, !2637, !2841, !2846}
!2626 = !DIDerivedType(tag: DW_TAG_member, scope: !2624, file: !1283, line: 90, baseType: !2627, size: 128)
!2627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2624, file: !1283, line: 90, size: 128, elements: !2628)
!2628 = !{!2629, !2630, !2635, !2636}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2627, file: !1283, line: 91, baseType: !100, size: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, scope: !2627, file: !1283, line: 94, baseType: !2631, size: 128)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2627, file: !1283, line: 94, size: 128, elements: !2632)
!2632 = !{!2633, !2634}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2631, file: !1283, line: 96, baseType: !23, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2631, file: !1283, line: 98, baseType: !7, size: 32, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2627, file: !1283, line: 102, baseType: !100, size: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2627, file: !1283, line: 103, baseType: !100, size: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2624, file: !1283, line: 106, baseType: !2638, size: 64, offset: 128)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !111, line: 472, size: 1536, align: 64, elements: !2640)
!2640 = !{!2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2833, !2834, !2835, !2838, !2839, !2840}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2639, file: !111, line: 473, baseType: !854, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2639, file: !111, line: 474, baseType: !1053, size: 128, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2639, file: !111, line: 475, baseType: !487, size: 320, offset: 192)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2639, file: !111, line: 476, baseType: !1058, size: 32, offset: 512)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2639, file: !111, line: 477, baseType: !52, size: 32, offset: 544)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2639, file: !111, line: 482, baseType: !1682, size: 128, offset: 576)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2639, file: !111, line: 483, baseType: !42, size: 64, offset: 704)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2639, file: !111, line: 484, baseType: !42, size: 64, offset: 768)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2639, file: !111, line: 485, baseType: !2650, size: 64, offset: 832)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2652)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !111, line: 404, size: 1280, elements: !2653)
!2653 = !{!2654, !2658, !2728, !2732, !2736, !2742, !2748, !2752, !2757, !2761, !2765, !2769, !2797, !2801, !2805, !2809, !2814, !2818, !2825, !2829}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2652, file: !111, line: 405, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!25, !2616, !1134}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2652, file: !111, line: 406, baseType: !2659, size: 64, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!25, !313, !2662}
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1283, line: 293, size: 1536, elements: !2664)
!2664 = !{!2665, !2695, !2709}
!2665 = !DIDerivedType(tag: DW_TAG_member, scope: !2663, file: !1283, line: 295, baseType: !2666, size: 512)
!2666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2663, file: !1283, line: 295, size: 512, elements: !2667)
!2667 = !{!2668, !2694}
!2668 = !DIDerivedType(tag: DW_TAG_member, scope: !2666, file: !1283, line: 296, baseType: !2669, size: 448)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2666, file: !1283, line: 296, size: 448, elements: !2670)
!2670 = !{!2671, !2672, !2681, !2682, !2683, !2692, !2693}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2669, file: !1283, line: 298, baseType: !42, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, scope: !2669, file: !1283, line: 299, baseType: !2673, size: 128, offset: 64)
!2673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2669, file: !1283, line: 299, size: 128, elements: !2674)
!2674 = !{!2675, !2676}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2673, file: !1283, line: 300, baseType: !100, size: 128)
!2676 = !DIDerivedType(tag: DW_TAG_member, scope: !2673, file: !1283, line: 302, baseType: !2677, size: 128)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2673, file: !1283, line: 302, size: 128, elements: !2678)
!2678 = !{!2679, !2680}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2677, file: !1283, line: 303, baseType: !23, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2677, file: !1283, line: 305, baseType: !7, size: 32, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2669, file: !1283, line: 310, baseType: !2638, size: 64, offset: 192)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2669, file: !1283, line: 311, baseType: !42, size: 64, offset: 256)
!2683 = !DIDerivedType(tag: DW_TAG_member, scope: !2669, file: !1283, line: 312, baseType: !2684, size: 64, offset: 320)
!2684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2669, file: !1283, line: 312, size: 64, elements: !2685)
!2685 = !{!2686, !2687}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2684, file: !1283, line: 313, baseType: !23, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2684, file: !1283, line: 314, baseType: !2688, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1283, line: 257, baseType: !2689)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1283, line: 255, size: 64, elements: !2690)
!2690 = !{!2691}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2689, file: !1283, line: 256, baseType: !42, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2669, file: !1283, line: 316, baseType: !52, size: 32, offset: 384)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2669, file: !1283, line: 317, baseType: !52, size: 32, offset: 416)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2666, file: !1283, line: 323, baseType: !2617, size: 512, align: 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, scope: !2663, file: !1283, line: 325, baseType: !2696, size: 512, offset: 512)
!2696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2663, file: !1283, line: 325, size: 512, elements: !2697)
!2697 = !{!2698, !2708}
!2698 = !DIDerivedType(tag: DW_TAG_member, scope: !2696, file: !1283, line: 326, baseType: !2699, size: 320)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2696, file: !1283, line: 326, size: 320, elements: !2700)
!2700 = !{!2701, !2702, !2703, !2704, !2705, !2706, !2707}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2699, file: !1283, line: 327, baseType: !42, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2699, file: !1283, line: 328, baseType: !42, size: 64, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2699, file: !1283, line: 329, baseType: !42, size: 64, offset: 128)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2699, file: !1283, line: 331, baseType: !52, size: 32, offset: 192)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2699, file: !1283, line: 332, baseType: !52, size: 32, offset: 224)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2699, file: !1283, line: 333, baseType: !52, size: 32, offset: 256)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2699, file: !1283, line: 335, baseType: !7, size: 32, offset: 288)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2696, file: !1283, line: 339, baseType: !2617, size: 512, align: 128)
!2709 = !DIDerivedType(tag: DW_TAG_member, scope: !2663, file: !1283, line: 341, baseType: !2710, size: 512, offset: 1024)
!2710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2663, file: !1283, line: 341, size: 512, elements: !2711)
!2711 = !{!2712, !2721, !2727}
!2712 = !DIDerivedType(tag: DW_TAG_member, scope: !2710, file: !1283, line: 342, baseType: !2713, size: 384)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2710, file: !1283, line: 342, size: 384, elements: !2714)
!2714 = !{!2715, !2716, !2717, !2718, !2719, !2720}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2713, file: !1283, line: 343, baseType: !42, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2713, file: !1283, line: 344, baseType: !42, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2713, file: !1283, line: 346, baseType: !23, size: 64, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2713, file: !1283, line: 347, baseType: !23, size: 64, offset: 192)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2713, file: !1283, line: 348, baseType: !23, size: 64, offset: 256)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2713, file: !1283, line: 349, baseType: !23, size: 64, offset: 320)
!2721 = !DIDerivedType(tag: DW_TAG_member, scope: !2710, file: !1283, line: 352, baseType: !2722, size: 256)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2710, file: !1283, line: 352, size: 256, elements: !2723)
!2723 = !{!2724, !2725, !2726}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2722, file: !1283, line: 353, baseType: !42, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2722, file: !1283, line: 354, baseType: !42, size: 64, offset: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2722, file: !1283, line: 356, baseType: !100, size: 128, offset: 128)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2710, file: !1283, line: 359, baseType: !2617, size: 512, align: 128)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2652, file: !111, line: 409, baseType: !2729, size: 64, offset: 128)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!25, !2638, !1134}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2652, file: !111, line: 412, baseType: !2733, size: 64, offset: 192)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!548, !2638, !2662}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2652, file: !111, line: 414, baseType: !2737, size: 64, offset: 256)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{null, !2740}
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !111, line: 310, flags: DIFlagFwdDecl)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2652, file: !111, line: 416, baseType: !2743, size: 64, offset: 320)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!25, !313, !2638, !44, !7, !2746, !2747}
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2652, file: !111, line: 419, baseType: !2749, size: 64, offset: 384)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!25, !313, !2638, !44, !7, !7, !2616, !23}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2652, file: !111, line: 424, baseType: !2753, size: 64, offset: 448)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!2756, !2638, !2756}
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !28, line: 131, baseType: !226)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2652, file: !111, line: 425, baseType: !2758, size: 64, offset: 512)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{null, !2662, !38, !38}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2652, file: !111, line: 426, baseType: !2762, size: 64, offset: 576)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!548, !2662, !1058}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2652, file: !111, line: 427, baseType: !2766, size: 64, offset: 640)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{null, !2662}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2652, file: !111, line: 428, baseType: !2770, size: 64, offset: 704)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!1006, !2773, !2795}
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !111, line: 373, size: 384, elements: !2775)
!2775 = !{!2776, !2777, !2778, !2782, !2783, !2784, !2785}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2774, file: !111, line: 374, baseType: !313, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2774, file: !111, line: 375, baseType: !44, size: 64, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2774, file: !111, line: 376, baseType: !2779, size: 64, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{null, !2773, !778}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2774, file: !111, line: 377, baseType: !23, size: 64, offset: 192)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2774, file: !111, line: 378, baseType: !25, size: 32, offset: 256)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2774, file: !111, line: 379, baseType: !96, size: 16, offset: 288)
!2785 = !DIDerivedType(tag: DW_TAG_member, scope: !2774, file: !111, line: 380, baseType: !2786, size: 64, offset: 320)
!2786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2774, file: !111, line: 380, size: 64, elements: !2787)
!2787 = !{!2788, !2791}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2786, file: !111, line: 386, baseType: !2789, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !111, line: 386, flags: DIFlagFwdDecl)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2786, file: !111, line: 395, baseType: !2792, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!1006, !23}
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !111, line: 69, flags: DIFlagFwdDecl)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2652, file: !111, line: 433, baseType: !2798, size: 64, offset: 768)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!25, !2638, !2662, !2662, !132}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2652, file: !111, line: 435, baseType: !2802, size: 64, offset: 832)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!25, !2662}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2652, file: !111, line: 436, baseType: !2806, size: 64, offset: 896)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!548, !2662, !38, !38}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2652, file: !111, line: 438, baseType: !2810, size: 64, offset: 960)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{null, !2662, !2813, !2813}
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2652, file: !111, line: 439, baseType: !2815, size: 64, offset: 1024)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!25, !2638, !2616}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2652, file: !111, line: 442, baseType: !2819, size: 64, offset: 1088)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!25, !2822, !313, !2824}
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !111, line: 66, flags: DIFlagFwdDecl)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2652, file: !111, line: 444, baseType: !2826, size: 64, offset: 1152)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{null, !313}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2652, file: !111, line: 445, baseType: !2830, size: 64, offset: 1216)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!25, !2773, !2795}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2639, file: !111, line: 486, baseType: !42, size: 64, offset: 896)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2639, file: !111, line: 487, baseType: !487, size: 320, offset: 960)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2639, file: !111, line: 488, baseType: !2836, size: 32, offset: 1280)
!2836 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2837, line: 8, baseType: !512)
!2837 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2639, file: !111, line: 489, baseType: !62, size: 32, offset: 1312)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2639, file: !111, line: 490, baseType: !100, size: 128, offset: 1344)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2639, file: !111, line: 491, baseType: !23, size: 64, offset: 1472)
!2841 = !DIDerivedType(tag: DW_TAG_member, scope: !2624, file: !1283, line: 107, baseType: !2842, size: 64, offset: 192)
!2842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2624, file: !1283, line: 107, size: 64, elements: !2843)
!2843 = !{!2844, !2845}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2842, file: !1283, line: 108, baseType: !42, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2842, file: !1283, line: 109, baseType: !42, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2624, file: !1283, line: 117, baseType: !42, size: 64, offset: 256)
!2847 = !DIDerivedType(tag: DW_TAG_member, scope: !2621, file: !1283, line: 119, baseType: !2848, size: 320)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2621, file: !1283, line: 119, size: 320, elements: !2849)
!2849 = !{!2850, !2851, !2854, !2855, !2856}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2848, file: !1283, line: 124, baseType: !42, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2848, file: !1283, line: 125, baseType: !2852, size: 64, offset: 64)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1283, line: 125, flags: DIFlagFwdDecl)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2848, file: !1283, line: 126, baseType: !42, size: 64, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2848, file: !1283, line: 127, baseType: !42, size: 64, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_member, scope: !2848, file: !1283, line: 128, baseType: !2857, size: 64, offset: 256)
!2857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2848, file: !1283, line: 128, size: 64, elements: !2858)
!2858 = !{!2859, !2860}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2857, file: !1283, line: 133, baseType: !42, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2857, file: !1283, line: 138, baseType: !339, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, scope: !2621, file: !1283, line: 141, baseType: !2862, size: 64)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2621, file: !1283, line: 141, size: 64, elements: !2863)
!2863 = !{!2864}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2862, file: !1283, line: 142, baseType: !42, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, scope: !2621, file: !1283, line: 144, baseType: !2866, size: 128)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2621, file: !1283, line: 144, size: 128, elements: !2867)
!2867 = !{!2868, !2871}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2866, file: !1283, line: 146, baseType: !2869, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1283, line: 146, flags: DIFlagFwdDecl)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2866, file: !1283, line: 147, baseType: !23, size: 64, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2621, file: !1283, line: 161, baseType: !326, size: 128, align: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, scope: !2617, file: !1283, line: 164, baseType: !2874, size: 32, offset: 384)
!2874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2617, file: !1283, line: 164, size: 32, elements: !2875)
!2875 = !{!2876, !2877}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2874, file: !1283, line: 169, baseType: !52, size: 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2874, file: !1283, line: 177, baseType: !7, size: 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2617, file: !1283, line: 181, baseType: !52, size: 32, offset: 416)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2613, file: !2600, line: 42, baseType: !513, size: 32, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2613, file: !2600, line: 43, baseType: !513, size: 32, offset: 96)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1512, file: !1513, line: 1340, baseType: !2882, size: 64, offset: 20672)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1513, line: 69, flags: DIFlagFwdDecl)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1512, file: !1513, line: 1351, baseType: !25, size: 32, offset: 20736)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1512, file: !1513, line: 1352, baseType: !25, size: 32, offset: 20768)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1512, file: !1513, line: 1354, baseType: !42, size: 64, offset: 20800)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1512, file: !1513, line: 1364, baseType: !226, size: 64, offset: 20864)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1512, file: !1513, line: 1365, baseType: !226, size: 64, offset: 20928)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1512, file: !1513, line: 1412, baseType: !42, size: 64, offset: 20992)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1512, file: !1513, line: 1453, baseType: !2891, size: 64, offset: 21056)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1513, line: 1453, flags: DIFlagFwdDecl)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1512, file: !1513, line: 1457, baseType: !2894, size: 64, offset: 21120)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !140, line: 61, size: 576, elements: !2896)
!2896 = !{!2897, !2898, !2917, !2920, !2921, !2954, !2964}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2895, file: !140, line: 62, baseType: !139, size: 32)
!2898 = !DIDerivedType(tag: DW_TAG_member, scope: !2895, file: !140, line: 64, baseType: !2899, size: 192, offset: 64)
!2899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2895, file: !140, line: 64, size: 192, elements: !2900)
!2900 = !{!2901, !2912}
!2901 = !DIDerivedType(tag: DW_TAG_member, scope: !2899, file: !140, line: 65, baseType: !2902, size: 192)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2899, file: !140, line: 65, size: 192, elements: !2903)
!2903 = !{!2904, !2911}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2902, file: !140, line: 66, baseType: !2905, size: 128)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2906, line: 50, size: 128, elements: !2907)
!2906 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2907 = !{!2908, !2909, !2910}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2905, file: !2906, line: 52, baseType: !42, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2905, file: !2906, line: 54, baseType: !7, size: 32, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2905, file: !2906, line: 55, baseType: !7, size: 32, offset: 96)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2902, file: !140, line: 67, baseType: !42, size: 64, offset: 128)
!2912 = !DIDerivedType(tag: DW_TAG_member, scope: !2899, file: !140, line: 70, baseType: !2913, size: 192)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2899, file: !140, line: 70, size: 192, elements: !2914)
!2914 = !{!2915, !2916}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2913, file: !140, line: 71, baseType: !326, size: 128, align: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2913, file: !140, line: 72, baseType: !42, size: 64, offset: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2895, file: !140, line: 76, baseType: !2918, size: 64, offset: 256)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !140, line: 76, flags: DIFlagFwdDecl)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2895, file: !140, line: 77, baseType: !42, size: 64, offset: 320)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2895, file: !140, line: 79, baseType: !2922, size: 64, offset: 384)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2906, line: 25, size: 256, elements: !2924)
!2924 = !{!2925, !2931, !2935}
!2925 = !DIDerivedType(tag: DW_TAG_member, scope: !2923, file: !2906, line: 26, baseType: !2926, size: 128)
!2926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2923, file: !2906, line: 26, size: 128, elements: !2927)
!2927 = !{!2928, !2930}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2926, file: !2906, line: 27, baseType: !2929, size: 128)
!2929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 128, elements: !2068)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2926, file: !2906, line: 28, baseType: !2929, size: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2923, file: !2906, line: 31, baseType: !2932, size: 64, offset: 128)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2934)
!2934 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2906, line: 23, flags: DIFlagFwdDecl)
!2935 = !DIDerivedType(tag: DW_TAG_member, scope: !2923, file: !2906, line: 33, baseType: !2936, size: 64, offset: 192)
!2936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2923, file: !2906, line: 33, size: 64, elements: !2937)
!2937 = !{!2938, !2944, !2949}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2936, file: !2906, line: 38, baseType: !2939, size: 64)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2936, file: !2906, line: 34, size: 64, elements: !2940)
!2940 = !{!2941, !2942, !2943}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2939, file: !2906, line: 35, baseType: !479, size: 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2939, file: !2906, line: 36, baseType: !86, size: 8, offset: 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2939, file: !2906, line: 37, baseType: !86, size: 8, offset: 40)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2936, file: !2906, line: 42, baseType: !2945, size: 16)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2936, file: !2906, line: 39, size: 16, elements: !2946)
!2946 = !{!2947, !2948}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2945, file: !2906, line: 40, baseType: !86, size: 8)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2945, file: !2906, line: 41, baseType: !86, size: 8, offset: 8)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2936, file: !2906, line: 46, baseType: !2950, size: 16)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2936, file: !2906, line: 43, size: 16, elements: !2951)
!2951 = !{!2952, !2953}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2950, file: !2906, line: 44, baseType: !86, size: 8)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2950, file: !2906, line: 45, baseType: !86, size: 8, offset: 8)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2895, file: !140, line: 81, baseType: !2955, size: 64, offset: 448)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !140, line: 85, size: 384, elements: !2957)
!2957 = !{!2958, !2959, !2960, !2961, !2962, !2963}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2956, file: !140, line: 86, baseType: !2918, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2956, file: !140, line: 87, baseType: !42, size: 64, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2956, file: !140, line: 88, baseType: !42, size: 64, offset: 128)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2956, file: !140, line: 89, baseType: !42, size: 64, offset: 192)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2956, file: !140, line: 90, baseType: !548, size: 8, offset: 256)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2956, file: !140, line: 92, baseType: !2955, size: 64, offset: 320)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2895, file: !140, line: 82, baseType: !7, size: 32, offset: 512)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1512, file: !1513, line: 1463, baseType: !2966, offset: 21184)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1513, line: 739, elements: !1103)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1512, file: !1513, line: 1470, baseType: !326, size: 128, align: 64, offset: 21184)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1512, file: !1513, line: 1471, baseType: !393, size: 32, offset: 21312)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1512, file: !1513, line: 1472, baseType: !25, size: 32, offset: 21344)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1512, file: !1513, line: 1474, baseType: !1511, size: 64, offset: 21376)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1512, file: !1513, line: 1475, baseType: !2972, size: 320, offset: 21440)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2973, line: 11, size: 320, elements: !2974)
!2973 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2974 = !{!2975, !2976, !2977, !2982}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2972, file: !2973, line: 16, baseType: !406, size: 128)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2972, file: !2973, line: 17, baseType: !42, size: 64, offset: 128)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2972, file: !2973, line: 18, baseType: !2978, size: 64, offset: 192)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{null, !2981}
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2972, file: !2973, line: 19, baseType: !512, size: 32, offset: 256)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1512, file: !1513, line: 1478, baseType: !2984, size: 64, offset: 21760)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2986, line: 14, flags: DIFlagFwdDecl)
!2986 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1512, file: !1513, line: 1482, baseType: !393, size: 32, offset: 21824)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1512, file: !1513, line: 1489, baseType: !23, size: 64, offset: 21888)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1512, file: !1513, line: 1504, baseType: !23, size: 64, offset: 21952)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1512, file: !1513, line: 1505, baseType: !227, size: 64, offset: 22016)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1512, file: !1513, line: 1506, baseType: !226, size: 64, offset: 22080)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1512, file: !1513, line: 1507, baseType: !227, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1512, file: !1513, line: 1508, baseType: !227, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1512, file: !1513, line: 1509, baseType: !227, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1512, file: !1513, line: 1510, baseType: !326, size: 128, align: 64, offset: 22208)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1512, file: !1513, line: 1511, baseType: !25, size: 32, offset: 22336)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1512, file: !1513, line: 1515, baseType: !2998, size: 64, offset: 22400)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !321, line: 56, size: 64, elements: !2999)
!2999 = !{!3000}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2998, file: !321, line: 57, baseType: !324, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1512, file: !1513, line: 1518, baseType: !2998, size: 64, offset: 22464)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1512, file: !1513, line: 1528, baseType: !326, size: 128, align: 64, offset: 22528)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1512, file: !1513, line: 1552, baseType: !3004, size: 35328, offset: 23040)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3005, line: 430, size: 35328, elements: !3006)
!3005 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3006 = !{!3007, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3036, !3037, !3038, !3039, !3040, !3041, !3044, !3045, !3046, !3047}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3004, file: !3005, line: 432, baseType: !3008, size: 192)
!3008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3009, size: 192, elements: !385)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3010, line: 16, size: 64, elements: !3011)
!3010 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3011 = !{!3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3009, file: !3010, line: 17, baseType: !96, size: 16)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3009, file: !3010, line: 18, baseType: !96, size: 16, offset: 16)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3009, file: !3010, line: 19, baseType: !96, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3009, file: !3010, line: 19, baseType: !96, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3009, file: !3010, line: 19, baseType: !96, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3009, file: !3010, line: 19, baseType: !96, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3009, file: !3010, line: 19, baseType: !96, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3009, file: !3010, line: 20, baseType: !96, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3009, file: !3010, line: 20, baseType: !96, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3009, file: !3010, line: 20, baseType: !96, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3009, file: !3010, line: 20, baseType: !96, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3009, file: !3010, line: 20, baseType: !96, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3009, file: !3010, line: 20, baseType: !96, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3004, file: !3005, line: 436, baseType: !42, size: 64, offset: 192)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3004, file: !3005, line: 440, baseType: !29, size: 16, offset: 256)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3004, file: !3005, line: 441, baseType: !29, size: 16, offset: 272)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3004, file: !3005, line: 442, baseType: !29, size: 16, offset: 288)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3004, file: !3005, line: 443, baseType: !29, size: 16, offset: 304)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3004, file: !3005, line: 447, baseType: !42, size: 64, offset: 320)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3004, file: !3005, line: 448, baseType: !42, size: 64, offset: 384)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3004, file: !3005, line: 459, baseType: !3033, size: 256, offset: 448)
!3033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3034, size: 256, elements: !411)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3005, line: 428, flags: DIFlagFwdDecl)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3004, file: !3005, line: 461, baseType: !42, size: 64, offset: 704)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3004, file: !3005, line: 463, baseType: !42, size: 64, offset: 768)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3004, file: !3005, line: 465, baseType: !42, size: 64, offset: 832)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3004, file: !3005, line: 466, baseType: !42, size: 64, offset: 896)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3004, file: !3005, line: 467, baseType: !42, size: 64, offset: 960)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3004, file: !3005, line: 473, baseType: !3042, size: 64, offset: 1024)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3005, line: 10, flags: DIFlagFwdDecl)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3004, file: !3005, line: 480, baseType: !42, size: 64, offset: 1088)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3004, file: !3005, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3004, file: !3005, line: 491, baseType: !512, size: 32, offset: 1184)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3004, file: !3005, line: 501, baseType: !3048, size: 33792, offset: 1536)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3049, line: 448, size: 33792, elements: !3050)
!3049 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3050 = !{!3051, !3052, !3053, !3215, !3216, !3222, !3223}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3048, file: !3049, line: 461, baseType: !7, size: 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3048, file: !3049, line: 468, baseType: !42, size: 64, offset: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3048, file: !3049, line: 476, baseType: !3054, size: 64, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3049, line: 356, size: 33280, align: 512, elements: !3056)
!3056 = !{!3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3055, file: !3049, line: 358, baseType: !7, size: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3055, file: !3049, line: 361, baseType: !7, size: 32, offset: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3055, file: !3049, line: 364, baseType: !226, size: 64, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3055, file: !3049, line: 367, baseType: !226, size: 64, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3055, file: !3049, line: 370, baseType: !226, size: 64, offset: 192)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3055, file: !3049, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3055, file: !3049, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3055, file: !3049, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3055, file: !3049, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3055, file: !3049, line: 397, baseType: !3067, size: 32768, offset: 512)
!3067 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3049, line: 348, size: 32768, elements: !3068)
!3068 = !{!3069, !3084, !3121, !3198, !3211}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3067, file: !3049, line: 349, baseType: !3070, size: 896)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3049, line: 12, size: 896, elements: !3071)
!3071 = !{!3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3083}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3070, file: !3049, line: 13, baseType: !512, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3070, file: !3049, line: 14, baseType: !512, size: 32, offset: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3070, file: !3049, line: 15, baseType: !512, size: 32, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3070, file: !3049, line: 16, baseType: !512, size: 32, offset: 96)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3070, file: !3049, line: 17, baseType: !512, size: 32, offset: 128)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3070, file: !3049, line: 18, baseType: !512, size: 32, offset: 160)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3070, file: !3049, line: 19, baseType: !512, size: 32, offset: 192)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3070, file: !3049, line: 22, baseType: !3080, size: 640, offset: 224)
!3080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 640, elements: !3081)
!3081 = !{!3082}
!3082 = !DISubrange(count: 20)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3070, file: !3049, line: 25, baseType: !512, size: 32, offset: 864)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3067, file: !3049, line: 350, baseType: !3085, size: 4096, align: 128)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3049, line: 34, size: 4096, align: 128, elements: !3086)
!3086 = !{!3087, !3088, !3089, !3090, !3091, !3106, !3107, !3108, !3110, !3112, !3116}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3085, file: !3049, line: 35, baseType: !96, size: 16)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3085, file: !3049, line: 36, baseType: !96, size: 16, offset: 16)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3085, file: !3049, line: 37, baseType: !96, size: 16, offset: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3085, file: !3049, line: 38, baseType: !96, size: 16, offset: 48)
!3091 = !DIDerivedType(tag: DW_TAG_member, scope: !3085, file: !3049, line: 39, baseType: !3092, size: 128, offset: 64)
!3092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3085, file: !3049, line: 39, size: 128, elements: !3093)
!3093 = !{!3094, !3099}
!3094 = !DIDerivedType(tag: DW_TAG_member, scope: !3092, file: !3049, line: 40, baseType: !3095, size: 128)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3092, file: !3049, line: 40, size: 128, elements: !3096)
!3096 = !{!3097, !3098}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3095, file: !3049, line: 41, baseType: !226, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3095, file: !3049, line: 42, baseType: !226, size: 64, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, scope: !3092, file: !3049, line: 44, baseType: !3100, size: 128)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3092, file: !3049, line: 44, size: 128, elements: !3101)
!3101 = !{!3102, !3103, !3104, !3105}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3100, file: !3049, line: 45, baseType: !512, size: 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3100, file: !3049, line: 46, baseType: !512, size: 32, offset: 32)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3100, file: !3049, line: 47, baseType: !512, size: 32, offset: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3100, file: !3049, line: 48, baseType: !512, size: 32, offset: 96)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3085, file: !3049, line: 51, baseType: !512, size: 32, offset: 192)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3085, file: !3049, line: 52, baseType: !512, size: 32, offset: 224)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3085, file: !3049, line: 55, baseType: !3109, size: 1024, offset: 256)
!3109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 1024, elements: !2301)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3085, file: !3049, line: 58, baseType: !3111, size: 2048, offset: 1280)
!3111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 2048, elements: !2386)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3085, file: !3049, line: 60, baseType: !3113, size: 384, offset: 3328)
!3113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 384, elements: !3114)
!3114 = !{!3115}
!3115 = !DISubrange(count: 12)
!3116 = !DIDerivedType(tag: DW_TAG_member, scope: !3085, file: !3049, line: 62, baseType: !3117, size: 384, offset: 3712)
!3117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3085, file: !3049, line: 62, size: 384, elements: !3118)
!3118 = !{!3119, !3120}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3117, file: !3049, line: 63, baseType: !3113, size: 384)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3117, file: !3049, line: 64, baseType: !3113, size: 384)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3067, file: !3049, line: 351, baseType: !3122, size: 1088)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3049, line: 79, size: 1088, elements: !3123)
!3123 = !{!3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3197}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3122, file: !3049, line: 80, baseType: !512, size: 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3122, file: !3049, line: 81, baseType: !512, size: 32, offset: 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3122, file: !3049, line: 82, baseType: !512, size: 32, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3122, file: !3049, line: 83, baseType: !512, size: 32, offset: 96)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3122, file: !3049, line: 84, baseType: !512, size: 32, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3122, file: !3049, line: 85, baseType: !512, size: 32, offset: 160)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3122, file: !3049, line: 86, baseType: !512, size: 32, offset: 192)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3122, file: !3049, line: 88, baseType: !3080, size: 640, offset: 224)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3122, file: !3049, line: 89, baseType: !86, size: 8, offset: 864)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3122, file: !3049, line: 90, baseType: !86, size: 8, offset: 872)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3122, file: !3049, line: 91, baseType: !86, size: 8, offset: 880)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3122, file: !3049, line: 92, baseType: !86, size: 8, offset: 888)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3122, file: !3049, line: 93, baseType: !86, size: 8, offset: 896)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3122, file: !3049, line: 94, baseType: !86, size: 8, offset: 904)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3122, file: !3049, line: 95, baseType: !3139, size: 64, offset: 960)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3141, line: 11, size: 128, elements: !3142)
!3141 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3142 = !{!3143, !3144}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3140, file: !3141, line: 12, baseType: !778, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3140, file: !3141, line: 13, baseType: !3145, size: 64, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3147, line: 103, size: 1344, elements: !3148)
!3147 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3148 = !{!3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3177, !3178, !3179}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3146, file: !3147, line: 109, baseType: !42, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3146, file: !3147, line: 110, baseType: !42, size: 64, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3146, file: !3147, line: 111, baseType: !42, size: 64, offset: 128)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3146, file: !3147, line: 112, baseType: !42, size: 64, offset: 192)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3146, file: !3147, line: 113, baseType: !42, size: 64, offset: 256)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3146, file: !3147, line: 114, baseType: !42, size: 64, offset: 320)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3146, file: !3147, line: 117, baseType: !42, size: 64, offset: 384)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3146, file: !3147, line: 118, baseType: !42, size: 64, offset: 448)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3146, file: !3147, line: 119, baseType: !42, size: 64, offset: 512)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3146, file: !3147, line: 120, baseType: !42, size: 64, offset: 576)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3146, file: !3147, line: 121, baseType: !42, size: 64, offset: 640)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3146, file: !3147, line: 122, baseType: !42, size: 64, offset: 704)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3146, file: !3147, line: 123, baseType: !42, size: 64, offset: 768)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3146, file: !3147, line: 124, baseType: !42, size: 64, offset: 832)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3146, file: !3147, line: 125, baseType: !42, size: 64, offset: 896)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3146, file: !3147, line: 139, baseType: !42, size: 64, offset: 960)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3146, file: !3147, line: 142, baseType: !42, size: 64, offset: 1024)
!3166 = !DIDerivedType(tag: DW_TAG_member, scope: !3146, file: !3147, line: 144, baseType: !3167, size: 64, offset: 1088)
!3167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3146, file: !3147, line: 144, size: 64, elements: !3168)
!3168 = !{!3169, !3170, !3171}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3167, file: !3147, line: 146, baseType: !96, size: 16)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3167, file: !3147, line: 148, baseType: !226, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3167, file: !3147, line: 150, baseType: !3172, size: 64)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3147, line: 59, size: 64, elements: !3173)
!3173 = !{!3174, !3175, !3176}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3172, file: !3147, line: 61, baseType: !226, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3172, file: !3147, line: 63, baseType: !226, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3172, file: !3147, line: 65, baseType: !226, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3146, file: !3147, line: 153, baseType: !42, size: 64, offset: 1152)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3146, file: !3147, line: 154, baseType: !42, size: 64, offset: 1216)
!3179 = !DIDerivedType(tag: DW_TAG_member, scope: !3146, file: !3147, line: 156, baseType: !3180, size: 64, offset: 1280)
!3180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3146, file: !3147, line: 156, size: 64, elements: !3181)
!3181 = !{!3182, !3183, !3184}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3180, file: !3147, line: 158, baseType: !96, size: 16)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3180, file: !3147, line: 160, baseType: !226, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3180, file: !3147, line: 162, baseType: !3185, size: 64)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3147, line: 69, size: 64, elements: !3186)
!3186 = !{!3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3185, file: !3147, line: 71, baseType: !226, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3185, file: !3147, line: 73, baseType: !226, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3185, file: !3147, line: 75, baseType: !226, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3185, file: !3147, line: 77, baseType: !226, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3185, file: !3147, line: 80, baseType: !226, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3185, file: !3147, line: 83, baseType: !226, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3185, file: !3147, line: 86, baseType: !226, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3185, file: !3147, line: 88, baseType: !226, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3185, file: !3147, line: 93, baseType: !226, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3185, file: !3147, line: 100, baseType: !226, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3122, file: !3049, line: 96, baseType: !512, size: 32, offset: 1024)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3067, file: !3049, line: 352, baseType: !3199, size: 4608, align: 512)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3049, line: 333, size: 4608, align: 512, elements: !3200)
!3200 = !{!3201, !3202, !3209}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3199, file: !3049, line: 334, baseType: !3085, size: 4096, align: 128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3199, file: !3049, line: 335, baseType: !3203, size: 512, offset: 4096)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3049, line: 312, size: 512, elements: !3204)
!3204 = !{!3205, !3206, !3207}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3203, file: !3049, line: 313, baseType: !226, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3203, file: !3049, line: 314, baseType: !226, size: 64, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3203, file: !3049, line: 315, baseType: !3208, size: 384, offset: 128)
!3208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 384, elements: !535)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3199, file: !3049, line: 336, baseType: !3210, offset: 4608)
!3210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, elements: !424)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3067, file: !3049, line: 353, baseType: !3212, size: 32768)
!3212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 32768, elements: !3213)
!3213 = !{!3214}
!3214 = !DISubrange(count: 4096)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3048, file: !3049, line: 484, baseType: !3054, size: 64, offset: 192)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3048, file: !3049, line: 491, baseType: !3217, size: 128, offset: 256)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3049, line: 404, size: 128, elements: !3218)
!3218 = !{!3219, !3220, !3221}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3217, file: !3049, line: 424, baseType: !226, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3217, file: !3049, line: 432, baseType: !7, size: 32, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3217, file: !3049, line: 440, baseType: !7, size: 32, offset: 96)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3048, file: !3049, line: 498, baseType: !3217, size: 128, offset: 384)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3048, file: !3049, line: 508, baseType: !3055, size: 33280, align: 512, offset: 512)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1493, file: !1494, line: 16, baseType: !57, size: 192, offset: 512)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1493, file: !1494, line: 17, baseType: !52, size: 32, offset: 704)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1063, file: !111, line: 1240, baseType: !23, size: 64, offset: 6912)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1063, file: !111, line: 1243, baseType: !512, size: 32, offset: 6976)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1063, file: !111, line: 1245, baseType: !503, size: 64, offset: 7040)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1063, file: !111, line: 1246, baseType: !503, size: 64, offset: 7104)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1063, file: !111, line: 1248, baseType: !513, size: 32, offset: 7168)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1063, file: !111, line: 1249, baseType: !3232, size: 64, offset: 7232)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !111, line: 634, flags: DIFlagFwdDecl)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1063, file: !111, line: 1252, baseType: !2300, size: 256, offset: 7296)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1063, file: !111, line: 1253, baseType: !3236, size: 128, offset: 7552)
!3236 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3237, line: 21, baseType: !3238)
!3237 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3237, line: 19, size: 128, elements: !3239)
!3239 = !{!3240}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3238, file: !3237, line: 20, baseType: !3241, size: 128)
!3241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !2068)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1063, file: !111, line: 1255, baseType: !7, size: 32, offset: 7680)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1063, file: !111, line: 1261, baseType: !348, size: 256, offset: 7744)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1063, file: !111, line: 1267, baseType: !19, size: 64, offset: 8000)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1063, file: !111, line: 1269, baseType: !3246, size: 64, offset: 8064)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3248)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !816, line: 128, size: 1024, align: 512, elements: !3249)
!3249 = !{!3250, !3254, !3255, !3262, !3268, !3272, !3276, !3280, !3281, !3285, !3289, !3294, !3298}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3248, file: !816, line: 129, baseType: !3251, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!25, !814, !7}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3248, file: !816, line: 130, baseType: !3251, size: 64, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3248, file: !816, line: 131, baseType: !3256, size: 64, offset: 128)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!25, !3259, !3261}
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !815)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3248, file: !816, line: 132, baseType: !3263, size: 64, offset: 192)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!25, !3259, !7, !19, !3266}
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !839)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3248, file: !816, line: 134, baseType: !3269, size: 64, offset: 256)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!25, !3259}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3248, file: !816, line: 135, baseType: !3273, size: 64, offset: 320)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!25, !814}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3248, file: !816, line: 136, baseType: !3277, size: 64, offset: 384)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{null, !814}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3248, file: !816, line: 137, baseType: !3277, size: 64, offset: 448)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3248, file: !816, line: 138, baseType: !3282, size: 64, offset: 512)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{null, !814, !854}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3248, file: !816, line: 139, baseType: !3286, size: 64, offset: 576)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!214, !814, !214, !25}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3248, file: !816, line: 140, baseType: !3290, size: 64, offset: 640)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!809, !3293}
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3248, file: !816, line: 141, baseType: !3295, size: 64, offset: 704)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!25, !975, !548}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3248, file: !816, line: 142, baseType: !3299, size: 64, offset: 768)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!814, !814, !3302}
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !855)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1063, file: !111, line: 1271, baseType: !3305, size: 448, offset: 8128)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1274, line: 63, size: 448, elements: !3306)
!3306 = !{!3307, !3312, !3313, !3314, !3315, !3316, !3317}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3305, file: !1274, line: 64, baseType: !3308, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!42, !3311, !1272}
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3305, file: !1274, line: 66, baseType: !3308, size: 64, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3305, file: !1274, line: 69, baseType: !778, size: 64, offset: 128)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3305, file: !1274, line: 70, baseType: !25, size: 32, offset: 192)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3305, file: !1274, line: 71, baseType: !7, size: 32, offset: 224)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3305, file: !1274, line: 74, baseType: !100, size: 128, offset: 256)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3305, file: !1274, line: 85, baseType: !3318, size: 64, offset: 384)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1063, file: !111, line: 1274, baseType: !339, size: 64, offset: 8576)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1063, file: !111, line: 1280, baseType: !339, size: 64, offset: 8640)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1063, file: !111, line: 1283, baseType: !25, size: 32, offset: 8704)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1063, file: !111, line: 1286, baseType: !2836, size: 32, offset: 8736)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1063, file: !111, line: 1289, baseType: !3324, size: 64, offset: 8768)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !681, line: 18, flags: DIFlagFwdDecl)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1063, file: !111, line: 1290, baseType: !402, size: 64, offset: 8832)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1063, file: !111, line: 1297, baseType: !631, size: 64, offset: 8896)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1063, file: !111, line: 1304, baseType: !3329, size: 64, offset: 8960)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3330, line: 49, size: 64, elements: !3331)
!3330 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3331 = !{!3332}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3329, file: !3330, line: 50, baseType: !3333, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3330, line: 41, size: 512, align: 512, elements: !3335)
!3335 = !{!3336, !3337, !3342}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3334, file: !3330, line: 43, baseType: !62, size: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3334, file: !3330, line: 45, baseType: !3338, size: 192, offset: 64)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3330, line: 29, size: 192, elements: !3339)
!3339 = !{!3340, !3341}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3338, file: !3330, line: 30, baseType: !100, size: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3338, file: !3330, line: 32, baseType: !778, size: 64, offset: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3334, file: !3330, line: 46, baseType: !778, size: 64, offset: 256)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1063, file: !111, line: 1305, baseType: !3329, size: 64, offset: 9024)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1063, file: !111, line: 1306, baseType: !326, size: 128, align: 64, offset: 9088)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1063, file: !111, line: 1307, baseType: !680, size: 256, offset: 9216)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1063, file: !111, line: 1309, baseType: !348, size: 256, offset: 9472)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1063, file: !111, line: 1314, baseType: !25, size: 32, offset: 9728)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1063, file: !111, line: 1317, baseType: !62, size: 32, align: 512, offset: 10240)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1063, file: !111, line: 1318, baseType: !100, size: 128, offset: 10304)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1063, file: !111, line: 1320, baseType: !62, size: 32, offset: 10432)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1063, file: !111, line: 1321, baseType: !100, size: 128, offset: 10496)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !855, file: !111, line: 656, baseType: !2638, size: 64, offset: 512)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !855, file: !111, line: 659, baseType: !23, size: 64, offset: 576)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !855, file: !111, line: 663, baseType: !42, size: 64, offset: 640)
!3355 = !DIDerivedType(tag: DW_TAG_member, scope: !855, file: !111, line: 671, baseType: !3356, size: 32, offset: 704)
!3356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !855, file: !111, line: 671, size: 32, elements: !3357)
!3357 = !{!3358, !3360}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3356, file: !111, line: 672, baseType: !3359, size: 32)
!3359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3356, file: !111, line: 673, baseType: !7, size: 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !855, file: !111, line: 675, baseType: !928, size: 32, offset: 736)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !855, file: !111, line: 676, baseType: !44, size: 64, offset: 768)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !855, file: !111, line: 677, baseType: !964, size: 128, offset: 832)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !855, file: !111, line: 678, baseType: !964, size: 128, offset: 960)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !855, file: !111, line: 679, baseType: !964, size: 128, offset: 1088)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !855, file: !111, line: 680, baseType: !62, size: 32, offset: 1216)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !855, file: !111, line: 681, baseType: !29, size: 16, offset: 1248)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !855, file: !111, line: 682, baseType: !86, size: 8, offset: 1264)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !855, file: !111, line: 683, baseType: !86, size: 8, offset: 1272)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !855, file: !111, line: 684, baseType: !1406, size: 64, offset: 1280)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !855, file: !111, line: 691, baseType: !42, size: 64, offset: 1344)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !855, file: !111, line: 692, baseType: !487, size: 320, offset: 1408)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !855, file: !111, line: 694, baseType: !42, size: 64, offset: 1728)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !855, file: !111, line: 695, baseType: !42, size: 64, offset: 1792)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !855, file: !111, line: 697, baseType: !406, size: 128, offset: 1856)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !855, file: !111, line: 698, baseType: !100, size: 128, offset: 1984)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !855, file: !111, line: 707, baseType: !100, size: 128, offset: 2112)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !855, file: !111, line: 708, baseType: !100, size: 128, offset: 2240)
!3379 = !DIDerivedType(tag: DW_TAG_member, scope: !855, file: !111, line: 709, baseType: !3380, size: 128, offset: 2368)
!3380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !855, file: !111, line: 709, size: 128, elements: !3381)
!3381 = !{!3382, !3383}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3380, file: !111, line: 710, baseType: !402, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3380, file: !111, line: 711, baseType: !326, size: 128, align: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !855, file: !111, line: 713, baseType: !341, size: 64, offset: 2496)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !855, file: !111, line: 714, baseType: !341, size: 64, offset: 2560)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !855, file: !111, line: 715, baseType: !52, size: 32, offset: 2624)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !855, file: !111, line: 716, baseType: !52, size: 32, offset: 2656)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !855, file: !111, line: 717, baseType: !52, size: 32, offset: 2688)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !855, file: !111, line: 719, baseType: !52, size: 32, offset: 2720)
!3390 = !DIDerivedType(tag: DW_TAG_member, scope: !855, file: !111, line: 721, baseType: !3391, size: 64, offset: 2752)
!3391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !855, file: !111, line: 721, size: 64, elements: !3392)
!3392 = !{!3393, !3574}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3391, file: !111, line: 722, baseType: !3394, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3396)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !111, line: 1914, size: 2112, elements: !3397)
!3397 = !{!3398, !3399, !3403, !3407, !3411, !3412, !3413, !3419, !3432, !3440, !3444, !3445, !3502, !3503, !3507, !3512, !3513, !3517, !3521, !3527, !3528, !3532, !3533, !3537, !3541, !3542, !3547, !3551, !3555, !3559, !3563, !3564, !3570}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3396, file: !111, line: 1915, baseType: !1095, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3396, file: !111, line: 1916, baseType: !3400, size: 64, offset: 64)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!44, !313, !44, !25}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3396, file: !111, line: 1917, baseType: !3404, size: 64, offset: 128)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!1006, !313, !214, !38, !43}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3396, file: !111, line: 1918, baseType: !3408, size: 64, offset: 192)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!1006, !313, !19, !38, !43}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3396, file: !111, line: 1919, baseType: !2770, size: 64, offset: 256)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3396, file: !111, line: 1920, baseType: !2770, size: 64, offset: 320)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3396, file: !111, line: 1921, baseType: !3414, size: 64, offset: 384)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!25, !2773, !3417, !7}
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !111, line: 53, flags: DIFlagFwdDecl)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3396, file: !111, line: 1923, baseType: !3420, size: 64, offset: 448)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!25, !313, !3423}
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !111, line: 1858, size: 128, elements: !3425)
!3425 = !{!3426, !3431}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3424, file: !111, line: 1859, baseType: !3427, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !111, line: 1855, baseType: !3428)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!548, !3423, !19, !25, !44, !226, !7}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3424, file: !111, line: 1860, baseType: !44, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3396, file: !111, line: 1924, baseType: !3433, size: 64, offset: 512)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!3436, !313, !3438}
!3436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3437, line: 59, baseType: !7)
!3437 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !111, line: 61, flags: DIFlagFwdDecl)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3396, file: !111, line: 1925, baseType: !3441, size: 64, offset: 576)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!778, !313, !7, !42}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3396, file: !111, line: 1926, baseType: !3441, size: 64, offset: 640)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3396, file: !111, line: 1927, baseType: !3446, size: 64, offset: 704)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!25, !313, !3449}
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1283, line: 625, size: 1344, elements: !3451)
!3451 = !{!3452, !3461, !3462, !3468, !3475, !3476, !3481, !3482, !3487, !3488, !3491, !3495, !3496, !3497, !3498, !3499, !3500}
!3452 = !DIDerivedType(tag: DW_TAG_member, scope: !3450, file: !1283, line: 628, baseType: !3453, size: 128)
!3453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3450, file: !1283, line: 628, size: 128, elements: !3454)
!3454 = !{!3455, !3460}
!3455 = !DIDerivedType(tag: DW_TAG_member, scope: !3453, file: !1283, line: 629, baseType: !3456, size: 128)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3453, file: !1283, line: 629, size: 128, elements: !3457)
!3457 = !{!3458, !3459}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3456, file: !1283, line: 631, baseType: !42, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3456, file: !1283, line: 632, baseType: !42, size: 64, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3453, file: !1283, line: 635, baseType: !326, size: 128, align: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3450, file: !1283, line: 639, baseType: !1796, size: 64, offset: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3450, file: !1283, line: 640, baseType: !3463, size: 64, offset: 192)
!3463 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1831, line: 297, baseType: !3464)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1831, line: 297, size: 64, elements: !3465)
!3465 = !{!3466}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3464, file: !1831, line: 297, baseType: !3467, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1836, line: 19, baseType: !42)
!3468 = !DIDerivedType(tag: DW_TAG_member, scope: !3450, file: !1283, line: 646, baseType: !3469, size: 64, offset: 256)
!3469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3450, file: !1283, line: 646, size: 64, elements: !3470)
!3470 = !{!3471, !3474}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3469, file: !1283, line: 647, baseType: !3472, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3473)
!3473 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1283, line: 542, baseType: !42)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3469, file: !1283, line: 648, baseType: !3473, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3450, file: !1283, line: 666, baseType: !25, size: 32, offset: 320)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3450, file: !1283, line: 667, baseType: !3477, size: 64, offset: 384)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1283, line: 579, size: 320, elements: !3479)
!3479 = !{!3480}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3478, file: !1283, line: 580, baseType: !487, size: 320)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3450, file: !1283, line: 670, baseType: !548, size: 8, offset: 448)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3450, file: !1283, line: 681, baseType: !3483, size: 256, offset: 512)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3450, file: !1283, line: 678, size: 256, elements: !3484)
!3484 = !{!3485, !3486}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3483, file: !1283, line: 679, baseType: !266, size: 192, align: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3483, file: !1283, line: 680, baseType: !42, size: 64, offset: 192)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3450, file: !1283, line: 689, baseType: !100, size: 128, offset: 768)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3450, file: !1283, line: 691, baseType: !3489, size: 64, offset: 896)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1283, line: 691, flags: DIFlagFwdDecl)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3450, file: !1283, line: 694, baseType: !3492, size: 64, offset: 960)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3494)
!3494 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1283, line: 694, flags: DIFlagFwdDecl)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3450, file: !1283, line: 697, baseType: !42, size: 64, offset: 1024)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3450, file: !1283, line: 699, baseType: !313, size: 64, offset: 1088)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3450, file: !1283, line: 700, baseType: !23, size: 64, offset: 1152)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3450, file: !1283, line: 711, baseType: !339, size: 64, offset: 1216)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3450, file: !1283, line: 717, baseType: !2573, size: 64, offset: 1280)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3450, file: !1283, line: 722, baseType: !3501, offset: 1344)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1283, line: 570, elements: !1103)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3396, file: !111, line: 1928, baseType: !42, size: 64, offset: 768)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3396, file: !111, line: 1929, baseType: !3504, size: 64, offset: 832)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!25, !854, !313}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3396, file: !111, line: 1930, baseType: !3508, size: 64, offset: 896)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!25, !313, !3511}
!3511 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !111, line: 1061, baseType: !23)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3396, file: !111, line: 1931, baseType: !3504, size: 64, offset: 960)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3396, file: !111, line: 1932, baseType: !3514, size: 64, offset: 1024)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!25, !313, !44, !44, !25}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3396, file: !111, line: 1933, baseType: !3518, size: 64, offset: 1088)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!25, !25, !313, !25}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3396, file: !111, line: 1934, baseType: !3522, size: 64, offset: 1152)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!25, !313, !25, !3525}
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !111, line: 1063, flags: DIFlagFwdDecl)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3396, file: !111, line: 1935, baseType: !1820, size: 64, offset: 1216)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3396, file: !111, line: 1936, baseType: !3529, size: 64, offset: 1280)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!25, !25}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3396, file: !111, line: 1937, baseType: !3522, size: 64, offset: 1344)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3396, file: !111, line: 1938, baseType: !3534, size: 64, offset: 1408)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!1006, !2610, !313, !43, !38, !7}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3396, file: !111, line: 1939, baseType: !3538, size: 64, offset: 1472)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!1006, !313, !43, !2610, !38, !7}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3396, file: !111, line: 1940, baseType: !2826, size: 64, offset: 1536)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3396, file: !111, line: 1941, baseType: !3543, size: 64, offset: 1600)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!25, !313, !25, !3546, !2747}
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3396, file: !111, line: 1942, baseType: !3548, size: 64, offset: 1664)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!778, !313, !25, !44, !44}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3396, file: !111, line: 1944, baseType: !3552, size: 64, offset: 1728)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{null, !1172, !313}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3396, file: !111, line: 1948, baseType: !3556, size: 64, offset: 1792)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!1006, !313, !44, !313, !44, !38, !7}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3396, file: !111, line: 1950, baseType: !3560, size: 64, offset: 1856)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!44, !313, !44, !313, !44, !44, !7}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3396, file: !111, line: 1953, baseType: !3514, size: 64, offset: 1920)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3396, file: !111, line: 1954, baseType: !3565, size: 64, offset: 1984)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!25, !3568, !7}
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !111, line: 1911, flags: DIFlagFwdDecl)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3396, file: !111, line: 1955, baseType: !3571, size: 64, offset: 2048)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!25, !3568, !3417, !7}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3391, file: !111, line: 723, baseType: !1122, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !855, file: !111, line: 725, baseType: !3576, size: 64, offset: 2816)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !111, line: 725, flags: DIFlagFwdDecl)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !855, file: !111, line: 726, baseType: !2639, size: 1536, align: 64, offset: 2880)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !855, file: !111, line: 727, baseType: !100, size: 128, offset: 4416)
!3580 = !DIDerivedType(tag: DW_TAG_member, scope: !855, file: !111, line: 728, baseType: !3581, size: 64, offset: 4544)
!3581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !855, file: !111, line: 728, size: 64, elements: !3582)
!3582 = !{!3583, !3584, !3587, !3588}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3581, file: !111, line: 729, baseType: !2610, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3581, file: !111, line: 730, baseType: !3585, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !111, line: 730, flags: DIFlagFwdDecl)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3581, file: !111, line: 731, baseType: !214, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3581, file: !111, line: 732, baseType: !7, size: 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !855, file: !111, line: 735, baseType: !513, size: 32, offset: 4608)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !855, file: !111, line: 738, baseType: !513, size: 32, offset: 4640)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !855, file: !111, line: 739, baseType: !3232, size: 64, offset: 4672)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !855, file: !111, line: 750, baseType: !23, size: 64, offset: 4736)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !815, file: !816, line: 91, baseType: !3594, size: 256, offset: 448)
!3594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 256, elements: !2301)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !815, file: !816, line: 94, baseType: !3596, size: 64, offset: 704)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3597, line: 25, size: 64, elements: !3598)
!3597 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3598 = !{!3599}
!3599 = !DIDerivedType(tag: DW_TAG_member, scope: !3596, file: !3597, line: 26, baseType: !3600, size: 64)
!3600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3596, file: !3597, line: 26, size: 64, elements: !3601)
!3601 = !{!3602, !3603}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3600, file: !3597, line: 28, baseType: !227, size: 64, align: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, scope: !3600, file: !3597, line: 30, baseType: !3604, size: 64)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3600, file: !3597, line: 30, size: 64, elements: !3605)
!3605 = !{!3606, !3607}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3604, file: !3597, line: 31, baseType: !62, size: 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3604, file: !3597, line: 32, baseType: !25, size: 32, offset: 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !815, file: !816, line: 95, baseType: !3246, size: 64, offset: 768)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !815, file: !816, line: 96, baseType: !1062, size: 64, offset: 832)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !815, file: !816, line: 97, baseType: !42, size: 64, offset: 896)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !815, file: !816, line: 98, baseType: !23, size: 64, offset: 960)
!3612 = !DIDerivedType(tag: DW_TAG_member, scope: !815, file: !816, line: 100, baseType: !3613, size: 128, offset: 1024)
!3613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !815, file: !816, line: 100, size: 128, elements: !3614)
!3614 = !{!3615, !3616}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3613, file: !816, line: 101, baseType: !100, size: 128)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3613, file: !816, line: 102, baseType: !3617, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !815, file: !816, line: 104, baseType: !100, size: 128, offset: 1152)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !815, file: !816, line: 105, baseType: !100, size: 128, offset: 1280)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !815, file: !816, line: 113, baseType: !3621, size: 128, offset: 1408)
!3621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !815, file: !816, line: 109, size: 128, elements: !3622)
!3622 = !{!3623, !3624, !3625}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3621, file: !816, line: 110, baseType: !406, size: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3621, file: !816, line: 111, baseType: !830, size: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3621, file: !816, line: 112, baseType: !326, size: 128, align: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !810, file: !811, line: 72, baseType: !1062, size: 64, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !810, file: !811, line: 73, baseType: !25, size: 32, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !810, file: !811, line: 74, baseType: !893, size: 64, offset: 192)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !805, file: !806, line: 10, baseType: !814, size: 64, offset: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !314, file: !111, line: 1015, baseType: !854, size: 64, offset: 1344)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !314, file: !111, line: 1016, baseType: !3394, size: 64, offset: 1408)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !314, file: !111, line: 1018, baseType: !226, size: 64, offset: 1472)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !314, file: !111, line: 1020, baseType: !23, size: 64, offset: 1536)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !314, file: !111, line: 1023, baseType: !23, size: 64, offset: 1600)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !314, file: !111, line: 1027, baseType: !3636, size: 64, offset: 1664)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !314, file: !111, line: 1029, baseType: !2638, size: 64, offset: 1728)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !314, file: !111, line: 1030, baseType: !2836, size: 32, offset: 1792)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !314, file: !111, line: 1031, baseType: !2836, size: 32, offset: 1824)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !309, file: !259, line: 255, baseType: !1172, size: 64, offset: 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !309, file: !259, line: 256, baseType: !23, size: 64, offset: 192)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !309, file: !259, line: 259, baseType: !348, size: 256, offset: 256)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !309, file: !259, line: 260, baseType: !348, size: 256, offset: 512)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !309, file: !259, line: 261, baseType: !25, size: 32, offset: 768)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !309, file: !259, line: 262, baseType: !100, size: 128, offset: 832)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !309, file: !259, line: 263, baseType: !214, size: 64, offset: 960)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !309, file: !259, line: 265, baseType: !38, size: 64, offset: 1024)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !309, file: !259, line: 266, baseType: !548, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !309, file: !259, line: 267, baseType: !548, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !309, file: !259, line: 268, baseType: !3492, size: 64, offset: 1152)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !302, file: !259, line: 277, baseType: !3652, size: 64, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{null, !308}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !302, file: !259, line: 290, baseType: !1202, size: 64, offset: 128)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !302, file: !259, line: 292, baseType: !1190, size: 64, offset: 192)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !302, file: !259, line: 293, baseType: !1198, size: 64, offset: 256)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !302, file: !259, line: 294, baseType: !1194, size: 64, offset: 320)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !302, file: !259, line: 296, baseType: !3660, size: 64, offset: 384)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!1006, !308, !214, !38, !44}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !302, file: !259, line: 306, baseType: !38, size: 64, offset: 448)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !302, file: !259, line: 313, baseType: !548, size: 8, offset: 512)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !302, file: !259, line: 314, baseType: !3660, size: 64, offset: 576)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !302, file: !259, line: 317, baseType: !3667, size: 64, offset: 640)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!3436, !308, !3438}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !302, file: !259, line: 320, baseType: !3671, size: 64, offset: 704)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!25, !308, !3449}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !297, file: !259, line: 176, baseType: !3675, size: 64, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !259, line: 35, flags: DIFlagFwdDecl)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !297, file: !259, line: 177, baseType: !44, size: 64, offset: 128)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !297, file: !259, line: 178, baseType: !257, size: 64, offset: 192)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !258, file: !259, line: 215, baseType: !23, size: 64, offset: 768)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !258, file: !259, line: 221, baseType: !226, size: 64, offset: 832)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !258, file: !259, line: 223, baseType: !29, size: 16, offset: 896)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !258, file: !259, line: 224, baseType: !27, size: 16, offset: 912)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !258, file: !259, line: 225, baseType: !3684, size: 64, offset: 960)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !259, line: 36, flags: DIFlagFwdDecl)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !258, file: !259, line: 227, baseType: !326, size: 128, align: 64, offset: 1024)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !242, file: !153, line: 442, baseType: !3688, size: 448, offset: 2048)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !153, line: 138, size: 448, elements: !3689)
!3689 = !{!3690, !3691, !3692}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3688, file: !153, line: 140, baseType: !257, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3688, file: !153, line: 141, baseType: !42, size: 64, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3688, file: !153, line: 142, baseType: !2972, size: 320, offset: 128)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !242, file: !153, line: 443, baseType: !3688, size: 448, offset: 2496)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !242, file: !153, line: 446, baseType: !3695, offset: 2944)
!3695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3688, elements: !3696)
!3696 = !{!3697}
!3697 = !DISubrange(count: 0)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !242, file: !153, line: 455, baseType: !96, size: 16, offset: 2944)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !242, file: !153, line: 456, baseType: !96, size: 16, offset: 2960)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !242, file: !153, line: 457, baseType: !96, size: 16, offset: 2976)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !242, file: !153, line: 458, baseType: !96, size: 16, offset: 2992)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !242, file: !153, line: 461, baseType: !2130, size: 896, offset: 3008)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !242, file: !153, line: 463, baseType: !3704, size: 64, offset: 3904)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !153, line: 537, size: 41664, elements: !3706)
!3706 = !{!3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3718}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3705, file: !153, line: 538, baseType: !289, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3705, file: !153, line: 541, baseType: !7, size: 32, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3705, file: !153, line: 544, baseType: !25, size: 32, offset: 96)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3705, file: !153, line: 547, baseType: !100, size: 128, offset: 128)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3705, file: !153, line: 548, baseType: !326, size: 128, align: 64, offset: 256)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3705, file: !153, line: 555, baseType: !242, size: 7872, offset: 384)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3705, file: !153, line: 558, baseType: !241, size: 64, offset: 8256)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3705, file: !153, line: 561, baseType: !52, size: 32, offset: 8320)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3705, file: !153, line: 564, baseType: !7, size: 32, offset: 8352)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3705, file: !153, line: 567, baseType: !3717, size: 32768, offset: 8384)
!3717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32768, elements: !3213)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3705, file: !153, line: 570, baseType: !3719, size: 512, offset: 41152)
!3719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 512, elements: !2386)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !242, file: !153, line: 469, baseType: !100, size: 128, offset: 3968)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !242, file: !153, line: 478, baseType: !2143, size: 1792, offset: 4096)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !242, file: !153, line: 487, baseType: !241, size: 64, offset: 5888)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !242, file: !153, line: 488, baseType: !241, size: 64, offset: 5952)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !242, file: !153, line: 491, baseType: !3725, size: 64, offset: 6016)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !153, line: 327, size: 896, elements: !3727)
!3727 = !{!3728, !3731, !3741, !3742, !3743, !3744, !3745}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3726, file: !153, line: 332, baseType: !3729)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3730, line: 64, elements: !1103)
!3730 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3726, file: !153, line: 333, baseType: !3732, size: 192)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !153, line: 299, size: 192, elements: !3733)
!3733 = !{!3734}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3732, file: !153, line: 300, baseType: !3735, size: 192)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3736, line: 17, size: 192, elements: !3737)
!3736 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3737 = !{!3738, !3739, !3740}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3735, file: !3736, line: 18, baseType: !226, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3735, file: !3736, line: 19, baseType: !226, size: 64, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3735, file: !3736, line: 20, baseType: !228, size: 64, offset: 128)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3726, file: !153, line: 339, baseType: !3732, size: 192, offset: 192)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3726, file: !153, line: 347, baseType: !3732, size: 192, offset: 384)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3726, file: !153, line: 353, baseType: !3732, size: 192, offset: 576)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3726, file: !153, line: 366, baseType: !241, size: 64, offset: 768)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3726, file: !153, line: 367, baseType: !241, size: 64, offset: 832)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !242, file: !153, line: 492, baseType: !100, size: 128, offset: 6080)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !242, file: !153, line: 495, baseType: !3732, size: 192, offset: 6208)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !242, file: !153, line: 496, baseType: !3732, size: 192, offset: 6400)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !242, file: !153, line: 497, baseType: !2033, size: 192, offset: 6592)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !242, file: !153, line: 503, baseType: !100, size: 128, offset: 6784)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !242, file: !153, line: 504, baseType: !348, size: 256, offset: 6912)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !242, file: !153, line: 507, baseType: !57, size: 192, offset: 7168)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !242, file: !153, line: 510, baseType: !680, size: 256, offset: 7360)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !242, file: !153, line: 513, baseType: !3755, size: 64, offset: 7616)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3757, line: 214, elements: !1103)
!3757 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !242, file: !153, line: 516, baseType: !3759, offset: 7680)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3760, line: 76, elements: !1103)
!3760 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !242, file: !153, line: 519, baseType: !52, size: 32, offset: 7680)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !242, file: !153, line: 522, baseType: !3763, size: 128, offset: 7712)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !153, line: 370, size: 128, elements: !3764)
!3764 = !{!3765, !3766, !3767, !3768}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3763, file: !153, line: 372, baseType: !548, size: 8)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3763, file: !153, line: 375, baseType: !25, size: 32, offset: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3763, file: !153, line: 380, baseType: !25, size: 32, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3763, file: !153, line: 386, baseType: !25, size: 32, offset: 96)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !242, file: !153, line: 529, baseType: !3770, offset: 7872)
!3770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, elements: !424)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !238, file: !153, line: 157, baseType: !3772, size: 64, offset: 64)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !153, line: 669, size: 1984, elements: !3774)
!3774 = !{!3775, !3779, !3783, !3787, !3788, !3789, !3790, !3794, !3798, !3799, !3805, !3809, !3810, !3812, !3816, !3820, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3841, !3842, !3879, !3880}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3773, file: !153, line: 670, baseType: !3776, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!2131, !2131}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3773, file: !153, line: 671, baseType: !3780, size: 64, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!25, !2131}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3773, file: !153, line: 672, baseType: !3784, size: 64, offset: 128)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{null, !2131}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3773, file: !153, line: 673, baseType: !3784, size: 64, offset: 192)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3773, file: !153, line: 674, baseType: !3784, size: 64, offset: 256)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3773, file: !153, line: 675, baseType: !3784, size: 64, offset: 320)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3773, file: !153, line: 676, baseType: !3791, size: 64, offset: 384)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{null, !2131, !25}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3773, file: !153, line: 677, baseType: !3795, size: 64, offset: 448)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!25, !1172, !2131}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3773, file: !153, line: 679, baseType: !3795, size: 64, offset: 512)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3773, file: !153, line: 682, baseType: !3800, size: 64, offset: 576)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!25, !3803}
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !153, line: 30, flags: DIFlagFwdDecl)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3773, file: !153, line: 683, baseType: !3806, size: 64, offset: 640)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{null, !3803}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3773, file: !153, line: 684, baseType: !3806, size: 64, offset: 704)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3773, file: !153, line: 685, baseType: !3811, size: 64, offset: 768)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3773, file: !153, line: 686, baseType: !3813, size: 64, offset: 832)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!25, !1511, !2126}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3773, file: !153, line: 688, baseType: !3817, size: 64, offset: 896)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{null, !1511, !2126}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3773, file: !153, line: 689, baseType: !3821, size: 64, offset: 960)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{null, !1511}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3773, file: !153, line: 690, baseType: !3821, size: 64, offset: 1024)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3773, file: !153, line: 691, baseType: !3821, size: 64, offset: 1088)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3773, file: !153, line: 692, baseType: !3784, size: 64, offset: 1152)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3773, file: !153, line: 694, baseType: !548, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3773, file: !153, line: 707, baseType: !548, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3773, file: !153, line: 719, baseType: !548, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3773, file: !153, line: 722, baseType: !25, size: 32, offset: 1248)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3773, file: !153, line: 723, baseType: !19, size: 64, offset: 1280)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3773, file: !153, line: 726, baseType: !19, size: 64, offset: 1344)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3773, file: !153, line: 729, baseType: !3704, size: 64, offset: 1408)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3773, file: !153, line: 732, baseType: !3835, size: 192, offset: 1472)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3836, line: 19, size: 192, elements: !3837)
!3836 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!3837 = !{!3838, !3839, !3840}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3835, file: !3836, line: 20, baseType: !1053, size: 128)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3835, file: !3836, line: 21, baseType: !7, size: 32, offset: 128)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3835, file: !3836, line: 22, baseType: !7, size: 32, offset: 160)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3773, file: !153, line: 738, baseType: !100, size: 128, offset: 1664)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3773, file: !153, line: 744, baseType: !3843, size: 64, offset: 1792)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !153, line: 580, size: 1728, elements: !3845)
!3845 = !{!3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3855, !3856, !3857, !3861, !3865, !3866, !3867, !3868, !3869, !3873, !3877, !3878}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3844, file: !153, line: 586, baseType: !3719, size: 512)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3844, file: !153, line: 587, baseType: !42, size: 64, offset: 512)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3844, file: !153, line: 593, baseType: !38, size: 64, offset: 576)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3844, file: !153, line: 596, baseType: !7, size: 32, offset: 640)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3844, file: !153, line: 604, baseType: !7, size: 32, offset: 672)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3844, file: !153, line: 610, baseType: !3772, size: 64, offset: 704)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3844, file: !153, line: 611, baseType: !100, size: 128, offset: 768)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3844, file: !153, line: 612, baseType: !3854, size: 64, offset: 896)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3844, file: !153, line: 614, baseType: !305, size: 64, offset: 960)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3844, file: !153, line: 615, baseType: !3652, size: 64, offset: 1024)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3844, file: !153, line: 621, baseType: !3858, size: 64, offset: 1088)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!226, !2131, !3843}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3844, file: !153, line: 625, baseType: !3862, size: 64, offset: 1152)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!345, !2131, !3843}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3844, file: !153, line: 628, baseType: !1202, size: 64, offset: 1216)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3844, file: !153, line: 631, baseType: !1190, size: 64, offset: 1280)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3844, file: !153, line: 632, baseType: !1198, size: 64, offset: 1344)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3844, file: !153, line: 633, baseType: !1194, size: 64, offset: 1408)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3844, file: !153, line: 640, baseType: !3870, size: 64, offset: 1472)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!25, !2131, !3843, !226}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3844, file: !153, line: 645, baseType: !3874, size: 64, offset: 1536)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!25, !2131, !3843, !345}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3844, file: !153, line: 654, baseType: !3660, size: 64, offset: 1600)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3844, file: !153, line: 657, baseType: !3667, size: 64, offset: 1664)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3773, file: !153, line: 745, baseType: !3843, size: 64, offset: 1856)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3773, file: !153, line: 754, baseType: !7, size: 32, offset: 1920)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !238, file: !153, line: 160, baseType: !3882, size: 128, offset: 128)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !161, line: 105, size: 128, elements: !3883)
!3883 = !{!3884, !3885}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3882, file: !161, line: 110, baseType: !42, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3882, file: !161, line: 118, baseType: !3886, size: 64, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !161, line: 95, size: 448, elements: !3888)
!3888 = !{!3889, !3890, !3896, !3897, !3898, !3899, !3900}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3887, file: !161, line: 96, baseType: !339, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3887, file: !161, line: 97, baseType: !3891, size: 64, offset: 64)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !161, line: 60, baseType: !3893)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{null, !3895}
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3887, file: !161, line: 98, baseType: !3891, size: 64, offset: 128)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3887, file: !161, line: 99, baseType: !548, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3887, file: !161, line: 100, baseType: !548, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3887, file: !161, line: 101, baseType: !326, size: 128, align: 64, offset: 256)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3887, file: !161, line: 102, baseType: !3895, size: 64, offset: 384)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !238, file: !153, line: 163, baseType: !100, size: 128, offset: 256)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !238, file: !153, line: 164, baseType: !100, size: 128, offset: 384)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !238, file: !153, line: 167, baseType: !100, size: 128, offset: 512)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !238, file: !153, line: 173, baseType: !25, size: 32, offset: 640)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !238, file: !153, line: 175, baseType: !7, size: 32, offset: 672)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !238, file: !153, line: 183, baseType: !226, size: 64, offset: 704)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !238, file: !153, line: 189, baseType: !52, size: 32, offset: 768)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !238, file: !153, line: 192, baseType: !680, size: 256, offset: 832)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !238, file: !153, line: 193, baseType: !3910, size: 448, offset: 1088)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !681, line: 120, size: 448, elements: !3911)
!3911 = !{!3912, !3913, !3914}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3910, file: !681, line: 121, baseType: !680, size: 256)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3910, file: !681, line: 122, baseType: !326, size: 128, align: 64, offset: 256)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3910, file: !681, line: 125, baseType: !3324, size: 64, offset: 384)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !238, file: !153, line: 199, baseType: !2131, size: 64, offset: 1536)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "rpools", scope: !235, file: !147, line: 26, baseType: !100, size: 128, offset: 1600)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3919)
!3919 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2126)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3922)
!3922 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !46)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !226)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !103)
!3929 = !{!0, !3930, !3932, !3934, !3936, !3938, !3943, !3948, !3950, !3952, !3954, !3957, !3960, !3962, !3965, !3970, !3972, !3975, !3978}
!3930 = !DIGlobalVariableExpression(var: !3931, expr: !DIExpression())
!3931 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rdmacg_try_charge265", scope: !2, file: !3, line: 306, type: !23, isLocal: true, isDefinition: true)
!3932 = !DIGlobalVariableExpression(var: !3933, expr: !DIExpression())
!3933 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rdmacg_register_device266", scope: !2, file: !3, line: 325, type: !23, isLocal: true, isDefinition: true)
!3934 = !DIGlobalVariableExpression(var: !3935, expr: !DIExpression())
!3935 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rdmacg_unregister_device267", scope: !2, file: !3, line: 356, type: !23, isLocal: true, isDefinition: true)
!3936 = !DIGlobalVariableExpression(var: !3937, expr: !DIExpression())
!3937 = distinct !DIGlobalVariable(name: "rdma_cgrp_subsys", scope: !2, file: !3, line: 606, type: !3773, isLocal: false, isDefinition: true)
!3938 = !DIGlobalVariableExpression(var: !3939, expr: !DIExpression())
!3939 = distinct !DIGlobalVariable(scope: null, file: !3, line: 176, type: !3940, isLocal: true, isDefinition: true)
!3940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 312, elements: !3941)
!3941 = !{!3942}
!3942 = !DISubrange(count: 39)
!3943 = !DIGlobalVariableExpression(var: !3944, expr: !DIExpression())
!3944 = distinct !DIGlobalVariable(scope: null, file: !3, line: 186, type: !3945, isLocal: true, isDefinition: true)
!3945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 168, elements: !3946)
!3946 = !{!3947}
!3947 = !DISubrange(count: 21)
!3948 = !DIGlobalVariableExpression(var: !3949, expr: !DIExpression())
!3949 = distinct !DIGlobalVariable(name: "rdmacg_mutex", scope: !2, file: !3, line: 24, type: !348, isLocal: true, isDefinition: true)
!3950 = !DIGlobalVariableExpression(var: !3951, expr: !DIExpression())
!3951 = distinct !DIGlobalVariable(scope: null, file: !190, line: 480, type: !3945, isLocal: true, isDefinition: true)
!3952 = !DIGlobalVariableExpression(var: !3953, expr: !DIExpression())
!3953 = distinct !DIGlobalVariable(name: "rdmacg_devices", scope: !2, file: !3, line: 25, type: !100, isLocal: true, isDefinition: true)
!3954 = !DIGlobalVariableExpression(var: !3955, expr: !DIExpression())
!3955 = distinct !DIGlobalVariable(name: "rdmacg_files", scope: !2, file: !3, line: 547, type: !3956, isLocal: true, isDefinition: true)
!3956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3844, size: 5184, elements: !385)
!3957 = !DIGlobalVariableExpression(var: !3958, expr: !DIExpression())
!3958 = distinct !DIGlobalVariable(scope: null, file: !3, line: 535, type: !3959, isLocal: true, isDefinition: true)
!3959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32, elements: !411)
!3960 = !DIGlobalVariableExpression(var: !3961, expr: !DIExpression())
!3961 = distinct !DIGlobalVariable(scope: null, file: !3, line: 519, type: !3959, isLocal: true, isDefinition: true)
!3962 = !DIGlobalVariableExpression(var: !3963, expr: !DIExpression())
!3963 = distinct !DIGlobalVariable(scope: null, file: !3, line: 521, type: !3964, isLocal: true, isDefinition: true)
!3964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 24, elements: !385)
!3965 = !DIGlobalVariableExpression(var: !3966, expr: !DIExpression())
!3966 = distinct !DIGlobalVariable(scope: null, file: !3, line: 38, type: !3967, isLocal: true, isDefinition: true)
!3967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 88, elements: !3968)
!3968 = !{!3969}
!3969 = !DISubrange(count: 11)
!3970 = !DIGlobalVariableExpression(var: !3971, expr: !DIExpression())
!3971 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !3967, isLocal: true, isDefinition: true)
!3972 = !DIGlobalVariableExpression(var: !3973, expr: !DIExpression())
!3973 = distinct !DIGlobalVariable(name: "rdmacg_resource_names", scope: !2, file: !3, line: 37, type: !3974, isLocal: true, isDefinition: true)
!3974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !221)
!3975 = !DIGlobalVariableExpression(var: !3976, expr: !DIExpression())
!3976 = distinct !DIGlobalVariable(scope: null, file: !3, line: 440, type: !3977, isLocal: true, isDefinition: true)
!3977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 16, elements: !221)
!3978 = !DIGlobalVariableExpression(var: !3979, expr: !DIExpression())
!3979 = distinct !DIGlobalVariable(scope: null, file: !3, line: 365, type: !3977, isLocal: true, isDefinition: true)
!3980 = !{i32 7, !"Dwarf Version", i32 5}
!3981 = !{i32 2, !"Debug Info Version", i32 3}
!3982 = !{i32 1, !"wchar_size", i32 2}
!3983 = !{i32 8, !"cf-protection-branch", i32 1}
!3984 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3985 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3986 = !{i32 1, !"Code Model", i32 2}
!3987 = !{i32 1, !"override-stack-alignment", i32 8}
!3988 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3989 = distinct !DISubprogram(name: "rdmacg_uncharge", scope: !3, file: !3, line: 229, type: !3990, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3992)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{null, !234, !208, !146}
!3992 = !{!3993, !3994, !3995}
!3993 = !DILocalVariable(name: "cg", arg: 1, scope: !3989, file: !3, line: 229, type: !234)
!3994 = !DILocalVariable(name: "device", arg: 2, scope: !3989, file: !3, line: 230, type: !208)
!3995 = !DILocalVariable(name: "index", arg: 3, scope: !3989, file: !3, line: 231, type: !146)
!3996 = !DILocation(line: 229, column: 42, scope: !3989)
!3997 = !DILocation(line: 230, column: 30, scope: !3989)
!3998 = !DILocation(line: 231, column: 34, scope: !3989)
!3999 = !DILocation(line: 233, column: 6, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 233, column: 6)
!4001 = !DILocation(line: 233, column: 12, scope: !4000)
!4002 = !DILocation(line: 233, column: 6, scope: !3989)
!4003 = !DILocation(line: 234, column: 3, scope: !4000)
!4004 = !DILocation(line: 236, column: 28, scope: !3989)
!4005 = !DILocation(line: 236, column: 32, scope: !3989)
!4006 = !DILocation(line: 236, column: 46, scope: !3989)
!4007 = !DILocation(line: 236, column: 2, scope: !3989)
!4008 = !DILocation(line: 237, column: 1, scope: !3989)
!4009 = distinct !DISubprogram(name: "rdmacg_uncharge_hierarchy", scope: !3, file: !3, line: 206, type: !4010, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4012)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{null, !234, !208, !234, !146}
!4012 = !{!4013, !4014, !4015, !4016, !4017}
!4013 = !DILocalVariable(name: "cg", arg: 1, scope: !4009, file: !3, line: 206, type: !234)
!4014 = !DILocalVariable(name: "device", arg: 2, scope: !4009, file: !3, line: 207, type: !208)
!4015 = !DILocalVariable(name: "stop_cg", arg: 3, scope: !4009, file: !3, line: 208, type: !234)
!4016 = !DILocalVariable(name: "index", arg: 4, scope: !4009, file: !3, line: 209, type: !146)
!4017 = !DILocalVariable(name: "p", scope: !4009, file: !3, line: 211, type: !234)
!4018 = !DILocation(line: 206, column: 59, scope: !4009)
!4019 = !DILocation(line: 207, column: 32, scope: !4009)
!4020 = !DILocation(line: 208, column: 30, scope: !4009)
!4021 = !DILocation(line: 209, column: 36, scope: !4009)
!4022 = !DILocation(line: 211, column: 2, scope: !4009)
!4023 = !DILocation(line: 211, column: 22, scope: !4009)
!4024 = !DILocation(line: 213, column: 2, scope: !4009)
!4025 = !DILocation(line: 215, column: 11, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4009, file: !3, line: 215, column: 2)
!4027 = !DILocation(line: 215, column: 9, scope: !4026)
!4028 = !DILocation(line: 215, column: 7, scope: !4026)
!4029 = !DILocation(line: 215, column: 15, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4026, file: !3, line: 215, column: 2)
!4031 = !DILocation(line: 215, column: 20, scope: !4030)
!4032 = !DILocation(line: 215, column: 17, scope: !4030)
!4033 = !DILocation(line: 215, column: 2, scope: !4026)
!4034 = !DILocation(line: 216, column: 22, scope: !4030)
!4035 = !DILocation(line: 216, column: 25, scope: !4030)
!4036 = !DILocation(line: 216, column: 33, scope: !4030)
!4037 = !DILocation(line: 216, column: 3, scope: !4030)
!4038 = !DILocation(line: 215, column: 47, scope: !4030)
!4039 = !DILocation(line: 215, column: 33, scope: !4030)
!4040 = !DILocation(line: 215, column: 31, scope: !4030)
!4041 = !DILocation(line: 215, column: 2, scope: !4030)
!4042 = distinct !{!4042, !4033, !4043, !4044, !4045}
!4043 = !DILocation(line: 216, column: 38, scope: !4026)
!4044 = !{!"llvm.loop.mustprogress"}
!4045 = !{!"llvm.loop.unroll.disable"}
!4046 = !DILocation(line: 218, column: 2, scope: !4009)
!4047 = !DILocation(line: 220, column: 11, scope: !4009)
!4048 = !DILocation(line: 220, column: 15, scope: !4009)
!4049 = !DILocation(line: 220, column: 2, scope: !4009)
!4050 = !DILocation(line: 221, column: 1, scope: !4009)
!4051 = distinct !DISubprogram(name: "rdmacg_try_charge", scope: !3, file: !3, line: 261, type: !4052, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4055)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!25, !4054, !208, !146}
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!4055 = !{!4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064}
!4056 = !DILocalVariable(name: "rdmacg", arg: 1, scope: !4051, file: !3, line: 261, type: !4054)
!4057 = !DILocalVariable(name: "device", arg: 2, scope: !4051, file: !3, line: 262, type: !208)
!4058 = !DILocalVariable(name: "index", arg: 3, scope: !4051, file: !3, line: 263, type: !146)
!4059 = !DILocalVariable(name: "cg", scope: !4051, file: !3, line: 265, type: !234)
!4060 = !DILocalVariable(name: "p", scope: !4051, file: !3, line: 265, type: !234)
!4061 = !DILocalVariable(name: "rpool", scope: !4051, file: !3, line: 266, type: !204)
!4062 = !DILocalVariable(name: "new", scope: !4051, file: !3, line: 267, type: !345)
!4063 = !DILocalVariable(name: "ret", scope: !4051, file: !3, line: 268, type: !25)
!4064 = !DILabel(scope: !4051, name: "err", file: !3, line: 301)
!4065 = !DILocation(line: 261, column: 44, scope: !4051)
!4066 = !DILocation(line: 262, column: 31, scope: !4051)
!4067 = !DILocation(line: 263, column: 35, scope: !4051)
!4068 = !DILocation(line: 265, column: 2, scope: !4051)
!4069 = !DILocation(line: 265, column: 22, scope: !4051)
!4070 = !DILocation(line: 265, column: 27, scope: !4051)
!4071 = !DILocation(line: 266, column: 2, scope: !4051)
!4072 = !DILocation(line: 266, column: 31, scope: !4051)
!4073 = !DILocation(line: 267, column: 2, scope: !4051)
!4074 = !DILocation(line: 267, column: 6, scope: !4051)
!4075 = !DILocation(line: 268, column: 2, scope: !4051)
!4076 = !DILocation(line: 268, column: 6, scope: !4051)
!4077 = !DILocation(line: 270, column: 6, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4051, file: !3, line: 270, column: 6)
!4079 = !DILocation(line: 270, column: 12, scope: !4078)
!4080 = !DILocation(line: 270, column: 6, scope: !4051)
!4081 = !DILocation(line: 271, column: 3, scope: !4078)
!4082 = !DILocation(line: 277, column: 7, scope: !4051)
!4083 = !DILocation(line: 277, column: 5, scope: !4051)
!4084 = !DILocation(line: 279, column: 2, scope: !4051)
!4085 = !DILocation(line: 280, column: 11, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4051, file: !3, line: 280, column: 2)
!4087 = !DILocation(line: 280, column: 9, scope: !4086)
!4088 = !DILocation(line: 280, column: 7, scope: !4086)
!4089 = !DILocation(line: 280, column: 15, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4086, file: !3, line: 280, column: 2)
!4091 = !DILocation(line: 280, column: 2, scope: !4086)
!4092 = !DILocation(line: 281, column: 31, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 280, column: 40)
!4094 = !DILocation(line: 281, column: 34, scope: !4093)
!4095 = !DILocation(line: 281, column: 11, scope: !4093)
!4096 = !DILocation(line: 281, column: 9, scope: !4093)
!4097 = !DILocation(line: 282, column: 14, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4093, file: !3, line: 282, column: 7)
!4099 = !DILocation(line: 282, column: 7, scope: !4098)
!4100 = !DILocation(line: 282, column: 7, scope: !4093)
!4101 = !DILocation(line: 283, column: 18, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4098, file: !3, line: 282, column: 22)
!4103 = !DILocation(line: 283, column: 10, scope: !4102)
!4104 = !DILocation(line: 283, column: 8, scope: !4102)
!4105 = !DILocation(line: 284, column: 4, scope: !4102)
!4106 = !DILocation(line: 286, column: 10, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4098, file: !3, line: 285, column: 10)
!4108 = !DILocation(line: 286, column: 17, scope: !4107)
!4109 = !DILocation(line: 286, column: 27, scope: !4107)
!4110 = !DILocation(line: 286, column: 34, scope: !4107)
!4111 = !DILocation(line: 286, column: 40, scope: !4107)
!4112 = !DILocation(line: 286, column: 8, scope: !4107)
!4113 = !DILocation(line: 287, column: 8, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 287, column: 8)
!4115 = !DILocation(line: 287, column: 14, scope: !4114)
!4116 = !DILocation(line: 287, column: 21, scope: !4114)
!4117 = !DILocation(line: 287, column: 31, scope: !4114)
!4118 = !DILocation(line: 287, column: 38, scope: !4114)
!4119 = !DILocation(line: 287, column: 12, scope: !4114)
!4120 = !DILocation(line: 287, column: 8, scope: !4107)
!4121 = !DILocation(line: 288, column: 9, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4114, file: !3, line: 287, column: 43)
!4123 = !DILocation(line: 289, column: 5, scope: !4122)
!4124 = !DILocation(line: 291, column: 37, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4114, file: !3, line: 290, column: 11)
!4126 = !DILocation(line: 291, column: 5, scope: !4125)
!4127 = !DILocation(line: 291, column: 12, scope: !4125)
!4128 = !DILocation(line: 291, column: 22, scope: !4125)
!4129 = !DILocation(line: 291, column: 29, scope: !4125)
!4130 = !DILocation(line: 291, column: 35, scope: !4125)
!4131 = !DILocation(line: 292, column: 5, scope: !4125)
!4132 = !DILocation(line: 292, column: 12, scope: !4125)
!4133 = !DILocation(line: 292, column: 21, scope: !4125)
!4134 = !DILocation(line: 295, column: 2, scope: !4093)
!4135 = !DILocation(line: 280, column: 36, scope: !4090)
!4136 = !DILocation(line: 280, column: 22, scope: !4090)
!4137 = !DILocation(line: 280, column: 20, scope: !4090)
!4138 = !DILocation(line: 280, column: 2, scope: !4090)
!4139 = distinct !{!4139, !4091, !4140, !4044, !4045}
!4140 = !DILocation(line: 295, column: 2, scope: !4086)
!4141 = !DILocation(line: 296, column: 2, scope: !4051)
!4142 = !DILocation(line: 298, column: 12, scope: !4051)
!4143 = !DILocation(line: 298, column: 3, scope: !4051)
!4144 = !DILocation(line: 298, column: 10, scope: !4051)
!4145 = !DILocation(line: 299, column: 2, scope: !4051)
!4146 = !DILocation(line: 301, column: 1, scope: !4051)
!4147 = !DILocation(line: 302, column: 2, scope: !4051)
!4148 = !DILocation(line: 303, column: 28, scope: !4051)
!4149 = !DILocation(line: 303, column: 32, scope: !4051)
!4150 = !DILocation(line: 303, column: 40, scope: !4051)
!4151 = !DILocation(line: 303, column: 43, scope: !4051)
!4152 = !DILocation(line: 303, column: 2, scope: !4051)
!4153 = !DILocation(line: 304, column: 9, scope: !4051)
!4154 = !DILocation(line: 304, column: 2, scope: !4051)
!4155 = !DILocation(line: 305, column: 1, scope: !4051)
!4156 = distinct !DISubprogram(name: "get_current_rdmacg", scope: !3, file: !3, line: 77, type: !4157, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!234}
!4159 = !DILocation(line: 79, column: 33, scope: !4156)
!4160 = !DILocation(line: 79, column: 20, scope: !4156)
!4161 = !DILocation(line: 79, column: 9, scope: !4156)
!4162 = !DILocation(line: 79, column: 2, scope: !4156)
!4163 = !DISubprogram(name: "mutex_lock", scope: !349, file: !349, line: 227, type: !4164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{null, !4166}
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!4167 = distinct !DISubprogram(name: "get_cg_rpool_locked", scope: !3, file: !3, line: 129, type: !4168, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4170)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!204, !234, !208}
!4170 = !{!4171, !4172, !4173}
!4171 = !DILocalVariable(name: "cg", arg: 1, scope: !4167, file: !3, line: 129, type: !234)
!4172 = !DILocalVariable(name: "device", arg: 2, scope: !4167, file: !3, line: 129, type: !208)
!4173 = !DILocalVariable(name: "rpool", scope: !4167, file: !3, line: 131, type: !204)
!4174 = !DILocation(line: 129, column: 41, scope: !4167)
!4175 = !DILocation(line: 129, column: 67, scope: !4167)
!4176 = !DILocation(line: 131, column: 2, scope: !4167)
!4177 = !DILocation(line: 131, column: 31, scope: !4167)
!4178 = !DILocation(line: 133, column: 31, scope: !4167)
!4179 = !DILocation(line: 133, column: 35, scope: !4167)
!4180 = !DILocation(line: 133, column: 10, scope: !4167)
!4181 = !DILocation(line: 133, column: 8, scope: !4167)
!4182 = !DILocation(line: 134, column: 6, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4167, file: !3, line: 134, column: 6)
!4184 = !DILocation(line: 134, column: 6, scope: !4167)
!4185 = !DILocation(line: 135, column: 10, scope: !4183)
!4186 = !DILocation(line: 135, column: 3, scope: !4183)
!4187 = !DILocation(line: 137, column: 10, scope: !4167)
!4188 = !DILocation(line: 137, column: 8, scope: !4167)
!4189 = !DILocation(line: 138, column: 7, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4167, file: !3, line: 138, column: 6)
!4191 = !DILocation(line: 138, column: 6, scope: !4167)
!4192 = !DILocation(line: 139, column: 10, scope: !4190)
!4193 = !DILocation(line: 139, column: 3, scope: !4190)
!4194 = !DILocation(line: 141, column: 18, scope: !4167)
!4195 = !DILocation(line: 141, column: 2, scope: !4167)
!4196 = !DILocation(line: 141, column: 9, scope: !4167)
!4197 = !DILocation(line: 141, column: 16, scope: !4167)
!4198 = !DILocation(line: 142, column: 29, scope: !4167)
!4199 = !DILocation(line: 142, column: 2, scope: !4167)
!4200 = !DILocation(line: 144, column: 18, scope: !4167)
!4201 = !DILocation(line: 144, column: 25, scope: !4167)
!4202 = !DILocation(line: 144, column: 2, scope: !4167)
!4203 = !DILocation(line: 145, column: 18, scope: !4167)
!4204 = !DILocation(line: 145, column: 25, scope: !4167)
!4205 = !DILocation(line: 145, column: 2, scope: !4167)
!4206 = !DILocation(line: 146, column: 17, scope: !4167)
!4207 = !DILocation(line: 146, column: 24, scope: !4167)
!4208 = !DILocation(line: 146, column: 34, scope: !4167)
!4209 = !DILocation(line: 146, column: 38, scope: !4167)
!4210 = !DILocation(line: 146, column: 2, scope: !4167)
!4211 = !DILocation(line: 147, column: 17, scope: !4167)
!4212 = !DILocation(line: 147, column: 24, scope: !4167)
!4213 = !DILocation(line: 147, column: 35, scope: !4167)
!4214 = !DILocation(line: 147, column: 43, scope: !4167)
!4215 = !DILocation(line: 147, column: 2, scope: !4167)
!4216 = !DILocation(line: 148, column: 9, scope: !4167)
!4217 = !DILocation(line: 148, column: 2, scope: !4167)
!4218 = !DILocation(line: 149, column: 1, scope: !4167)
!4219 = distinct !DISubprogram(name: "IS_ERR", scope: !4220, file: !4220, line: 59, type: !4221, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4223)
!4220 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!548, !274}
!4223 = !{!4224}
!4224 = !DILocalVariable(name: "ptr", arg: 1, scope: !4219, file: !4220, line: 59, type: !274)
!4225 = !DILocation(line: 59, column: 60, scope: !4219)
!4226 = !DILocation(line: 61, column: 9, scope: !4219)
!4227 = !DILocation(line: 61, column: 2, scope: !4219)
!4228 = distinct !DISubprogram(name: "PTR_ERR", scope: !4220, file: !4220, line: 49, type: !4229, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4231)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!778, !274}
!4231 = !{!4232}
!4232 = !DILocalVariable(name: "ptr", arg: 1, scope: !4228, file: !4220, line: 49, type: !274)
!4233 = !DILocation(line: 49, column: 61, scope: !4228)
!4234 = !DILocation(line: 51, column: 16, scope: !4228)
!4235 = !DILocation(line: 51, column: 9, scope: !4228)
!4236 = !DILocation(line: 51, column: 2, scope: !4228)
!4237 = distinct !DISubprogram(name: "parent_rdmacg", scope: !3, file: !3, line: 72, type: !4238, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4240)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!234, !234}
!4240 = !{!4241}
!4241 = !DILocalVariable(name: "cg", arg: 1, scope: !4237, file: !3, line: 72, type: !234)
!4242 = !DILocation(line: 72, column: 62, scope: !4237)
!4243 = !DILocation(line: 74, column: 20, scope: !4237)
!4244 = !DILocation(line: 74, column: 24, scope: !4237)
!4245 = !DILocation(line: 74, column: 28, scope: !4237)
!4246 = !DILocation(line: 74, column: 9, scope: !4237)
!4247 = !DILocation(line: 74, column: 2, scope: !4237)
!4248 = !DISubprogram(name: "mutex_unlock", scope: !349, file: !349, line: 246, type: !4164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4249 = distinct !DISubprogram(name: "rdmacg_register_device", scope: !3, file: !3, line: 316, type: !4250, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4252)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{null, !208}
!4252 = !{!4253}
!4253 = !DILocalVariable(name: "device", arg: 1, scope: !4249, file: !3, line: 316, type: !208)
!4254 = !DILocation(line: 316, column: 51, scope: !4249)
!4255 = !DILocation(line: 318, column: 18, scope: !4249)
!4256 = !DILocation(line: 318, column: 26, scope: !4249)
!4257 = !DILocation(line: 318, column: 2, scope: !4249)
!4258 = !DILocation(line: 319, column: 18, scope: !4249)
!4259 = !DILocation(line: 319, column: 26, scope: !4249)
!4260 = !DILocation(line: 319, column: 2, scope: !4249)
!4261 = !DILocation(line: 321, column: 2, scope: !4249)
!4262 = !DILocation(line: 322, column: 17, scope: !4249)
!4263 = !DILocation(line: 322, column: 25, scope: !4249)
!4264 = !DILocation(line: 322, column: 2, scope: !4249)
!4265 = !DILocation(line: 323, column: 2, scope: !4249)
!4266 = !DILocation(line: 324, column: 1, scope: !4249)
!4267 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4268, file: !4268, line: 35, type: !4269, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4271)
!4268 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4269 = !DISubroutineType(types: !4270)
!4270 = !{null, !103}
!4271 = !{!4272}
!4272 = !DILocalVariable(name: "list", arg: 1, scope: !4267, file: !4268, line: 35, type: !103)
!4273 = !DILocation(line: 35, column: 53, scope: !4267)
!4274 = !DILocation(line: 37, column: 2, scope: !4267)
!4275 = !DILocation(line: 37, column: 2, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4267, file: !4268, line: 37, column: 2)
!4277 = !DILocation(line: 37, column: 2, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4276, file: !4268, line: 37, column: 2)
!4279 = !DILocation(line: 37, column: 2, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4276, file: !4268, line: 37, column: 2)
!4281 = !DILocation(line: 38, column: 2, scope: !4267)
!4282 = !DILocation(line: 38, column: 2, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4267, file: !4268, line: 38, column: 2)
!4284 = !DILocation(line: 38, column: 2, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4283, file: !4268, line: 38, column: 2)
!4286 = !DILocation(line: 38, column: 2, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4283, file: !4268, line: 38, column: 2)
!4288 = !DILocation(line: 39, column: 1, scope: !4267)
!4289 = distinct !DISubprogram(name: "list_add_tail", scope: !4268, file: !4268, line: 181, type: !4290, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4292)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{null, !103, !103}
!4292 = !{!4293, !4294}
!4293 = !DILocalVariable(name: "new", arg: 1, scope: !4289, file: !4268, line: 181, type: !103)
!4294 = !DILocalVariable(name: "head", arg: 2, scope: !4289, file: !4268, line: 181, type: !103)
!4295 = !DILocation(line: 181, column: 52, scope: !4289)
!4296 = !DILocation(line: 181, column: 75, scope: !4289)
!4297 = !DILocation(line: 183, column: 13, scope: !4289)
!4298 = !DILocation(line: 183, column: 18, scope: !4289)
!4299 = !DILocation(line: 183, column: 24, scope: !4289)
!4300 = !DILocation(line: 183, column: 30, scope: !4289)
!4301 = !DILocation(line: 183, column: 2, scope: !4289)
!4302 = !DILocation(line: 184, column: 1, scope: !4289)
!4303 = distinct !DISubprogram(name: "rdmacg_unregister_device", scope: !3, file: !3, line: 336, type: !4250, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4304)
!4304 = !{!4305, !4306, !4307, !4308, !4311, !4313}
!4305 = !DILocalVariable(name: "device", arg: 1, scope: !4303, file: !3, line: 336, type: !208)
!4306 = !DILocalVariable(name: "rpool", scope: !4303, file: !3, line: 338, type: !204)
!4307 = !DILocalVariable(name: "tmp", scope: !4303, file: !3, line: 338, type: !204)
!4308 = !DILocalVariable(name: "__mptr", scope: !4309, file: !3, line: 351, type: !23)
!4309 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 351, column: 2)
!4310 = distinct !DILexicalBlock(scope: !4303, file: !3, line: 351, column: 2)
!4311 = !DILocalVariable(name: "__mptr", scope: !4312, file: !3, line: 351, type: !23)
!4312 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 351, column: 2)
!4313 = !DILocalVariable(name: "__mptr", scope: !4314, file: !3, line: 351, type: !23)
!4314 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 351, column: 2)
!4315 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 351, column: 2)
!4316 = !DILocation(line: 336, column: 53, scope: !4303)
!4317 = !DILocation(line: 338, column: 2, scope: !4303)
!4318 = !DILocation(line: 338, column: 31, scope: !4303)
!4319 = !DILocation(line: 338, column: 39, scope: !4303)
!4320 = !DILocation(line: 344, column: 2, scope: !4303)
!4321 = !DILocation(line: 345, column: 17, scope: !4303)
!4322 = !DILocation(line: 345, column: 25, scope: !4303)
!4323 = !DILocation(line: 345, column: 2, scope: !4303)
!4324 = !DILocation(line: 351, column: 2, scope: !4309)
!4325 = !DILocation(line: 351, column: 2, scope: !4310)
!4326 = !DILocation(line: 351, column: 2, scope: !4312)
!4327 = !DILocation(line: 351, column: 2, scope: !4315)
!4328 = !DILocation(line: 352, column: 24, scope: !4315)
!4329 = !DILocation(line: 352, column: 3, scope: !4315)
!4330 = !DILocation(line: 351, column: 2, scope: !4314)
!4331 = distinct !{!4331, !4325, !4332, !4044, !4045}
!4332 = !DILocation(line: 352, column: 29, scope: !4310)
!4333 = !DILocation(line: 354, column: 2, scope: !4303)
!4334 = !DILocation(line: 355, column: 1, scope: !4303)
!4335 = distinct !DISubprogram(name: "list_del_init", scope: !4268, file: !4268, line: 285, type: !4269, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4336)
!4336 = !{!4337}
!4337 = !DILocalVariable(name: "entry", arg: 1, scope: !4335, file: !4268, line: 285, type: !103)
!4338 = !DILocation(line: 285, column: 52, scope: !4335)
!4339 = !DILocation(line: 287, column: 19, scope: !4335)
!4340 = !DILocation(line: 287, column: 2, scope: !4335)
!4341 = !DILocation(line: 288, column: 17, scope: !4335)
!4342 = !DILocation(line: 288, column: 2, scope: !4335)
!4343 = !DILocation(line: 289, column: 1, scope: !4335)
!4344 = distinct !DISubprogram(name: "free_cg_rpool_locked", scope: !3, file: !3, line: 103, type: !4345, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4347)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{null, !204}
!4347 = !{!4348}
!4348 = !DILocalVariable(name: "rpool", arg: 1, scope: !4344, file: !3, line: 103, type: !204)
!4349 = !DILocation(line: 103, column: 63, scope: !4344)
!4350 = !DILocation(line: 105, column: 2, scope: !4344)
!4351 = !DILocation(line: 105, column: 2, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4344, file: !3, line: 105, column: 2)
!4353 = !DILocation(line: 107, column: 12, scope: !4344)
!4354 = !DILocation(line: 107, column: 19, scope: !4344)
!4355 = !DILocation(line: 107, column: 2, scope: !4344)
!4356 = !DILocation(line: 108, column: 12, scope: !4344)
!4357 = !DILocation(line: 108, column: 19, scope: !4344)
!4358 = !DILocation(line: 108, column: 2, scope: !4344)
!4359 = !DILocation(line: 109, column: 8, scope: !4344)
!4360 = !DILocation(line: 109, column: 2, scope: !4344)
!4361 = !DILocation(line: 110, column: 1, scope: !4344)
!4362 = distinct !DISubprogram(name: "rdmacg_css_alloc", scope: !3, file: !3, line: 565, type: !3777, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4363)
!4363 = !{!4364, !4365}
!4364 = !DILocalVariable(name: "parent", arg: 1, scope: !4362, file: !3, line: 565, type: !2131)
!4365 = !DILocalVariable(name: "cg", scope: !4362, file: !3, line: 567, type: !234)
!4366 = !DILocation(line: 565, column: 46, scope: !4362)
!4367 = !DILocation(line: 567, column: 2, scope: !4362)
!4368 = !DILocation(line: 567, column: 22, scope: !4362)
!4369 = !DILocation(line: 569, column: 7, scope: !4362)
!4370 = !DILocation(line: 569, column: 5, scope: !4362)
!4371 = !DILocation(line: 570, column: 7, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 570, column: 6)
!4373 = !DILocation(line: 570, column: 6, scope: !4362)
!4374 = !DILocation(line: 571, column: 10, scope: !4372)
!4375 = !DILocation(line: 571, column: 3, scope: !4372)
!4376 = !DILocation(line: 573, column: 18, scope: !4362)
!4377 = !DILocation(line: 573, column: 22, scope: !4362)
!4378 = !DILocation(line: 573, column: 2, scope: !4362)
!4379 = !DILocation(line: 574, column: 10, scope: !4362)
!4380 = !DILocation(line: 574, column: 14, scope: !4362)
!4381 = !DILocation(line: 574, column: 2, scope: !4362)
!4382 = !DILocation(line: 575, column: 1, scope: !4362)
!4383 = distinct !DISubprogram(name: "rdmacg_css_offline", scope: !3, file: !3, line: 593, type: !3785, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4384)
!4384 = !{!4385, !4386, !4387, !4388, !4391}
!4385 = !DILocalVariable(name: "css", arg: 1, scope: !4383, file: !3, line: 593, type: !2131)
!4386 = !DILocalVariable(name: "cg", scope: !4383, file: !3, line: 595, type: !234)
!4387 = !DILocalVariable(name: "rpool", scope: !4383, file: !3, line: 596, type: !204)
!4388 = !DILocalVariable(name: "__mptr", scope: !4389, file: !3, line: 600, type: !23)
!4389 = distinct !DILexicalBlock(scope: !4390, file: !3, line: 600, column: 2)
!4390 = distinct !DILexicalBlock(scope: !4383, file: !3, line: 600, column: 2)
!4391 = !DILocalVariable(name: "__mptr", scope: !4392, file: !3, line: 600, type: !23)
!4392 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 600, column: 2)
!4393 = distinct !DILexicalBlock(scope: !4390, file: !3, line: 600, column: 2)
!4394 = !DILocation(line: 593, column: 60, scope: !4383)
!4395 = !DILocation(line: 595, column: 2, scope: !4383)
!4396 = !DILocation(line: 595, column: 22, scope: !4383)
!4397 = !DILocation(line: 595, column: 38, scope: !4383)
!4398 = !DILocation(line: 595, column: 27, scope: !4383)
!4399 = !DILocation(line: 596, column: 2, scope: !4383)
!4400 = !DILocation(line: 596, column: 31, scope: !4383)
!4401 = !DILocation(line: 598, column: 2, scope: !4383)
!4402 = !DILocation(line: 600, column: 2, scope: !4389)
!4403 = !DILocation(line: 600, column: 2, scope: !4390)
!4404 = !DILocation(line: 600, column: 2, scope: !4393)
!4405 = !DILocation(line: 601, column: 30, scope: !4393)
!4406 = !DILocation(line: 601, column: 3, scope: !4393)
!4407 = !DILocation(line: 600, column: 2, scope: !4392)
!4408 = distinct !{!4408, !4403, !4409, !4044, !4045}
!4409 = !DILocation(line: 601, column: 35, scope: !4390)
!4410 = !DILocation(line: 603, column: 2, scope: !4383)
!4411 = !DILocation(line: 604, column: 1, scope: !4383)
!4412 = distinct !DISubprogram(name: "rdmacg_css_free", scope: !3, file: !3, line: 577, type: !3785, scopeLine: 578, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4413)
!4413 = !{!4414, !4415}
!4414 = !DILocalVariable(name: "css", arg: 1, scope: !4412, file: !3, line: 577, type: !2131)
!4415 = !DILocalVariable(name: "cg", scope: !4412, file: !3, line: 579, type: !234)
!4416 = !DILocation(line: 577, column: 57, scope: !4412)
!4417 = !DILocation(line: 579, column: 2, scope: !4412)
!4418 = !DILocation(line: 579, column: 22, scope: !4412)
!4419 = !DILocation(line: 579, column: 38, scope: !4412)
!4420 = !DILocation(line: 579, column: 27, scope: !4412)
!4421 = !DILocation(line: 581, column: 8, scope: !4412)
!4422 = !DILocation(line: 581, column: 2, scope: !4412)
!4423 = !DILocation(line: 582, column: 1, scope: !4412)
!4424 = distinct !DISubprogram(name: "uncharge_cg_locked", scope: !3, file: !3, line: 162, type: !3990, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4425)
!4425 = !{!4426, !4427, !4428, !4429, !4430, !4432}
!4426 = !DILocalVariable(name: "cg", arg: 1, scope: !4424, file: !3, line: 162, type: !234)
!4427 = !DILocalVariable(name: "device", arg: 2, scope: !4424, file: !3, line: 163, type: !208)
!4428 = !DILocalVariable(name: "index", arg: 3, scope: !4424, file: !3, line: 164, type: !146)
!4429 = !DILocalVariable(name: "rpool", scope: !4424, file: !3, line: 166, type: !204)
!4430 = !DILocalVariable(name: "__ret_warn_on", scope: !4431, file: !3, line: 186, type: !25)
!4431 = distinct !DILexicalBlock(scope: !4424, file: !3, line: 186, column: 2)
!4432 = !DILocalVariable(name: "__flags", scope: !4433, file: !3, line: 186, type: !25)
!4433 = distinct !DILexicalBlock(scope: !4434, file: !3, line: 186, column: 2)
!4434 = distinct !DILexicalBlock(scope: !4431, file: !3, line: 186, column: 2)
!4435 = !DILocation(line: 162, column: 40, scope: !4424)
!4436 = !DILocation(line: 163, column: 28, scope: !4424)
!4437 = !DILocation(line: 164, column: 32, scope: !4424)
!4438 = !DILocation(line: 166, column: 2, scope: !4424)
!4439 = !DILocation(line: 166, column: 31, scope: !4424)
!4440 = !DILocation(line: 168, column: 31, scope: !4424)
!4441 = !DILocation(line: 168, column: 35, scope: !4424)
!4442 = !DILocation(line: 168, column: 10, scope: !4424)
!4443 = !DILocation(line: 168, column: 8, scope: !4424)
!4444 = !DILocation(line: 175, column: 6, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4424, file: !3, line: 175, column: 6)
!4446 = !DILocation(line: 175, column: 6, scope: !4424)
!4447 = !DILocation(line: 176, column: 3, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4449, file: !3, line: 176, column: 3)
!4449 = distinct !DILexicalBlock(scope: !4445, file: !3, line: 175, column: 24)
!4450 = !DILocation(line: 176, column: 3, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4448, file: !3, line: 176, column: 3)
!4452 = !DILocation(line: 177, column: 3, scope: !4449)
!4453 = !DILocation(line: 180, column: 2, scope: !4424)
!4454 = !DILocation(line: 180, column: 9, scope: !4424)
!4455 = !DILocation(line: 180, column: 19, scope: !4424)
!4456 = !DILocation(line: 180, column: 26, scope: !4424)
!4457 = !DILocation(line: 180, column: 31, scope: !4424)
!4458 = !DILocation(line: 186, column: 2, scope: !4431)
!4459 = !DILocation(line: 186, column: 2, scope: !4434)
!4460 = !DILocation(line: 186, column: 2, scope: !4433)
!4461 = !DILocation(line: 186, column: 2, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 186, column: 2)
!4463 = !DILocation(line: 186, column: 2, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 186, column: 2)
!4465 = !{i64 2153761067, i64 2153761096, i64 2153761142, i64 2153761200, i64 2153761254, i64 2153761308, i64 2153761363, i64 2153761394, i64 2153761702, i64 2153761708, i64 2153761755, i64 2153761778, i64 2153761804}
!4466 = !DILocation(line: 186, column: 2, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 186, column: 2)
!4468 = !DILocation(line: 186, column: 2, scope: !4424)
!4469 = !DILocation(line: 187, column: 2, scope: !4424)
!4470 = !DILocation(line: 187, column: 9, scope: !4424)
!4471 = !DILocation(line: 187, column: 18, scope: !4424)
!4472 = !DILocation(line: 188, column: 6, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4424, file: !3, line: 188, column: 6)
!4474 = !DILocation(line: 188, column: 13, scope: !4473)
!4475 = !DILocation(line: 188, column: 23, scope: !4473)
!4476 = !DILocation(line: 188, column: 28, scope: !4473)
!4477 = !DILocation(line: 189, column: 6, scope: !4473)
!4478 = !DILocation(line: 189, column: 13, scope: !4473)
!4479 = !DILocation(line: 189, column: 25, scope: !4473)
!4480 = !DILocation(line: 188, column: 6, scope: !4424)
!4481 = !DILocation(line: 194, column: 24, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 189, column: 49)
!4483 = !DILocation(line: 194, column: 3, scope: !4482)
!4484 = !DILocation(line: 195, column: 2, scope: !4482)
!4485 = !DILocation(line: 196, column: 1, scope: !4424)
!4486 = distinct !DISubprogram(name: "css_put", scope: !4487, file: !4487, line: 76, type: !3785, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4488)
!4487 = !DIFile(filename: "./include/linux/cgroup_refcnt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb82afda500c288a33501fe8317a0a59")
!4488 = !{!4489}
!4489 = !DILocalVariable(name: "css", arg: 1, scope: !4486, file: !4487, line: 76, type: !2131)
!4490 = !DILocation(line: 76, column: 42, scope: !4486)
!4491 = !DILocation(line: 78, column: 8, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4486, file: !4487, line: 78, column: 6)
!4493 = !DILocation(line: 78, column: 13, scope: !4492)
!4494 = !DILocation(line: 78, column: 19, scope: !4492)
!4495 = !DILocation(line: 78, column: 6, scope: !4486)
!4496 = !DILocation(line: 79, column: 19, scope: !4492)
!4497 = !DILocation(line: 79, column: 24, scope: !4492)
!4498 = !DILocation(line: 79, column: 3, scope: !4492)
!4499 = !DILocation(line: 80, column: 1, scope: !4486)
!4500 = distinct !DISubprogram(name: "find_cg_rpool_locked", scope: !3, file: !3, line: 113, type: !4168, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4501)
!4501 = !{!4502, !4503, !4504, !4505, !4508}
!4502 = !DILocalVariable(name: "cg", arg: 1, scope: !4500, file: !3, line: 113, type: !234)
!4503 = !DILocalVariable(name: "device", arg: 2, scope: !4500, file: !3, line: 114, type: !208)
!4504 = !DILocalVariable(name: "pool", scope: !4500, file: !3, line: 117, type: !204)
!4505 = !DILocalVariable(name: "__mptr", scope: !4506, file: !3, line: 121, type: !23)
!4506 = distinct !DILexicalBlock(scope: !4507, file: !3, line: 121, column: 2)
!4507 = distinct !DILexicalBlock(scope: !4500, file: !3, line: 121, column: 2)
!4508 = !DILocalVariable(name: "__mptr", scope: !4509, file: !3, line: 121, type: !23)
!4509 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 121, column: 2)
!4510 = distinct !DILexicalBlock(scope: !4507, file: !3, line: 121, column: 2)
!4511 = !DILocation(line: 113, column: 42, scope: !4500)
!4512 = !DILocation(line: 114, column: 30, scope: !4500)
!4513 = !DILocation(line: 117, column: 2, scope: !4500)
!4514 = !DILocation(line: 117, column: 31, scope: !4500)
!4515 = !DILocation(line: 119, column: 2, scope: !4500)
!4516 = !DILocation(line: 119, column: 2, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4500, file: !3, line: 119, column: 2)
!4518 = !DILocation(line: 121, column: 2, scope: !4506)
!4519 = !DILocation(line: 121, column: 2, scope: !4507)
!4520 = !DILocation(line: 121, column: 2, scope: !4510)
!4521 = !DILocation(line: 122, column: 7, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 122, column: 7)
!4523 = !DILocation(line: 122, column: 13, scope: !4522)
!4524 = !DILocation(line: 122, column: 23, scope: !4522)
!4525 = !DILocation(line: 122, column: 20, scope: !4522)
!4526 = !DILocation(line: 122, column: 7, scope: !4510)
!4527 = !DILocation(line: 123, column: 11, scope: !4522)
!4528 = !DILocation(line: 123, column: 4, scope: !4522)
!4529 = !DILocation(line: 121, column: 2, scope: !4509)
!4530 = distinct !{!4530, !4519, !4531, !4044, !4045}
!4531 = !DILocation(line: 123, column: 11, scope: !4507)
!4532 = !DILocation(line: 125, column: 2, scope: !4500)
!4533 = !DILocation(line: 126, column: 1, scope: !4500)
!4534 = !DISubprogram(name: "_printk", scope: !4535, file: !4535, line: 153, type: !4536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4535 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!25, !19, null}
!4538 = distinct !DISubprogram(name: "percpu_ref_put", scope: !161, file: !161, line: 349, type: !3893, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4539)
!4539 = !{!4540}
!4540 = !DILocalVariable(name: "ref", arg: 1, scope: !4538, file: !161, line: 349, type: !3895)
!4541 = !DILocation(line: 349, column: 54, scope: !4538)
!4542 = !DILocation(line: 351, column: 22, scope: !4538)
!4543 = !DILocation(line: 351, column: 2, scope: !4538)
!4544 = !DILocation(line: 352, column: 1, scope: !4538)
!4545 = distinct !DISubprogram(name: "percpu_ref_put_many", scope: !161, file: !161, line: 326, type: !4546, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4548)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{null, !3895, !42}
!4548 = !{!4549, !4550, !4551, !4552, !4556, !4559}
!4549 = !DILocalVariable(name: "ref", arg: 1, scope: !4545, file: !161, line: 326, type: !3895)
!4550 = !DILocalVariable(name: "nr", arg: 2, scope: !4545, file: !161, line: 326, type: !42)
!4551 = !DILocalVariable(name: "percpu_count", scope: !4545, file: !161, line: 328, type: !230)
!4552 = !DILocalVariable(name: "__vpp_verify", scope: !4553, file: !161, line: 333, type: !274)
!4553 = distinct !DILexicalBlock(scope: !4554, file: !161, line: 333, column: 3)
!4554 = distinct !DILexicalBlock(scope: !4555, file: !161, line: 333, column: 3)
!4555 = distinct !DILexicalBlock(scope: !4545, file: !161, line: 332, column: 6)
!4556 = !DILocalVariable(name: "pao_ID__", scope: !4557, file: !161, line: 333, type: !4558)
!4557 = distinct !DILexicalBlock(scope: !4554, file: !161, line: 333, column: 3)
!4558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!4559 = !DILocalVariable(name: "pto_val__", scope: !4560, file: !161, line: 333, type: !226)
!4560 = distinct !DILexicalBlock(scope: !4561, file: !161, line: 333, column: 3)
!4561 = distinct !DILexicalBlock(scope: !4562, file: !161, line: 333, column: 3)
!4562 = distinct !DILexicalBlock(scope: !4557, file: !161, line: 333, column: 3)
!4563 = !DILocation(line: 326, column: 59, scope: !4545)
!4564 = !DILocation(line: 326, column: 78, scope: !4545)
!4565 = !DILocation(line: 328, column: 2, scope: !4545)
!4566 = !DILocation(line: 328, column: 26, scope: !4545)
!4567 = !DILocation(line: 330, column: 2, scope: !4545)
!4568 = !DILocation(line: 332, column: 22, scope: !4555)
!4569 = !DILocation(line: 332, column: 6, scope: !4555)
!4570 = !DILocation(line: 332, column: 6, scope: !4545)
!4571 = !DILocation(line: 333, column: 3, scope: !4555)
!4572 = !DILocation(line: 333, column: 3, scope: !4554)
!4573 = !DILocation(line: 333, column: 3, scope: !4553)
!4574 = !DILocation(line: 333, column: 3, scope: !4557)
!4575 = !DILocation(line: 333, column: 3, scope: !4562)
!4576 = !DILocation(line: 333, column: 3, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4562, file: !161, line: 333, column: 3)
!4578 = !{i64 2151385692}
!4579 = !DILocation(line: 333, column: 3, scope: !4561)
!4580 = !DILocation(line: 333, column: 3, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4561, file: !161, line: 333, column: 3)
!4582 = !{i64 2151385987}
!4583 = !DILocation(line: 333, column: 3, scope: !4560)
!4584 = !{i64 2151386739}
!4585 = !DILocation(line: 334, column: 11, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4555, file: !161, line: 334, column: 11)
!4587 = !DILocation(line: 334, column: 11, scope: !4555)
!4588 = !DILocation(line: 335, column: 3, scope: !4586)
!4589 = !DILocation(line: 335, column: 8, scope: !4586)
!4590 = !DILocation(line: 335, column: 14, scope: !4586)
!4591 = !DILocation(line: 335, column: 22, scope: !4586)
!4592 = !DILocation(line: 337, column: 2, scope: !4545)
!4593 = !DILocation(line: 338, column: 1, scope: !4545)
!4594 = distinct !DISubprogram(name: "rcu_read_lock", scope: !4595, file: !4595, line: 782, type: !2383, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4595 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!4596 = !DILocation(line: 784, column: 2, scope: !4594)
!4597 = !DILocation(line: 786, column: 2, scope: !4594)
!4598 = !DILocation(line: 786, column: 2, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4594, file: !4595, line: 786, column: 2)
!4600 = !DILocation(line: 787, column: 2, scope: !4594)
!4601 = !DILocation(line: 787, column: 2, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4594, file: !4595, line: 787, column: 2)
!4603 = !DILocation(line: 789, column: 1, scope: !4594)
!4604 = distinct !DISubprogram(name: "__ref_is_percpu", scope: !161, file: !161, line: 158, type: !4605, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4608)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!548, !3895, !4607}
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!4608 = !{!4609, !4610, !4611}
!4609 = !DILocalVariable(name: "ref", arg: 1, scope: !4604, file: !161, line: 158, type: !3895)
!4610 = !DILocalVariable(name: "percpu_countp", arg: 2, scope: !4604, file: !161, line: 159, type: !4607)
!4611 = !DILocalVariable(name: "percpu_ptr", scope: !4604, file: !161, line: 161, type: !42)
!4612 = !DILocation(line: 158, column: 55, scope: !4604)
!4613 = !DILocation(line: 159, column: 33, scope: !4604)
!4614 = !DILocation(line: 161, column: 2, scope: !4604)
!4615 = !DILocation(line: 161, column: 16, scope: !4604)
!4616 = !DILocation(line: 174, column: 15, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4604, file: !161, line: 174, column: 15)
!4618 = !DILocation(line: 174, column: 15, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4617, file: !161, line: 174, column: 15)
!4620 = !DILocation(line: 174, column: 13, scope: !4604)
!4621 = !DILocation(line: 182, column: 6, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4604, file: !161, line: 182, column: 6)
!4623 = !DILocation(line: 182, column: 6, scope: !4604)
!4624 = !DILocation(line: 183, column: 3, scope: !4622)
!4625 = !DILocation(line: 185, column: 45, scope: !4604)
!4626 = !DILocation(line: 185, column: 19, scope: !4604)
!4627 = !DILocation(line: 185, column: 3, scope: !4604)
!4628 = !DILocation(line: 185, column: 17, scope: !4604)
!4629 = !DILocation(line: 186, column: 2, scope: !4604)
!4630 = !DILocation(line: 187, column: 1, scope: !4604)
!4631 = distinct !DISubprogram(name: "atomic_long_sub_and_test", scope: !4632, file: !4632, line: 4482, type: !4633, scopeLine: 4483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4635)
!4632 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!548, !778, !3318}
!4635 = !{!4636, !4637}
!4636 = !DILocalVariable(name: "i", arg: 1, scope: !4631, file: !4632, line: 4482, type: !778)
!4637 = !DILocalVariable(name: "v", arg: 2, scope: !4631, file: !4632, line: 4482, type: !3318)
!4638 = !DILocation(line: 4482, column: 31, scope: !4631)
!4639 = !DILocation(line: 4482, column: 49, scope: !4631)
!4640 = !DILocation(line: 4484, column: 2, scope: !4631)
!4641 = !DILocation(line: 4484, column: 2, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4631, file: !4632, line: 4484, column: 2)
!4643 = !DILocation(line: 4485, column: 31, scope: !4631)
!4644 = !DILocation(line: 4485, column: 2, scope: !4631)
!4645 = !DILocation(line: 4486, column: 38, scope: !4631)
!4646 = !DILocation(line: 4486, column: 41, scope: !4631)
!4647 = !DILocation(line: 4486, column: 9, scope: !4631)
!4648 = !DILocation(line: 4486, column: 2, scope: !4631)
!4649 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !4595, file: !4595, line: 813, type: !2383, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4650 = !DILocation(line: 815, column: 2, scope: !4649)
!4651 = !DILocation(line: 815, column: 2, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4649, file: !4595, line: 815, column: 2)
!4653 = !DILocation(line: 818, column: 2, scope: !4649)
!4654 = !DILocation(line: 819, column: 2, scope: !4649)
!4655 = !DILocation(line: 819, column: 2, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4649, file: !4595, line: 819, column: 2)
!4657 = !DILocation(line: 820, column: 1, scope: !4649)
!4658 = !DISubprogram(name: "__rcu_read_lock", scope: !4595, file: !4595, line: 74, type: !2383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4659 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4660, file: !4660, line: 94, type: !4661, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4666)
!4660 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4661 = !DISubroutineType(types: !4662)
!4662 = !{null, !4663, !38}
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4665)
!4665 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4666 = !{!4667, !4668}
!4667 = !DILocalVariable(name: "v", arg: 1, scope: !4659, file: !4660, line: 94, type: !4663)
!4668 = !DILocalVariable(name: "size", arg: 2, scope: !4659, file: !4660, line: 94, type: !38)
!4669 = !DILocation(line: 94, column: 79, scope: !4659)
!4670 = !DILocation(line: 94, column: 89, scope: !4659)
!4671 = !DILocation(line: 96, column: 20, scope: !4659)
!4672 = !DILocation(line: 96, column: 23, scope: !4659)
!4673 = !DILocation(line: 96, column: 2, scope: !4659)
!4674 = !DILocation(line: 97, column: 2, scope: !4659)
!4675 = !DILocation(line: 98, column: 1, scope: !4659)
!4676 = distinct !DISubprogram(name: "raw_atomic_long_sub_and_test", scope: !340, file: !340, line: 1540, type: !4633, scopeLine: 1541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4677)
!4677 = !{!4678, !4679}
!4678 = !DILocalVariable(name: "i", arg: 1, scope: !4676, file: !340, line: 1540, type: !778)
!4679 = !DILocalVariable(name: "v", arg: 2, scope: !4676, file: !340, line: 1540, type: !3318)
!4680 = !DILocation(line: 1540, column: 35, scope: !4676)
!4681 = !DILocation(line: 1540, column: 53, scope: !4676)
!4682 = !DILocation(line: 1543, column: 35, scope: !4676)
!4683 = !DILocation(line: 1543, column: 38, scope: !4676)
!4684 = !DILocation(line: 1543, column: 9, scope: !4676)
!4685 = !DILocation(line: 1543, column: 2, scope: !4676)
!4686 = distinct !DISubprogram(name: "kasan_check_write", scope: !4687, file: !4687, line: 44, type: !4688, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4690)
!4687 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!548, !4663, !7}
!4690 = !{!4691, !4692}
!4691 = !DILocalVariable(name: "p", arg: 1, scope: !4686, file: !4687, line: 44, type: !4663)
!4692 = !DILocalVariable(name: "size", arg: 2, scope: !4686, file: !4687, line: 44, type: !7)
!4693 = !DILocation(line: 44, column: 59, scope: !4686)
!4694 = !DILocation(line: 44, column: 75, scope: !4686)
!4695 = !DILocation(line: 46, column: 2, scope: !4686)
!4696 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4697, file: !4697, line: 229, type: !4698, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4700)
!4697 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4698 = !DISubroutineType(types: !4699)
!4699 = !{null, !4663, !38, !25}
!4700 = !{!4701, !4702, !4703}
!4701 = !DILocalVariable(name: "ptr", arg: 1, scope: !4696, file: !4697, line: 229, type: !4663)
!4702 = !DILocalVariable(name: "size", arg: 2, scope: !4696, file: !4697, line: 229, type: !38)
!4703 = !DILocalVariable(name: "type", arg: 3, scope: !4696, file: !4697, line: 230, type: !25)
!4704 = !DILocation(line: 229, column: 60, scope: !4696)
!4705 = !DILocation(line: 229, column: 72, scope: !4696)
!4706 = !DILocation(line: 230, column: 15, scope: !4696)
!4707 = !DILocation(line: 230, column: 23, scope: !4696)
!4708 = distinct !DISubprogram(name: "raw_atomic64_sub_and_test", scope: !4709, file: !4709, line: 4346, type: !4710, scopeLine: 4347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4713)
!4709 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4710 = !DISubroutineType(types: !4711)
!4711 = !{!548, !345, !4712}
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!4713 = !{!4714, !4715}
!4714 = !DILocalVariable(name: "i", arg: 1, scope: !4708, file: !4709, line: 4346, type: !345)
!4715 = !DILocalVariable(name: "v", arg: 2, scope: !4708, file: !4709, line: 4346, type: !4712)
!4716 = !DILocation(line: 4346, column: 31, scope: !4708)
!4717 = !DILocation(line: 4346, column: 46, scope: !4708)
!4718 = !DILocation(line: 4349, column: 36, scope: !4708)
!4719 = !DILocation(line: 4349, column: 39, scope: !4708)
!4720 = !DILocation(line: 4349, column: 9, scope: !4708)
!4721 = !DILocation(line: 4349, column: 2, scope: !4708)
!4722 = distinct !DISubprogram(name: "arch_atomic64_sub_and_test", scope: !4723, file: !4723, line: 37, type: !4710, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4724)
!4723 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!4724 = !{!4725, !4726, !4727}
!4725 = !DILocalVariable(name: "i", arg: 1, scope: !4722, file: !4723, line: 37, type: !345)
!4726 = !DILocalVariable(name: "v", arg: 2, scope: !4722, file: !4723, line: 37, type: !4712)
!4727 = !DILocalVariable(name: "c", scope: !4728, file: !4723, line: 39, type: !548)
!4728 = distinct !DILexicalBlock(scope: !4722, file: !4723, line: 39, column: 9)
!4729 = !DILocation(line: 37, column: 60, scope: !4722)
!4730 = !DILocation(line: 37, column: 75, scope: !4722)
!4731 = !DILocation(line: 39, column: 9, scope: !4728)
!4732 = !{i64 2148964005, i64 2148964044, i64 2148964065, i64 2148964102, i64 2148964125, i64 2148964134, i64 2148964233}
!4733 = !{i8 0, i8 2}
!4734 = !DILocation(line: 39, column: 9, scope: !4722)
!4735 = !DILocation(line: 39, column: 2, scope: !4722)
!4736 = !DISubprogram(name: "__rcu_read_unlock", scope: !4595, file: !4595, line: 75, type: !2383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4737 = distinct !DISubprogram(name: "css_rdmacg", scope: !3, file: !3, line: 67, type: !4738, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4740)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!234, !2131}
!4740 = !{!4741, !4742}
!4741 = !DILocalVariable(name: "css", arg: 1, scope: !4737, file: !3, line: 67, type: !2131)
!4742 = !DILocalVariable(name: "__mptr", scope: !4743, file: !3, line: 69, type: !23)
!4743 = distinct !DILexicalBlock(scope: !4737, file: !3, line: 69, column: 9)
!4744 = !DILocation(line: 67, column: 67, scope: !4737)
!4745 = !DILocation(line: 69, column: 9, scope: !4743)
!4746 = !DILocation(line: 69, column: 9, scope: !4737)
!4747 = !DILocation(line: 69, column: 2, scope: !4737)
!4748 = distinct !DISubprogram(name: "task_get_css", scope: !2120, file: !2120, line: 449, type: !4749, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4751)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!2131, !1511, !25}
!4751 = !{!4752, !4753, !4754}
!4752 = !DILocalVariable(name: "task", arg: 1, scope: !4748, file: !2120, line: 449, type: !1511)
!4753 = !DILocalVariable(name: "subsys_id", arg: 2, scope: !4748, file: !2120, line: 449, type: !25)
!4754 = !DILocalVariable(name: "css", scope: !4748, file: !2120, line: 451, type: !2131)
!4755 = !DILocation(line: 449, column: 34, scope: !4748)
!4756 = !DILocation(line: 449, column: 44, scope: !4748)
!4757 = !DILocation(line: 451, column: 2, scope: !4748)
!4758 = !DILocation(line: 451, column: 30, scope: !4748)
!4759 = !DILocation(line: 453, column: 2, scope: !4748)
!4760 = !DILocation(line: 454, column: 2, scope: !4748)
!4761 = !DILocation(line: 455, column: 18, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4748, file: !2120, line: 454, column: 15)
!4763 = !DILocation(line: 455, column: 24, scope: !4762)
!4764 = !DILocation(line: 455, column: 9, scope: !4762)
!4765 = !DILocation(line: 455, column: 7, scope: !4762)
!4766 = !DILocation(line: 462, column: 7, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4762, file: !2120, line: 462, column: 7)
!4768 = !DILocation(line: 462, column: 7, scope: !4762)
!4769 = !DILocation(line: 463, column: 4, scope: !4767)
!4770 = !DILocation(line: 464, column: 3, scope: !4762)
!4771 = distinct !{!4771, !4760, !4772, !4045}
!4772 = !DILocation(line: 465, column: 2, scope: !4748)
!4773 = !DILocation(line: 466, column: 2, scope: !4748)
!4774 = !DILocation(line: 467, column: 9, scope: !4748)
!4775 = !DILocation(line: 468, column: 1, scope: !4748)
!4776 = !DILocation(line: 467, column: 2, scope: !4748)
!4777 = distinct !DISubprogram(name: "get_current", scope: !4778, file: !4778, line: 39, type: !4779, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4781)
!4778 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4779 = !DISubroutineType(types: !4780)
!4780 = !{!1511}
!4781 = !{!4782, !4784, !4786}
!4782 = !DILocalVariable(name: "pscr_ret__", scope: !4783, file: !4778, line: 41, type: !1511)
!4783 = distinct !DILexicalBlock(scope: !4777, file: !4778, line: 41, column: 9)
!4784 = !DILocalVariable(name: "__vpp_verify", scope: !4785, file: !4778, line: 41, type: !274)
!4785 = distinct !DILexicalBlock(scope: !4783, file: !4778, line: 41, column: 9)
!4786 = !DILocalVariable(name: "pfo_val__", scope: !4787, file: !4778, line: 41, type: !226)
!4787 = distinct !DILexicalBlock(scope: !4783, file: !4778, line: 41, column: 9)
!4788 = !DILocation(line: 41, column: 9, scope: !4783)
!4789 = !DILocation(line: 41, column: 9, scope: !4785)
!4790 = !DILocation(line: 41, column: 9, scope: !4787)
!4791 = !{i64 2148395146}
!4792 = !DILocation(line: 41, column: 9, scope: !4777)
!4793 = !DILocation(line: 41, column: 2, scope: !4777)
!4794 = distinct !DISubprogram(name: "task_css", scope: !2120, file: !2120, line: 433, type: !4749, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4795)
!4795 = !{!4796, !4797, !4798}
!4796 = !DILocalVariable(name: "task", arg: 1, scope: !4794, file: !2120, line: 433, type: !1511)
!4797 = !DILocalVariable(name: "subsys_id", arg: 2, scope: !4794, file: !2120, line: 434, type: !25)
!4798 = !DILocalVariable(name: "__UNIQUE_ID_rcu260", scope: !4799, file: !2120, line: 436, type: !2126)
!4799 = distinct !DILexicalBlock(scope: !4794, file: !2120, line: 436, column: 9)
!4800 = !DILocation(line: 433, column: 72, scope: !4794)
!4801 = !DILocation(line: 434, column: 14, scope: !4794)
!4802 = !DILocation(line: 436, column: 9, scope: !4799)
!4803 = !DILocation(line: 436, column: 9, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4799, file: !2120, line: 436, column: 9)
!4805 = !DILocation(line: 436, column: 9, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4804, file: !2120, line: 436, column: 9)
!4807 = !DILocation(line: 436, column: 9, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4799, file: !2120, line: 436, column: 9)
!4809 = !DILocation(line: 436, column: 9, scope: !4794)
!4810 = !DILocation(line: 436, column: 2, scope: !4794)
!4811 = distinct !DISubprogram(name: "css_tryget", scope: !4487, file: !4487, line: 42, type: !4812, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4814)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{!548, !2131}
!4814 = !{!4815}
!4815 = !DILocalVariable(name: "css", arg: 1, scope: !4811, file: !4487, line: 42, type: !2131)
!4816 = !DILocation(line: 42, column: 45, scope: !4811)
!4817 = !DILocation(line: 44, column: 8, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4811, file: !4487, line: 44, column: 6)
!4819 = !DILocation(line: 44, column: 13, scope: !4818)
!4820 = !DILocation(line: 44, column: 19, scope: !4818)
!4821 = !DILocation(line: 44, column: 6, scope: !4811)
!4822 = !DILocation(line: 45, column: 29, scope: !4818)
!4823 = !DILocation(line: 45, column: 34, scope: !4818)
!4824 = !DILocation(line: 45, column: 10, scope: !4818)
!4825 = !DILocation(line: 45, column: 3, scope: !4818)
!4826 = !DILocation(line: 46, column: 2, scope: !4811)
!4827 = !DILocation(line: 47, column: 1, scope: !4811)
!4828 = distinct !DISubprogram(name: "cpu_relax", scope: !4829, file: !4829, line: 16, type: !2383, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4829 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!4830 = !DILocation(line: 18, column: 2, scope: !4828)
!4831 = !DILocation(line: 19, column: 1, scope: !4828)
!4832 = distinct !DISubprogram(name: "percpu_ref_tryget", scope: !161, file: !161, line: 264, type: !4833, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4835)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{!548, !3895}
!4835 = !{!4836}
!4836 = !DILocalVariable(name: "ref", arg: 1, scope: !4832, file: !161, line: 264, type: !3895)
!4837 = !DILocation(line: 264, column: 57, scope: !4832)
!4838 = !DILocation(line: 266, column: 32, scope: !4832)
!4839 = !DILocation(line: 266, column: 9, scope: !4832)
!4840 = !DILocation(line: 266, column: 2, scope: !4832)
!4841 = distinct !DISubprogram(name: "percpu_ref_tryget_many", scope: !161, file: !161, line: 235, type: !4842, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4844)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!548, !3895, !42}
!4844 = !{!4845, !4846, !4847, !4848, !4849, !4854, !4856}
!4845 = !DILocalVariable(name: "ref", arg: 1, scope: !4841, file: !161, line: 235, type: !3895)
!4846 = !DILocalVariable(name: "nr", arg: 2, scope: !4841, file: !161, line: 236, type: !42)
!4847 = !DILocalVariable(name: "percpu_count", scope: !4841, file: !161, line: 238, type: !230)
!4848 = !DILocalVariable(name: "ret", scope: !4841, file: !161, line: 239, type: !548)
!4849 = !DILocalVariable(name: "__vpp_verify", scope: !4850, file: !161, line: 244, type: !274)
!4850 = distinct !DILexicalBlock(scope: !4851, file: !161, line: 244, column: 3)
!4851 = distinct !DILexicalBlock(scope: !4852, file: !161, line: 244, column: 3)
!4852 = distinct !DILexicalBlock(scope: !4853, file: !161, line: 243, column: 43)
!4853 = distinct !DILexicalBlock(scope: !4841, file: !161, line: 243, column: 6)
!4854 = !DILocalVariable(name: "pao_ID__", scope: !4855, file: !161, line: 244, type: !4558)
!4855 = distinct !DILexicalBlock(scope: !4851, file: !161, line: 244, column: 3)
!4856 = !DILocalVariable(name: "pto_val__", scope: !4857, file: !161, line: 244, type: !226)
!4857 = distinct !DILexicalBlock(scope: !4858, file: !161, line: 244, column: 3)
!4858 = distinct !DILexicalBlock(scope: !4859, file: !161, line: 244, column: 3)
!4859 = distinct !DILexicalBlock(scope: !4855, file: !161, line: 244, column: 3)
!4860 = !DILocation(line: 235, column: 62, scope: !4841)
!4861 = !DILocation(line: 236, column: 22, scope: !4841)
!4862 = !DILocation(line: 238, column: 2, scope: !4841)
!4863 = !DILocation(line: 238, column: 26, scope: !4841)
!4864 = !DILocation(line: 239, column: 2, scope: !4841)
!4865 = !DILocation(line: 239, column: 7, scope: !4841)
!4866 = !DILocation(line: 241, column: 2, scope: !4841)
!4867 = !DILocation(line: 243, column: 22, scope: !4853)
!4868 = !DILocation(line: 243, column: 6, scope: !4853)
!4869 = !DILocation(line: 243, column: 6, scope: !4841)
!4870 = !DILocation(line: 244, column: 3, scope: !4852)
!4871 = !DILocation(line: 244, column: 3, scope: !4851)
!4872 = !DILocation(line: 244, column: 3, scope: !4850)
!4873 = !DILocation(line: 244, column: 3, scope: !4855)
!4874 = !DILocation(line: 244, column: 3, scope: !4859)
!4875 = !DILocation(line: 244, column: 3, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4859, file: !161, line: 244, column: 3)
!4877 = !{i64 2151360556}
!4878 = !DILocation(line: 244, column: 3, scope: !4858)
!4879 = !DILocation(line: 244, column: 3, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4858, file: !161, line: 244, column: 3)
!4881 = !{i64 2151360851}
!4882 = !DILocation(line: 244, column: 3, scope: !4857)
!4883 = !{i64 2151365574}
!4884 = !DILocation(line: 245, column: 7, scope: !4852)
!4885 = !DILocation(line: 246, column: 2, scope: !4852)
!4886 = !DILocation(line: 247, column: 33, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4853, file: !161, line: 246, column: 9)
!4888 = !DILocation(line: 247, column: 38, scope: !4887)
!4889 = !DILocation(line: 247, column: 44, scope: !4887)
!4890 = !DILocation(line: 247, column: 51, scope: !4887)
!4891 = !DILocation(line: 247, column: 9, scope: !4887)
!4892 = !DILocation(line: 247, column: 7, scope: !4887)
!4893 = !DILocation(line: 250, column: 2, scope: !4841)
!4894 = !DILocation(line: 252, column: 9, scope: !4841)
!4895 = !DILocation(line: 253, column: 1, scope: !4841)
!4896 = !DILocation(line: 252, column: 2, scope: !4841)
!4897 = distinct !DISubprogram(name: "atomic_long_add_unless", scope: !4632, file: !4632, line: 4632, type: !4898, scopeLine: 4633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4900)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!548, !3318, !778, !778}
!4900 = !{!4901, !4902, !4903}
!4901 = !DILocalVariable(name: "v", arg: 1, scope: !4897, file: !4632, line: 4632, type: !3318)
!4902 = !DILocalVariable(name: "a", arg: 2, scope: !4897, file: !4632, line: 4632, type: !778)
!4903 = !DILocalVariable(name: "u", arg: 3, scope: !4897, file: !4632, line: 4632, type: !778)
!4904 = !DILocation(line: 4632, column: 39, scope: !4897)
!4905 = !DILocation(line: 4632, column: 47, scope: !4897)
!4906 = !DILocation(line: 4632, column: 55, scope: !4897)
!4907 = !DILocation(line: 4634, column: 2, scope: !4897)
!4908 = !DILocation(line: 4634, column: 2, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4897, file: !4632, line: 4634, column: 2)
!4910 = !DILocation(line: 4635, column: 31, scope: !4897)
!4911 = !DILocation(line: 4635, column: 2, scope: !4897)
!4912 = !DILocation(line: 4636, column: 36, scope: !4897)
!4913 = !DILocation(line: 4636, column: 39, scope: !4897)
!4914 = !DILocation(line: 4636, column: 42, scope: !4897)
!4915 = !DILocation(line: 4636, column: 9, scope: !4897)
!4916 = !DILocation(line: 4636, column: 2, scope: !4897)
!4917 = distinct !DISubprogram(name: "raw_atomic_long_add_unless", scope: !340, file: !340, line: 1708, type: !4898, scopeLine: 1709, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4918)
!4918 = !{!4919, !4920, !4921}
!4919 = !DILocalVariable(name: "v", arg: 1, scope: !4917, file: !340, line: 1708, type: !3318)
!4920 = !DILocalVariable(name: "a", arg: 2, scope: !4917, file: !340, line: 1708, type: !778)
!4921 = !DILocalVariable(name: "u", arg: 3, scope: !4917, file: !340, line: 1708, type: !778)
!4922 = !DILocation(line: 1708, column: 43, scope: !4917)
!4923 = !DILocation(line: 1708, column: 51, scope: !4917)
!4924 = !DILocation(line: 1708, column: 59, scope: !4917)
!4925 = !DILocation(line: 1711, column: 33, scope: !4917)
!4926 = !DILocation(line: 1711, column: 36, scope: !4917)
!4927 = !DILocation(line: 1711, column: 39, scope: !4917)
!4928 = !DILocation(line: 1711, column: 9, scope: !4917)
!4929 = !DILocation(line: 1711, column: 2, scope: !4917)
!4930 = distinct !DISubprogram(name: "raw_atomic64_add_unless", scope: !4709, file: !4709, line: 4540, type: !4931, scopeLine: 4541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4933)
!4931 = !DISubroutineType(types: !4932)
!4932 = !{!548, !4712, !345, !345}
!4933 = !{!4934, !4935, !4936}
!4934 = !DILocalVariable(name: "v", arg: 1, scope: !4930, file: !4709, line: 4540, type: !4712)
!4935 = !DILocalVariable(name: "a", arg: 2, scope: !4930, file: !4709, line: 4540, type: !345)
!4936 = !DILocalVariable(name: "u", arg: 3, scope: !4930, file: !4709, line: 4540, type: !345)
!4937 = !DILocation(line: 4540, column: 37, scope: !4930)
!4938 = !DILocation(line: 4540, column: 44, scope: !4930)
!4939 = !DILocation(line: 4540, column: 51, scope: !4930)
!4940 = !DILocation(line: 4545, column: 39, scope: !4930)
!4941 = !DILocation(line: 4545, column: 42, scope: !4930)
!4942 = !DILocation(line: 4545, column: 45, scope: !4930)
!4943 = !DILocation(line: 4545, column: 9, scope: !4930)
!4944 = !DILocation(line: 4545, column: 51, scope: !4930)
!4945 = !DILocation(line: 4545, column: 48, scope: !4930)
!4946 = !DILocation(line: 4545, column: 2, scope: !4930)
!4947 = distinct !DISubprogram(name: "raw_atomic64_fetch_add_unless", scope: !4709, file: !4709, line: 4511, type: !4948, scopeLine: 4512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4950)
!4948 = !DISubroutineType(types: !4949)
!4949 = !{!345, !4712, !345, !345}
!4950 = !{!4951, !4952, !4953, !4954}
!4951 = !DILocalVariable(name: "v", arg: 1, scope: !4947, file: !4709, line: 4511, type: !4712)
!4952 = !DILocalVariable(name: "a", arg: 2, scope: !4947, file: !4709, line: 4511, type: !345)
!4953 = !DILocalVariable(name: "u", arg: 3, scope: !4947, file: !4709, line: 4511, type: !345)
!4954 = !DILocalVariable(name: "c", scope: !4947, file: !4709, line: 4516, type: !345)
!4955 = !DILocation(line: 4511, column: 43, scope: !4947)
!4956 = !DILocation(line: 4511, column: 50, scope: !4947)
!4957 = !DILocation(line: 4511, column: 57, scope: !4947)
!4958 = !DILocation(line: 4516, column: 2, scope: !4947)
!4959 = !DILocation(line: 4516, column: 6, scope: !4947)
!4960 = !DILocation(line: 4516, column: 28, scope: !4947)
!4961 = !DILocation(line: 4516, column: 10, scope: !4947)
!4962 = !DILocation(line: 4518, column: 2, scope: !4947)
!4963 = !DILocation(line: 4519, column: 7, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4965, file: !4709, line: 4519, column: 7)
!4965 = distinct !DILexicalBlock(scope: !4947, file: !4709, line: 4518, column: 5)
!4966 = !DILocation(line: 4519, column: 7, scope: !4965)
!4967 = !DILocation(line: 4520, column: 4, scope: !4964)
!4968 = !DILocation(line: 4521, column: 2, scope: !4965)
!4969 = !DILocation(line: 4521, column: 37, scope: !4947)
!4970 = !DILocation(line: 4521, column: 44, scope: !4947)
!4971 = !DILocation(line: 4521, column: 48, scope: !4947)
!4972 = !DILocation(line: 4521, column: 46, scope: !4947)
!4973 = !DILocation(line: 4521, column: 12, scope: !4947)
!4974 = !DILocation(line: 4521, column: 11, scope: !4947)
!4975 = distinct !{!4975, !4962, !4976, !4044, !4045}
!4976 = !DILocation(line: 4521, column: 50, scope: !4947)
!4977 = !DILocation(line: 4523, column: 9, scope: !4947)
!4978 = !DILocation(line: 4525, column: 1, scope: !4947)
!4979 = !DILocation(line: 4523, column: 2, scope: !4947)
!4980 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !4709, file: !4709, line: 2554, type: !4981, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4985)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!345, !4983}
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!4985 = !{!4986}
!4986 = !DILocalVariable(name: "v", arg: 1, scope: !4980, file: !4709, line: 2554, type: !4983)
!4987 = !DILocation(line: 2554, column: 37, scope: !4980)
!4988 = !DILocation(line: 2556, column: 28, scope: !4980)
!4989 = !DILocation(line: 2556, column: 9, scope: !4980)
!4990 = !DILocation(line: 2556, column: 2, scope: !4980)
!4991 = distinct !DISubprogram(name: "raw_atomic64_try_cmpxchg", scope: !4709, file: !4709, line: 4221, type: !4992, scopeLine: 4222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4994)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!548, !4712, !3923, !345}
!4994 = !{!4995, !4996, !4997}
!4995 = !DILocalVariable(name: "v", arg: 1, scope: !4991, file: !4709, line: 4221, type: !4712)
!4996 = !DILocalVariable(name: "old", arg: 2, scope: !4991, file: !4709, line: 4221, type: !3923)
!4997 = !DILocalVariable(name: "new", arg: 3, scope: !4991, file: !4709, line: 4221, type: !345)
!4998 = !DILocation(line: 4221, column: 38, scope: !4991)
!4999 = !DILocation(line: 4221, column: 46, scope: !4991)
!5000 = !DILocation(line: 4221, column: 55, scope: !4991)
!5001 = !DILocation(line: 4224, column: 35, scope: !4991)
!5002 = !DILocation(line: 4224, column: 38, scope: !4991)
!5003 = !DILocation(line: 4224, column: 43, scope: !4991)
!5004 = !DILocation(line: 4224, column: 9, scope: !4991)
!5005 = !DILocation(line: 4224, column: 2, scope: !4991)
!5006 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !4723, file: !4723, line: 13, type: !4981, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5007)
!5007 = !{!5008}
!5008 = !DILocalVariable(name: "v", arg: 1, scope: !5006, file: !4723, line: 13, type: !4983)
!5009 = !DILocation(line: 13, column: 65, scope: !5006)
!5010 = !DILocation(line: 15, column: 9, scope: !5006)
!5011 = !DILocation(line: 15, column: 2, scope: !5006)
!5012 = distinct !DISubprogram(name: "arch_atomic64_try_cmpxchg", scope: !4723, file: !4723, line: 107, type: !4992, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5013)
!5013 = !{!5014, !5015, !5016, !5017, !5019, !5020, !5021, !5022}
!5014 = !DILocalVariable(name: "v", arg: 1, scope: !5012, file: !4723, line: 107, type: !4712)
!5015 = !DILocalVariable(name: "old", arg: 2, scope: !5012, file: !4723, line: 107, type: !3923)
!5016 = !DILocalVariable(name: "new", arg: 3, scope: !5012, file: !4723, line: 107, type: !345)
!5017 = !DILocalVariable(name: "success", scope: !5018, file: !4723, line: 109, type: !548)
!5018 = distinct !DILexicalBlock(scope: !5012, file: !4723, line: 109, column: 9)
!5019 = !DILocalVariable(name: "_old", scope: !5018, file: !4723, line: 109, type: !3923)
!5020 = !DILocalVariable(name: "__old", scope: !5018, file: !4723, line: 109, type: !345)
!5021 = !DILocalVariable(name: "__new", scope: !5018, file: !4723, line: 109, type: !345)
!5022 = !DILocalVariable(name: "__ptr", scope: !5018, file: !4723, line: 109, type: !3924)
!5023 = !DILocation(line: 107, column: 67, scope: !5012)
!5024 = !DILocation(line: 107, column: 75, scope: !5012)
!5025 = !DILocation(line: 107, column: 84, scope: !5012)
!5026 = !DILocation(line: 109, column: 9, scope: !5018)
!5027 = !{i64 2148983068, i64 2148983107, i64 2148983128, i64 2148983165, i64 2148983188, i64 2148983197, i64 2148983398}
!5028 = !DILocation(line: 109, column: 9, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5018, file: !4723, line: 109, column: 9)
!5030 = !DILocation(line: 109, column: 9, scope: !5012)
!5031 = !DILocation(line: 109, column: 2, scope: !5012)
!5032 = distinct !DISubprogram(name: "rep_nop", scope: !4829, file: !4829, line: 11, type: !2383, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5033 = !DILocation(line: 13, column: 2, scope: !5032)
!5034 = !{i64 2036203}
!5035 = !DILocation(line: 14, column: 1, scope: !5032)
!5036 = distinct !DISubprogram(name: "kzalloc", scope: !190, file: !190, line: 719, type: !5037, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5039)
!5037 = !DISubroutineType(types: !5038)
!5038 = !{!23, !38, !1058}
!5039 = !{!5040, !5041}
!5040 = !DILocalVariable(name: "size", arg: 1, scope: !5036, file: !190, line: 719, type: !38)
!5041 = !DILocalVariable(name: "flags", arg: 2, scope: !5036, file: !190, line: 719, type: !1058)
!5042 = !DILocation(line: 719, column: 52, scope: !5036)
!5043 = !DILocation(line: 719, column: 64, scope: !5036)
!5044 = !DILocation(line: 721, column: 17, scope: !5036)
!5045 = !DILocation(line: 721, column: 23, scope: !5036)
!5046 = !DILocation(line: 721, column: 29, scope: !5036)
!5047 = !DILocation(line: 721, column: 9, scope: !5036)
!5048 = !DILocation(line: 721, column: 2, scope: !5036)
!5049 = distinct !DISubprogram(name: "ERR_PTR", scope: !4220, file: !4220, line: 39, type: !5050, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5052)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{!23, !778}
!5052 = !{!5053}
!5053 = !DILocalVariable(name: "error", arg: 1, scope: !5049, file: !4220, line: 39, type: !778)
!5054 = !DILocation(line: 39, column: 48, scope: !5049)
!5055 = !DILocation(line: 41, column: 18, scope: !5049)
!5056 = !DILocation(line: 41, column: 9, scope: !5049)
!5057 = !DILocation(line: 41, column: 2, scope: !5049)
!5058 = distinct !DISubprogram(name: "set_all_resource_max_limit", scope: !3, file: !3, line: 95, type: !4345, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5059)
!5059 = !{!5060, !5061}
!5060 = !DILocalVariable(name: "rpool", arg: 1, scope: !5058, file: !3, line: 95, type: !204)
!5061 = !DILocalVariable(name: "i", scope: !5058, file: !3, line: 97, type: !25)
!5062 = !DILocation(line: 95, column: 69, scope: !5058)
!5063 = !DILocation(line: 97, column: 2, scope: !5058)
!5064 = !DILocation(line: 97, column: 6, scope: !5058)
!5065 = !DILocation(line: 99, column: 9, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5058, file: !3, line: 99, column: 2)
!5067 = !DILocation(line: 99, column: 7, scope: !5066)
!5068 = !DILocation(line: 99, column: 14, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 99, column: 2)
!5070 = !DILocation(line: 99, column: 16, scope: !5069)
!5071 = !DILocation(line: 99, column: 2, scope: !5066)
!5072 = !DILocation(line: 100, column: 22, scope: !5069)
!5073 = !DILocation(line: 100, column: 29, scope: !5069)
!5074 = !DILocation(line: 100, column: 3, scope: !5069)
!5075 = !DILocation(line: 99, column: 40, scope: !5069)
!5076 = !DILocation(line: 99, column: 2, scope: !5069)
!5077 = distinct !{!5077, !5071, !5078, !4044, !4045}
!5078 = !DILocation(line: 100, column: 39, scope: !5066)
!5079 = !DILocation(line: 101, column: 1, scope: !5058)
!5080 = distinct !DISubprogram(name: "kmalloc", scope: !190, file: !190, line: 591, type: !5037, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5081)
!5081 = !{!5082, !5083, !5084}
!5082 = !DILocalVariable(name: "size", arg: 1, scope: !5080, file: !190, line: 591, type: !38)
!5083 = !DILocalVariable(name: "flags", arg: 2, scope: !5080, file: !190, line: 591, type: !1058)
!5084 = !DILocalVariable(name: "index", scope: !5085, file: !190, line: 594, type: !7)
!5085 = distinct !DILexicalBlock(scope: !5086, file: !190, line: 593, column: 42)
!5086 = distinct !DILexicalBlock(scope: !5080, file: !190, line: 593, column: 6)
!5087 = !DILocation(line: 591, column: 61, scope: !5080)
!5088 = !DILocation(line: 591, column: 73, scope: !5080)
!5089 = !DILocation(line: 593, column: 27, scope: !5086)
!5090 = !DILocation(line: 593, column: 6, scope: !5086)
!5091 = !DILocation(line: 593, column: 33, scope: !5086)
!5092 = !DILocation(line: 593, column: 36, scope: !5086)
!5093 = !DILocation(line: 593, column: 6, scope: !5080)
!5094 = !DILocation(line: 594, column: 3, scope: !5085)
!5095 = !DILocation(line: 594, column: 16, scope: !5085)
!5096 = !DILocation(line: 596, column: 7, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5085, file: !190, line: 596, column: 7)
!5098 = !DILocation(line: 596, column: 12, scope: !5097)
!5099 = !DILocation(line: 596, column: 7, scope: !5085)
!5100 = !DILocation(line: 597, column: 25, scope: !5097)
!5101 = !DILocation(line: 597, column: 31, scope: !5097)
!5102 = !DILocation(line: 597, column: 11, scope: !5097)
!5103 = !DILocation(line: 597, column: 4, scope: !5097)
!5104 = !DILocation(line: 599, column: 11, scope: !5085)
!5105 = !DILocation(line: 599, column: 9, scope: !5085)
!5106 = !DILocation(line: 601, column: 33, scope: !5085)
!5107 = !DILocation(line: 601, column: 40, scope: !5085)
!5108 = !DILocation(line: 601, column: 20, scope: !5085)
!5109 = !DILocation(line: 601, column: 5, scope: !5085)
!5110 = !DILocation(line: 601, column: 51, scope: !5085)
!5111 = !DILocation(line: 602, column: 5, scope: !5085)
!5112 = !DILocation(line: 602, column: 12, scope: !5085)
!5113 = !DILocation(line: 600, column: 10, scope: !5085)
!5114 = !DILocation(line: 600, column: 3, scope: !5085)
!5115 = !DILocation(line: 603, column: 2, scope: !5086)
!5116 = !DILocation(line: 604, column: 19, scope: !5080)
!5117 = !DILocation(line: 604, column: 25, scope: !5080)
!5118 = !DILocation(line: 604, column: 9, scope: !5080)
!5119 = !DILocation(line: 604, column: 2, scope: !5080)
!5120 = !DILocation(line: 605, column: 1, scope: !5080)
!5121 = !DISubprogram(name: "kmalloc_large", scope: !190, file: !190, line: 531, type: !5037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5122 = distinct !DISubprogram(name: "__kmalloc_index", scope: !190, file: !190, line: 444, type: !5123, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5125)
!5123 = !DISubroutineType(types: !5124)
!5124 = !{!7, !38, !548}
!5125 = !{!5126, !5127}
!5126 = !DILocalVariable(name: "size", arg: 1, scope: !5122, file: !190, line: 444, type: !38)
!5127 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5122, file: !190, line: 445, type: !548)
!5128 = !DILocation(line: 444, column: 60, scope: !5122)
!5129 = !DILocation(line: 445, column: 16, scope: !5122)
!5130 = !DILocation(line: 447, column: 7, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 447, column: 6)
!5132 = !DILocation(line: 447, column: 6, scope: !5122)
!5133 = !DILocation(line: 448, column: 3, scope: !5131)
!5134 = !DILocation(line: 450, column: 6, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 450, column: 6)
!5136 = !DILocation(line: 450, column: 11, scope: !5135)
!5137 = !DILocation(line: 450, column: 6, scope: !5122)
!5138 = !DILocation(line: 451, column: 3, scope: !5135)
!5139 = !DILocation(line: 453, column: 32, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 453, column: 6)
!5141 = !DILocation(line: 453, column: 37, scope: !5140)
!5142 = !DILocation(line: 453, column: 42, scope: !5140)
!5143 = !DILocation(line: 453, column: 45, scope: !5140)
!5144 = !DILocation(line: 453, column: 50, scope: !5140)
!5145 = !DILocation(line: 453, column: 6, scope: !5122)
!5146 = !DILocation(line: 454, column: 3, scope: !5140)
!5147 = !DILocation(line: 455, column: 32, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 455, column: 6)
!5149 = !DILocation(line: 455, column: 37, scope: !5148)
!5150 = !DILocation(line: 455, column: 43, scope: !5148)
!5151 = !DILocation(line: 455, column: 46, scope: !5148)
!5152 = !DILocation(line: 455, column: 51, scope: !5148)
!5153 = !DILocation(line: 455, column: 6, scope: !5122)
!5154 = !DILocation(line: 456, column: 3, scope: !5148)
!5155 = !DILocation(line: 457, column: 6, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 457, column: 6)
!5157 = !DILocation(line: 457, column: 11, scope: !5156)
!5158 = !DILocation(line: 457, column: 6, scope: !5122)
!5159 = !DILocation(line: 457, column: 26, scope: !5156)
!5160 = !DILocation(line: 458, column: 6, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 458, column: 6)
!5162 = !DILocation(line: 458, column: 11, scope: !5161)
!5163 = !DILocation(line: 458, column: 6, scope: !5122)
!5164 = !DILocation(line: 458, column: 26, scope: !5161)
!5165 = !DILocation(line: 459, column: 6, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 459, column: 6)
!5167 = !DILocation(line: 459, column: 11, scope: !5166)
!5168 = !DILocation(line: 459, column: 6, scope: !5122)
!5169 = !DILocation(line: 459, column: 26, scope: !5166)
!5170 = !DILocation(line: 460, column: 6, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 460, column: 6)
!5172 = !DILocation(line: 460, column: 11, scope: !5171)
!5173 = !DILocation(line: 460, column: 6, scope: !5122)
!5174 = !DILocation(line: 460, column: 26, scope: !5171)
!5175 = !DILocation(line: 461, column: 6, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 461, column: 6)
!5177 = !DILocation(line: 461, column: 11, scope: !5176)
!5178 = !DILocation(line: 461, column: 6, scope: !5122)
!5179 = !DILocation(line: 461, column: 26, scope: !5176)
!5180 = !DILocation(line: 462, column: 6, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 462, column: 6)
!5182 = !DILocation(line: 462, column: 11, scope: !5181)
!5183 = !DILocation(line: 462, column: 6, scope: !5122)
!5184 = !DILocation(line: 462, column: 26, scope: !5181)
!5185 = !DILocation(line: 463, column: 6, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 463, column: 6)
!5187 = !DILocation(line: 463, column: 11, scope: !5186)
!5188 = !DILocation(line: 463, column: 6, scope: !5122)
!5189 = !DILocation(line: 463, column: 26, scope: !5186)
!5190 = !DILocation(line: 464, column: 6, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 464, column: 6)
!5192 = !DILocation(line: 464, column: 11, scope: !5191)
!5193 = !DILocation(line: 464, column: 6, scope: !5122)
!5194 = !DILocation(line: 464, column: 26, scope: !5191)
!5195 = !DILocation(line: 465, column: 6, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 465, column: 6)
!5197 = !DILocation(line: 465, column: 11, scope: !5196)
!5198 = !DILocation(line: 465, column: 6, scope: !5122)
!5199 = !DILocation(line: 465, column: 26, scope: !5196)
!5200 = !DILocation(line: 466, column: 6, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 466, column: 6)
!5202 = !DILocation(line: 466, column: 11, scope: !5201)
!5203 = !DILocation(line: 466, column: 6, scope: !5122)
!5204 = !DILocation(line: 466, column: 26, scope: !5201)
!5205 = !DILocation(line: 467, column: 6, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 467, column: 6)
!5207 = !DILocation(line: 467, column: 11, scope: !5206)
!5208 = !DILocation(line: 467, column: 6, scope: !5122)
!5209 = !DILocation(line: 467, column: 26, scope: !5206)
!5210 = !DILocation(line: 468, column: 6, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 468, column: 6)
!5212 = !DILocation(line: 468, column: 11, scope: !5211)
!5213 = !DILocation(line: 468, column: 6, scope: !5122)
!5214 = !DILocation(line: 468, column: 26, scope: !5211)
!5215 = !DILocation(line: 469, column: 6, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 469, column: 6)
!5217 = !DILocation(line: 469, column: 11, scope: !5216)
!5218 = !DILocation(line: 469, column: 6, scope: !5122)
!5219 = !DILocation(line: 469, column: 26, scope: !5216)
!5220 = !DILocation(line: 470, column: 6, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 470, column: 6)
!5222 = !DILocation(line: 470, column: 11, scope: !5221)
!5223 = !DILocation(line: 470, column: 6, scope: !5122)
!5224 = !DILocation(line: 470, column: 26, scope: !5221)
!5225 = !DILocation(line: 471, column: 6, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 471, column: 6)
!5227 = !DILocation(line: 471, column: 11, scope: !5226)
!5228 = !DILocation(line: 471, column: 6, scope: !5122)
!5229 = !DILocation(line: 471, column: 26, scope: !5226)
!5230 = !DILocation(line: 472, column: 6, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 472, column: 6)
!5232 = !DILocation(line: 472, column: 11, scope: !5231)
!5233 = !DILocation(line: 472, column: 6, scope: !5122)
!5234 = !DILocation(line: 472, column: 26, scope: !5231)
!5235 = !DILocation(line: 473, column: 6, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 473, column: 6)
!5237 = !DILocation(line: 473, column: 11, scope: !5236)
!5238 = !DILocation(line: 473, column: 6, scope: !5122)
!5239 = !DILocation(line: 473, column: 26, scope: !5236)
!5240 = !DILocation(line: 474, column: 6, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 474, column: 6)
!5242 = !DILocation(line: 474, column: 11, scope: !5241)
!5243 = !DILocation(line: 474, column: 6, scope: !5122)
!5244 = !DILocation(line: 474, column: 27, scope: !5241)
!5245 = !DILocation(line: 475, column: 6, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 475, column: 6)
!5247 = !DILocation(line: 475, column: 11, scope: !5246)
!5248 = !DILocation(line: 475, column: 6, scope: !5122)
!5249 = !DILocation(line: 475, column: 32, scope: !5246)
!5250 = !DILocation(line: 477, column: 50, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5122, file: !190, line: 477, column: 6)
!5252 = !DILocation(line: 477, column: 6, scope: !5122)
!5253 = !DILocation(line: 478, column: 3, scope: !5251)
!5254 = !DILocation(line: 478, column: 3, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5256, file: !190, line: 478, column: 3)
!5256 = distinct !DILexicalBlock(scope: !5251, file: !190, line: 478, column: 3)
!5257 = !{i32 -2143547531}
!5258 = !DILocation(line: 478, column: 3, scope: !5256)
!5259 = !DILocation(line: 480, column: 3, scope: !5251)
!5260 = !DILocation(line: 480, column: 3, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5251, file: !190, line: 480, column: 3)
!5262 = !DILocation(line: 480, column: 3, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5261, file: !190, line: 480, column: 3)
!5264 = !DILocation(line: 480, column: 3, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5261, file: !190, line: 480, column: 3)
!5266 = !{i64 2151419968, i64 2151419997, i64 2151420043, i64 2151420101, i64 2151420155, i64 2151420209, i64 2151420264, i64 2151420295}
!5267 = !DILocation(line: 483, column: 2, scope: !5122)
!5268 = !DILocation(line: 484, column: 1, scope: !5122)
!5269 = !DISubprogram(name: "kmalloc_trace", scope: !190, file: !190, line: 525, type: !5270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5270 = !DISubroutineType(types: !5271)
!5271 = !{!23, !5272, !1058, !38}
!5272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5273, size: 64)
!5273 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2986, line: 11, flags: DIFlagFwdDecl)
!5274 = distinct !DISubprogram(name: "kmalloc_type", scope: !190, file: !190, line: 401, type: !5275, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5277)
!5275 = !DISubroutineType(types: !5276)
!5276 = !{!189, !1058, !42}
!5277 = !{!5278, !5279}
!5278 = !DILocalVariable(name: "flags", arg: 1, scope: !5274, file: !190, line: 401, type: !1058)
!5279 = !DILocalVariable(name: "caller", arg: 2, scope: !5274, file: !190, line: 401, type: !42)
!5280 = !DILocation(line: 401, column: 67, scope: !5274)
!5281 = !DILocation(line: 401, column: 88, scope: !5274)
!5282 = !DILocation(line: 407, column: 6, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5274, file: !190, line: 407, column: 6)
!5284 = !DILocation(line: 407, column: 6, scope: !5274)
!5285 = !DILocation(line: 413, column: 3, scope: !5283)
!5286 = !DILocation(line: 423, column: 38, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5274, file: !190, line: 423, column: 6)
!5288 = !DILocation(line: 423, column: 44, scope: !5287)
!5289 = !DILocation(line: 423, column: 6, scope: !5274)
!5290 = !DILocation(line: 424, column: 3, scope: !5287)
!5291 = !DILocation(line: 426, column: 3, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5274, file: !190, line: 425, column: 6)
!5293 = !DILocation(line: 429, column: 1, scope: !5274)
!5294 = !DISubprogram(name: "__kmalloc", scope: !190, file: !190, line: 488, type: !5037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5295 = !DISubprogram(name: "__compiletime_assert_117", scope: !190, file: !190, line: 478, type: !2383, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5296 = distinct !DISubprogram(name: "set_resource_limit", scope: !3, file: !3, line: 82, type: !5297, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5299)
!5297 = !DISubroutineType(types: !5298)
!5298 = !{null, !204, !25, !25}
!5299 = !{!5300, !5301, !5302}
!5300 = !DILocalVariable(name: "rpool", arg: 1, scope: !5296, file: !3, line: 82, type: !204)
!5301 = !DILocalVariable(name: "index", arg: 2, scope: !5296, file: !3, line: 83, type: !25)
!5302 = !DILocalVariable(name: "new_max", arg: 3, scope: !5296, file: !3, line: 83, type: !25)
!5303 = !DILocation(line: 82, column: 61, scope: !5296)
!5304 = !DILocation(line: 83, column: 15, scope: !5296)
!5305 = !DILocation(line: 83, column: 26, scope: !5296)
!5306 = !DILocation(line: 85, column: 6, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5296, file: !3, line: 85, column: 6)
!5308 = !DILocation(line: 85, column: 14, scope: !5307)
!5309 = !DILocation(line: 85, column: 6, scope: !5296)
!5310 = !DILocation(line: 86, column: 7, scope: !5311)
!5311 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 86, column: 7)
!5312 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 85, column: 26)
!5313 = !DILocation(line: 86, column: 14, scope: !5311)
!5314 = !DILocation(line: 86, column: 24, scope: !5311)
!5315 = !DILocation(line: 86, column: 31, scope: !5311)
!5316 = !DILocation(line: 86, column: 35, scope: !5311)
!5317 = !DILocation(line: 86, column: 7, scope: !5312)
!5318 = !DILocation(line: 87, column: 4, scope: !5311)
!5319 = !DILocation(line: 87, column: 11, scope: !5311)
!5320 = !DILocation(line: 87, column: 22, scope: !5311)
!5321 = !DILocation(line: 88, column: 2, scope: !5312)
!5322 = !DILocation(line: 89, column: 7, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 89, column: 7)
!5324 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 88, column: 9)
!5325 = !DILocation(line: 89, column: 14, scope: !5323)
!5326 = !DILocation(line: 89, column: 24, scope: !5323)
!5327 = !DILocation(line: 89, column: 31, scope: !5323)
!5328 = !DILocation(line: 89, column: 35, scope: !5323)
!5329 = !DILocation(line: 89, column: 7, scope: !5324)
!5330 = !DILocation(line: 90, column: 4, scope: !5323)
!5331 = !DILocation(line: 90, column: 11, scope: !5323)
!5332 = !DILocation(line: 90, column: 22, scope: !5323)
!5333 = !DILocation(line: 92, column: 32, scope: !5296)
!5334 = !DILocation(line: 92, column: 2, scope: !5296)
!5335 = !DILocation(line: 92, column: 9, scope: !5296)
!5336 = !DILocation(line: 92, column: 19, scope: !5296)
!5337 = !DILocation(line: 92, column: 26, scope: !5296)
!5338 = !DILocation(line: 92, column: 30, scope: !5296)
!5339 = !DILocation(line: 93, column: 1, scope: !5296)
!5340 = distinct !DISubprogram(name: "__list_add", scope: !4268, file: !4268, line: 146, type: !5341, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5343)
!5341 = !DISubroutineType(types: !5342)
!5342 = !{null, !103, !103, !103}
!5343 = !{!5344, !5345, !5346}
!5344 = !DILocalVariable(name: "new", arg: 1, scope: !5340, file: !4268, line: 146, type: !103)
!5345 = !DILocalVariable(name: "prev", arg: 2, scope: !5340, file: !4268, line: 147, type: !103)
!5346 = !DILocalVariable(name: "next", arg: 3, scope: !5340, file: !4268, line: 148, type: !103)
!5347 = !DILocation(line: 146, column: 49, scope: !5340)
!5348 = !DILocation(line: 147, column: 28, scope: !5340)
!5349 = !DILocation(line: 148, column: 28, scope: !5340)
!5350 = !DILocation(line: 150, column: 24, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5340, file: !4268, line: 150, column: 6)
!5352 = !DILocation(line: 150, column: 29, scope: !5351)
!5353 = !DILocation(line: 150, column: 35, scope: !5351)
!5354 = !DILocation(line: 150, column: 7, scope: !5351)
!5355 = !DILocation(line: 150, column: 6, scope: !5340)
!5356 = !DILocation(line: 151, column: 3, scope: !5351)
!5357 = !DILocation(line: 153, column: 15, scope: !5340)
!5358 = !DILocation(line: 153, column: 2, scope: !5340)
!5359 = !DILocation(line: 153, column: 8, scope: !5340)
!5360 = !DILocation(line: 153, column: 13, scope: !5340)
!5361 = !DILocation(line: 154, column: 14, scope: !5340)
!5362 = !DILocation(line: 154, column: 2, scope: !5340)
!5363 = !DILocation(line: 154, column: 7, scope: !5340)
!5364 = !DILocation(line: 154, column: 12, scope: !5340)
!5365 = !DILocation(line: 155, column: 14, scope: !5340)
!5366 = !DILocation(line: 155, column: 2, scope: !5340)
!5367 = !DILocation(line: 155, column: 7, scope: !5340)
!5368 = !DILocation(line: 155, column: 12, scope: !5340)
!5369 = !DILocation(line: 156, column: 2, scope: !5340)
!5370 = !DILocation(line: 156, column: 2, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5340, file: !4268, line: 156, column: 2)
!5372 = !DILocation(line: 156, column: 2, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5371, file: !4268, line: 156, column: 2)
!5374 = !DILocation(line: 156, column: 2, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5371, file: !4268, line: 156, column: 2)
!5376 = !DILocation(line: 157, column: 1, scope: !5340)
!5377 = distinct !DISubprogram(name: "__list_add_valid", scope: !4268, file: !4268, line: 128, type: !5378, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5380)
!5378 = !DISubroutineType(types: !5379)
!5379 = !{!548, !103, !103, !103}
!5380 = !{!5381, !5382, !5383}
!5381 = !DILocalVariable(name: "new", arg: 1, scope: !5377, file: !4268, line: 128, type: !103)
!5382 = !DILocalVariable(name: "prev", arg: 2, scope: !5377, file: !4268, line: 129, type: !103)
!5383 = !DILocalVariable(name: "next", arg: 3, scope: !5377, file: !4268, line: 130, type: !103)
!5384 = !DILocation(line: 128, column: 55, scope: !5377)
!5385 = !DILocation(line: 129, column: 23, scope: !5377)
!5386 = !DILocation(line: 130, column: 23, scope: !5377)
!5387 = !DILocation(line: 132, column: 2, scope: !5377)
!5388 = distinct !DISubprogram(name: "__list_del_entry", scope: !4268, file: !4268, line: 213, type: !4269, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5389)
!5389 = !{!5390}
!5390 = !DILocalVariable(name: "entry", arg: 1, scope: !5388, file: !4268, line: 213, type: !103)
!5391 = !DILocation(line: 213, column: 55, scope: !5388)
!5392 = !DILocation(line: 215, column: 30, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5388, file: !4268, line: 215, column: 6)
!5394 = !DILocation(line: 215, column: 7, scope: !5393)
!5395 = !DILocation(line: 215, column: 6, scope: !5388)
!5396 = !DILocation(line: 216, column: 3, scope: !5393)
!5397 = !DILocation(line: 218, column: 13, scope: !5388)
!5398 = !DILocation(line: 218, column: 20, scope: !5388)
!5399 = !DILocation(line: 218, column: 26, scope: !5388)
!5400 = !DILocation(line: 218, column: 33, scope: !5388)
!5401 = !DILocation(line: 218, column: 2, scope: !5388)
!5402 = !DILocation(line: 219, column: 1, scope: !5388)
!5403 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4268, file: !4268, line: 134, type: !5404, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5406)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{!548, !103}
!5406 = !{!5407}
!5407 = !DILocalVariable(name: "entry", arg: 1, scope: !5403, file: !4268, line: 134, type: !103)
!5408 = !DILocation(line: 134, column: 61, scope: !5403)
!5409 = !DILocation(line: 136, column: 2, scope: !5403)
!5410 = distinct !DISubprogram(name: "__list_del", scope: !4268, file: !4268, line: 193, type: !4290, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5411)
!5411 = !{!5412, !5413}
!5412 = !DILocalVariable(name: "prev", arg: 1, scope: !5410, file: !4268, line: 193, type: !103)
!5413 = !DILocalVariable(name: "next", arg: 2, scope: !5410, file: !4268, line: 193, type: !103)
!5414 = !DILocation(line: 193, column: 50, scope: !5410)
!5415 = !DILocation(line: 193, column: 75, scope: !5410)
!5416 = !DILocation(line: 195, column: 15, scope: !5410)
!5417 = !DILocation(line: 195, column: 2, scope: !5410)
!5418 = !DILocation(line: 195, column: 8, scope: !5410)
!5419 = !DILocation(line: 195, column: 13, scope: !5410)
!5420 = !DILocation(line: 196, column: 2, scope: !5410)
!5421 = !DILocation(line: 196, column: 2, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5410, file: !4268, line: 196, column: 2)
!5423 = !DILocation(line: 196, column: 2, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5422, file: !4268, line: 196, column: 2)
!5425 = !DILocation(line: 196, column: 2, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5422, file: !4268, line: 196, column: 2)
!5427 = !DILocation(line: 197, column: 1, scope: !5410)
!5428 = distinct !DISubprogram(name: "list_del", scope: !4268, file: !4268, line: 227, type: !4269, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5429)
!5429 = !{!5430}
!5430 = !DILocalVariable(name: "entry", arg: 1, scope: !5428, file: !4268, line: 227, type: !103)
!5431 = !DILocation(line: 227, column: 47, scope: !5428)
!5432 = !DILocation(line: 229, column: 19, scope: !5428)
!5433 = !DILocation(line: 229, column: 2, scope: !5428)
!5434 = !DILocation(line: 230, column: 2, scope: !5428)
!5435 = !DILocation(line: 230, column: 9, scope: !5428)
!5436 = !DILocation(line: 230, column: 14, scope: !5428)
!5437 = !DILocation(line: 231, column: 2, scope: !5428)
!5438 = !DILocation(line: 231, column: 9, scope: !5428)
!5439 = !DILocation(line: 231, column: 14, scope: !5428)
!5440 = !DILocation(line: 232, column: 1, scope: !5428)
!5441 = !DISubprogram(name: "kfree", scope: !190, file: !190, line: 227, type: !5442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5442 = !DISubroutineType(types: !5443)
!5443 = !{null, !274}
!5444 = distinct !DISubprogram(name: "rdmacg_resource_read", scope: !3, file: !3, line: 526, type: !1203, scopeLine: 527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5445)
!5445 = !{!5446, !5447, !5448, !5449, !5450, !5451, !5454}
!5446 = !DILocalVariable(name: "sf", arg: 1, scope: !5444, file: !3, line: 526, type: !1172)
!5447 = !DILocalVariable(name: "v", arg: 2, scope: !5444, file: !3, line: 526, type: !23)
!5448 = !DILocalVariable(name: "device", scope: !5444, file: !3, line: 528, type: !208)
!5449 = !DILocalVariable(name: "rpool", scope: !5444, file: !3, line: 529, type: !204)
!5450 = !DILocalVariable(name: "cg", scope: !5444, file: !3, line: 530, type: !234)
!5451 = !DILocalVariable(name: "__mptr", scope: !5452, file: !3, line: 534, type: !23)
!5452 = distinct !DILexicalBlock(scope: !5453, file: !3, line: 534, column: 2)
!5453 = distinct !DILexicalBlock(scope: !5444, file: !3, line: 534, column: 2)
!5454 = !DILocalVariable(name: "__mptr", scope: !5455, file: !3, line: 534, type: !23)
!5455 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 534, column: 2)
!5456 = distinct !DILexicalBlock(scope: !5453, file: !3, line: 534, column: 2)
!5457 = !DILocation(line: 526, column: 50, scope: !5444)
!5458 = !DILocation(line: 526, column: 60, scope: !5444)
!5459 = !DILocation(line: 528, column: 2, scope: !5444)
!5460 = !DILocation(line: 528, column: 24, scope: !5444)
!5461 = !DILocation(line: 529, column: 2, scope: !5444)
!5462 = !DILocation(line: 529, column: 31, scope: !5444)
!5463 = !DILocation(line: 530, column: 2, scope: !5444)
!5464 = !DILocation(line: 530, column: 22, scope: !5444)
!5465 = !DILocation(line: 530, column: 46, scope: !5444)
!5466 = !DILocation(line: 530, column: 38, scope: !5444)
!5467 = !DILocation(line: 530, column: 27, scope: !5444)
!5468 = !DILocation(line: 532, column: 2, scope: !5444)
!5469 = !DILocation(line: 534, column: 2, scope: !5452)
!5470 = !DILocation(line: 534, column: 2, scope: !5453)
!5471 = !DILocation(line: 534, column: 2, scope: !5456)
!5472 = !DILocation(line: 535, column: 14, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 534, column: 57)
!5474 = !DILocation(line: 535, column: 25, scope: !5473)
!5475 = !DILocation(line: 535, column: 33, scope: !5473)
!5476 = !DILocation(line: 535, column: 3, scope: !5473)
!5477 = !DILocation(line: 537, column: 32, scope: !5473)
!5478 = !DILocation(line: 537, column: 36, scope: !5473)
!5479 = !DILocation(line: 537, column: 11, scope: !5473)
!5480 = !DILocation(line: 537, column: 9, scope: !5473)
!5481 = !DILocation(line: 538, column: 22, scope: !5473)
!5482 = !DILocation(line: 538, column: 26, scope: !5473)
!5483 = !DILocation(line: 538, column: 3, scope: !5473)
!5484 = !DILocation(line: 540, column: 12, scope: !5473)
!5485 = !DILocation(line: 540, column: 3, scope: !5473)
!5486 = !DILocation(line: 541, column: 2, scope: !5473)
!5487 = !DILocation(line: 534, column: 2, scope: !5455)
!5488 = distinct !{!5488, !5470, !5489, !4044, !4045}
!5489 = !DILocation(line: 541, column: 2, scope: !5453)
!5490 = !DILocation(line: 543, column: 2, scope: !5444)
!5491 = !DILocation(line: 545, column: 1, scope: !5444)
!5492 = !DILocation(line: 544, column: 2, scope: !5444)
!5493 = distinct !DISubprogram(name: "rdmacg_resource_set_max", scope: !3, file: !3, line: 427, type: !3661, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5494)
!5494 = !{!5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5505, !5506, !5507, !5508, !5509, !5510}
!5495 = !DILocalVariable(name: "of", arg: 1, scope: !5493, file: !3, line: 427, type: !308)
!5496 = !DILocalVariable(name: "buf", arg: 2, scope: !5493, file: !3, line: 428, type: !214)
!5497 = !DILocalVariable(name: "nbytes", arg: 3, scope: !5493, file: !3, line: 428, type: !38)
!5498 = !DILocalVariable(name: "off", arg: 4, scope: !5493, file: !3, line: 428, type: !44)
!5499 = !DILocalVariable(name: "cg", scope: !5493, file: !3, line: 430, type: !234)
!5500 = !DILocalVariable(name: "dev_name", scope: !5493, file: !3, line: 431, type: !19)
!5501 = !DILocalVariable(name: "rpool", scope: !5493, file: !3, line: 432, type: !204)
!5502 = !DILocalVariable(name: "device", scope: !5493, file: !3, line: 433, type: !208)
!5503 = !DILocalVariable(name: "options", scope: !5493, file: !3, line: 434, type: !214)
!5504 = !DILocalVariable(name: "new_limits", scope: !5493, file: !3, line: 435, type: !1166)
!5505 = !DILocalVariable(name: "enables", scope: !5493, file: !3, line: 436, type: !42)
!5506 = !DILocalVariable(name: "i", scope: !5493, file: !3, line: 437, type: !25)
!5507 = !DILocalVariable(name: "ret", scope: !5493, file: !3, line: 437, type: !25)
!5508 = !DILabel(scope: !5493, name: "dev_err", file: !3, line: 484)
!5509 = !DILabel(scope: !5493, name: "parse_err", file: !3, line: 487)
!5510 = !DILabel(scope: !5493, name: "err", file: !3, line: 490)
!5511 = !DILocation(line: 427, column: 65, scope: !5493)
!5512 = !DILocation(line: 428, column: 18, scope: !5493)
!5513 = !DILocation(line: 428, column: 30, scope: !5493)
!5514 = !DILocation(line: 428, column: 45, scope: !5493)
!5515 = !DILocation(line: 430, column: 2, scope: !5493)
!5516 = !DILocation(line: 430, column: 22, scope: !5493)
!5517 = !DILocation(line: 430, column: 45, scope: !5493)
!5518 = !DILocation(line: 430, column: 38, scope: !5493)
!5519 = !DILocation(line: 430, column: 27, scope: !5493)
!5520 = !DILocation(line: 431, column: 2, scope: !5493)
!5521 = !DILocation(line: 431, column: 14, scope: !5493)
!5522 = !DILocation(line: 432, column: 2, scope: !5493)
!5523 = !DILocation(line: 432, column: 31, scope: !5493)
!5524 = !DILocation(line: 433, column: 2, scope: !5493)
!5525 = !DILocation(line: 433, column: 24, scope: !5493)
!5526 = !DILocation(line: 434, column: 2, scope: !5493)
!5527 = !DILocation(line: 434, column: 8, scope: !5493)
!5528 = !DILocation(line: 434, column: 27, scope: !5493)
!5529 = !DILocation(line: 434, column: 18, scope: !5493)
!5530 = !DILocation(line: 435, column: 2, scope: !5493)
!5531 = !DILocation(line: 435, column: 7, scope: !5493)
!5532 = !DILocation(line: 436, column: 2, scope: !5493)
!5533 = !DILocation(line: 436, column: 16, scope: !5493)
!5534 = !DILocation(line: 437, column: 2, scope: !5493)
!5535 = !DILocation(line: 437, column: 6, scope: !5493)
!5536 = !DILocation(line: 437, column: 13, scope: !5493)
!5537 = !DILocation(line: 440, column: 13, scope: !5493)
!5538 = !DILocation(line: 440, column: 11, scope: !5493)
!5539 = !DILocation(line: 441, column: 7, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5493, file: !3, line: 441, column: 6)
!5541 = !DILocation(line: 441, column: 6, scope: !5493)
!5542 = !DILocation(line: 442, column: 7, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 441, column: 17)
!5544 = !DILocation(line: 443, column: 3, scope: !5543)
!5545 = !DILocation(line: 446, column: 15, scope: !5493)
!5546 = !DILocation(line: 446, column: 13, scope: !5493)
!5547 = !DILocation(line: 447, column: 7, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5493, file: !3, line: 447, column: 6)
!5549 = !DILocation(line: 447, column: 6, scope: !5493)
!5550 = !DILocation(line: 448, column: 7, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5548, file: !3, line: 447, column: 19)
!5552 = !DILocation(line: 449, column: 3, scope: !5551)
!5553 = !DILocation(line: 452, column: 28, scope: !5493)
!5554 = !DILocation(line: 452, column: 37, scope: !5493)
!5555 = !DILocation(line: 452, column: 8, scope: !5493)
!5556 = !DILocation(line: 452, column: 6, scope: !5493)
!5557 = !DILocation(line: 453, column: 6, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5493, file: !3, line: 453, column: 6)
!5559 = !DILocation(line: 453, column: 6, scope: !5493)
!5560 = !DILocation(line: 454, column: 3, scope: !5558)
!5561 = !DILocation(line: 457, column: 2, scope: !5493)
!5562 = !DILocation(line: 459, column: 36, scope: !5493)
!5563 = !DILocation(line: 459, column: 11, scope: !5493)
!5564 = !DILocation(line: 459, column: 9, scope: !5493)
!5565 = !DILocation(line: 460, column: 7, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5493, file: !3, line: 460, column: 6)
!5567 = !DILocation(line: 460, column: 6, scope: !5493)
!5568 = !DILocation(line: 461, column: 7, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5566, file: !3, line: 460, column: 15)
!5570 = !DILocation(line: 462, column: 3, scope: !5569)
!5571 = !DILocation(line: 465, column: 30, scope: !5493)
!5572 = !DILocation(line: 465, column: 34, scope: !5493)
!5573 = !DILocation(line: 465, column: 10, scope: !5493)
!5574 = !DILocation(line: 465, column: 8, scope: !5493)
!5575 = !DILocation(line: 466, column: 13, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5493, file: !3, line: 466, column: 6)
!5577 = !DILocation(line: 466, column: 6, scope: !5576)
!5578 = !DILocation(line: 466, column: 6, scope: !5493)
!5579 = !DILocation(line: 467, column: 17, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 466, column: 21)
!5581 = !DILocation(line: 467, column: 9, scope: !5580)
!5582 = !DILocation(line: 467, column: 7, scope: !5580)
!5583 = !DILocation(line: 468, column: 3, scope: !5580)
!5584 = !DILocation(line: 472, column: 2, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5493, file: !3, line: 472, column: 2)
!5586 = !DILocation(line: 472, column: 2, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5585, file: !3, line: 472, column: 2)
!5588 = !DILocation(line: 473, column: 22, scope: !5587)
!5589 = !DILocation(line: 473, column: 29, scope: !5587)
!5590 = !DILocation(line: 473, column: 32, scope: !5587)
!5591 = !DILocation(line: 473, column: 43, scope: !5587)
!5592 = !DILocation(line: 473, column: 3, scope: !5587)
!5593 = distinct !{!5593, !5584, !5594, !4044, !4045}
!5594 = !DILocation(line: 473, column: 45, scope: !5585)
!5595 = !DILocation(line: 475, column: 6, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5493, file: !3, line: 475, column: 6)
!5597 = !DILocation(line: 475, column: 13, scope: !5596)
!5598 = !DILocation(line: 475, column: 23, scope: !5596)
!5599 = !DILocation(line: 475, column: 28, scope: !5596)
!5600 = !DILocation(line: 476, column: 6, scope: !5596)
!5601 = !DILocation(line: 476, column: 13, scope: !5596)
!5602 = !DILocation(line: 476, column: 25, scope: !5596)
!5603 = !DILocation(line: 475, column: 6, scope: !5493)
!5604 = !DILocation(line: 481, column: 24, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 476, column: 49)
!5606 = !DILocation(line: 481, column: 3, scope: !5605)
!5607 = !DILocation(line: 482, column: 2, scope: !5605)
!5608 = !DILocation(line: 476, column: 28, scope: !5596)
!5609 = !DILocation(line: 484, column: 1, scope: !5493)
!5610 = !DILocation(line: 485, column: 2, scope: !5493)
!5611 = !DILocation(line: 487, column: 1, scope: !5493)
!5612 = !DILocation(line: 488, column: 8, scope: !5493)
!5613 = !DILocation(line: 488, column: 2, scope: !5493)
!5614 = !DILocation(line: 490, column: 1, scope: !5493)
!5615 = !DILocation(line: 491, column: 9, scope: !5493)
!5616 = !DILocation(line: 491, column: 16, scope: !5493)
!5617 = !DILocation(line: 492, column: 1, scope: !5493)
!5618 = !DILocation(line: 491, column: 2, scope: !5493)
!5619 = distinct !DISubprogram(name: "seq_css", scope: !2120, file: !2120, line: 584, type: !5620, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5622)
!5620 = !DISubroutineType(types: !5621)
!5621 = !{!2131, !1172}
!5622 = !{!5623}
!5623 = !DILocalVariable(name: "seq", arg: 1, scope: !5619, file: !2120, line: 584, type: !1172)
!5624 = !DILocation(line: 584, column: 68, scope: !5619)
!5625 = !DILocation(line: 586, column: 16, scope: !5619)
!5626 = !DILocation(line: 586, column: 21, scope: !5619)
!5627 = !DILocation(line: 586, column: 9, scope: !5619)
!5628 = !DILocation(line: 586, column: 2, scope: !5619)
!5629 = !DISubprogram(name: "seq_printf", scope: !1174, file: !1174, line: 119, type: !5630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5630 = !DISubroutineType(types: !5631)
!5631 = !{null, !1172, !19, null}
!5632 = distinct !DISubprogram(name: "print_rpool_values", scope: !3, file: !3, line: 494, type: !5633, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5635)
!5633 = !DISubroutineType(types: !5634)
!5634 = !{null, !1172, !204}
!5635 = !{!5636, !5637, !5638, !5639, !5640}
!5636 = !DILocalVariable(name: "sf", arg: 1, scope: !5632, file: !3, line: 494, type: !1172)
!5637 = !DILocalVariable(name: "rpool", arg: 2, scope: !5632, file: !3, line: 495, type: !204)
!5638 = !DILocalVariable(name: "sf_type", scope: !5632, file: !3, line: 497, type: !199)
!5639 = !DILocalVariable(name: "i", scope: !5632, file: !3, line: 498, type: !25)
!5640 = !DILocalVariable(name: "value", scope: !5632, file: !3, line: 499, type: !512)
!5641 = !DILocation(line: 494, column: 49, scope: !5632)
!5642 = !DILocation(line: 495, column: 40, scope: !5632)
!5643 = !DILocation(line: 497, column: 2, scope: !5632)
!5644 = !DILocation(line: 497, column: 24, scope: !5632)
!5645 = !DILocation(line: 498, column: 2, scope: !5632)
!5646 = !DILocation(line: 498, column: 6, scope: !5632)
!5647 = !DILocation(line: 499, column: 2, scope: !5632)
!5648 = !DILocation(line: 499, column: 6, scope: !5632)
!5649 = !DILocation(line: 501, column: 20, scope: !5632)
!5650 = !DILocation(line: 501, column: 12, scope: !5632)
!5651 = !DILocation(line: 501, column: 25, scope: !5632)
!5652 = !DILocation(line: 501, column: 10, scope: !5632)
!5653 = !DILocation(line: 503, column: 9, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5632, file: !3, line: 503, column: 2)
!5655 = !DILocation(line: 503, column: 7, scope: !5654)
!5656 = !DILocation(line: 503, column: 14, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5654, file: !3, line: 503, column: 2)
!5658 = !DILocation(line: 503, column: 16, scope: !5657)
!5659 = !DILocation(line: 503, column: 2, scope: !5654)
!5660 = !DILocation(line: 504, column: 12, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 503, column: 44)
!5662 = !DILocation(line: 504, column: 38, scope: !5661)
!5663 = !DILocation(line: 504, column: 16, scope: !5661)
!5664 = !DILocation(line: 504, column: 3, scope: !5661)
!5665 = !DILocation(line: 505, column: 12, scope: !5661)
!5666 = !DILocation(line: 505, column: 3, scope: !5661)
!5667 = !DILocation(line: 506, column: 7, scope: !5668)
!5668 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 506, column: 7)
!5669 = !DILocation(line: 506, column: 15, scope: !5668)
!5670 = !DILocation(line: 506, column: 7, scope: !5661)
!5671 = !DILocation(line: 507, column: 8, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5673, file: !3, line: 507, column: 8)
!5673 = distinct !DILexicalBlock(scope: !5668, file: !3, line: 506, column: 44)
!5674 = !DILocation(line: 507, column: 8, scope: !5673)
!5675 = !DILocation(line: 508, column: 13, scope: !5672)
!5676 = !DILocation(line: 508, column: 20, scope: !5672)
!5677 = !DILocation(line: 508, column: 30, scope: !5672)
!5678 = !DILocation(line: 508, column: 33, scope: !5672)
!5679 = !DILocation(line: 508, column: 11, scope: !5672)
!5680 = !DILocation(line: 508, column: 5, scope: !5672)
!5681 = !DILocation(line: 510, column: 11, scope: !5672)
!5682 = !DILocation(line: 511, column: 3, scope: !5673)
!5683 = !DILocation(line: 512, column: 8, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5685, file: !3, line: 512, column: 8)
!5685 = distinct !DILexicalBlock(scope: !5668, file: !3, line: 511, column: 10)
!5686 = !DILocation(line: 512, column: 8, scope: !5685)
!5687 = !DILocation(line: 513, column: 13, scope: !5684)
!5688 = !DILocation(line: 513, column: 20, scope: !5684)
!5689 = !DILocation(line: 513, column: 30, scope: !5684)
!5690 = !DILocation(line: 513, column: 33, scope: !5684)
!5691 = !DILocation(line: 513, column: 11, scope: !5684)
!5692 = !DILocation(line: 513, column: 5, scope: !5684)
!5693 = !DILocation(line: 515, column: 11, scope: !5684)
!5694 = !DILocation(line: 518, column: 7, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 518, column: 7)
!5696 = !DILocation(line: 518, column: 13, scope: !5695)
!5697 = !DILocation(line: 518, column: 7, scope: !5661)
!5698 = !DILocation(line: 519, column: 13, scope: !5695)
!5699 = !DILocation(line: 519, column: 4, scope: !5695)
!5700 = !DILocation(line: 521, column: 15, scope: !5695)
!5701 = !DILocation(line: 521, column: 25, scope: !5695)
!5702 = !DILocation(line: 521, column: 4, scope: !5695)
!5703 = !DILocation(line: 522, column: 12, scope: !5661)
!5704 = !DILocation(line: 522, column: 3, scope: !5661)
!5705 = !DILocation(line: 523, column: 2, scope: !5661)
!5706 = !DILocation(line: 503, column: 40, scope: !5657)
!5707 = !DILocation(line: 503, column: 2, scope: !5657)
!5708 = distinct !{!5708, !5659, !5709, !4044, !4045}
!5709 = !DILocation(line: 523, column: 2, scope: !5654)
!5710 = !DILocation(line: 524, column: 1, scope: !5632)
!5711 = !DISubprogram(name: "seq_putc", scope: !1174, file: !1174, line: 120, type: !5712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5712 = !DISubroutineType(types: !5713)
!5713 = !{null, !1172, !21}
!5714 = !DISubprogram(name: "of_css", scope: !2120, file: !2120, line: 576, type: !5715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5715 = !DISubroutineType(types: !5716)
!5716 = !{!2131, !308}
!5717 = distinct !DISubprogram(name: "seq_cft", scope: !2120, file: !2120, line: 579, type: !5718, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5720)
!5718 = !DISubroutineType(types: !5719)
!5719 = !{!3843, !1172}
!5720 = !{!5721}
!5721 = !DILocalVariable(name: "seq", arg: 1, scope: !5717, file: !2120, line: 579, type: !1172)
!5722 = !DILocation(line: 579, column: 55, scope: !5717)
!5723 = !DILocation(line: 581, column: 16, scope: !5717)
!5724 = !DILocation(line: 581, column: 21, scope: !5717)
!5725 = !DILocation(line: 581, column: 9, scope: !5717)
!5726 = !DILocation(line: 581, column: 2, scope: !5717)
!5727 = !DISubprogram(name: "seq_puts", scope: !1174, file: !1174, line: 121, type: !5728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5728 = !DISubroutineType(types: !5729)
!5729 = !{null, !1172, !19}
!5730 = distinct !DISubprogram(name: "of_cft", scope: !2120, file: !2120, line: 571, type: !5731, scopeLine: 572, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5733)
!5731 = !DISubroutineType(types: !5732)
!5732 = !{!3843, !308}
!5733 = !{!5734}
!5734 = !DILocalVariable(name: "of", arg: 1, scope: !5730, file: !2120, line: 571, type: !308)
!5735 = !DILocation(line: 571, column: 62, scope: !5730)
!5736 = !DILocation(line: 573, column: 9, scope: !5730)
!5737 = !DILocation(line: 573, column: 13, scope: !5730)
!5738 = !DILocation(line: 573, column: 17, scope: !5730)
!5739 = !DILocation(line: 573, column: 2, scope: !5730)
!5740 = distinct !DISubprogram(name: "strstrip", scope: !5741, file: !5741, line: 116, type: !5742, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5744)
!5741 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5742 = !DISubroutineType(types: !5743)
!5743 = !{!214, !214}
!5744 = !{!5745}
!5745 = !DILocalVariable(name: "str", arg: 1, scope: !5740, file: !5741, line: 116, type: !214)
!5746 = !DILocation(line: 116, column: 49, scope: !5740)
!5747 = !DILocation(line: 118, column: 15, scope: !5740)
!5748 = !DILocation(line: 118, column: 9, scope: !5740)
!5749 = !DILocation(line: 118, column: 2, scope: !5740)
!5750 = !DISubprogram(name: "strsep", scope: !5741, file: !5741, line: 137, type: !5751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5751 = !DISubroutineType(types: !5752)
!5752 = !{!214, !5753, !19}
!5753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!5754 = distinct !DISubprogram(name: "kcalloc", scope: !190, file: !190, line: 666, type: !5755, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5757)
!5755 = !DISubroutineType(types: !5756)
!5756 = !{!23, !38, !38, !1058}
!5757 = !{!5758, !5759, !5760}
!5758 = !DILocalVariable(name: "n", arg: 1, scope: !5754, file: !190, line: 666, type: !38)
!5759 = !DILocalVariable(name: "size", arg: 2, scope: !5754, file: !190, line: 666, type: !38)
!5760 = !DILocalVariable(name: "flags", arg: 3, scope: !5754, file: !190, line: 666, type: !1058)
!5761 = !DILocation(line: 666, column: 55, scope: !5754)
!5762 = !DILocation(line: 666, column: 65, scope: !5754)
!5763 = !DILocation(line: 666, column: 77, scope: !5754)
!5764 = !DILocation(line: 668, column: 23, scope: !5754)
!5765 = !DILocation(line: 668, column: 26, scope: !5754)
!5766 = !DILocation(line: 668, column: 32, scope: !5754)
!5767 = !DILocation(line: 668, column: 38, scope: !5754)
!5768 = !DILocation(line: 668, column: 9, scope: !5754)
!5769 = !DILocation(line: 668, column: 2, scope: !5754)
!5770 = distinct !DISubprogram(name: "rdmacg_parse_limits", scope: !3, file: !3, line: 391, type: !5771, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5773)
!5771 = !DISubroutineType(types: !5772)
!5772 = !{!25, !214, !1166, !230}
!5773 = !{!5774, !5775, !5776, !5777, !5778, !5779, !5781, !5782}
!5774 = !DILocalVariable(name: "options", arg: 1, scope: !5770, file: !3, line: 391, type: !214)
!5775 = !DILocalVariable(name: "new_limits", arg: 2, scope: !5770, file: !3, line: 392, type: !1166)
!5776 = !DILocalVariable(name: "enables", arg: 3, scope: !5770, file: !3, line: 392, type: !230)
!5777 = !DILocalVariable(name: "c", scope: !5770, file: !3, line: 394, type: !214)
!5778 = !DILocalVariable(name: "err", scope: !5770, file: !3, line: 395, type: !25)
!5779 = !DILocalVariable(name: "index", scope: !5780, file: !3, line: 399, type: !25)
!5780 = distinct !DILexicalBlock(scope: !5770, file: !3, line: 398, column: 46)
!5781 = !DILocalVariable(name: "intval", scope: !5780, file: !3, line: 399, type: !25)
!5782 = !DILabel(scope: !5770, name: "err", file: !3, line: 410)
!5783 = !DILocation(line: 391, column: 38, scope: !5770)
!5784 = !DILocation(line: 392, column: 16, scope: !5770)
!5785 = !DILocation(line: 392, column: 43, scope: !5770)
!5786 = !DILocation(line: 394, column: 2, scope: !5770)
!5787 = !DILocation(line: 394, column: 8, scope: !5770)
!5788 = !DILocation(line: 395, column: 2, scope: !5770)
!5789 = !DILocation(line: 395, column: 6, scope: !5770)
!5790 = !DILocation(line: 398, column: 2, scope: !5770)
!5791 = !DILocation(line: 398, column: 14, scope: !5770)
!5792 = !DILocation(line: 398, column: 12, scope: !5770)
!5793 = !DILocation(line: 398, column: 37, scope: !5770)
!5794 = !DILocation(line: 399, column: 3, scope: !5780)
!5795 = !DILocation(line: 399, column: 7, scope: !5780)
!5796 = !DILocation(line: 399, column: 14, scope: !5780)
!5797 = !DILocation(line: 401, column: 26, scope: !5780)
!5798 = !DILocation(line: 401, column: 11, scope: !5780)
!5799 = !DILocation(line: 401, column: 9, scope: !5780)
!5800 = !DILocation(line: 402, column: 7, scope: !5801)
!5801 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 402, column: 7)
!5802 = !DILocation(line: 402, column: 13, scope: !5801)
!5803 = !DILocation(line: 402, column: 7, scope: !5780)
!5804 = !DILocation(line: 403, column: 4, scope: !5801)
!5805 = !DILocation(line: 405, column: 23, scope: !5780)
!5806 = !DILocation(line: 405, column: 3, scope: !5780)
!5807 = !DILocation(line: 405, column: 14, scope: !5780)
!5808 = !DILocation(line: 405, column: 21, scope: !5780)
!5809 = !DILocation(line: 406, column: 15, scope: !5780)
!5810 = !DILocation(line: 406, column: 4, scope: !5780)
!5811 = !DILocation(line: 406, column: 12, scope: !5780)
!5812 = !DILocation(line: 407, column: 2, scope: !5770)
!5813 = distinct !{!5813, !5790, !5812, !4044, !4045}
!5814 = !DILocation(line: 408, column: 2, scope: !5770)
!5815 = !DILocation(line: 410, column: 1, scope: !5770)
!5816 = !DILocation(line: 411, column: 9, scope: !5770)
!5817 = !DILocation(line: 411, column: 2, scope: !5770)
!5818 = !DILocation(line: 412, column: 1, scope: !5770)
!5819 = distinct !DISubprogram(name: "rdmacg_get_device_locked", scope: !3, file: !3, line: 414, type: !5820, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5822)
!5820 = !DISubroutineType(types: !5821)
!5821 = !{!208, !19}
!5822 = !{!5823, !5824, !5825, !5828}
!5823 = !DILocalVariable(name: "name", arg: 1, scope: !5819, file: !3, line: 414, type: !19)
!5824 = !DILocalVariable(name: "device", scope: !5819, file: !3, line: 416, type: !208)
!5825 = !DILocalVariable(name: "__mptr", scope: !5826, file: !3, line: 420, type: !23)
!5826 = distinct !DILexicalBlock(scope: !5827, file: !3, line: 420, column: 2)
!5827 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 420, column: 2)
!5828 = !DILocalVariable(name: "__mptr", scope: !5829, file: !3, line: 420, type: !23)
!5829 = distinct !DILexicalBlock(scope: !5830, file: !3, line: 420, column: 2)
!5830 = distinct !DILexicalBlock(scope: !5827, file: !3, line: 420, column: 2)
!5831 = !DILocation(line: 414, column: 67, scope: !5819)
!5832 = !DILocation(line: 416, column: 2, scope: !5819)
!5833 = !DILocation(line: 416, column: 24, scope: !5819)
!5834 = !DILocation(line: 418, column: 2, scope: !5819)
!5835 = !DILocation(line: 418, column: 2, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 418, column: 2)
!5837 = !DILocation(line: 420, column: 2, scope: !5826)
!5838 = !DILocation(line: 420, column: 2, scope: !5827)
!5839 = !DILocation(line: 420, column: 2, scope: !5830)
!5840 = !DILocation(line: 421, column: 15, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5830, file: !3, line: 421, column: 7)
!5842 = !DILocation(line: 421, column: 21, scope: !5841)
!5843 = !DILocation(line: 421, column: 29, scope: !5841)
!5844 = !DILocation(line: 421, column: 8, scope: !5841)
!5845 = !DILocation(line: 421, column: 7, scope: !5830)
!5846 = !DILocation(line: 422, column: 11, scope: !5841)
!5847 = !DILocation(line: 422, column: 4, scope: !5841)
!5848 = !DILocation(line: 421, column: 33, scope: !5841)
!5849 = !DILocation(line: 420, column: 2, scope: !5829)
!5850 = distinct !{!5850, !5838, !5851, !4044, !4045}
!5851 = !DILocation(line: 422, column: 11, scope: !5827)
!5852 = !DILocation(line: 424, column: 2, scope: !5819)
!5853 = !DILocation(line: 425, column: 1, scope: !5819)
!5854 = distinct !DISubprogram(name: "find_next_bit", scope: !5855, file: !5855, line: 54, type: !5856, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5860)
!5855 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!5856 = !DISubroutineType(types: !5857)
!5857 = !{!42, !5858, !42, !42}
!5858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5859, size: 64)
!5859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!5860 = !{!5861, !5862, !5863, !5864}
!5861 = !DILocalVariable(name: "addr", arg: 1, scope: !5854, file: !5855, line: 54, type: !5858)
!5862 = !DILocalVariable(name: "size", arg: 2, scope: !5854, file: !5855, line: 54, type: !42)
!5863 = !DILocalVariable(name: "offset", arg: 3, scope: !5854, file: !5855, line: 55, type: !42)
!5864 = !DILocalVariable(name: "val", scope: !5865, file: !5855, line: 58, type: !42)
!5865 = distinct !DILexicalBlock(scope: !5866, file: !5855, line: 57, column: 31)
!5866 = distinct !DILexicalBlock(scope: !5854, file: !5855, line: 57, column: 6)
!5867 = !DILocation(line: 54, column: 50, scope: !5854)
!5868 = !DILocation(line: 54, column: 70, scope: !5854)
!5869 = !DILocation(line: 55, column: 22, scope: !5854)
!5870 = !DILocation(line: 57, column: 6, scope: !5866)
!5871 = !DILocation(line: 57, column: 6, scope: !5854)
!5872 = !DILocation(line: 58, column: 3, scope: !5865)
!5873 = !DILocation(line: 58, column: 17, scope: !5865)
!5874 = !DILocation(line: 60, column: 7, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5865, file: !5855, line: 60, column: 7)
!5876 = !DILocation(line: 60, column: 7, scope: !5865)
!5877 = !DILocation(line: 61, column: 11, scope: !5875)
!5878 = !DILocation(line: 61, column: 4, scope: !5875)
!5879 = !DILocation(line: 63, column: 10, scope: !5865)
!5880 = !DILocation(line: 63, column: 9, scope: !5865)
!5881 = !DILocation(line: 63, column: 17, scope: !5865)
!5882 = !DILocation(line: 63, column: 15, scope: !5865)
!5883 = !DILocation(line: 63, column: 7, scope: !5865)
!5884 = !DILocation(line: 64, column: 10, scope: !5865)
!5885 = !DILocation(line: 64, column: 16, scope: !5865)
!5886 = !DILocation(line: 64, column: 29, scope: !5865)
!5887 = !DILocation(line: 64, column: 3, scope: !5865)
!5888 = !DILocation(line: 65, column: 2, scope: !5866)
!5889 = !DILocation(line: 67, column: 24, scope: !5854)
!5890 = !DILocation(line: 67, column: 30, scope: !5854)
!5891 = !DILocation(line: 67, column: 36, scope: !5854)
!5892 = !DILocation(line: 67, column: 9, scope: !5854)
!5893 = !DILocation(line: 67, column: 2, scope: !5854)
!5894 = !DILocation(line: 68, column: 1, scope: !5854)
!5895 = !DISubprogram(name: "strim", scope: !5741, file: !5741, line: 114, type: !5742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5896 = distinct !DISubprogram(name: "kmalloc_array", scope: !190, file: !190, line: 629, type: !5755, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5897)
!5897 = !{!5898, !5899, !5900, !5901}
!5898 = !DILocalVariable(name: "n", arg: 1, scope: !5896, file: !190, line: 629, type: !38)
!5899 = !DILocalVariable(name: "size", arg: 2, scope: !5896, file: !190, line: 629, type: !38)
!5900 = !DILocalVariable(name: "flags", arg: 3, scope: !5896, file: !190, line: 629, type: !1058)
!5901 = !DILocalVariable(name: "bytes", scope: !5896, file: !190, line: 631, type: !38)
!5902 = !DILocation(line: 629, column: 61, scope: !5896)
!5903 = !DILocation(line: 629, column: 71, scope: !5896)
!5904 = !DILocation(line: 629, column: 83, scope: !5896)
!5905 = !DILocation(line: 631, column: 2, scope: !5896)
!5906 = !DILocation(line: 631, column: 9, scope: !5896)
!5907 = !DILocation(line: 633, column: 6, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5896, file: !190, line: 633, column: 6)
!5909 = !DILocation(line: 633, column: 6, scope: !5896)
!5910 = !DILocation(line: 634, column: 3, scope: !5908)
!5911 = !DILocation(line: 635, column: 27, scope: !5912)
!5912 = distinct !DILexicalBlock(scope: !5896, file: !190, line: 635, column: 6)
!5913 = !DILocation(line: 635, column: 6, scope: !5912)
!5914 = !DILocation(line: 635, column: 30, scope: !5912)
!5915 = !DILocation(line: 635, column: 54, scope: !5912)
!5916 = !DILocation(line: 635, column: 33, scope: !5912)
!5917 = !DILocation(line: 635, column: 6, scope: !5896)
!5918 = !DILocation(line: 636, column: 18, scope: !5912)
!5919 = !DILocation(line: 636, column: 25, scope: !5912)
!5920 = !DILocation(line: 636, column: 10, scope: !5912)
!5921 = !DILocation(line: 636, column: 3, scope: !5912)
!5922 = !DILocation(line: 637, column: 19, scope: !5896)
!5923 = !DILocation(line: 637, column: 26, scope: !5896)
!5924 = !DILocation(line: 637, column: 9, scope: !5896)
!5925 = !DILocation(line: 637, column: 2, scope: !5896)
!5926 = !DILocation(line: 638, column: 1, scope: !5896)
!5927 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5928, file: !5928, line: 51, type: !5929, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5931)
!5928 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!5929 = !DISubroutineType(types: !5930)
!5930 = !{!548, !548}
!5931 = !{!5932}
!5932 = !DILocalVariable(name: "overflow", arg: 1, scope: !5927, file: !5928, line: 51, type: !548)
!5933 = !DILocation(line: 51, column: 60, scope: !5927)
!5934 = !DILocation(line: 53, column: 9, scope: !5927)
!5935 = !DILocation(line: 53, column: 2, scope: !5927)
!5936 = distinct !DISubprogram(name: "parse_resource", scope: !3, file: !3, line: 358, type: !5937, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5939)
!5937 = !DISubroutineType(types: !5938)
!5938 = !{!25, !214, !1166}
!5939 = !{!5940, !5941, !5942, !5949, !5950, !5951, !5952, !5953}
!5940 = !DILocalVariable(name: "c", arg: 1, scope: !5936, file: !3, line: 358, type: !214)
!5941 = !DILocalVariable(name: "intval", arg: 2, scope: !5936, file: !3, line: 358, type: !1166)
!5942 = !DILocalVariable(name: "argstr", scope: !5936, file: !3, line: 360, type: !5943)
!5943 = !DIDerivedType(tag: DW_TAG_typedef, name: "substring_t", file: !5944, line: 28, baseType: !5945)
!5944 = !DIFile(filename: "./include/linux/parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "04065a33cd4b747875fdf369f6a5f3fe")
!5945 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5944, line: 25, size: 128, elements: !5946)
!5946 = !{!5947, !5948}
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !5945, file: !5944, line: 26, baseType: !214, size: 64)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !5945, file: !5944, line: 27, baseType: !214, size: 64, offset: 64)
!5949 = !DILocalVariable(name: "name", scope: !5936, file: !3, line: 361, type: !214)
!5950 = !DILocalVariable(name: "value", scope: !5936, file: !3, line: 361, type: !214)
!5951 = !DILocalVariable(name: "len", scope: !5936, file: !3, line: 362, type: !38)
!5952 = !DILocalVariable(name: "ret", scope: !5936, file: !3, line: 363, type: !25)
!5953 = !DILocalVariable(name: "i", scope: !5936, file: !3, line: 363, type: !25)
!5954 = !DILocation(line: 358, column: 33, scope: !5936)
!5955 = !DILocation(line: 358, column: 41, scope: !5936)
!5956 = !DILocation(line: 360, column: 2, scope: !5936)
!5957 = !DILocation(line: 360, column: 14, scope: !5936)
!5958 = !DILocation(line: 361, column: 2, scope: !5936)
!5959 = !DILocation(line: 361, column: 8, scope: !5936)
!5960 = !DILocation(line: 361, column: 15, scope: !5936)
!5961 = !DILocation(line: 361, column: 23, scope: !5936)
!5962 = !DILocation(line: 362, column: 2, scope: !5936)
!5963 = !DILocation(line: 362, column: 9, scope: !5936)
!5964 = !DILocation(line: 363, column: 2, scope: !5936)
!5965 = !DILocation(line: 363, column: 6, scope: !5936)
!5966 = !DILocation(line: 363, column: 11, scope: !5936)
!5967 = !DILocation(line: 365, column: 9, scope: !5936)
!5968 = !DILocation(line: 365, column: 7, scope: !5936)
!5969 = !DILocation(line: 366, column: 7, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5936, file: !3, line: 366, column: 6)
!5971 = !DILocation(line: 366, column: 12, scope: !5970)
!5972 = !DILocation(line: 366, column: 16, scope: !5970)
!5973 = !DILocation(line: 366, column: 6, scope: !5936)
!5974 = !DILocation(line: 367, column: 3, scope: !5970)
!5975 = !DILocation(line: 369, column: 63, scope: !5936)
!5976 = !DILocation(line: 369, column: 6, scope: !5936)
!5977 = !DILocation(line: 369, column: 4, scope: !5936)
!5978 = !DILocation(line: 370, column: 6, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5936, file: !3, line: 370, column: 6)
!5980 = !DILocation(line: 370, column: 8, scope: !5979)
!5981 = !DILocation(line: 370, column: 6, scope: !5936)
!5982 = !DILocation(line: 371, column: 10, scope: !5979)
!5983 = !DILocation(line: 371, column: 3, scope: !5979)
!5984 = !DILocation(line: 373, column: 15, scope: !5936)
!5985 = !DILocation(line: 373, column: 8, scope: !5936)
!5986 = !DILocation(line: 373, column: 6, scope: !5936)
!5987 = !DILocation(line: 375, column: 16, scope: !5936)
!5988 = !DILocation(line: 375, column: 9, scope: !5936)
!5989 = !DILocation(line: 375, column: 14, scope: !5936)
!5990 = !DILocation(line: 376, column: 14, scope: !5936)
!5991 = !DILocation(line: 376, column: 22, scope: !5936)
!5992 = !DILocation(line: 376, column: 20, scope: !5936)
!5993 = !DILocation(line: 376, column: 9, scope: !5936)
!5994 = !DILocation(line: 376, column: 12, scope: !5936)
!5995 = !DILocation(line: 378, column: 27, scope: !5936)
!5996 = !DILocation(line: 378, column: 8, scope: !5936)
!5997 = !DILocation(line: 378, column: 6, scope: !5936)
!5998 = !DILocation(line: 379, column: 6, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5936, file: !3, line: 379, column: 6)
!6000 = !DILocation(line: 379, column: 10, scope: !5999)
!6001 = !DILocation(line: 379, column: 6, scope: !5936)
!6002 = !DILocation(line: 380, column: 8, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !6004, file: !3, line: 380, column: 7)
!6004 = distinct !DILexicalBlock(scope: !5999, file: !3, line: 379, column: 16)
!6005 = !DILocation(line: 380, column: 7, scope: !6003)
!6006 = !DILocation(line: 380, column: 15, scope: !6003)
!6007 = !DILocation(line: 380, column: 7, scope: !6004)
!6008 = !DILocation(line: 381, column: 4, scope: !6003)
!6009 = !DILocation(line: 382, column: 10, scope: !6004)
!6010 = !DILocation(line: 382, column: 3, scope: !6004)
!6011 = !DILocation(line: 384, column: 14, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !5936, file: !3, line: 384, column: 6)
!6013 = !DILocation(line: 384, column: 37, scope: !6012)
!6014 = !DILocation(line: 384, column: 6, scope: !6012)
!6015 = !DILocation(line: 384, column: 42, scope: !6012)
!6016 = !DILocation(line: 384, column: 6, scope: !5936)
!6017 = !DILocation(line: 385, column: 4, scope: !6018)
!6018 = distinct !DILexicalBlock(scope: !6012, file: !3, line: 384, column: 48)
!6019 = !DILocation(line: 385, column: 11, scope: !6018)
!6020 = !DILocation(line: 386, column: 10, scope: !6018)
!6021 = !DILocation(line: 386, column: 3, scope: !6018)
!6022 = !DILocation(line: 388, column: 2, scope: !5936)
!6023 = !DILocation(line: 389, column: 1, scope: !5936)
!6024 = !DISubprogram(name: "match_string", scope: !5741, file: !5741, line: 227, type: !6025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6025 = !DISubroutineType(types: !6026)
!6026 = !{!25, !6027, !38, !19}
!6027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6028, size: 64)
!6028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!6029 = !DISubprogram(name: "strlen", scope: !5741, file: !5741, line: 128, type: !6030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6030 = !DISubroutineType(types: !6031)
!6031 = !{!42, !19}
!6032 = !DISubprogram(name: "match_int", scope: !5944, file: !5944, line: 31, type: !6033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6033 = !DISubroutineType(types: !6034)
!6034 = !{!25, !6035, !1166}
!6035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5943, size: 64)
!6036 = !DISubprogram(name: "strncmp", scope: !5741, file: !5741, line: 91, type: !6037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6037 = !DISubroutineType(types: !6038)
!6038 = !{!25, !19, !19, !39}
!6039 = !DISubprogram(name: "strcmp", scope: !5741, file: !5741, line: 88, type: !6040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6040 = !DISubroutineType(types: !6041)
!6041 = !{!25, !19, !19}
!6042 = distinct !DISubprogram(name: "variable__ffs", scope: !6043, file: !6043, line: 250, type: !6044, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6046)
!6043 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6044 = !DISubroutineType(types: !6045)
!6045 = !{!42, !42}
!6046 = !{!6047}
!6047 = !DILocalVariable(name: "word", arg: 1, scope: !6042, file: !6043, line: 250, type: !42)
!6048 = !DILocation(line: 250, column: 66, scope: !6042)
!6049 = !DILocation(line: 254, column: 11, scope: !6042)
!6050 = !DILocation(line: 252, column: 2, scope: !6042)
!6051 = !{i64 259836}
!6052 = !DILocation(line: 255, column: 9, scope: !6042)
!6053 = !DILocation(line: 255, column: 2, scope: !6042)
!6054 = !DISubprogram(name: "_find_next_bit", scope: !5855, file: !5855, line: 11, type: !5856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
