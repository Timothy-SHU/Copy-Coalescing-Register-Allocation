; ModuleID = 'arch/x86/kernel/fpu/regset.c'
source_filename = "arch/x86/kernel/fpu/regset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { %union.anon.13, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.15, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.13 = type { i32 }
%union.anon.15 = type { i64, [88 x i8] }
%struct.fpu_state_config = type { i32, i32, i64, i64, i64, i64 }
%struct.pcpu_hot = type { %union.anon.16 }
%union.anon.16 = type { %struct.anon.17, [16 x i8] }
%struct.anon.17 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.user_regset = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.membuf = type { ptr, i64 }
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
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
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
%struct.user_i387_ia32_struct = type { i32, i32, i32, i32, i32, i32, i32, [20 x i32] }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.18, i64, i64, %union.anon.19 }
%union.anon.18 = type { i64 }
%union.anon.19 = type { i64 }
%struct._fpreg = type { [4 x i16], i16 }
%struct._fpxreg = type { [4 x i16], i16, [3 x i16] }

@mxcsr_feature_mask = external dso_local global i32, align 4
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@fpu_user_cfg = external dso_local global %struct.fpu_state_config, align 8
@.str = private unnamed_addr constant [23 x i8] c"include/linux/regset.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [29 x i8] c"arch/x86/kernel/fpu/regset.c\00", align 1, !dbg !7
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !13

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @regset_fpregs_active(ptr noundef %target, ptr noundef %regset) #0 align 16 !dbg !3984 {
entry:
  %target.addr = alloca ptr, align 8
  %regset.addr = alloca ptr, align 8
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !4019, metadata !DIExpression()), !dbg !4021
  store ptr %regset, ptr %regset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regset.addr, metadata !4020, metadata !DIExpression()), !dbg !4022
  %0 = load ptr, ptr %regset.addr, align 8, !dbg !4023
  %n = getelementptr inbounds %struct.user_regset, ptr %0, i32 0, i32 4, !dbg !4024
  %1 = load i32, ptr %n, align 8, !dbg !4024
  ret i32 %1, !dbg !4025
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @regset_xregset_fpregs_active(ptr noundef %target, ptr noundef %regset) #0 align 16 !dbg !4026 {
entry:
  %target.addr = alloca ptr, align 8
  %regset.addr = alloca ptr, align 8
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !4028, metadata !DIExpression()), !dbg !4030
  store ptr %regset, ptr %regset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regset.addr, metadata !4029, metadata !DIExpression()), !dbg !4031
  %0 = load ptr, ptr %regset.addr, align 8, !dbg !4032
  %n = getelementptr inbounds %struct.user_regset, ptr %0, i32 0, i32 4, !dbg !4034
  %1 = load i32, ptr %n, align 8, !dbg !4034
  ret i32 %1, !dbg !4035
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @xfpregs_get(ptr noundef %target, ptr noundef %regset, ptr %to.coerce0, i64 %to.coerce1) #0 align 16 !dbg !4036 {
entry:
  %retval = alloca i32, align 4
  %to = alloca %struct.membuf, align 8
  %target.addr = alloca ptr, align 8
  %regset.addr = alloca ptr, align 8
  %fpu = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %0 = getelementptr inbounds { ptr, i64 }, ptr %to, i32 0, i32 0
  store ptr %to.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %to, i32 0, i32 1
  store i64 %to.coerce1, ptr %1, align 8
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !4038, metadata !DIExpression()), !dbg !4043
  store ptr %regset, ptr %regset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regset.addr, metadata !4039, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.declare(metadata ptr %to, metadata !4040, metadata !DIExpression()), !dbg !4045
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpu) #17, !dbg !4046
  call void @llvm.dbg.declare(metadata ptr %fpu, metadata !4041, metadata !DIExpression()), !dbg !4047
  %2 = load ptr, ptr %target.addr, align 8, !dbg !4048
  %thread = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 197, !dbg !4049
  %fpu1 = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !4050
  store ptr %fpu1, ptr %fpu, align 8, !dbg !4047
  %3 = load ptr, ptr %fpu, align 8, !dbg !4051
  call void @sync_fpstate(ptr noundef %3) #18, !dbg !4052
  %call = call zeroext i1 @use_xsave() #19, !dbg !4053
  br i1 %call, label %if.end, label %if.then, !dbg !4055

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %fpu, align 8, !dbg !4056
  %fpstate = getelementptr inbounds %struct.fpu, ptr %4, i32 0, i32 2, !dbg !4058
  %5 = load ptr, ptr %fpstate, align 16, !dbg !4058
  %regs = getelementptr inbounds %struct.fpstate, ptr %5, i32 0, i32 7, !dbg !4059
  %call2 = call i32 @membuf_write(ptr noundef %to, ptr noundef %regs, i64 noundef 512) #18, !dbg !4060
  store i32 %call2, ptr %retval, align 4, !dbg !4061
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4061

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %target.addr, align 8, !dbg !4062
  %7 = getelementptr inbounds { ptr, i64 }, ptr %to, i32 0, i32 0, !dbg !4063
  %8 = load ptr, ptr %7, align 8, !dbg !4063
  %9 = getelementptr inbounds { ptr, i64 }, ptr %to, i32 0, i32 1, !dbg !4063
  %10 = load i64, ptr %9, align 8, !dbg !4063
  call void @copy_xstate_to_uabi_buf(ptr %8, i64 %10, ptr noundef %6, i32 noundef 1) #18, !dbg !4063
  store i32 0, ptr %retval, align 4, !dbg !4064
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4064

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpu) #17, !dbg !4065
  %11 = load i32, ptr %retval, align 4, !dbg !4065
  ret i32 %11, !dbg !4065
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sync_fpstate(ptr noundef %fpu) #0 align 16 !dbg !4066 {
entry:
  %fpu.addr = alloca ptr, align 8
  store ptr %fpu, ptr %fpu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpu.addr, metadata !4070, metadata !DIExpression()), !dbg !4071
  %0 = load ptr, ptr %fpu.addr, align 8, !dbg !4072
  %call = call ptr @get_current() #18, !dbg !4074
  %thread = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 197, !dbg !4075
  %fpu1 = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !4076
  %cmp = icmp eq ptr %0, %fpu1, !dbg !4077
  br i1 %cmp, label %if.then, label %if.end, !dbg !4078

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fpu.addr, align 8, !dbg !4079
  call void @fpu_sync_fpstate(ptr noundef %1) #18, !dbg !4080
  br label %if.end, !dbg !4080

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4081
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(read)
define internal zeroext i1 @use_xsave() #3 align 16 !dbg !4082 {
entry:
  %call = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 154) #18, !dbg !4084
  ret i1 %call, !dbg !4085
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @membuf_write(ptr noundef %s, ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !4086 {
entry:
  %s.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !4091, metadata !DIExpression()), !dbg !4094
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4092, metadata !DIExpression()), !dbg !4095
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4093, metadata !DIExpression()), !dbg !4096
  %0 = load ptr, ptr %s.addr, align 8, !dbg !4097
  %left = getelementptr inbounds %struct.membuf, ptr %0, i32 0, i32 1, !dbg !4099
  %1 = load i64, ptr %left, align 8, !dbg !4099
  %tobool = icmp ne i64 %1, 0, !dbg !4097
  br i1 %tobool, label %if.then, label %if.end6, !dbg !4100

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4101
  %3 = load ptr, ptr %s.addr, align 8, !dbg !4104
  %left1 = getelementptr inbounds %struct.membuf, ptr %3, i32 0, i32 1, !dbg !4105
  %4 = load i64, ptr %left1, align 8, !dbg !4105
  %cmp = icmp ugt i64 %2, %4, !dbg !4106
  br i1 %cmp, label %if.then2, label %if.end, !dbg !4107

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %s.addr, align 8, !dbg !4108
  %left3 = getelementptr inbounds %struct.membuf, ptr %5, i32 0, i32 1, !dbg !4109
  %6 = load i64, ptr %left3, align 8, !dbg !4109
  store i64 %6, ptr %size.addr, align 8, !dbg !4110
  br label %if.end, !dbg !4111

if.end:                                           ; preds = %if.then2, %if.then
  %7 = load ptr, ptr %s.addr, align 8, !dbg !4112
  %p = getelementptr inbounds %struct.membuf, ptr %7, i32 0, i32 0, !dbg !4113
  %8 = load ptr, ptr %p, align 8, !dbg !4113
  %9 = load ptr, ptr %v.addr, align 8, !dbg !4114
  %10 = load i64, ptr %size.addr, align 8, !dbg !4115
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %9, i64 %10, i1 false), !dbg !4116
  %11 = load i64, ptr %size.addr, align 8, !dbg !4117
  %12 = load ptr, ptr %s.addr, align 8, !dbg !4118
  %p4 = getelementptr inbounds %struct.membuf, ptr %12, i32 0, i32 0, !dbg !4119
  %13 = load ptr, ptr %p4, align 8, !dbg !4120
  %add.ptr = getelementptr i8, ptr %13, i64 %11, !dbg !4120
  store ptr %add.ptr, ptr %p4, align 8, !dbg !4120
  %14 = load i64, ptr %size.addr, align 8, !dbg !4121
  %15 = load ptr, ptr %s.addr, align 8, !dbg !4122
  %left5 = getelementptr inbounds %struct.membuf, ptr %15, i32 0, i32 1, !dbg !4123
  %16 = load i64, ptr %left5, align 8, !dbg !4124
  %sub = sub i64 %16, %14, !dbg !4124
  store i64 %sub, ptr %left5, align 8, !dbg !4124
  br label %if.end6, !dbg !4125

if.end6:                                          ; preds = %if.end, %entry
  %17 = load ptr, ptr %s.addr, align 8, !dbg !4126
  %left7 = getelementptr inbounds %struct.membuf, ptr %17, i32 0, i32 1, !dbg !4127
  %18 = load i64, ptr %left7, align 8, !dbg !4127
  %conv = trunc i64 %18 to i32, !dbg !4126
  ret i32 %conv, !dbg !4128
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4129 dso_local void @copy_xstate_to_uabi_buf(ptr, i64, ptr noundef, i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @xfpregs_set(ptr noundef %target, ptr noundef %regset, i32 noundef %pos, i32 noundef %count, ptr noundef %kbuf, ptr noundef %ubuf) #0 align 16 !dbg !4132 {
entry:
  %retval = alloca i32, align 4
  %target.addr = alloca ptr, align 8
  %regset.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %kbuf.addr = alloca ptr, align 8
  %ubuf.addr = alloca ptr, align 8
  %fpu = alloca ptr, align 8
  %newstate = alloca %struct.fxregs_state, align 16
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !4134, metadata !DIExpression()), !dbg !4143
  store ptr %regset, ptr %regset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regset.addr, metadata !4135, metadata !DIExpression()), !dbg !4144
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !4136, metadata !DIExpression()), !dbg !4145
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4137, metadata !DIExpression()), !dbg !4146
  store ptr %kbuf, ptr %kbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kbuf.addr, metadata !4138, metadata !DIExpression()), !dbg !4147
  store ptr %ubuf, ptr %ubuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ubuf.addr, metadata !4139, metadata !DIExpression()), !dbg !4148
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpu) #17, !dbg !4149
  call void @llvm.dbg.declare(metadata ptr %fpu, metadata !4140, metadata !DIExpression()), !dbg !4150
  %0 = load ptr, ptr %target.addr, align 8, !dbg !4151
  %thread = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 197, !dbg !4152
  %fpu1 = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !4153
  store ptr %fpu1, ptr %fpu, align 8, !dbg !4150
  call void @llvm.lifetime.start.p0(i64 512, ptr %newstate) #17, !dbg !4154
  call void @llvm.dbg.declare(metadata ptr %newstate, metadata !4141, metadata !DIExpression()), !dbg !4155
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !4156
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4142, metadata !DIExpression()), !dbg !4157
  %1 = load i32, ptr %pos.addr, align 4, !dbg !4158
  %cmp = icmp ne i32 %1, 0, !dbg !4160
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4161

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %count.addr, align 4, !dbg !4162
  %conv = zext i32 %2 to i64, !dbg !4162
  %cmp2 = icmp ne i64 %conv, 512, !dbg !4163
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4164

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !4165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4165

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @user_regset_copyin(ptr noundef %pos.addr, ptr noundef %count.addr, ptr noundef %kbuf.addr, ptr noundef %ubuf.addr, ptr noundef %newstate, i32 noundef 0, i32 noundef -1) #18, !dbg !4166
  store i32 %call, ptr %ret, align 4, !dbg !4167
  %3 = load i32, ptr %ret, align 4, !dbg !4168
  %tobool = icmp ne i32 %3, 0, !dbg !4168
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !4170

if.then4:                                         ; preds = %if.end
  %4 = load i32, ptr %ret, align 4, !dbg !4171
  store i32 %4, ptr %retval, align 4, !dbg !4172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4172

if.end5:                                          ; preds = %if.end
  %mxcsr = getelementptr inbounds %struct.fxregs_state, ptr %newstate, i32 0, i32 5, !dbg !4173
  %5 = load i32, ptr %mxcsr, align 8, !dbg !4173
  %6 = load i32, ptr @mxcsr_feature_mask, align 4, !dbg !4175
  %not = xor i32 %6, -1, !dbg !4176
  %and = and i32 %5, %not, !dbg !4177
  %tobool6 = icmp ne i32 %and, 0, !dbg !4177
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4178

if.then7:                                         ; preds = %if.end5
  store i32 -22, ptr %retval, align 4, !dbg !4179
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4179

if.end8:                                          ; preds = %if.end5
  %7 = load ptr, ptr %fpu, align 8, !dbg !4180
  call void @fpu_force_restore(ptr noundef %7) #18, !dbg !4181
  %8 = load ptr, ptr %fpu, align 8, !dbg !4182
  %fpstate = getelementptr inbounds %struct.fpu, ptr %8, i32 0, i32 2, !dbg !4183
  %9 = load ptr, ptr %fpstate, align 16, !dbg !4183
  %regs = getelementptr inbounds %struct.fpstate, ptr %9, i32 0, i32 7, !dbg !4184
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %regs, ptr align 16 %newstate, i64 512, i1 false), !dbg !4185
  br label %do.body, !dbg !4186

do.body:                                          ; preds = %if.end8
  br label %do.cond, !dbg !4187

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4187

do.end:                                           ; preds = %do.cond
  %call9 = call ptr @get_current() #18, !dbg !4189
  %status = getelementptr inbounds %struct.thread_info, ptr %call9, i32 0, i32 2, !dbg !4189
  %10 = load i32, ptr %status, align 8, !dbg !4189
  %and10 = and i32 %10, 2, !dbg !4189
  %tobool11 = icmp ne i32 %and10, 0, !dbg !4189
  br i1 %tobool11, label %if.then12, label %if.end15, !dbg !4191

if.then12:                                        ; preds = %do.end
  %11 = load ptr, ptr %fpu, align 8, !dbg !4192
  %fpstate13 = getelementptr inbounds %struct.fpu, ptr %11, i32 0, i32 2, !dbg !4193
  %12 = load ptr, ptr %fpstate13, align 16, !dbg !4193
  %regs14 = getelementptr inbounds %struct.fpstate, ptr %12, i32 0, i32 7, !dbg !4194
  %xmm_space = getelementptr inbounds %struct.fxregs_state, ptr %regs14, i32 0, i32 8, !dbg !4195
  %arrayidx = getelementptr [64 x i32], ptr %xmm_space, i64 0, i64 32, !dbg !4192
  call void @llvm.memset.p0.i64(ptr align 32 %arrayidx, i8 0, i64 128, i1 false), !dbg !4196
  br label %if.end15, !dbg !4196

if.end15:                                         ; preds = %if.then12, %do.end
  %call16 = call zeroext i1 @use_xsave() #19, !dbg !4197
  br i1 %call16, label %if.then17, label %if.end20, !dbg !4199

if.then17:                                        ; preds = %if.end15
  %13 = load ptr, ptr %fpu, align 8, !dbg !4200
  %fpstate18 = getelementptr inbounds %struct.fpu, ptr %13, i32 0, i32 2, !dbg !4201
  %14 = load ptr, ptr %fpstate18, align 16, !dbg !4201
  %regs19 = getelementptr inbounds %struct.fpstate, ptr %14, i32 0, i32 7, !dbg !4202
  %header = getelementptr inbounds %struct.xregs_state, ptr %regs19, i32 0, i32 1, !dbg !4203
  %xfeatures = getelementptr inbounds %struct.xstate_header, ptr %header, i32 0, i32 0, !dbg !4204
  %15 = load i64, ptr %xfeatures, align 64, !dbg !4205
  %or = or i64 %15, 3, !dbg !4205
  store i64 %or, ptr %xfeatures, align 64, !dbg !4205
  br label %if.end20, !dbg !4200

if.end20:                                         ; preds = %if.then17, %if.end15
  store i32 0, ptr %retval, align 4, !dbg !4206
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4206

cleanup:                                          ; preds = %if.end20, %if.then7, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !4207
  call void @llvm.lifetime.end.p0(i64 512, ptr %newstate) #17, !dbg !4207
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpu) #17, !dbg !4207
  %16 = load i32, ptr %retval, align 4, !dbg !4207
  ret i32 %16, !dbg !4207
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @user_regset_copyin(ptr noundef %pos, ptr noundef %count, ptr noundef %kbuf, ptr noundef %ubuf, ptr noundef %data, i32 noundef %start_pos, i32 noundef %end_pos) #4 align 16 !dbg !4208 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca ptr, align 8
  %count.addr = alloca ptr, align 8
  %kbuf.addr = alloca ptr, align 8
  %ubuf.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %start_pos.addr = alloca i32, align 4
  %end_pos.addr = alloca i32, align 4
  %copy = alloca i32, align 4
  %__UNIQUE_ID___x249 = alloca i32, align 4
  %__UNIQUE_ID___y250 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !4213, metadata !DIExpression()), !dbg !4226
  store ptr %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4214, metadata !DIExpression()), !dbg !4227
  store ptr %kbuf, ptr %kbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kbuf.addr, metadata !4215, metadata !DIExpression()), !dbg !4228
  store ptr %ubuf, ptr %ubuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ubuf.addr, metadata !4216, metadata !DIExpression()), !dbg !4229
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4217, metadata !DIExpression()), !dbg !4230
  store i32 %start_pos, ptr %start_pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start_pos.addr, metadata !4218, metadata !DIExpression()), !dbg !4231
  store i32 %end_pos, ptr %end_pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %end_pos.addr, metadata !4219, metadata !DIExpression()), !dbg !4232
  %0 = load ptr, ptr %count.addr, align 8, !dbg !4233
  %1 = load i32, ptr %0, align 4, !dbg !4235
  %cmp = icmp eq i32 %1, 0, !dbg !4236
  br i1 %cmp, label %if.then, label %if.end, !dbg !4237

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4238
  br label %return, !dbg !4238

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4239

do.body:                                          ; preds = %if.end
  %2 = load ptr, ptr %pos.addr, align 8, !dbg !4240
  %3 = load i32, ptr %2, align 4, !dbg !4240
  %4 = load i32, ptr %start_pos.addr, align 4, !dbg !4240
  %cmp1 = icmp ult i32 %3, %4, !dbg !4240
  %lnot = xor i1 %cmp1, true, !dbg !4240
  %lnot2 = xor i1 %lnot, true, !dbg !4240
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4240
  %conv = sext i32 %lnot.ext to i64, !dbg !4240
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4240
  %tobool = icmp ne i64 %expval, 0, !dbg !4240
  br i1 %tobool, label %if.then3, label %if.end9, !dbg !4243

if.then3:                                         ; preds = %do.body
  br label %do.body4, !dbg !4240

do.body4:                                         ; preds = %if.then3
  br label %do.body5, !dbg !4244

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !4246

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !4244

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 260, i32 0, i64 12) #17, !dbg !4248, !srcloc !4250
  br label %do.end7, !dbg !4248

do.end7:                                          ; preds = %do.body6
  unreachable, !dbg !4244

do.end8:                                          ; No predecessors!
  br label %if.end9, !dbg !4244

if.end9:                                          ; preds = %do.end8, %do.body
  br label %do.end10, !dbg !4243

do.end10:                                         ; preds = %if.end9
  %5 = load i32, ptr %end_pos.addr, align 4, !dbg !4251
  %cmp11 = icmp slt i32 %5, 0, !dbg !4252
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !4253

lor.lhs.false:                                    ; preds = %do.end10
  %6 = load ptr, ptr %pos.addr, align 8, !dbg !4254
  %7 = load i32, ptr %6, align 4, !dbg !4255
  %8 = load i32, ptr %end_pos.addr, align 4, !dbg !4256
  %cmp13 = icmp ult i32 %7, %8, !dbg !4257
  br i1 %cmp13, label %if.then15, label %if.end39, !dbg !4258

if.then15:                                        ; preds = %lor.lhs.false, %do.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr %copy) #17, !dbg !4259
  call void @llvm.dbg.declare(metadata ptr %copy, metadata !4220, metadata !DIExpression()), !dbg !4260
  %9 = load i32, ptr %end_pos.addr, align 4, !dbg !4261
  %cmp16 = icmp slt i32 %9, 0, !dbg !4262
  br i1 %cmp16, label %cond.true, label %cond.false, !dbg !4261

cond.true:                                        ; preds = %if.then15
  %10 = load ptr, ptr %count.addr, align 8, !dbg !4263
  %11 = load i32, ptr %10, align 4, !dbg !4264
  br label %cond.end22, !dbg !4261

cond.false:                                       ; preds = %if.then15
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x249) #17, !dbg !4265
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x249, metadata !4223, metadata !DIExpression()), !dbg !4265
  %12 = load ptr, ptr %count.addr, align 8, !dbg !4265
  %13 = load i32, ptr %12, align 4, !dbg !4265
  store i32 %13, ptr %__UNIQUE_ID___x249, align 4, !dbg !4265
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y250) #17, !dbg !4265
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y250, metadata !4225, metadata !DIExpression()), !dbg !4265
  %14 = load i32, ptr %end_pos.addr, align 4, !dbg !4265
  %15 = load ptr, ptr %pos.addr, align 8, !dbg !4265
  %16 = load i32, ptr %15, align 4, !dbg !4265
  %sub = sub i32 %14, %16, !dbg !4265
  store i32 %sub, ptr %__UNIQUE_ID___y250, align 4, !dbg !4265
  %17 = load i32, ptr %__UNIQUE_ID___x249, align 4, !dbg !4265
  %18 = load i32, ptr %__UNIQUE_ID___y250, align 4, !dbg !4265
  %cmp18 = icmp ult i32 %17, %18, !dbg !4265
  br i1 %cmp18, label %cond.true20, label %cond.false21, !dbg !4265

cond.true20:                                      ; preds = %cond.false
  %19 = load i32, ptr %__UNIQUE_ID___x249, align 4, !dbg !4265
  br label %cond.end, !dbg !4265

cond.false21:                                     ; preds = %cond.false
  %20 = load i32, ptr %__UNIQUE_ID___y250, align 4, !dbg !4265
  br label %cond.end, !dbg !4265

cond.end:                                         ; preds = %cond.false21, %cond.true20
  %cond = phi i32 [ %19, %cond.true20 ], [ %20, %cond.false21 ], !dbg !4265
  store i32 %cond, ptr %tmp, align 4, !dbg !4265
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y250) #17, !dbg !4266
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x249) #17, !dbg !4266
  %21 = load i32, ptr %tmp, align 4, !dbg !4265
  br label %cond.end22, !dbg !4261

cond.end22:                                       ; preds = %cond.end, %cond.true
  %cond23 = phi i32 [ %11, %cond.true ], [ %21, %cond.end ], !dbg !4261
  store i32 %cond23, ptr %copy, align 4, !dbg !4260
  %22 = load ptr, ptr %pos.addr, align 8, !dbg !4267
  %23 = load i32, ptr %22, align 4, !dbg !4268
  %24 = load i32, ptr %start_pos.addr, align 4, !dbg !4269
  %sub24 = sub i32 %23, %24, !dbg !4270
  %25 = load ptr, ptr %data.addr, align 8, !dbg !4271
  %idx.ext = zext i32 %sub24 to i64, !dbg !4271
  %add.ptr = getelementptr i8, ptr %25, i64 %idx.ext, !dbg !4271
  store ptr %add.ptr, ptr %data.addr, align 8, !dbg !4271
  %26 = load ptr, ptr %kbuf.addr, align 8, !dbg !4272
  %27 = load ptr, ptr %26, align 8, !dbg !4274
  %tobool25 = icmp ne ptr %27, null, !dbg !4274
  br i1 %tobool25, label %if.then26, label %if.else, !dbg !4275

if.then26:                                        ; preds = %cond.end22
  %28 = load ptr, ptr %data.addr, align 8, !dbg !4276
  %29 = load ptr, ptr %kbuf.addr, align 8, !dbg !4278
  %30 = load ptr, ptr %29, align 8, !dbg !4279
  %31 = load i32, ptr %copy, align 4, !dbg !4280
  %conv27 = zext i32 %31 to i64, !dbg !4280
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr align 1 %30, i64 %conv27, i1 false), !dbg !4281
  %32 = load i32, ptr %copy, align 4, !dbg !4282
  %33 = load ptr, ptr %kbuf.addr, align 8, !dbg !4283
  %34 = load ptr, ptr %33, align 8, !dbg !4284
  %idx.ext28 = zext i32 %32 to i64, !dbg !4284
  %add.ptr29 = getelementptr i8, ptr %34, i64 %idx.ext28, !dbg !4284
  store ptr %add.ptr29, ptr %33, align 8, !dbg !4284
  br label %if.end37, !dbg !4285

if.else:                                          ; preds = %cond.end22
  %35 = load ptr, ptr %data.addr, align 8, !dbg !4286
  %36 = load ptr, ptr %ubuf.addr, align 8, !dbg !4288
  %37 = load ptr, ptr %36, align 8, !dbg !4289
  %38 = load i32, ptr %copy, align 4, !dbg !4290
  %conv30 = zext i32 %38 to i64, !dbg !4290
  %call = call i64 @__copy_from_user(ptr noundef %35, ptr noundef %37, i64 noundef %conv30) #18, !dbg !4291
  %tobool31 = icmp ne i64 %call, 0, !dbg !4291
  br i1 %tobool31, label %if.then32, label %if.else33, !dbg !4292

if.then32:                                        ; preds = %if.else
  store i32 -14, ptr %retval, align 4, !dbg !4293
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4293

if.else33:                                        ; preds = %if.else
  %39 = load i32, ptr %copy, align 4, !dbg !4294
  %40 = load ptr, ptr %ubuf.addr, align 8, !dbg !4295
  %41 = load ptr, ptr %40, align 8, !dbg !4296
  %idx.ext34 = zext i32 %39 to i64, !dbg !4296
  %add.ptr35 = getelementptr i8, ptr %41, i64 %idx.ext34, !dbg !4296
  store ptr %add.ptr35, ptr %40, align 8, !dbg !4296
  br label %if.end36

if.end36:                                         ; preds = %if.else33
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then26
  %42 = load i32, ptr %copy, align 4, !dbg !4297
  %43 = load ptr, ptr %pos.addr, align 8, !dbg !4298
  %44 = load i32, ptr %43, align 4, !dbg !4299
  %add = add i32 %44, %42, !dbg !4299
  store i32 %add, ptr %43, align 4, !dbg !4299
  %45 = load i32, ptr %copy, align 4, !dbg !4300
  %46 = load ptr, ptr %count.addr, align 8, !dbg !4301
  %47 = load i32, ptr %46, align 4, !dbg !4302
  %sub38 = sub i32 %47, %45, !dbg !4302
  store i32 %sub38, ptr %46, align 4, !dbg !4302
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4303
  br label %cleanup, !dbg !4303

cleanup:                                          ; preds = %if.end37, %if.then32
  call void @llvm.lifetime.end.p0(i64 4, ptr %copy) #17, !dbg !4303
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end39, !dbg !4304

if.end39:                                         ; preds = %cleanup.cont, %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !4305
  br label %return, !dbg !4305

return:                                           ; preds = %if.end39, %cleanup, %if.then
  %48 = load i32, ptr %retval, align 4, !dbg !4306
  ret i32 %48, !dbg !4306

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fpu_force_restore(ptr noundef %fpu) #0 align 16 !dbg !4307 {
entry:
  %fpu.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %fpu, ptr %fpu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpu.addr, metadata !4309, metadata !DIExpression()), !dbg !4315
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !4316
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4310, metadata !DIExpression()), !dbg !4316
  %0 = load ptr, ptr %fpu.addr, align 8, !dbg !4316
  %call = call ptr @get_current() #18, !dbg !4316
  %thread = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 197, !dbg !4316
  %fpu1 = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !4316
  %cmp = icmp eq ptr %0, %fpu1, !dbg !4316
  %lnot = xor i1 %cmp, true, !dbg !4316
  %lnot2 = xor i1 %lnot, true, !dbg !4316
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4316
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4316
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !4317
  %tobool = icmp ne i32 %1, 0, !dbg !4317
  %lnot3 = xor i1 %tobool, true, !dbg !4317
  %lnot5 = xor i1 %lnot3, true, !dbg !4317
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !4317
  %conv = sext i32 %lnot.ext6 to i64, !dbg !4317
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4317
  %tobool7 = icmp ne i64 %expval, 0, !dbg !4317
  br i1 %tobool7, label %if.then, label %if.end, !dbg !4316

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4317

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !4318
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4312, metadata !DIExpression()), !dbg !4318
  store i32 2307, ptr %__flags, align 4, !dbg !4318
  br label %do.body8, !dbg !4318

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !4319

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !4319

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !4318

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !4321
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 66, i32 %2, i64 12) #17, !dbg !4321, !srcloc !4323
  br label %do.cond10, !dbg !4321

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !4321

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !4318

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !4324

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !4324

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !4317
  br label %do.cond15, !dbg !4318

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !4318

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !4318

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !4316
  %tobool17 = icmp ne i32 %3, 0, !dbg !4316
  %lnot18 = xor i1 %tobool17, true, !dbg !4316
  %lnot20 = xor i1 %lnot18, true, !dbg !4316
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !4316
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !4316
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !4316
  store i64 %expval23, ptr %tmp, align 8, !dbg !4317
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !4326
  %4 = load i64, ptr %tmp, align 8, !dbg !4316
  %5 = load ptr, ptr %fpu.addr, align 8, !dbg !4327
  call void @__fpu_invalidate_fpregs_state(ptr noundef %5) #18, !dbg !4328
  ret void, !dbg !4329
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #7 align 16 !dbg !4330 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #17, !dbg !4341
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4335, metadata !DIExpression()), !dbg !4341
  br label %do.body, !dbg !4341

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !4342
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4337, metadata !DIExpression()), !dbg !4342
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4342
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4342
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !4341
  br label %do.cond, !dbg !4342

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4342

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #17, !dbg !4343
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4339, metadata !DIExpression()), !dbg !4343
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #20, !dbg !4343, !srcloc !4344
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4343
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4343
  %3 = inttoptr i64 %2 to ptr, !dbg !4343
  store ptr %3, ptr %tmp, align 8, !dbg !4343
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #17, !dbg !4341
  %4 = load ptr, ptr %tmp, align 8, !dbg !4343
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4341
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4341
  store ptr %5, ptr %tmp1, align 8, !dbg !4341
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #17, !dbg !4345
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4341
  ret ptr %6, !dbg !4346
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @xstateregs_get(ptr noundef %target, ptr noundef %regset, ptr %to.coerce0, i64 %to.coerce1) #0 align 16 !dbg !4347 {
entry:
  %retval = alloca i32, align 4
  %to = alloca %struct.membuf, align 8
  %target.addr = alloca ptr, align 8
  %regset.addr = alloca ptr, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %to, i32 0, i32 0
  store ptr %to.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %to, i32 0, i32 1
  store i64 %to.coerce1, ptr %1, align 8
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !4349, metadata !DIExpression()), !dbg !4352
  store ptr %regset, ptr %regset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regset.addr, metadata !4350, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.declare(metadata ptr %to, metadata !4351, metadata !DIExpression()), !dbg !4354
  br i1 false, label %cond.true, label %cond.false, !dbg !4355

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !4356

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !4355

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !4356

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !4356

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 154, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #18, !dbg !4356
  br i1 %call, label %if.end, label %if.then, !dbg !4356

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 154) #18, !dbg !4356
  br i1 %call5, label %if.end, label %if.then, !dbg !4355

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  store i32 -19, ptr %retval, align 4, !dbg !4358
  br label %return, !dbg !4358

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %2 = load ptr, ptr %target.addr, align 8, !dbg !4359
  %thread = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 197, !dbg !4360
  %fpu = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !4361
  call void @sync_fpstate(ptr noundef %fpu) #18, !dbg !4362
  %3 = load ptr, ptr %target.addr, align 8, !dbg !4363
  %4 = getelementptr inbounds { ptr, i64 }, ptr %to, i32 0, i32 0, !dbg !4364
  %5 = load ptr, ptr %4, align 8, !dbg !4364
  %6 = getelementptr inbounds { ptr, i64 }, ptr %to, i32 0, i32 1, !dbg !4364
  %7 = load i64, ptr %6, align 8, !dbg !4364
  call void @copy_xstate_to_uabi_buf(ptr %5, i64 %7, ptr noundef %3, i32 noundef 2) #18, !dbg !4364
  store i32 0, ptr %retval, align 4, !dbg !4365
  br label %return, !dbg !4365

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !4366
  ret i32 %8, !dbg !4366
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !4367 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4375, metadata !DIExpression()), !dbg !4377
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4376, metadata !DIExpression()), !dbg !4378
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4379
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4380
  br i1 %1, label %cond.true, label %cond.false, !dbg !4380

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4381
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4382
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !4383
  %conv = zext i1 %call to i32, !dbg !4383
  br label %cond.end, !dbg !4380

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4384
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4385
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #18, !dbg !4386
  %conv2 = zext i1 %call1 to i32, !dbg !4386
  br label %cond.end, !dbg !4380

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4380
  %tobool = icmp ne i32 %cond, 0, !dbg !4380
  ret i1 %tobool, !dbg !4387
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #7 align 16 !dbg !4388 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !4393, metadata !DIExpression()), !dbg !4396
  %0 = load i16, ptr %bit.addr, align 2, !dbg !4397
  %1 = load i16, ptr %bit.addr, align 2, !dbg !4398
  %conv = zext i16 %1 to i32, !dbg !4398
  %and = and i32 %conv, 7, !dbg !4399
  %shl = shl i32 1, %and, !dbg !4400
  %2 = load i16, ptr %bit.addr, align 2, !dbg !4401
  %conv1 = zext i16 %2 to i32, !dbg !4401
  %shr = ashr i32 %conv1, 3, !dbg !4402
  %idxprom = sext i32 %shr to i64, !dbg !4403
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !4403
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #17
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !4404, !srcloc !4405

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !4404

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !4394), !dbg !4406
  store i1 true, ptr %retval, align 1, !dbg !4407
  br label %return, !dbg !4407

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !4395), !dbg !4408
  store i1 false, ptr %retval, align 1, !dbg !4409
  br label %return, !dbg !4409

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !4410
  ret i1 %3, !dbg !4410
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @xstateregs_set(ptr noundef %target, ptr noundef %regset, i32 noundef %pos, i32 noundef %count, ptr noundef %kbuf, ptr noundef %ubuf) #0 align 16 !dbg !4411 {
entry:
  %retval = alloca i32, align 4
  %target.addr = alloca ptr, align 8
  %regset.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %kbuf.addr = alloca ptr, align 8
  %ubuf.addr = alloca ptr, align 8
  %fpu = alloca ptr, align 8
  %tmpbuf = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !4413, metadata !DIExpression()), !dbg !4424
  store ptr %regset, ptr %regset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regset.addr, metadata !4414, metadata !DIExpression()), !dbg !4425
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !4415, metadata !DIExpression()), !dbg !4426
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4416, metadata !DIExpression()), !dbg !4427
  store ptr %kbuf, ptr %kbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kbuf.addr, metadata !4417, metadata !DIExpression()), !dbg !4428
  store ptr %ubuf, ptr %ubuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ubuf.addr, metadata !4418, metadata !DIExpression()), !dbg !4429
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpu) #17, !dbg !4430
  call void @llvm.dbg.declare(metadata ptr %fpu, metadata !4419, metadata !DIExpression()), !dbg !4431
  %0 = load ptr, ptr %target.addr, align 8, !dbg !4432
  %thread = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 197, !dbg !4433
  %fpu1 = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !4434
  store ptr %fpu1, ptr %fpu, align 8, !dbg !4431
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmpbuf) #17, !dbg !4435
  call void @llvm.dbg.declare(metadata ptr %tmpbuf, metadata !4420, metadata !DIExpression()), !dbg !4436
  store ptr null, ptr %tmpbuf, align 8, !dbg !4436
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !4437
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4422, metadata !DIExpression()), !dbg !4438
  br i1 false, label %cond.true, label %cond.false, !dbg !4439

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !4440

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true2, label %cond.false5, !dbg !4439

cond.true2:                                       ; preds = %cond.false
  br i1 false, label %cond.true3, label %cond.false4, !dbg !4440

cond.true3:                                       ; preds = %cond.true2
  br i1 true, label %if.end, label %if.then, !dbg !4440

cond.false4:                                      ; preds = %cond.true2
  %call = call zeroext i1 @arch_test_bit(i64 noundef 154, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #18, !dbg !4440
  br i1 %call, label %if.end, label %if.then, !dbg !4440

cond.false5:                                      ; preds = %cond.false
  %call6 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 154) #18, !dbg !4440
  br i1 %call6, label %if.end, label %if.then, !dbg !4439

if.then:                                          ; preds = %cond.false5, %cond.false4, %cond.true3, %cond.true
  store i32 -19, ptr %retval, align 4, !dbg !4442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4442

if.end:                                           ; preds = %cond.false5, %cond.false4, %cond.true3, %cond.true
  %1 = load i32, ptr %pos.addr, align 4, !dbg !4443
  %cmp = icmp ne i32 %1, 0, !dbg !4445
  br i1 %cmp, label %if.then8, label %lor.lhs.false, !dbg !4446

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, ptr %count.addr, align 4, !dbg !4447
  %3 = load i32, ptr @fpu_user_cfg, align 8, !dbg !4448
  %cmp7 = icmp ne i32 %2, %3, !dbg !4449
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !4450

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -14, ptr %retval, align 4, !dbg !4451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4451

if.end9:                                          ; preds = %lor.lhs.false
  %4 = load ptr, ptr %kbuf.addr, align 8, !dbg !4452
  %tobool = icmp ne ptr %4, null, !dbg !4452
  br i1 %tobool, label %if.end20, label %if.then10, !dbg !4454

if.then10:                                        ; preds = %if.end9
  %5 = load i32, ptr %count.addr, align 4, !dbg !4455
  %conv = zext i32 %5 to i64, !dbg !4455
  %call11 = call noalias ptr @vmalloc(i64 noundef %conv) #21, !dbg !4457
  store ptr %call11, ptr %tmpbuf, align 8, !dbg !4458
  %6 = load ptr, ptr %tmpbuf, align 8, !dbg !4459
  %tobool12 = icmp ne ptr %6, null, !dbg !4459
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !4461

if.then13:                                        ; preds = %if.then10
  store i32 -12, ptr %retval, align 4, !dbg !4462
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4462

if.end14:                                         ; preds = %if.then10
  %7 = load ptr, ptr %tmpbuf, align 8, !dbg !4463
  %8 = load ptr, ptr %ubuf.addr, align 8, !dbg !4465
  %9 = load i32, ptr %count.addr, align 4, !dbg !4466
  %conv15 = zext i32 %9 to i64, !dbg !4466
  %call16 = call i64 @copy_from_user(ptr noundef %7, ptr noundef %8, i64 noundef %conv15) #18, !dbg !4467
  %tobool17 = icmp ne i64 %call16, 0, !dbg !4467
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !4468

if.then18:                                        ; preds = %if.end14
  store i32 -14, ptr %ret, align 4, !dbg !4469
  br label %out, !dbg !4471

if.end19:                                         ; preds = %if.end14
  br label %if.end20, !dbg !4472

if.end20:                                         ; preds = %if.end19, %if.end9
  %10 = load ptr, ptr %fpu, align 8, !dbg !4473
  call void @fpu_force_restore(ptr noundef %10) #18, !dbg !4474
  %11 = load ptr, ptr %fpu, align 8, !dbg !4475
  %fpstate = getelementptr inbounds %struct.fpu, ptr %11, i32 0, i32 2, !dbg !4476
  %12 = load ptr, ptr %fpstate, align 16, !dbg !4476
  %13 = load ptr, ptr %kbuf.addr, align 8, !dbg !4477
  %tobool21 = icmp ne ptr %13, null, !dbg !4477
  br i1 %tobool21, label %cond.true22, label %cond.false23, !dbg !4477

cond.true22:                                      ; preds = %if.end20
  br label %cond.end, !dbg !4477

cond.false23:                                     ; preds = %if.end20
  %14 = load ptr, ptr %tmpbuf, align 8, !dbg !4478
  br label %cond.end, !dbg !4477

cond.end:                                         ; preds = %cond.false23, %cond.true22
  %cond = phi ptr [ %13, %cond.true22 ], [ %14, %cond.false23 ], !dbg !4477
  %15 = load ptr, ptr %target.addr, align 8, !dbg !4479
  %thread24 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 197, !dbg !4480
  %pkru = getelementptr inbounds %struct.thread_struct, ptr %thread24, i32 0, i32 17, !dbg !4481
  %call25 = call i32 @copy_uabi_from_kernel_to_xstate(ptr noundef %12, ptr noundef %cond, ptr noundef %pkru) #18, !dbg !4482
  store i32 %call25, ptr %ret, align 4, !dbg !4483
  br label %out, !dbg !4484

out:                                              ; preds = %cond.end, %if.then18
  call void @llvm.dbg.label(metadata !4423), !dbg !4485
  %16 = load ptr, ptr %tmpbuf, align 8, !dbg !4486
  call void @vfree(ptr noundef %16) #18, !dbg !4487
  %17 = load i32, ptr %ret, align 4, !dbg !4488
  store i32 %17, ptr %retval, align 4, !dbg !4489
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4489

cleanup:                                          ; preds = %out, %if.then13, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !4490
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmpbuf) #17, !dbg !4490
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpu) #17, !dbg !4490
  %18 = load i32, ptr %retval, align 4, !dbg !4490
  ret i32 %18, !dbg !4490
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4491 dso_local noalias ptr @vmalloc(i64 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #7 align 16 !dbg !4494 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4499, metadata !DIExpression()), !dbg !4502
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !4500, metadata !DIExpression()), !dbg !4503
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4501, metadata !DIExpression()), !dbg !4504
  %0 = load ptr, ptr %to.addr, align 8, !dbg !4505
  %1 = load i64, ptr %n.addr, align 8, !dbg !4507
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #18, !dbg !4508
  br i1 %call, label %if.then, label %if.end, !dbg !4509

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !4510
  %3 = load ptr, ptr %from.addr, align 8, !dbg !4511
  %4 = load i64, ptr %n.addr, align 8, !dbg !4512
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #18, !dbg !4513
  store i64 %call1, ptr %n.addr, align 8, !dbg !4514
  br label %if.end, !dbg !4515

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !4516
  ret i64 %5, !dbg !4517
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4518 dso_local i32 @copy_uabi_from_kernel_to_xstate(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4521 dso_local void @vfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @convert_from_fxsr(ptr noundef %env, ptr noundef %tsk) #0 align 16 !dbg !4524 {
entry:
  %env.addr = alloca ptr, align 8
  %tsk.addr = alloca ptr, align 8
  store ptr %env, ptr %env.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %env.addr, metadata !4540, metadata !DIExpression()), !dbg !4542
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !4541, metadata !DIExpression()), !dbg !4543
  %0 = load ptr, ptr %env.addr, align 8, !dbg !4544
  %1 = load ptr, ptr %tsk.addr, align 8, !dbg !4545
  %2 = load ptr, ptr %tsk.addr, align 8, !dbg !4546
  %thread = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 197, !dbg !4547
  %fpu = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !4548
  %fpstate = getelementptr inbounds %struct.fpu, ptr %fpu, i32 0, i32 2, !dbg !4549
  %3 = load ptr, ptr %fpstate, align 16, !dbg !4549
  %regs = getelementptr inbounds %struct.fpstate, ptr %3, i32 0, i32 7, !dbg !4550
  call void @__convert_from_fxsr(ptr noundef %0, ptr noundef %1, ptr noundef %regs) #18, !dbg !4551
  ret void, !dbg !4552
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__convert_from_fxsr(ptr noundef %env, ptr noundef %tsk, ptr noundef %fxsave) #0 align 16 !dbg !4553 {
entry:
  %env.addr = alloca ptr, align 8
  %tsk.addr = alloca ptr, align 8
  %fxsave.addr = alloca ptr, align 8
  %to = alloca ptr, align 8
  %from = alloca ptr, align 8
  %i = alloca i32, align 4
  %__ptr = alloca i64, align 8
  %tmp = alloca ptr, align 8
  store ptr %env, ptr %env.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %env.addr, metadata !4558, metadata !DIExpression()), !dbg !4566
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !4559, metadata !DIExpression()), !dbg !4567
  store ptr %fxsave, ptr %fxsave.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fxsave.addr, metadata !4560, metadata !DIExpression()), !dbg !4568
  call void @llvm.lifetime.start.p0(i64 8, ptr %to) #17, !dbg !4569
  call void @llvm.dbg.declare(metadata ptr %to, metadata !4561, metadata !DIExpression()), !dbg !4570
  %0 = load ptr, ptr %env.addr, align 8, !dbg !4571
  %st_space = getelementptr inbounds %struct.user_i387_ia32_struct, ptr %0, i32 0, i32 7, !dbg !4572
  %arrayidx = getelementptr [20 x i32], ptr %st_space, i64 0, i64 0, !dbg !4571
  store ptr %arrayidx, ptr %to, align 8, !dbg !4570
  call void @llvm.lifetime.start.p0(i64 8, ptr %from) #17, !dbg !4573
  call void @llvm.dbg.declare(metadata ptr %from, metadata !4562, metadata !DIExpression()), !dbg !4574
  %1 = load ptr, ptr %fxsave.addr, align 8, !dbg !4575
  %st_space1 = getelementptr inbounds %struct.fxregs_state, ptr %1, i32 0, i32 7, !dbg !4576
  %arrayidx2 = getelementptr [32 x i32], ptr %st_space1, i64 0, i64 0, !dbg !4575
  store ptr %arrayidx2, ptr %from, align 8, !dbg !4574
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !4577
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4563, metadata !DIExpression()), !dbg !4578
  %2 = load ptr, ptr %fxsave.addr, align 8, !dbg !4579
  %cwd = getelementptr inbounds %struct.fxregs_state, ptr %2, i32 0, i32 0, !dbg !4580
  %3 = load i16, ptr %cwd, align 16, !dbg !4580
  %conv = zext i16 %3 to i32, !dbg !4579
  %or = or i32 %conv, -65536, !dbg !4581
  %4 = load ptr, ptr %env.addr, align 8, !dbg !4582
  %cwd3 = getelementptr inbounds %struct.user_i387_ia32_struct, ptr %4, i32 0, i32 0, !dbg !4583
  store i32 %or, ptr %cwd3, align 4, !dbg !4584
  %5 = load ptr, ptr %fxsave.addr, align 8, !dbg !4585
  %swd = getelementptr inbounds %struct.fxregs_state, ptr %5, i32 0, i32 1, !dbg !4586
  %6 = load i16, ptr %swd, align 2, !dbg !4586
  %conv4 = zext i16 %6 to i32, !dbg !4585
  %or5 = or i32 %conv4, -65536, !dbg !4587
  %7 = load ptr, ptr %env.addr, align 8, !dbg !4588
  %swd6 = getelementptr inbounds %struct.user_i387_ia32_struct, ptr %7, i32 0, i32 1, !dbg !4589
  store i32 %or5, ptr %swd6, align 4, !dbg !4590
  %8 = load ptr, ptr %fxsave.addr, align 8, !dbg !4591
  %call = call i32 @twd_fxsr_to_i387(ptr noundef %8) #18, !dbg !4592
  %9 = load ptr, ptr %env.addr, align 8, !dbg !4593
  %twd = getelementptr inbounds %struct.user_i387_ia32_struct, ptr %9, i32 0, i32 2, !dbg !4594
  store i32 %call, ptr %twd, align 4, !dbg !4595
  %10 = load ptr, ptr %fxsave.addr, align 8, !dbg !4596
  %11 = getelementptr inbounds %struct.fxregs_state, ptr %10, i32 0, i32 4, !dbg !4597
  %rip = getelementptr inbounds %struct.anon.10, ptr %11, i32 0, i32 0, !dbg !4597
  %12 = load i64, ptr %rip, align 8, !dbg !4597
  %conv7 = trunc i64 %12 to i32, !dbg !4596
  %13 = load ptr, ptr %env.addr, align 8, !dbg !4598
  %fip = getelementptr inbounds %struct.user_i387_ia32_struct, ptr %13, i32 0, i32 3, !dbg !4599
  store i32 %conv7, ptr %fip, align 4, !dbg !4600
  %14 = load ptr, ptr %fxsave.addr, align 8, !dbg !4601
  %15 = getelementptr inbounds %struct.fxregs_state, ptr %14, i32 0, i32 4, !dbg !4602
  %rdp = getelementptr inbounds %struct.anon.10, ptr %15, i32 0, i32 1, !dbg !4602
  %16 = load i64, ptr %rdp, align 8, !dbg !4602
  %conv8 = trunc i64 %16 to i32, !dbg !4601
  %17 = load ptr, ptr %env.addr, align 8, !dbg !4603
  %foo = getelementptr inbounds %struct.user_i387_ia32_struct, ptr %17, i32 0, i32 5, !dbg !4604
  store i32 %conv8, ptr %foo, align 4, !dbg !4605
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !4606
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4564, metadata !DIExpression()), !dbg !4606
  %18 = load ptr, ptr %tsk.addr, align 8, !dbg !4606
  %call9 = call ptr @task_stack_page(ptr noundef %18) #18, !dbg !4606
  %19 = ptrtoint ptr %call9 to i64, !dbg !4606
  store i64 %19, ptr %__ptr, align 8, !dbg !4606
  %20 = load i64, ptr %__ptr, align 8, !dbg !4606
  %add = add i64 %20, 16384, !dbg !4606
  store i64 %add, ptr %__ptr, align 8, !dbg !4606
  %21 = load i64, ptr %__ptr, align 8, !dbg !4606
  %22 = inttoptr i64 %21 to ptr, !dbg !4606
  %add.ptr = getelementptr %struct.pt_regs, ptr %22, i64 -1, !dbg !4606
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4606
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !4607
  %23 = load ptr, ptr %tmp, align 8, !dbg !4606
  %24 = getelementptr inbounds %struct.pt_regs, ptr %23, i32 0, i32 17, !dbg !4608
  %25 = load i16, ptr %24, align 8, !dbg !4608
  %conv10 = zext i16 %25 to i32, !dbg !4607
  %26 = load ptr, ptr %env.addr, align 8, !dbg !4609
  %fcs = getelementptr inbounds %struct.user_i387_ia32_struct, ptr %26, i32 0, i32 4, !dbg !4610
  store i32 %conv10, ptr %fcs, align 4, !dbg !4611
  %27 = load ptr, ptr %tsk.addr, align 8, !dbg !4612
  %call11 = call ptr @get_current() #18, !dbg !4614
  %cmp = icmp eq ptr %27, %call11, !dbg !4615
  br i1 %cmp, label %if.then, label %if.else, !dbg !4616

if.then:                                          ; preds = %entry
  %28 = load ptr, ptr %env.addr, align 8, !dbg !4617
  %fos = getelementptr inbounds %struct.user_i387_ia32_struct, ptr %28, i32 0, i32 6, !dbg !4617
  %29 = call i32 asm "mov %ds,$0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !4617, !srcloc !4619
  store i32 %29, ptr %fos, align 4, !dbg !4617
  br label %if.end, !dbg !4620

if.else:                                          ; preds = %entry
  %30 = load ptr, ptr %tsk.addr, align 8, !dbg !4621
  %thread = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 197, !dbg !4623
  %ds = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 3, !dbg !4624
  %31 = load i16, ptr %ds, align 2, !dbg !4624
  %conv13 = zext i16 %31 to i32, !dbg !4621
  %32 = load ptr, ptr %env.addr, align 8, !dbg !4625
  %fos14 = getelementptr inbounds %struct.user_i387_ia32_struct, ptr %32, i32 0, i32 6, !dbg !4626
  store i32 %conv13, ptr %fos14, align 4, !dbg !4627
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %33 = load ptr, ptr %env.addr, align 8, !dbg !4628
  %fos15 = getelementptr inbounds %struct.user_i387_ia32_struct, ptr %33, i32 0, i32 6, !dbg !4629
  %34 = load i32, ptr %fos15, align 4, !dbg !4630
  %or16 = or i32 %34, -65536, !dbg !4630
  store i32 %or16, ptr %fos15, align 4, !dbg !4630
  store i32 0, ptr %i, align 4, !dbg !4631
  br label %for.cond, !dbg !4633

for.cond:                                         ; preds = %for.inc, %if.end
  %35 = load i32, ptr %i, align 4, !dbg !4634
  %cmp17 = icmp slt i32 %35, 8, !dbg !4636
  br i1 %cmp17, label %for.body, label %for.end, !dbg !4637

for.body:                                         ; preds = %for.cond
  %36 = load ptr, ptr %to, align 8, !dbg !4638
  %37 = load i32, ptr %i, align 4, !dbg !4639
  %idxprom = sext i32 %37 to i64, !dbg !4638
  %arrayidx19 = getelementptr %struct._fpreg, ptr %36, i64 %idxprom, !dbg !4638
  %38 = load ptr, ptr %from, align 8, !dbg !4640
  %39 = load i32, ptr %i, align 4, !dbg !4641
  %idxprom20 = sext i32 %39 to i64, !dbg !4640
  %arrayidx21 = getelementptr %struct._fpxreg, ptr %38, i64 %idxprom20, !dbg !4640
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx19, ptr align 2 %arrayidx21, i64 10, i1 false), !dbg !4642
  br label %for.inc, !dbg !4642

for.inc:                                          ; preds = %for.body
  %40 = load i32, ptr %i, align 4, !dbg !4643
  %inc = add i32 %40, 1, !dbg !4643
  store i32 %inc, ptr %i, align 4, !dbg !4643
  br label %for.cond, !dbg !4644, !llvm.loop !4645

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !4649
  call void @llvm.lifetime.end.p0(i64 8, ptr %from) #17, !dbg !4649
  call void @llvm.lifetime.end.p0(i64 8, ptr %to) #17, !dbg !4649
  ret void, !dbg !4649
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @convert_to_fxsr(ptr noundef %fxsave, ptr noundef %env) #0 align 16 !dbg !4650 {
entry:
  %fxsave.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  %from = alloca ptr, align 8
  %to = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %fxsave, ptr %fxsave.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fxsave.addr, metadata !4656, metadata !DIExpression()), !dbg !4661
  store ptr %env, ptr %env.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %env.addr, metadata !4657, metadata !DIExpression()), !dbg !4662
  call void @llvm.lifetime.start.p0(i64 8, ptr %from) #17, !dbg !4663
  call void @llvm.dbg.declare(metadata ptr %from, metadata !4658, metadata !DIExpression()), !dbg !4664
  %0 = load ptr, ptr %env.addr, align 8, !dbg !4665
  %st_space = getelementptr inbounds %struct.user_i387_ia32_struct, ptr %0, i32 0, i32 7, !dbg !4666
  %arrayidx = getelementptr [20 x i32], ptr %st_space, i64 0, i64 0, !dbg !4665
  store ptr %arrayidx, ptr %from, align 8, !dbg !4664
  call void @llvm.lifetime.start.p0(i64 8, ptr %to) #17, !dbg !4667
  call void @llvm.dbg.declare(metadata ptr %to, metadata !4659, metadata !DIExpression()), !dbg !4668
  %1 = load ptr, ptr %fxsave.addr, align 8, !dbg !4669
  %st_space1 = getelementptr inbounds %struct.fxregs_state, ptr %1, i32 0, i32 7, !dbg !4670
  %arrayidx2 = getelementptr [32 x i32], ptr %st_space1, i64 0, i64 0, !dbg !4669
  store ptr %arrayidx2, ptr %to, align 8, !dbg !4668
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !4671
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4660, metadata !DIExpression()), !dbg !4672
  %2 = load ptr, ptr %env.addr, align 8, !dbg !4673
  %cwd = getelementptr inbounds %struct.user_i387_ia32_struct, ptr %2, i32 0, i32 0, !dbg !4674
  %3 = load i32, ptr %cwd, align 4, !dbg !4674
  %conv = trunc i32 %3 to i16, !dbg !4673
  %4 = load ptr, ptr %fxsave.addr, align 8, !dbg !4675
  %cwd3 = getelementptr inbounds %struct.fxregs_state, ptr %4, i32 0, i32 0, !dbg !4676
  store i16 %conv, ptr %cwd3, align 16, !dbg !4677
  %5 = load ptr, ptr %env.addr, align 8, !dbg !4678
  %swd = getelementptr inbounds %struct.user_i387_ia32_struct, ptr %5, i32 0, i32 1, !dbg !4679
  %6 = load i32, ptr %swd, align 4, !dbg !4679
  %conv4 = trunc i32 %6 to i16, !dbg !4678
  %7 = load ptr, ptr %fxsave.addr, align 8, !dbg !4680
  %swd5 = getelementptr inbounds %struct.fxregs_state, ptr %7, i32 0, i32 1, !dbg !4681
  store i16 %conv4, ptr %swd5, align 2, !dbg !4682
  %8 = load ptr, ptr %env.addr, align 8, !dbg !4683
  %twd = getelementptr inbounds %struct.user_i387_ia32_struct, ptr %8, i32 0, i32 2, !dbg !4684
  %9 = load i32, ptr %twd, align 4, !dbg !4684
  %conv6 = trunc i32 %9 to i16, !dbg !4683
  %call = call zeroext i16 @twd_i387_to_fxsr(i16 noundef zeroext %conv6) #18, !dbg !4685
  %10 = load ptr, ptr %fxsave.addr, align 8, !dbg !4686
  %twd7 = getelementptr inbounds %struct.fxregs_state, ptr %10, i32 0, i32 2, !dbg !4687
  store i16 %call, ptr %twd7, align 4, !dbg !4688
  %11 = load ptr, ptr %env.addr, align 8, !dbg !4689
  %fcs = getelementptr inbounds %struct.user_i387_ia32_struct, ptr %11, i32 0, i32 4, !dbg !4690
  %12 = load i32, ptr %fcs, align 4, !dbg !4690
  %shr = lshr i32 %12, 16, !dbg !4691
  %conv8 = trunc i32 %shr to i16, !dbg !4692
  %13 = load ptr, ptr %fxsave.addr, align 8, !dbg !4693
  %fop = getelementptr inbounds %struct.fxregs_state, ptr %13, i32 0, i32 3, !dbg !4694
  store i16 %conv8, ptr %fop, align 2, !dbg !4695
  %14 = load ptr, ptr %env.addr, align 8, !dbg !4696
  %fip = getelementptr inbounds %struct.user_i387_ia32_struct, ptr %14, i32 0, i32 3, !dbg !4697
  %15 = load i32, ptr %fip, align 4, !dbg !4697
  %conv9 = zext i32 %15 to i64, !dbg !4696
  %16 = load ptr, ptr %fxsave.addr, align 8, !dbg !4698
  %17 = getelementptr inbounds %struct.fxregs_state, ptr %16, i32 0, i32 4, !dbg !4699
  %rip = getelementptr inbounds %struct.anon.10, ptr %17, i32 0, i32 0, !dbg !4699
  store i64 %conv9, ptr %rip, align 8, !dbg !4700
  %18 = load ptr, ptr %env.addr, align 8, !dbg !4701
  %foo = getelementptr inbounds %struct.user_i387_ia32_struct, ptr %18, i32 0, i32 5, !dbg !4702
  %19 = load i32, ptr %foo, align 4, !dbg !4702
  %conv10 = zext i32 %19 to i64, !dbg !4701
  %20 = load ptr, ptr %fxsave.addr, align 8, !dbg !4703
  %21 = getelementptr inbounds %struct.fxregs_state, ptr %20, i32 0, i32 4, !dbg !4704
  %rdp = getelementptr inbounds %struct.anon.10, ptr %21, i32 0, i32 1, !dbg !4704
  store i64 %conv10, ptr %rdp, align 8, !dbg !4705
  store i32 0, ptr %i, align 4, !dbg !4706
  br label %for.cond, !dbg !4708

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i32, ptr %i, align 4, !dbg !4709
  %cmp = icmp slt i32 %22, 8, !dbg !4711
  br i1 %cmp, label %for.body, label %for.end, !dbg !4712

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %to, align 8, !dbg !4713
  %24 = load i32, ptr %i, align 4, !dbg !4714
  %idxprom = sext i32 %24 to i64, !dbg !4713
  %arrayidx12 = getelementptr %struct._fpxreg, ptr %23, i64 %idxprom, !dbg !4713
  %25 = load ptr, ptr %from, align 8, !dbg !4715
  %26 = load i32, ptr %i, align 4, !dbg !4716
  %idxprom13 = sext i32 %26 to i64, !dbg !4715
  %arrayidx14 = getelementptr %struct._fpreg, ptr %25, i64 %idxprom13, !dbg !4715
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx12, ptr align 2 %arrayidx14, i64 10, i1 false), !dbg !4717
  br label %for.inc, !dbg !4717

for.inc:                                          ; preds = %for.body
  %27 = load i32, ptr %i, align 4, !dbg !4718
  %inc = add i32 %27, 1, !dbg !4718
  store i32 %inc, ptr %i, align 4, !dbg !4718
  br label %for.cond, !dbg !4719, !llvm.loop !4720

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !4722
  call void @llvm.lifetime.end.p0(i64 8, ptr %to) #17, !dbg !4722
  call void @llvm.lifetime.end.p0(i64 8, ptr %from) #17, !dbg !4722
  ret void, !dbg !4722
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @twd_i387_to_fxsr(i16 noundef zeroext %twd) #4 align 16 !dbg !4723 {
entry:
  %twd.addr = alloca i16, align 2
  %tmp = alloca i32, align 4
  store i16 %twd, ptr %twd.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %twd.addr, metadata !4727, metadata !DIExpression()), !dbg !4729
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #17, !dbg !4730
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4728, metadata !DIExpression()), !dbg !4731
  %0 = load i16, ptr %twd.addr, align 2, !dbg !4732
  %conv = zext i16 %0 to i32, !dbg !4732
  %not = xor i32 %conv, -1, !dbg !4733
  store i32 %not, ptr %tmp, align 4, !dbg !4734
  %1 = load i32, ptr %tmp, align 4, !dbg !4735
  %2 = load i32, ptr %tmp, align 4, !dbg !4736
  %shr = lshr i32 %2, 1, !dbg !4737
  %or = or i32 %1, %shr, !dbg !4738
  %and = and i32 %or, 21845, !dbg !4739
  store i32 %and, ptr %tmp, align 4, !dbg !4740
  %3 = load i32, ptr %tmp, align 4, !dbg !4741
  %4 = load i32, ptr %tmp, align 4, !dbg !4742
  %shr1 = lshr i32 %4, 1, !dbg !4743
  %or2 = or i32 %3, %shr1, !dbg !4744
  %and3 = and i32 %or2, 13107, !dbg !4745
  store i32 %and3, ptr %tmp, align 4, !dbg !4746
  %5 = load i32, ptr %tmp, align 4, !dbg !4747
  %6 = load i32, ptr %tmp, align 4, !dbg !4748
  %shr4 = lshr i32 %6, 2, !dbg !4749
  %or5 = or i32 %5, %shr4, !dbg !4750
  %and6 = and i32 %or5, 3855, !dbg !4751
  store i32 %and6, ptr %tmp, align 4, !dbg !4752
  %7 = load i32, ptr %tmp, align 4, !dbg !4753
  %8 = load i32, ptr %tmp, align 4, !dbg !4754
  %shr7 = lshr i32 %8, 4, !dbg !4755
  %or8 = or i32 %7, %shr7, !dbg !4756
  %and9 = and i32 %or8, 255, !dbg !4757
  store i32 %and9, ptr %tmp, align 4, !dbg !4758
  %9 = load i32, ptr %tmp, align 4, !dbg !4759
  %conv10 = trunc i32 %9 to i16, !dbg !4759
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #17, !dbg !4760
  ret i16 %conv10, !dbg !4761
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @fpregs_get(ptr noundef %target, ptr noundef %regset, ptr %to.coerce0, i64 %to.coerce1) #0 align 16 !dbg !4762 {
entry:
  %to = alloca %struct.membuf, align 8
  %target.addr = alloca ptr, align 8
  %regset.addr = alloca ptr, align 8
  %fpu = alloca ptr, align 8
  %env = alloca %struct.user_i387_ia32_struct, align 4
  %fxsave = alloca %struct.fxregs_state, align 16
  %fx = alloca ptr, align 8
  %mb = alloca %struct.membuf, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %to, i32 0, i32 0
  store ptr %to.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %to, i32 0, i32 1
  store i64 %to.coerce1, ptr %1, align 8
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !4764, metadata !DIExpression()), !dbg !4774
  store ptr %regset, ptr %regset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regset.addr, metadata !4765, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.declare(metadata ptr %to, metadata !4766, metadata !DIExpression()), !dbg !4776
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpu) #17, !dbg !4777
  call void @llvm.dbg.declare(metadata ptr %fpu, metadata !4767, metadata !DIExpression()), !dbg !4778
  %2 = load ptr, ptr %target.addr, align 8, !dbg !4779
  %thread = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 197, !dbg !4780
  %fpu1 = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !4781
  store ptr %fpu1, ptr %fpu, align 8, !dbg !4778
  call void @llvm.lifetime.start.p0(i64 108, ptr %env) #17, !dbg !4782
  call void @llvm.dbg.declare(metadata ptr %env, metadata !4768, metadata !DIExpression()), !dbg !4783
  call void @llvm.lifetime.start.p0(i64 512, ptr %fxsave) #17, !dbg !4784
  call void @llvm.dbg.declare(metadata ptr %fxsave, metadata !4769, metadata !DIExpression()), !dbg !4785
  call void @llvm.lifetime.start.p0(i64 8, ptr %fx) #17, !dbg !4784
  call void @llvm.dbg.declare(metadata ptr %fx, metadata !4770, metadata !DIExpression()), !dbg !4786
  %3 = load ptr, ptr %fpu, align 8, !dbg !4787
  call void @sync_fpstate(ptr noundef %3) #18, !dbg !4788
  %call = call zeroext i1 @use_xsave() #19, !dbg !4789
  br i1 %call, label %if.then, label %if.else, !dbg !4790

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %mb) #17, !dbg !4791
  call void @llvm.dbg.declare(metadata ptr %mb, metadata !4771, metadata !DIExpression()), !dbg !4792
  %p = getelementptr inbounds %struct.membuf, ptr %mb, i32 0, i32 0, !dbg !4793
  store ptr %fxsave, ptr %p, align 8, !dbg !4793
  %left = getelementptr inbounds %struct.membuf, ptr %mb, i32 0, i32 1, !dbg !4793
  store i64 512, ptr %left, align 8, !dbg !4793
  %4 = load ptr, ptr %target.addr, align 8, !dbg !4794
  %5 = getelementptr inbounds { ptr, i64 }, ptr %mb, i32 0, i32 0, !dbg !4795
  %6 = load ptr, ptr %5, align 8, !dbg !4795
  %7 = getelementptr inbounds { ptr, i64 }, ptr %mb, i32 0, i32 1, !dbg !4795
  %8 = load i64, ptr %7, align 8, !dbg !4795
  call void @copy_xstate_to_uabi_buf(ptr %6, i64 %8, ptr noundef %4, i32 noundef 0) #18, !dbg !4795
  store ptr %fxsave, ptr %fx, align 8, !dbg !4796
  call void @llvm.lifetime.end.p0(i64 16, ptr %mb) #17, !dbg !4797
  br label %if.end, !dbg !4798

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %fpu, align 8, !dbg !4799
  %fpstate = getelementptr inbounds %struct.fpu, ptr %9, i32 0, i32 2, !dbg !4801
  %10 = load ptr, ptr %fpstate, align 16, !dbg !4801
  %regs = getelementptr inbounds %struct.fpstate, ptr %10, i32 0, i32 7, !dbg !4802
  store ptr %regs, ptr %fx, align 8, !dbg !4803
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load ptr, ptr %target.addr, align 8, !dbg !4804
  %12 = load ptr, ptr %fx, align 8, !dbg !4805
  call void @__convert_from_fxsr(ptr noundef %env, ptr noundef %11, ptr noundef %12) #18, !dbg !4806
  %call2 = call i32 @membuf_write(ptr noundef %to, ptr noundef %env, i64 noundef 108) #18, !dbg !4807
  call void @llvm.lifetime.end.p0(i64 8, ptr %fx) #17, !dbg !4808
  call void @llvm.lifetime.end.p0(i64 512, ptr %fxsave) #17, !dbg !4808
  call void @llvm.lifetime.end.p0(i64 108, ptr %env) #17, !dbg !4808
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpu) #17, !dbg !4808
  ret i32 %call2, !dbg !4809
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @fpregs_set(ptr noundef %target, ptr noundef %regset, i32 noundef %pos, i32 noundef %count, ptr noundef %kbuf, ptr noundef %ubuf) #0 align 16 !dbg !4810 {
entry:
  %retval = alloca i32, align 4
  %target.addr = alloca ptr, align 8
  %regset.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %kbuf.addr = alloca ptr, align 8
  %ubuf.addr = alloca ptr, align 8
  %fpu = alloca ptr, align 8
  %env = alloca %struct.user_i387_ia32_struct, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !4812, metadata !DIExpression()), !dbg !4821
  store ptr %regset, ptr %regset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regset.addr, metadata !4813, metadata !DIExpression()), !dbg !4822
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !4814, metadata !DIExpression()), !dbg !4823
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4815, metadata !DIExpression()), !dbg !4824
  store ptr %kbuf, ptr %kbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kbuf.addr, metadata !4816, metadata !DIExpression()), !dbg !4825
  store ptr %ubuf, ptr %ubuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ubuf.addr, metadata !4817, metadata !DIExpression()), !dbg !4826
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpu) #17, !dbg !4827
  call void @llvm.dbg.declare(metadata ptr %fpu, metadata !4818, metadata !DIExpression()), !dbg !4828
  %0 = load ptr, ptr %target.addr, align 8, !dbg !4829
  %thread = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 197, !dbg !4830
  %fpu1 = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !4831
  store ptr %fpu1, ptr %fpu, align 8, !dbg !4828
  call void @llvm.lifetime.start.p0(i64 108, ptr %env) #17, !dbg !4832
  call void @llvm.dbg.declare(metadata ptr %env, metadata !4819, metadata !DIExpression()), !dbg !4833
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !4834
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4820, metadata !DIExpression()), !dbg !4835
  %1 = load i32, ptr %pos.addr, align 4, !dbg !4836
  %cmp = icmp ne i32 %1, 0, !dbg !4838
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4839

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %count.addr, align 4, !dbg !4840
  %conv = zext i32 %2 to i64, !dbg !4840
  %cmp2 = icmp ne i64 %conv, 108, !dbg !4841
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4842

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !4843
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4843

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @user_regset_copyin(ptr noundef %pos.addr, ptr noundef %count.addr, ptr noundef %kbuf.addr, ptr noundef %ubuf.addr, ptr noundef %env, i32 noundef 0, i32 noundef -1) #18, !dbg !4844
  store i32 %call, ptr %ret, align 4, !dbg !4845
  %3 = load i32, ptr %ret, align 4, !dbg !4846
  %tobool = icmp ne i32 %3, 0, !dbg !4846
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !4848

if.then4:                                         ; preds = %if.end
  %4 = load i32, ptr %ret, align 4, !dbg !4849
  store i32 %4, ptr %retval, align 4, !dbg !4850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4850

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %fpu, align 8, !dbg !4851
  call void @fpu_force_restore(ptr noundef %5) #18, !dbg !4852
  %6 = load ptr, ptr %fpu, align 8, !dbg !4853
  %fpstate = getelementptr inbounds %struct.fpu, ptr %6, i32 0, i32 2, !dbg !4855
  %7 = load ptr, ptr %fpstate, align 16, !dbg !4855
  %regs = getelementptr inbounds %struct.fpstate, ptr %7, i32 0, i32 7, !dbg !4856
  call void @convert_to_fxsr(ptr noundef %regs, ptr noundef %env) #18, !dbg !4857
  br i1 false, label %cond.true, label %cond.false, !dbg !4858

cond.true:                                        ; preds = %if.end5
  br i1 false, label %if.then14, label %if.end17, !dbg !4859

cond.false:                                       ; preds = %if.end5
  br i1 false, label %cond.true6, label %cond.false11, !dbg !4858

cond.true6:                                       ; preds = %cond.false
  br i1 false, label %cond.true7, label %cond.false8, !dbg !4859

cond.true7:                                       ; preds = %cond.true6
  br i1 true, label %if.then14, label %if.end17, !dbg !4859

cond.false8:                                      ; preds = %cond.true6
  %call9 = call zeroext i1 @arch_test_bit(i64 noundef 154, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #18, !dbg !4859
  br i1 %call9, label %if.then14, label %if.end17, !dbg !4859

cond.false11:                                     ; preds = %cond.false
  %call12 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 154) #18, !dbg !4859
  br i1 %call12, label %if.then14, label %if.end17, !dbg !4858

if.then14:                                        ; preds = %cond.false11, %cond.false8, %cond.true7, %cond.true
  %8 = load ptr, ptr %fpu, align 8, !dbg !4861
  %fpstate15 = getelementptr inbounds %struct.fpu, ptr %8, i32 0, i32 2, !dbg !4862
  %9 = load ptr, ptr %fpstate15, align 16, !dbg !4862
  %regs16 = getelementptr inbounds %struct.fpstate, ptr %9, i32 0, i32 7, !dbg !4863
  %header = getelementptr inbounds %struct.xregs_state, ptr %regs16, i32 0, i32 1, !dbg !4864
  %xfeatures = getelementptr inbounds %struct.xstate_header, ptr %header, i32 0, i32 0, !dbg !4865
  %10 = load i64, ptr %xfeatures, align 64, !dbg !4866
  %or = or i64 %10, 1, !dbg !4866
  store i64 %or, ptr %xfeatures, align 64, !dbg !4866
  br label %if.end17, !dbg !4861

if.end17:                                         ; preds = %if.then14, %cond.false11, %cond.false8, %cond.true7, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !4867
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4867

cleanup:                                          ; preds = %if.end17, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !4868
  call void @llvm.lifetime.end.p0(i64 108, ptr %env) #17, !dbg !4868
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpu) #17, !dbg !4868
  %11 = load i32, ptr %retval, align 4, !dbg !4868
  ret i32 %11, !dbg !4868
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4869 dso_local void @fpu_sync_fpstate(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #7 align 16 !dbg !4871 {
entry:
  %retval = alloca i64, align 8
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %res = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4873, metadata !DIExpression()), !dbg !4877
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !4874, metadata !DIExpression()), !dbg !4878
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4875, metadata !DIExpression()), !dbg !4879
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #17, !dbg !4880
  call void @llvm.dbg.declare(metadata ptr %res, metadata !4876, metadata !DIExpression()), !dbg !4881
  call void @might_fault() #18, !dbg !4882
  %0 = load ptr, ptr %to.addr, align 8, !dbg !4883
  %1 = load ptr, ptr %from.addr, align 8, !dbg !4884
  %2 = load i64, ptr %n.addr, align 8, !dbg !4885
  call void @instrument_copy_from_user_before(ptr noundef %0, ptr noundef %1, i64 noundef %2) #18, !dbg !4886
  %call = call zeroext i1 @should_fail_usercopy() #18, !dbg !4887
  br i1 %call, label %if.then, label %if.end, !dbg !4889

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %n.addr, align 8, !dbg !4890
  store i64 %3, ptr %retval, align 8, !dbg !4891
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4891

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %to.addr, align 8, !dbg !4892
  %5 = load i64, ptr %n.addr, align 8, !dbg !4893
  call void @check_object_size(ptr noundef %4, i64 noundef %5, i1 noundef zeroext false) #18, !dbg !4894
  %6 = load ptr, ptr %to.addr, align 8, !dbg !4895
  %7 = load ptr, ptr %from.addr, align 8, !dbg !4896
  %8 = load i64, ptr %n.addr, align 8, !dbg !4897
  %call1 = call i64 @raw_copy_from_user(ptr noundef %6, ptr noundef %7, i64 noundef %8) #18, !dbg !4898
  store i64 %call1, ptr %res, align 8, !dbg !4899
  %9 = load ptr, ptr %to.addr, align 8, !dbg !4900
  %10 = load ptr, ptr %from.addr, align 8, !dbg !4901
  %11 = load i64, ptr %n.addr, align 8, !dbg !4902
  %12 = load i64, ptr %res, align 8, !dbg !4903
  call void @instrument_copy_from_user_after(ptr noundef %9, ptr noundef %10, i64 noundef %11, i64 noundef %12) #18, !dbg !4904
  %13 = load i64, ptr %res, align 8, !dbg !4905
  store i64 %13, ptr %retval, align 8, !dbg !4906
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4906

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #17, !dbg !4907
  %14 = load i64, ptr %retval, align 8, !dbg !4907
  ret i64 %14, !dbg !4907
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #4 align 16 !dbg !4908 {
entry:
  ret void, !dbg !4910
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_copy_from_user_before(ptr noundef %to, ptr noundef %from, i64 noundef %n) #7 align 16 !dbg !4911 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4916, metadata !DIExpression()), !dbg !4919
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !4917, metadata !DIExpression()), !dbg !4920
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4918, metadata !DIExpression()), !dbg !4921
  %0 = load ptr, ptr %to.addr, align 8, !dbg !4922
  %1 = load i64, ptr %n.addr, align 8, !dbg !4923
  %conv = trunc i64 %1 to i32, !dbg !4923
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !4924
  %2 = load ptr, ptr %to.addr, align 8, !dbg !4925
  %3 = load i64, ptr %n.addr, align 8, !dbg !4925
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #18, !dbg !4925
  ret void, !dbg !4926
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @should_fail_usercopy() #4 align 16 !dbg !4927 {
entry:
  ret i1 false, !dbg !4929
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #4 align 16 !dbg !4930 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4934, metadata !DIExpression()), !dbg !4937
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4935, metadata !DIExpression()), !dbg !4938
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !4936, metadata !DIExpression()), !dbg !4939
  ret void, !dbg !4940
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_copy_from_user(ptr noundef %dst, ptr noundef %src, i64 noundef %size) #7 align 16 !dbg !4941 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4944, metadata !DIExpression()), !dbg !4947
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4945, metadata !DIExpression()), !dbg !4948
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4946, metadata !DIExpression()), !dbg !4949
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !4950
  %1 = load ptr, ptr %src.addr, align 8, !dbg !4951
  %2 = load i64, ptr %size.addr, align 8, !dbg !4952
  %call = call i64 @copy_user_generic(ptr noundef %0, ptr noundef %1, i64 noundef %2) #18, !dbg !4953
  ret i64 %call, !dbg !4954
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_copy_from_user_after(ptr noundef %to, ptr noundef %from, i64 noundef %n, i64 noundef %left) #7 align 16 !dbg !4955 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4959, metadata !DIExpression()), !dbg !4963
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !4960, metadata !DIExpression()), !dbg !4964
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4961, metadata !DIExpression()), !dbg !4965
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !4962, metadata !DIExpression()), !dbg !4966
  %0 = load ptr, ptr %to.addr, align 8, !dbg !4967
  %1 = load i64, ptr %n.addr, align 8, !dbg !4968
  %2 = load i64, ptr %left.addr, align 8, !dbg !4969
  %sub = sub i64 %1, %2, !dbg !4970
  call void @kmsan_unpoison_memory(ptr noundef %0, i64 noundef %sub) #18, !dbg !4971
  ret void, !dbg !4972
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !4973 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4981, metadata !DIExpression()), !dbg !4983
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4982, metadata !DIExpression()), !dbg !4984
  ret i1 true, !dbg !4985
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !4986 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4991, metadata !DIExpression()), !dbg !4994
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4992, metadata !DIExpression()), !dbg !4995
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4993, metadata !DIExpression()), !dbg !4996
  ret void, !dbg !4997
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_user_generic(ptr noundef %to, ptr noundef %from, i64 noundef %len) #7 align 16 !dbg !4998 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5000, metadata !DIExpression()), !dbg !5003
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5001, metadata !DIExpression()), !dbg !5004
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5002, metadata !DIExpression()), !dbg !5005
  call void @stac() #18, !dbg !5006
  %0 = load i64, ptr %len.addr, align 8, !dbg !5007
  %1 = load ptr, ptr %to.addr, align 8, !dbg !5007
  %2 = load ptr, ptr %from.addr, align 8, !dbg !5007
  %3 = call i64 @llvm.read_register.i64(metadata !3974), !dbg !5007
  %4 = call { i64, ptr, ptr, i64 } asm sideeffect "1:\0A\09# ALT: oldnstr\0A661:\0A\09rep movsb\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (((1 << 0) << 16) $| ((18*32+ 4)))\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09call rep_movs_alternative\0A6651:\0A.popsection\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 3 \0A .popsection\0A", "={cx},={di},={si},={rsp},0,1,2,{rsp},~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i64 %0, ptr %1, ptr %2, i64 %3) #17, !dbg !5007, !srcloc !5008
  %asmresult = extractvalue { i64, ptr, ptr, i64 } %4, 0, !dbg !5007
  %asmresult1 = extractvalue { i64, ptr, ptr, i64 } %4, 1, !dbg !5007
  %asmresult2 = extractvalue { i64, ptr, ptr, i64 } %4, 2, !dbg !5007
  %asmresult3 = extractvalue { i64, ptr, ptr, i64 } %4, 3, !dbg !5007
  store i64 %asmresult, ptr %len.addr, align 8, !dbg !5007
  store ptr %asmresult1, ptr %to.addr, align 8, !dbg !5007
  store ptr %asmresult2, ptr %from.addr, align 8, !dbg !5007
  call void @llvm.write_register.i64(metadata !3974, i64 %asmresult3), !dbg !5007
  call void @clac() #18, !dbg !5009
  %5 = load i64, ptr %len.addr, align 8, !dbg !5010
  ret i64 %5, !dbg !5011
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stac() #7 align 16 !dbg !5012 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xcb\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !5014, !srcloc !5015
  ret void, !dbg !5016
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #11

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clac() #7 align 16 !dbg !5017 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xca\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !5018, !srcloc !5019
  ret void, !dbg !5020
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #4 align 16 !dbg !5021 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !5026, metadata !DIExpression()), !dbg !5028
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5027, metadata !DIExpression()), !dbg !5029
  ret void, !dbg !5030
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__fpu_invalidate_fpregs_state(ptr noundef %fpu) #4 align 16 !dbg !5031 {
entry:
  %fpu.addr = alloca ptr, align 8
  store ptr %fpu, ptr %fpu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpu.addr, metadata !5034, metadata !DIExpression()), !dbg !5035
  %0 = load ptr, ptr %fpu.addr, align 8, !dbg !5036
  %last_cpu = getelementptr inbounds %struct.fpu, ptr %0, i32 0, i32 0, !dbg !5037
  store i32 -1, ptr %last_cpu, align 64, !dbg !5038
  ret void, !dbg !5039
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5040 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5044, metadata !DIExpression()), !dbg !5046
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5045, metadata !DIExpression()), !dbg !5047
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5048
  %and = and i64 %0, 63, !dbg !5049
  %shl = shl i64 1, %and, !dbg !5050
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5051
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5052
  %shr = ashr i64 %2, 6, !dbg !5053
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5051
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5051
  %and1 = and i64 %shl, %3, !dbg !5054
  %cmp = icmp ne i64 %and1, 0, !dbg !5055
  ret i1 %cmp, !dbg !5056
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5057 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5059, metadata !DIExpression()), !dbg !5062
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5060, metadata !DIExpression()), !dbg !5063
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #17, !dbg !5064
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5061, metadata !DIExpression()), !dbg !5065
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5066
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5067
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #17, !dbg !5068, !srcloc !5069
  %3 = icmp ult i8 %2, 2, !dbg !5068
  call void @llvm.assume(i1 %3), !dbg !5068
  store i8 %2, ptr %oldbit, align 1, !dbg !5068
  %4 = load i8, ptr %oldbit, align 1, !dbg !5070, !range !5071, !noundef !528
  %tobool = trunc i8 %4 to i1, !dbg !5070
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #17, !dbg !5072
  ret i1 %tobool, !dbg !5073
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #7 align 16 !dbg !5074 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5078, metadata !DIExpression()), !dbg !5088
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !5079, metadata !DIExpression()), !dbg !5089
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !5080, metadata !DIExpression()), !dbg !5090
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #17, !dbg !5091
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !5081, metadata !DIExpression()), !dbg !5092
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5093
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !5094
  %conv = trunc i64 %1 to i32, !dbg !5094
  store i32 %conv, ptr %sz, align 4, !dbg !5092
  %2 = load i32, ptr %sz, align 4, !dbg !5095
  %cmp = icmp sge i32 %2, 0, !dbg !5095
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5095

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !5095
  %conv2 = sext i32 %3 to i64, !dbg !5095
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !5095
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !5095
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !5097
  %lnot = xor i1 %5, true, !dbg !5095
  %lnot5 = xor i1 %lnot, true, !dbg !5095
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5095
  %conv6 = sext i32 %lnot.ext to i64, !dbg !5095
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !5095
  %tobool = icmp ne i64 %expval, 0, !dbg !5095
  br i1 %tobool, label %if.then, label %if.end12, !dbg !5098

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !5099
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !5102
  br i1 %7, label %if.else, label %if.then7, !dbg !5103

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !5104
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !5105
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #18, !dbg !5106
  br label %if.end11, !dbg !5106

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !5107, !range !5071, !noundef !528
  %tobool8 = trunc i8 %10 to i1, !dbg !5107
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !5109

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #18, !dbg !5110, !srcloc !5111
  br label %if.end, !dbg !5110

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #18, !dbg !5112, !srcloc !5113
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !5114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5114

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5115
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5082, metadata !DIExpression()), !dbg !5115
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !5115
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !5115
  %lnot15 = xor i1 %cmp13, true, !dbg !5115
  %lnot17 = xor i1 %lnot15, true, !dbg !5115
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !5115
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !5115
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !5116
  %tobool19 = icmp ne i32 %12, 0, !dbg !5116
  %lnot20 = xor i1 %tobool19, true, !dbg !5116
  %lnot22 = xor i1 %lnot20, true, !dbg !5116
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5116
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5116
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5116
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !5116
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !5115

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !5116

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !5117
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5085, metadata !DIExpression()), !dbg !5117
  store i32 2307, ptr %__flags, align 4, !dbg !5117
  br label %do.body28, !dbg !5117

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !5118

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !5118

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !5117

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !5120
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 249, i32 %13, i64 12) #17, !dbg !5120, !srcloc !5122
  br label %do.cond30, !dbg !5120

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5120

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !5117

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !5123

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !5123

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !5116
  br label %do.cond35, !dbg !5117

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !5117

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !5117

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !5115
  %tobool38 = icmp ne i32 %14, 0, !dbg !5115
  %lnot39 = xor i1 %tobool38, true, !dbg !5115
  %lnot41 = xor i1 %lnot39, true, !dbg !5115
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !5115
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !5115
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !5115
  store i64 %expval44, ptr %tmp, align 8, !dbg !5116
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5125
  %15 = load i64, ptr %tmp, align 8, !dbg !5115
  %tobool45 = icmp ne i64 %15, 0, !dbg !5125
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !5126

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !5127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5127

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !5128
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !5129
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !5130, !range !5071, !noundef !528
  %tobool48 = trunc i8 %18 to i1, !dbg !5130
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #18, !dbg !5131
  store i1 true, ptr %retval, align 1, !dbg !5132
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5132

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #17, !dbg !5133
  %19 = load i1, ptr %retval, align 1, !dbg !5133
  ret i1 %19, !dbg !5133
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5134 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #4 align 16 !dbg !5135 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5139, metadata !DIExpression()), !dbg !5141
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5140, metadata !DIExpression()), !dbg !5142
  %0 = load i32, ptr %size.addr, align 4, !dbg !5143
  %1 = load i64, ptr %count.addr, align 8, !dbg !5145
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #18, !dbg !5146
  ret void, !dbg !5147
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5148 dso_local void @__bad_copy_from() #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5149 dso_local void @__bad_copy_to() #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5150 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @twd_fxsr_to_i387(ptr noundef %fxsave) #4 align 16 !dbg !5151 {
entry:
  %fxsave.addr = alloca ptr, align 8
  %st = alloca ptr, align 8
  %tos = alloca i32, align 4
  %twd = alloca i32, align 4
  %tag = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %fxsave, ptr %fxsave.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fxsave.addr, metadata !5155, metadata !DIExpression()), !dbg !5162
  call void @llvm.lifetime.start.p0(i64 8, ptr %st) #17, !dbg !5163
  call void @llvm.dbg.declare(metadata ptr %st, metadata !5156, metadata !DIExpression()), !dbg !5164
  call void @llvm.lifetime.start.p0(i64 4, ptr %tos) #17, !dbg !5165
  call void @llvm.dbg.declare(metadata ptr %tos, metadata !5157, metadata !DIExpression()), !dbg !5166
  %0 = load ptr, ptr %fxsave.addr, align 8, !dbg !5167
  %swd = getelementptr inbounds %struct.fxregs_state, ptr %0, i32 0, i32 1, !dbg !5168
  %1 = load i16, ptr %swd, align 2, !dbg !5168
  %conv = zext i16 %1 to i32, !dbg !5167
  %shr = ashr i32 %conv, 11, !dbg !5169
  %and = and i32 %shr, 7, !dbg !5170
  store i32 %and, ptr %tos, align 4, !dbg !5166
  call void @llvm.lifetime.start.p0(i64 4, ptr %twd) #17, !dbg !5171
  call void @llvm.dbg.declare(metadata ptr %twd, metadata !5158, metadata !DIExpression()), !dbg !5172
  %2 = load ptr, ptr %fxsave.addr, align 8, !dbg !5173
  %twd1 = getelementptr inbounds %struct.fxregs_state, ptr %2, i32 0, i32 2, !dbg !5174
  %3 = load i16, ptr %twd1, align 4, !dbg !5174
  %conv2 = zext i16 %3 to i64, !dbg !5175
  %conv3 = trunc i64 %conv2 to i32, !dbg !5175
  store i32 %conv3, ptr %twd, align 4, !dbg !5172
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag) #17, !dbg !5176
  call void @llvm.dbg.declare(metadata ptr %tag, metadata !5159, metadata !DIExpression()), !dbg !5177
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !5178
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5160, metadata !DIExpression()), !dbg !5179
  store i32 -65536, ptr %ret, align 4, !dbg !5179
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !5180
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5161, metadata !DIExpression()), !dbg !5181
  store i32 0, ptr %i, align 4, !dbg !5182
  br label %for.cond, !dbg !5184

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !dbg !5185
  %cmp = icmp slt i32 %4, 8, !dbg !5187
  br i1 %cmp, label %for.body, label %for.end, !dbg !5188

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %twd, align 4, !dbg !5189
  %and5 = and i32 %5, 1, !dbg !5192
  %tobool = icmp ne i32 %and5, 0, !dbg !5192
  br i1 %tobool, label %if.then, label %if.else31, !dbg !5193

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %fxsave.addr, align 8, !dbg !5194
  %st_space = getelementptr inbounds %struct.fxregs_state, ptr %6, i32 0, i32 7, !dbg !5194
  %7 = load i32, ptr %i, align 4, !dbg !5194
  %8 = load i32, ptr %tos, align 4, !dbg !5194
  %sub = sub i32 %7, %8, !dbg !5194
  %and6 = and i32 %sub, 7, !dbg !5194
  %mul = mul i32 %and6, 16, !dbg !5194
  %idx.ext = zext i32 %mul to i64, !dbg !5194
  %add.ptr = getelementptr i8, ptr %st_space, i64 %idx.ext, !dbg !5194
  store ptr %add.ptr, ptr %st, align 8, !dbg !5196
  %9 = load ptr, ptr %st, align 8, !dbg !5197
  %exponent = getelementptr inbounds %struct._fpxreg, ptr %9, i32 0, i32 1, !dbg !5198
  %10 = load i16, ptr %exponent, align 2, !dbg !5198
  %conv7 = zext i16 %10 to i32, !dbg !5197
  %and8 = and i32 %conv7, 32767, !dbg !5199
  switch i32 %and8, label %sw.default [
    i32 32767, label %sw.bb
    i32 0, label %sw.bb9
  ], !dbg !5200

sw.bb:                                            ; preds = %if.then
  store i32 2, ptr %tag, align 4, !dbg !5201
  br label %sw.epilog, !dbg !5203

sw.bb9:                                           ; preds = %if.then
  %11 = load ptr, ptr %st, align 8, !dbg !5204
  %significand = getelementptr inbounds %struct._fpxreg, ptr %11, i32 0, i32 0, !dbg !5206
  %arrayidx = getelementptr [4 x i16], ptr %significand, i64 0, i64 0, !dbg !5204
  %12 = load i16, ptr %arrayidx, align 2, !dbg !5204
  %tobool10 = icmp ne i16 %12, 0, !dbg !5204
  br i1 %tobool10, label %if.else, label %land.lhs.true, !dbg !5207

land.lhs.true:                                    ; preds = %sw.bb9
  %13 = load ptr, ptr %st, align 8, !dbg !5208
  %significand11 = getelementptr inbounds %struct._fpxreg, ptr %13, i32 0, i32 0, !dbg !5209
  %arrayidx12 = getelementptr [4 x i16], ptr %significand11, i64 0, i64 1, !dbg !5208
  %14 = load i16, ptr %arrayidx12, align 2, !dbg !5208
  %tobool13 = icmp ne i16 %14, 0, !dbg !5208
  br i1 %tobool13, label %if.else, label %land.lhs.true14, !dbg !5210

land.lhs.true14:                                  ; preds = %land.lhs.true
  %15 = load ptr, ptr %st, align 8, !dbg !5211
  %significand15 = getelementptr inbounds %struct._fpxreg, ptr %15, i32 0, i32 0, !dbg !5212
  %arrayidx16 = getelementptr [4 x i16], ptr %significand15, i64 0, i64 2, !dbg !5211
  %16 = load i16, ptr %arrayidx16, align 2, !dbg !5211
  %tobool17 = icmp ne i16 %16, 0, !dbg !5211
  br i1 %tobool17, label %if.else, label %land.lhs.true18, !dbg !5213

land.lhs.true18:                                  ; preds = %land.lhs.true14
  %17 = load ptr, ptr %st, align 8, !dbg !5214
  %significand19 = getelementptr inbounds %struct._fpxreg, ptr %17, i32 0, i32 0, !dbg !5215
  %arrayidx20 = getelementptr [4 x i16], ptr %significand19, i64 0, i64 3, !dbg !5214
  %18 = load i16, ptr %arrayidx20, align 2, !dbg !5214
  %tobool21 = icmp ne i16 %18, 0, !dbg !5214
  br i1 %tobool21, label %if.else, label %if.then22, !dbg !5216

if.then22:                                        ; preds = %land.lhs.true18
  store i32 1, ptr %tag, align 4, !dbg !5217
  br label %if.end, !dbg !5218

if.else:                                          ; preds = %land.lhs.true18, %land.lhs.true14, %land.lhs.true, %sw.bb9
  store i32 2, ptr %tag, align 4, !dbg !5219
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then22
  br label %sw.epilog, !dbg !5220

sw.default:                                       ; preds = %if.then
  %19 = load ptr, ptr %st, align 8, !dbg !5221
  %significand23 = getelementptr inbounds %struct._fpxreg, ptr %19, i32 0, i32 0, !dbg !5223
  %arrayidx24 = getelementptr [4 x i16], ptr %significand23, i64 0, i64 3, !dbg !5221
  %20 = load i16, ptr %arrayidx24, align 2, !dbg !5221
  %conv25 = zext i16 %20 to i32, !dbg !5221
  %and26 = and i32 %conv25, 32768, !dbg !5224
  %tobool27 = icmp ne i32 %and26, 0, !dbg !5224
  br i1 %tobool27, label %if.then28, label %if.else29, !dbg !5225

if.then28:                                        ; preds = %sw.default
  store i32 0, ptr %tag, align 4, !dbg !5226
  br label %if.end30, !dbg !5227

if.else29:                                        ; preds = %sw.default
  store i32 2, ptr %tag, align 4, !dbg !5228
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.then28
  br label %sw.epilog, !dbg !5229

sw.epilog:                                        ; preds = %if.end30, %if.end, %sw.bb
  br label %if.end32, !dbg !5230

if.else31:                                        ; preds = %for.body
  store i32 3, ptr %tag, align 4, !dbg !5231
  br label %if.end32

if.end32:                                         ; preds = %if.else31, %sw.epilog
  %21 = load i32, ptr %tag, align 4, !dbg !5233
  %22 = load i32, ptr %i, align 4, !dbg !5234
  %mul33 = mul i32 2, %22, !dbg !5235
  %shl = shl i32 %21, %mul33, !dbg !5236
  %23 = load i32, ptr %ret, align 4, !dbg !5237
  %or = or i32 %23, %shl, !dbg !5237
  store i32 %or, ptr %ret, align 4, !dbg !5237
  br label %for.inc, !dbg !5238

for.inc:                                          ; preds = %if.end32
  %24 = load i32, ptr %i, align 4, !dbg !5239
  %inc = add i32 %24, 1, !dbg !5239
  store i32 %inc, ptr %i, align 4, !dbg !5239
  %25 = load i32, ptr %twd, align 4, !dbg !5240
  %shr34 = lshr i32 %25, 1, !dbg !5240
  store i32 %shr34, ptr %twd, align 4, !dbg !5240
  br label %for.cond, !dbg !5241, !llvm.loop !5242

for.end:                                          ; preds = %for.cond
  %26 = load i32, ptr %ret, align 4, !dbg !5244
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !5245
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !5245
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag) #17, !dbg !5245
  call void @llvm.lifetime.end.p0(i64 4, ptr %twd) #17, !dbg !5245
  call void @llvm.lifetime.end.p0(i64 4, ptr %tos) #17, !dbg !5245
  call void @llvm.lifetime.end.p0(i64 8, ptr %st) #17, !dbg !5245
  ret i32 %26, !dbg !5246
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_stack_page(ptr noundef %task) #7 align 16 !dbg !5247 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !5254, metadata !DIExpression()), !dbg !5255
  %0 = load ptr, ptr %task.addr, align 8, !dbg !5256
  %stack = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 2, !dbg !5257
  %1 = load ptr, ptr %stack, align 32, !dbg !5257
  ret ptr %1, !dbg !5258
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(read) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #12 = { nocallback nounwind }
attributes #13 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { noredzone nounwind willreturn memory(read) }
attributes #20 = { nounwind memory(none) }
attributes #21 = { noredzone allocsize(0) }

!llvm.dbg.cu = !{!19}
!llvm.named.register.rsp = !{!3974}
!llvm.module.flags = !{!3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982}
!llvm.ident = !{!3983}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 260, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./include/linux/regset.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0524d92e3e6b24697a98894d57839a2")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 23)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 66, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "arch/x86/kernel/fpu/regset.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3466999d06477ffbdea9c07c02efa772")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 29)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !15, line: 249, type: !16, isLocal: true, isDefinition: true)
!15 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 28)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !9, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/fpu/.regset.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/fpu/regset\22 -D KBUILD_BASENAME=\22regset\22 -D KBUILD_MODNAME=\22regset\22 -D __KBUILD_MODNAME=kmod_regset -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/fpu/regset.ll arch/x86/kernel/fpu/regset.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !20, retainedTypes: !113, globals: !3973, splitDebugInlining: false, nameTableKind: None)
!20 = !{!21, !27, !35, !42, !49, !55, !60, !66, !72, !79, !85, !108}
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !22, line: 65, baseType: !23, size: 32, elements: !24)
!22 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !{!25, !26}
!25 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!26 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !28, line: 9, baseType: !23, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!29 = !{!30, !31, !32, !33, !34}
!30 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!31 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!32 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!33 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!34 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !36, line: 312, baseType: !23, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!37 = !{!38, !39, !40, !41}
!38 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!39 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!40 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!41 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !43, line: 15, baseType: !23, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!44 = !{!45, !46, !47, !48}
!45 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!46 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!47 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!48 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !50, line: 26, baseType: !23, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!51 = !{!52, !53, !54}
!52 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!53 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!54 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !56, line: 2052, baseType: !23, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!57 = !{!58, !59}
!58 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!59 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !61, line: 54, baseType: !23, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!62 = !{!63, !64, !65}
!63 = !DIEnumerator(name: "USRQUOTA", value: 0)
!64 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!65 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !67, line: 16, baseType: !23, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "TT_NONE", value: 0)
!70 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!71 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !73, line: 51, baseType: !23, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!76 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!77 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!78 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xstate_copy_mode", file: !80, line: 38, baseType: !23, size: 32, elements: !81)
!80 = !DIFile(filename: "arch/x86/kernel/fpu/xstate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85473f77f0706e565168985886d520eb")
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "XSTATE_COPY_FP", value: 0)
!83 = !DIEnumerator(name: "XSTATE_COPY_FX", value: 1)
!84 = !DIEnumerator(name: "XSTATE_COPY_XSAVE", value: 2)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xfeature", file: !86, line: 102, baseType: !23, size: 32, elements: !87)
!86 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107}
!88 = !DIEnumerator(name: "XFEATURE_FP", value: 0)
!89 = !DIEnumerator(name: "XFEATURE_SSE", value: 1)
!90 = !DIEnumerator(name: "XFEATURE_YMM", value: 2)
!91 = !DIEnumerator(name: "XFEATURE_BNDREGS", value: 3)
!92 = !DIEnumerator(name: "XFEATURE_BNDCSR", value: 4)
!93 = !DIEnumerator(name: "XFEATURE_OPMASK", value: 5)
!94 = !DIEnumerator(name: "XFEATURE_ZMM_Hi256", value: 6)
!95 = !DIEnumerator(name: "XFEATURE_Hi16_ZMM", value: 7)
!96 = !DIEnumerator(name: "XFEATURE_PT_UNIMPLEMENTED_SO_FAR", value: 8)
!97 = !DIEnumerator(name: "XFEATURE_PKRU", value: 9)
!98 = !DIEnumerator(name: "XFEATURE_PASID", value: 10)
!99 = !DIEnumerator(name: "XFEATURE_CET_USER", value: 11)
!100 = !DIEnumerator(name: "XFEATURE_CET_KERNEL_UNUSED", value: 12)
!101 = !DIEnumerator(name: "XFEATURE_RSRVD_COMP_13", value: 13)
!102 = !DIEnumerator(name: "XFEATURE_RSRVD_COMP_14", value: 14)
!103 = !DIEnumerator(name: "XFEATURE_LBR", value: 15)
!104 = !DIEnumerator(name: "XFEATURE_RSRVD_COMP_16", value: 16)
!105 = !DIEnumerator(name: "XFEATURE_XTILE_CFG", value: 17)
!106 = !DIEnumerator(name: "XFEATURE_XTILE_DATA", value: 18)
!107 = !DIEnumerator(name: "XFEATURE_MAX", value: 19)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !109, line: 10, baseType: !23, size: 32, elements: !110)
!109 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!110 = !{!111, !112}
!111 = !DIEnumerator(name: "false", value: 0)
!112 = !DIEnumerator(name: "true", value: 1)
!113 = !{!114, !127, !128, !129, !140, !149, !122, !150, !151, !152, !119, !762, !3894}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !116, line: 56, size: 192, elements: !117)
!116 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!117 = !{!118, !120, !121, !126}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !115, file: !116, line: 57, baseType: !119, size: 64)
!119 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !115, file: !116, line: 58, baseType: !119, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !115, file: !116, line: 59, baseType: !122, size: 32, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !123, line: 21, baseType: !124)
!123 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !125, line: 27, baseType: !23)
!125 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!126 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !115, file: !116, line: 61, baseType: !122, size: 32, offset: 160)
!127 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_fpreg", file: !131, line: 85, size: 80, elements: !132)
!131 = !DIFile(filename: "./arch/x86/include/uapi/asm/sigcontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "327abd771cf7c66287c9e3382680e4d3")
!132 = !{!133, !139}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "significand", scope: !130, file: !131, line: 86, baseType: !134, size: 64)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 64, elements: !137)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !125, line: 24, baseType: !136)
!136 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!137 = !{!138}
!138 = !DISubrange(count: 4)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "exponent", scope: !130, file: !131, line: 87, baseType: !135, size: 16, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_fpxreg", file: !131, line: 91, size: 128, elements: !142)
!142 = !{!143, !144, !145}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "significand", scope: !141, file: !131, line: 92, baseType: !134, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "exponent", scope: !141, file: !131, line: 93, baseType: !135, size: 16, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !141, file: !131, line: 94, baseType: !146, size: 48, offset: 80)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 48, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 3)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !123, line: 19, baseType: !135)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !154, line: 746, size: 58368, elements: !155)
!154 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!155 = !{!156, !157, !158, !159, !170, !171, !172, !173, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !262, !273, !400, !404, !407, !438, !439, !440, !441, !452, !454, !455, !456, !457, !458, !459, !470, !471, !474, !475, !476, !477, !478, !479, !480, !481, !488, !489, !496, !497, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3140, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3188, !3194, !3195, !3196, !3197, !3198, !3200, !3203, !3210, !3215, !3218, !3221, !3224, !3227, !3365, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3403, !3404, !3405, !3414, !3422, !3423, !3424, !3425, !3426, !3431, !3432, !3433, !3436, !3437, !3440, !3443, !3446, !3454, !3457, !3458, !3544, !3545, !3546, !3547, !3548, !3554, !3555, !3556, !3557, !3560, !3561, !3564, !3578, !3579, !3582, !3583, !3584, !3587, !3588, !3589, !3590, !3591, !3592, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3624, !3625, !3631, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3643, !3715, !3717, !3718, !3719, !3720, !3721, !3722, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3751, !3752, !3753}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !153, file: !154, line: 752, baseType: !115, size: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !153, file: !154, line: 754, baseType: !23, size: 32, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !153, file: !154, line: 767, baseType: !150, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !153, file: !154, line: 768, baseType: !160, size: 32, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !161, line: 113, baseType: !162)
!161 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !161, line: 111, size: 32, elements: !163)
!163 = !{!164}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !162, file: !161, line: 112, baseType: !165, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !166, line: 174, baseType: !167)
!166 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !166, line: 172, size: 32, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !167, file: !166, line: 173, baseType: !127, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !154, line: 770, baseType: !23, size: 32, offset: 352)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !153, file: !154, line: 771, baseType: !23, size: 32, offset: 384)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !153, file: !154, line: 774, baseType: !127, size: 32, offset: 416)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !153, file: !154, line: 775, baseType: !174, size: 128, offset: 448)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !175, line: 58, size: 128, elements: !176)
!175 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!176 = !{!177, !183, !188, !189}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !174, file: !175, line: 59, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !179, line: 60, size: 64, elements: !180)
!179 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !179, line: 61, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, scope: !174, file: !175, line: 60, baseType: !184, size: 32, offset: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !174, file: !175, line: 60, size: 32, elements: !185)
!185 = !{!186, !187}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !184, file: !175, line: 61, baseType: !23, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !184, file: !175, line: 62, baseType: !165, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !174, file: !175, line: 65, baseType: !149, size: 16, offset: 96)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !174, file: !175, line: 65, baseType: !149, size: 16, offset: 112)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !153, file: !154, line: 776, baseType: !23, size: 32, offset: 576)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !153, file: !154, line: 777, baseType: !119, size: 64, offset: 640)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !153, file: !154, line: 778, baseType: !152, size: 64, offset: 704)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !153, file: !154, line: 787, baseType: !127, size: 32, offset: 768)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !153, file: !154, line: 788, baseType: !127, size: 32, offset: 800)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !153, file: !154, line: 790, baseType: !127, size: 32, offset: 832)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !153, file: !154, line: 792, baseType: !127, size: 32, offset: 864)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !153, file: !154, line: 793, baseType: !127, size: 32, offset: 896)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !153, file: !154, line: 794, baseType: !127, size: 32, offset: 928)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !153, file: !154, line: 795, baseType: !23, size: 32, offset: 960)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !153, file: !154, line: 797, baseType: !201, size: 2048, offset: 1024)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !154, line: 551, size: 2048, elements: !202)
!202 = !{!203, !208, !216, !220, !221, !227, !228, !229, !230, !231, !232, !236, !237, !238, !239, !241, !244, !245, !246}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !201, file: !154, line: 553, baseType: !204, size: 128)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !154, line: 411, size: 128, elements: !205)
!205 = !{!206, !207}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !204, file: !154, line: 412, baseType: !119, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !204, file: !154, line: 413, baseType: !122, size: 32, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !201, file: !154, line: 554, baseType: !209, size: 192, align: 64, offset: 128)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !210, line: 5, size: 192, align: 64, elements: !211)
!210 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!211 = !{!212, !213, !215}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !209, file: !210, line: 6, baseType: !119, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !209, file: !210, line: 7, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !209, file: !210, line: 8, baseType: !214, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !201, file: !154, line: 555, baseType: !217, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !123, line: 23, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !125, line: 31, baseType: !219)
!219 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !201, file: !154, line: 556, baseType: !217, size: 64, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !201, file: !154, line: 558, baseType: !222, size: 128, offset: 448)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !166, line: 190, size: 128, elements: !223)
!223 = !{!224, !226}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !166, line: 191, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !222, file: !166, line: 191, baseType: !225, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !201, file: !154, line: 559, baseType: !23, size: 32, offset: 576)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !201, file: !154, line: 561, baseType: !217, size: 64, offset: 640)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !201, file: !154, line: 562, baseType: !217, size: 64, offset: 704)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !201, file: !154, line: 563, baseType: !217, size: 64, offset: 768)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !201, file: !154, line: 564, baseType: !217, size: 64, offset: 832)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !201, file: !154, line: 565, baseType: !233, size: 64, offset: 896)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !123, line: 22, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !125, line: 30, baseType: !235)
!235 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !201, file: !154, line: 566, baseType: !217, size: 64, offset: 960)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !201, file: !154, line: 568, baseType: !217, size: 64, offset: 1024)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !201, file: !154, line: 571, baseType: !127, size: 32, offset: 1088)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !201, file: !154, line: 572, baseType: !240, size: 64, offset: 1152)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !201, file: !154, line: 574, baseType: !242, size: 64, offset: 1216)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !154, line: 49, flags: DIFlagFwdDecl)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !201, file: !154, line: 576, baseType: !242, size: 64, offset: 1280)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !201, file: !154, line: 578, baseType: !119, size: 64, offset: 1344)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !201, file: !154, line: 588, baseType: !247, size: 512, align: 512, offset: 1536)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !154, line: 497, size: 512, align: 512, elements: !248)
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !247, file: !154, line: 498, baseType: !217, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !247, file: !154, line: 499, baseType: !217, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !247, file: !154, line: 500, baseType: !217, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !247, file: !154, line: 501, baseType: !122, size: 32, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !247, file: !154, line: 502, baseType: !122, size: 32, offset: 224)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !247, file: !154, line: 503, baseType: !119, size: 64, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !247, file: !154, line: 504, baseType: !119, size: 64, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !247, file: !154, line: 505, baseType: !119, size: 64, offset: 384)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !247, file: !154, line: 506, baseType: !258, size: 64, align: 64, offset: 448)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !154, line: 445, size: 64, align: 64, elements: !259)
!259 = !{!260, !261}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !258, file: !154, line: 446, baseType: !23, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !258, file: !154, line: 447, baseType: !23, size: 32, offset: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !153, file: !154, line: 798, baseType: !263, size: 384, offset: 3072)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !154, line: 592, size: 384, elements: !264)
!264 = !{!265, !266, !267, !268, !269, !270, !271}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !263, file: !154, line: 593, baseType: !222, size: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !263, file: !154, line: 594, baseType: !119, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !263, file: !154, line: 595, baseType: !119, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !263, file: !154, line: 596, baseType: !23, size: 32, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !263, file: !154, line: 597, baseType: !136, size: 16, offset: 288)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !263, file: !154, line: 598, baseType: !136, size: 16, offset: 304)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !263, file: !154, line: 600, baseType: !272, size: 64, offset: 320)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !153, file: !154, line: 799, baseType: !274, size: 1792, offset: 3456)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !154, line: 610, size: 1792, elements: !275)
!275 = !{!276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !397, !398}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !274, file: !154, line: 611, baseType: !209, size: 192, align: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !274, file: !154, line: 618, baseType: !217, size: 64, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !274, file: !154, line: 619, baseType: !217, size: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !274, file: !154, line: 620, baseType: !217, size: 64, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !274, file: !154, line: 621, baseType: !217, size: 64, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !274, file: !154, line: 622, baseType: !217, size: 64, offset: 448)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !274, file: !154, line: 629, baseType: !233, size: 64, offset: 512)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !274, file: !154, line: 630, baseType: !217, size: 64, offset: 576)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !274, file: !154, line: 631, baseType: !23, size: 32, offset: 640)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !274, file: !154, line: 653, baseType: !23, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !274, file: !154, line: 654, baseType: !23, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !274, file: !154, line: 655, baseType: !23, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !274, file: !154, line: 656, baseType: !23, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !274, file: !154, line: 662, baseType: !290, size: 512, offset: 704)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !22, line: 118, size: 512, elements: !291)
!291 = !{!292, !300, !301, !306, !393, !394, !395, !396}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !290, file: !22, line: 119, baseType: !293, size: 256)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !294, line: 9, size: 256, elements: !295)
!294 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!295 = !{!296, !297}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !293, file: !294, line: 10, baseType: !209, size: 192, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !293, file: !294, line: 11, baseType: !298, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !299, line: 29, baseType: !233)
!299 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !290, file: !22, line: 120, baseType: !298, size: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !290, file: !22, line: 121, baseType: !302, size: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!21, !305}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !290, file: !22, line: 122, baseType: !307, size: 64, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !22, line: 159, size: 512, align: 512, elements: !309)
!309 = !{!310, !361, !362, !366, !376, !377, !388, !392}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !308, file: !22, line: 160, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !22, line: 215, size: 4608, align: 512, elements: !313)
!313 = !{!314, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !312, file: !22, line: 216, baseType: !315, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !316, line: 23, baseType: !317)
!316 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !316, line: 14, size: 32, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !317, file: !316, line: 15, baseType: !320, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !321, line: 44, baseType: !322)
!321 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !321, line: 14, size: 32, elements: !323)
!323 = !{!324}
!324 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !321, line: 15, baseType: !325, size: 32)
!325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !321, line: 15, size: 32, elements: !326)
!326 = !{!327, !328, !336}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !325, file: !321, line: 16, baseType: !165, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !321, line: 24, baseType: !329, size: 16)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !325, file: !321, line: 24, size: 16, elements: !330)
!330 = !{!331, !335}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !329, file: !321, line: 25, baseType: !332, size: 8)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !123, line: 17, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !125, line: 21, baseType: !334)
!334 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !329, file: !321, line: 26, baseType: !332, size: 8, offset: 8)
!336 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !321, line: 28, baseType: !337, size: 32)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !325, file: !321, line: 28, size: 32, elements: !338)
!338 = !{!339, !340}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !337, file: !321, line: 29, baseType: !149, size: 16)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !337, file: !321, line: 30, baseType: !149, size: 16, offset: 16)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !312, file: !22, line: 217, baseType: !23, size: 32, offset: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !312, file: !22, line: 218, baseType: !23, size: 32, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !312, file: !22, line: 219, baseType: !23, size: 32, offset: 96)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !312, file: !22, line: 220, baseType: !23, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !312, file: !22, line: 221, baseType: !23, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !312, file: !22, line: 222, baseType: !23, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !312, file: !22, line: 223, baseType: !23, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !312, file: !22, line: 224, baseType: !23, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !312, file: !22, line: 226, baseType: !23, size: 32, offset: 160)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !312, file: !22, line: 227, baseType: !136, size: 16, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !312, file: !22, line: 228, baseType: !136, size: 16, offset: 208)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !312, file: !22, line: 229, baseType: !23, size: 32, offset: 224)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !312, file: !22, line: 235, baseType: !298, size: 64, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !312, file: !22, line: 236, baseType: !305, size: 64, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !312, file: !22, line: 237, baseType: !298, size: 64, offset: 384)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !312, file: !22, line: 238, baseType: !305, size: 64, offset: 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !312, file: !22, line: 239, baseType: !358, size: 4096, align: 512, offset: 512)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 4096, align: 512, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 8)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !308, file: !22, line: 161, baseType: !23, size: 32, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !308, file: !22, line: 162, baseType: !363, size: 32, offset: 96)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !166, line: 32, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !365, line: 96, baseType: !127)
!365 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!366 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !308, file: !22, line: 163, baseType: !367, size: 32, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !368, line: 274, baseType: !369)
!368 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !368, line: 274, size: 32, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !369, file: !368, line: 274, baseType: !372, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !368, line: 69, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !368, line: 64, size: 32, elements: !374)
!374 = !{!375}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !373, file: !368, line: 65, baseType: !23, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !308, file: !22, line: 164, baseType: !305, size: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !308, file: !22, line: 165, baseType: !378, size: 128, offset: 256)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !294, line: 14, size: 128, elements: !379)
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !378, file: !294, line: 15, baseType: !381, size: 128)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !210, line: 26, size: 128, elements: !382)
!382 = !{!383, !387}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !381, file: !210, line: 27, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !210, line: 12, size: 64, elements: !385)
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !384, file: !210, line: 13, baseType: !214, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !381, file: !210, line: 28, baseType: !214, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !308, file: !22, line: 166, baseType: !389, size: 64, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!298}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !308, file: !22, line: 167, baseType: !298, size: 64, offset: 448)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !290, file: !22, line: 123, baseType: !332, size: 8, offset: 448)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !290, file: !22, line: 124, baseType: !332, size: 8, offset: 456)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !290, file: !22, line: 125, baseType: !332, size: 8, offset: 464)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !290, file: !22, line: 126, baseType: !332, size: 8, offset: 472)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !274, file: !154, line: 671, baseType: !290, size: 512, offset: 1216)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !274, file: !154, line: 679, baseType: !399, size: 64, offset: 1728)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !153, file: !154, line: 800, baseType: !401, size: 64, offset: 5248)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !154, line: 800, flags: DIFlagFwdDecl)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !153, file: !154, line: 809, baseType: !405, size: 64, offset: 5312)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !154, line: 70, flags: DIFlagFwdDecl)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !153, file: !154, line: 825, baseType: !408, size: 2048, align: 512, offset: 5632)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !154, line: 509, size: 2048, align: 512, elements: !409)
!409 = !{!410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !408, file: !154, line: 511, baseType: !217, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !408, file: !154, line: 512, baseType: !217, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !408, file: !154, line: 513, baseType: !217, size: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !408, file: !154, line: 514, baseType: !217, size: 64, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !408, file: !154, line: 515, baseType: !217, size: 64, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !408, file: !154, line: 516, baseType: !217, size: 64, offset: 320)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !408, file: !154, line: 518, baseType: !217, size: 64, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !408, file: !154, line: 519, baseType: !217, size: 64, offset: 448)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !408, file: !154, line: 520, baseType: !233, size: 64, offset: 512)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !408, file: !154, line: 522, baseType: !217, size: 64, offset: 576)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !408, file: !154, line: 523, baseType: !217, size: 64, offset: 640)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !408, file: !154, line: 524, baseType: !233, size: 64, offset: 704)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !408, file: !154, line: 526, baseType: !233, size: 64, offset: 768)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !408, file: !154, line: 527, baseType: !217, size: 64, offset: 832)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !408, file: !154, line: 529, baseType: !217, size: 64, offset: 896)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !408, file: !154, line: 530, baseType: !217, size: 64, offset: 960)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !408, file: !154, line: 531, baseType: !217, size: 64, offset: 1024)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !408, file: !154, line: 532, baseType: !217, size: 64, offset: 1088)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !408, file: !154, line: 533, baseType: !217, size: 64, offset: 1152)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !408, file: !154, line: 535, baseType: !217, size: 64, offset: 1216)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !408, file: !154, line: 536, baseType: !217, size: 64, offset: 1280)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !408, file: !154, line: 537, baseType: !217, size: 64, offset: 1344)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !408, file: !154, line: 538, baseType: !217, size: 64, offset: 1408)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !408, file: !154, line: 539, baseType: !217, size: 64, offset: 1472)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !408, file: !154, line: 540, baseType: !217, size: 64, offset: 1536)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !408, file: !154, line: 541, baseType: !217, size: 64, offset: 1600)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !408, file: !154, line: 542, baseType: !217, size: 64, offset: 1664)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !408, file: !154, line: 543, baseType: !217, size: 64, offset: 1728)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !153, file: !154, line: 833, baseType: !23, size: 32, offset: 7680)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !153, file: !154, line: 836, baseType: !23, size: 32, offset: 7712)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !153, file: !154, line: 837, baseType: !127, size: 32, offset: 7744)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !153, file: !154, line: 838, baseType: !442, size: 64, offset: 7808)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !445, line: 19, baseType: !446)
!445 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !445, line: 19, size: 64, elements: !447)
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !446, file: !445, line: 19, baseType: !449, size: 64)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 64, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 1)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !153, file: !154, line: 839, baseType: !453, size: 64, offset: 7872)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !153, file: !154, line: 840, baseType: !444, size: 64, offset: 7936)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !153, file: !154, line: 841, baseType: !150, size: 64, offset: 8000)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !153, file: !154, line: 843, baseType: !136, size: 16, offset: 8064)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !153, file: !154, line: 845, baseType: !136, size: 16, offset: 8080)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !153, file: !154, line: 848, baseType: !127, size: 32, offset: 8096)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !153, file: !154, line: 849, baseType: !460, size: 32, offset: 8128)
!460 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !154, line: 718, size: 32, elements: !461)
!461 = !{!462, !469}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !460, file: !154, line: 724, baseType: !463, size: 32)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !460, file: !154, line: 719, size: 32, elements: !464)
!464 = !{!465, !466, !467, !468}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !463, file: !154, line: 720, baseType: !332, size: 8)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !463, file: !154, line: 721, baseType: !332, size: 8, offset: 8)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !463, file: !154, line: 722, baseType: !332, size: 8, offset: 16)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !463, file: !154, line: 723, baseType: !332, size: 8, offset: 24)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !460, file: !154, line: 725, baseType: !122, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !153, file: !154, line: 850, baseType: !222, size: 128, offset: 8192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !153, file: !154, line: 851, baseType: !472, size: 64, offset: 8320)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !154, line: 60, flags: DIFlagFwdDecl)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !153, file: !154, line: 855, baseType: !119, size: 64, offset: 8384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !153, file: !154, line: 856, baseType: !332, size: 8, offset: 8448)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !153, file: !154, line: 857, baseType: !332, size: 8, offset: 8456)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !153, file: !154, line: 858, baseType: !127, size: 32, offset: 8480)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !153, file: !154, line: 859, baseType: !222, size: 128, offset: 8512)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !153, file: !154, line: 860, baseType: !127, size: 32, offset: 8640)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !153, file: !154, line: 861, baseType: !222, size: 128, offset: 8704)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !153, file: !154, line: 873, baseType: !482, size: 256, offset: 8832)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !154, line: 376, size: 256, elements: !483)
!483 = !{!484, !485, !486, !487}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !482, file: !154, line: 381, baseType: !119, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !482, file: !154, line: 384, baseType: !219, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !482, file: !154, line: 389, baseType: !219, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !482, file: !154, line: 392, baseType: !219, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !153, file: !154, line: 875, baseType: !222, size: 128, offset: 9088)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !153, file: !154, line: 877, baseType: !490, size: 320, offset: 9216)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !491, line: 86, size: 320, elements: !492)
!491 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!492 = !{!493, !494, !495}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !490, file: !491, line: 87, baseType: !127, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !490, file: !491, line: 88, baseType: !222, size: 128, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !490, file: !491, line: 89, baseType: !222, size: 128, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !153, file: !154, line: 878, baseType: !209, size: 192, align: 64, offset: 9536)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !153, file: !154, line: 881, baseType: !498, size: 64, offset: 9728)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !500, line: 733, size: 10240, elements: !501)
!500 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!501 = !{!502, !3059}
!502 = !DIDerivedType(tag: DW_TAG_member, scope: !499, file: !500, line: 734, baseType: !503, size: 10240)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !499, file: !500, line: 734, size: 10240, elements: !504)
!504 = !{!505, !509, !531, !2938, !2939, !2940, !2941, !2942, !2943, !2950, !2951, !2952, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2991, !2993, !2996, !3039, !3040, !3041, !3044, !3045, !3046, !3049, !3050, !3051, !3057, !3058}
!505 = !DIDerivedType(tag: DW_TAG_member, scope: !503, file: !500, line: 739, baseType: !506, size: 512, align: 512)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !503, file: !500, line: 739, size: 512, align: 512, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !506, file: !500, line: 747, baseType: !165, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !503, file: !500, line: 750, baseType: !510, size: 128, offset: 512)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !511, line: 218, size: 128, elements: !512)
!511 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!512 = !{!513, !529, !530}
!513 = !DIDerivedType(tag: DW_TAG_member, scope: !510, file: !511, line: 219, baseType: !514, size: 32)
!514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !510, file: !511, line: 219, size: 32, elements: !515)
!515 = !{!516, !525}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !514, file: !511, line: 220, baseType: !517, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !518, line: 29, baseType: !519)
!518 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !518, line: 17, size: 32, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !518, line: 18, baseType: !522, size: 32)
!522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !518, line: 18, size: 32, elements: !523)
!523 = !{!524}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !522, file: !518, line: 19, baseType: !317, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !514, file: !511, line: 221, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !511, line: 197, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !511, line: 197, elements: !528)
!528 = !{}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !510, file: !511, line: 223, baseType: !23, size: 32, offset: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !510, file: !511, line: 224, baseType: !150, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !503, file: !500, line: 752, baseType: !532, size: 64, offset: 640)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!119, !535, !119, !119, !119, !119}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !56, line: 994, size: 1856, align: 64, elements: !537)
!537 = !{!538, !552, !553, !555, !562, !574, !577, !578, !650, !864, !873, !2928, !2929, !2930, !2931, !2932, !2933, !2935, !2936, !2937}
!538 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !56, line: 995, baseType: !539, size: 128)
!539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !536, file: !56, line: 995, size: 128, elements: !540)
!540 = !{!541, !542, !551}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !539, file: !56, line: 996, baseType: !178, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !539, file: !56, line: 997, baseType: !543, size: 128, align: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !166, line: 232, size: 128, align: 64, elements: !544)
!544 = !{!545, !547}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !543, file: !166, line: 233, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !543, file: !166, line: 234, baseType: !548, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !546}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !539, file: !56, line: 998, baseType: !23, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !536, file: !56, line: 1005, baseType: !517, size: 32, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !536, file: !56, line: 1006, baseType: !554, size: 32, offset: 160)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !166, line: 156, baseType: !23)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !536, file: !56, line: 1007, baseType: !556, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !557, line: 13, baseType: !558)
!557 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !166, line: 181, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !166, line: 179, size: 64, elements: !560)
!560 = !{!561}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !559, file: !166, line: 180, baseType: !233, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !536, file: !56, line: 1008, baseType: !563, size: 256, offset: 256)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !564, line: 66, size: 256, elements: !565)
!564 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!565 = !{!566, !567, !568, !573}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !563, file: !564, line: 67, baseType: !556, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !563, file: !564, line: 68, baseType: !315, size: 32, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !563, file: !564, line: 70, baseType: !569, size: 32, offset: 96)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !570, line: 15, size: 32, elements: !571)
!570 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!571 = !{!572}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !569, file: !570, line: 20, baseType: !165, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !563, file: !564, line: 72, baseType: !222, size: 128, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !536, file: !56, line: 1009, baseType: !575, size: 64, offset: 512)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !166, line: 52, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !365, line: 88, baseType: !235)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !536, file: !56, line: 1010, baseType: !23, size: 32, offset: 576)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !536, file: !56, line: 1011, baseType: !579, size: 256, offset: 640)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !56, line: 948, size: 256, elements: !580)
!580 = !{!581, !602, !639, !640, !648, !649}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !579, file: !56, line: 949, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !583, line: 34, baseType: !584)
!583 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !583, line: 25, size: 64, elements: !585)
!585 = !{!586}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !584, file: !583, line: 26, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !588, line: 27, baseType: !589)
!588 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !588, line: 13, size: 64, elements: !590)
!590 = !{!591, !601}
!591 = !DIDerivedType(tag: DW_TAG_member, scope: !589, file: !588, line: 14, baseType: !592, size: 32)
!592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !589, file: !588, line: 14, size: 32, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !592, file: !588, line: 15, baseType: !165, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, scope: !592, file: !588, line: 16, baseType: !596, size: 32)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !592, file: !588, line: 16, size: 32, elements: !597)
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !596, file: !588, line: 18, baseType: !332, size: 8)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !596, file: !588, line: 19, baseType: !600, size: 24, offset: 8)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 24, elements: !147)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !589, file: !588, line: 26, baseType: !320, size: 32, offset: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !579, file: !56, line: 950, baseType: !603, size: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !28, line: 59, size: 768, elements: !605)
!605 = !{!606, !607, !608, !609, !620, !621, !628, !629}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !604, file: !28, line: 61, baseType: !160, size: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !604, file: !28, line: 62, baseType: !23, size: 32, offset: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !604, file: !28, line: 63, baseType: !517, size: 32, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !604, file: !28, line: 65, baseType: !610, size: 256, offset: 128)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 256, elements: !137)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !166, line: 194, size: 64, elements: !612)
!612 = !{!613}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !611, file: !166, line: 195, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !166, line: 198, size: 128, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !615, file: !166, line: 199, baseType: !614, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !615, file: !166, line: 199, baseType: !619, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !604, file: !28, line: 66, baseType: !611, size: 64, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !604, file: !28, line: 68, baseType: !622, size: 192, offset: 448)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !623, line: 41, baseType: !624)
!623 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !623, line: 37, size: 192, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !624, file: !623, line: 38, baseType: !517, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !624, file: !623, line: 39, baseType: !222, size: 128, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !604, file: !28, line: 69, baseType: !543, size: 128, align: 64, offset: 640)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !604, file: !28, line: 70, baseType: !630, offset: 768)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, elements: !637)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !28, line: 54, size: 128, elements: !632)
!632 = !{!633, !634}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !631, file: !28, line: 55, baseType: !127, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !631, file: !28, line: 56, baseType: !635, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !28, line: 56, flags: DIFlagFwdDecl)
!637 = !{!638}
!638 = !DISubrange(count: -1)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !579, file: !56, line: 951, baseType: !27, size: 32, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !579, file: !56, line: 952, baseType: !641, size: 32, offset: 160)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !642, line: 23, baseType: !643)
!642 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !642, line: 21, size: 32, elements: !644)
!644 = !{!645}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !643, file: !642, line: 22, baseType: !646, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !166, line: 37, baseType: !647)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !365, line: 49, baseType: !23)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !579, file: !56, line: 952, baseType: !641, size: 32, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !579, file: !56, line: 953, baseType: !127, size: 32, offset: 224)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !536, file: !56, line: 1012, baseType: !651, size: 64, offset: 896)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !654, line: 110, size: 1472, elements: !655)
!654 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!655 = !{!656, !657, !658, !665, !666, !667, !668, !669, !670, !671, !672, !678, !679, !680, !681, !682, !683, !809, !810, !811, !812, !813, !844, !847, !851, !859}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !653, file: !654, line: 111, baseType: !556, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !653, file: !654, line: 112, baseType: !641, size: 32, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !653, file: !654, line: 113, baseType: !659, size: 32, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !642, line: 28, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !642, line: 26, size: 32, elements: !661)
!661 = !{!662}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !660, file: !642, line: 27, baseType: !663, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !166, line: 38, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !365, line: 50, baseType: !23)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !653, file: !654, line: 114, baseType: !641, size: 32, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !653, file: !654, line: 115, baseType: !659, size: 32, offset: 160)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !653, file: !654, line: 116, baseType: !641, size: 32, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !653, file: !654, line: 117, baseType: !659, size: 32, offset: 224)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !653, file: !654, line: 118, baseType: !641, size: 32, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !653, file: !654, line: 119, baseType: !659, size: 32, offset: 288)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !653, file: !654, line: 120, baseType: !23, size: 32, offset: 320)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !653, file: !654, line: 121, baseType: !673, size: 64, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !674, line: 24, baseType: !675)
!674 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !674, line: 24, size: 64, elements: !676)
!676 = !{!677}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !675, file: !674, line: 24, baseType: !217, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !653, file: !654, line: 122, baseType: !673, size: 64, offset: 448)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !653, file: !654, line: 123, baseType: !673, size: 64, offset: 512)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !653, file: !654, line: 124, baseType: !673, size: 64, offset: 576)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !653, file: !654, line: 125, baseType: !673, size: 64, offset: 640)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !653, file: !654, line: 127, baseType: !334, size: 8, offset: 704)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !653, file: !654, line: 129, baseType: !684, size: 64, offset: 768)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !686, line: 195, size: 1728, elements: !687)
!686 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!687 = !{!688, !689, !694, !699, !708, !711, !712, !719, !720, !721, !722, !725, !726, !727, !729, !730, !773, !794}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !685, file: !686, line: 196, baseType: !160, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !685, file: !686, line: 197, baseType: !690, size: 32, offset: 32)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !686, line: 28, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !166, line: 104, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !123, line: 20, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !125, line: 26, baseType: !127)
!694 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !686, line: 198, baseType: !695, size: 192, offset: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !685, file: !686, line: 198, size: 192, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !695, file: !686, line: 199, baseType: !222, size: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !695, file: !686, line: 200, baseType: !209, size: 192, align: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !685, file: !686, line: 205, baseType: !700, size: 320, offset: 256)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !701, line: 48, size: 320, elements: !702)
!701 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!702 = !{!703, !704, !705, !706, !707}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !700, file: !701, line: 49, baseType: !556, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !700, file: !701, line: 55, baseType: !556, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !700, file: !701, line: 57, baseType: !569, size: 32, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !700, file: !701, line: 59, baseType: !315, size: 32, offset: 160)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !700, file: !701, line: 60, baseType: !222, size: 128, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !685, file: !686, line: 206, baseType: !709, size: 64, offset: 576)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !686, line: 206, flags: DIFlagFwdDecl)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !685, file: !686, line: 207, baseType: !150, size: 64, offset: 640)
!712 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !686, line: 208, baseType: !713, size: 64, offset: 704)
!713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !685, file: !686, line: 208, size: 64, elements: !714)
!714 = !{!715, !718}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !713, file: !686, line: 209, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !717, line: 8, baseType: !234)
!717 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!718 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !713, file: !686, line: 210, baseType: !716, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !685, file: !686, line: 212, baseType: !716, size: 64, offset: 768)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !685, file: !686, line: 213, baseType: !641, size: 32, offset: 832)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !685, file: !686, line: 214, baseType: !659, size: 32, offset: 864)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !685, file: !686, line: 215, baseType: !723, size: 32, offset: 896)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !686, line: 31, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !166, line: 110, baseType: !122)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !685, file: !686, line: 216, baseType: !136, size: 16, offset: 928)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !685, file: !686, line: 217, baseType: !136, size: 16, offset: 944)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !685, file: !686, line: 221, baseType: !728, size: 16, offset: 960)
!728 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !685, file: !686, line: 228, baseType: !119, size: 64, offset: 1024)
!730 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !686, line: 245, baseType: !731, size: 320, offset: 1088)
!731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !685, file: !686, line: 245, size: 320, elements: !732)
!732 = !{!733, !764}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !731, file: !686, line: 246, baseType: !734, size: 320)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !686, line: 114, size: 320, elements: !735)
!735 = !{!736, !737, !749, !752, !761}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !734, file: !686, line: 116, baseType: !119, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, scope: !734, file: !686, line: 117, baseType: !738, size: 64, offset: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !734, file: !686, line: 117, size: 64, elements: !739)
!739 = !{!740, !748}
!740 = !DIDerivedType(tag: DW_TAG_member, scope: !738, file: !686, line: 118, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !738, file: !686, line: 118, size: 64, elements: !742)
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !741, file: !686, line: 120, baseType: !149, size: 16)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !741, file: !686, line: 121, baseType: !745, size: 48, offset: 16)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !746)
!746 = !{!747}
!747 = !DISubrange(count: 6)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !738, file: !686, line: 127, baseType: !119, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !734, file: !686, line: 129, baseType: !750, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !686, line: 102, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !734, file: !686, line: 130, baseType: !753, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !686, line: 108, size: 192, elements: !755)
!755 = !{!756, !757, !758}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !754, file: !686, line: 109, baseType: !543, size: 128, align: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !754, file: !686, line: 110, baseType: !160, size: 32, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !754, file: !686, line: 111, baseType: !759, size: 8, offset: 160)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !166, line: 35, baseType: !760)
!760 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !734, file: !686, line: 131, baseType: !762, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!764 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !686, line: 247, baseType: !765, size: 320)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !731, file: !686, line: 247, size: 320, elements: !766)
!766 = !{!767, !768, !769, !770, !771}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !765, file: !686, line: 248, baseType: !119, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !765, file: !686, line: 249, baseType: !119, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !765, file: !686, line: 250, baseType: !750, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !765, file: !686, line: 251, baseType: !753, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !765, file: !686, line: 252, baseType: !772, size: 64, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !686, line: 260, baseType: !774, size: 256, offset: 1408)
!774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !685, file: !686, line: 260, size: 256, elements: !775)
!775 = !{!776, !782}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !774, file: !686, line: 261, baseType: !777, size: 256)
!777 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !686, line: 134, size: 256, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !777, file: !686, line: 135, baseType: !150, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !777, file: !686, line: 136, baseType: !781, size: 256)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 256, elements: !137)
!782 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !686, line: 262, baseType: !783, size: 256)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !774, file: !686, line: 262, size: 256, elements: !784)
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !783, file: !686, line: 264, baseType: !222, size: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !783, file: !686, line: 265, baseType: !787, size: 128, offset: 128)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !788, line: 22, size: 128, elements: !789)
!788 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!789 = !{!790, !793}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !787, file: !788, line: 23, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !788, line: 23, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !787, file: !788, line: 24, baseType: !119, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !685, file: !686, line: 280, baseType: !795, size: 64, offset: 1664)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !686, line: 176, size: 192, elements: !797)
!797 = !{!798, !807, !808}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !796, file: !686, line: 177, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !686, line: 171, baseType: !800)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!127, !684, !803, !805, !684}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !751)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !777)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !796, file: !686, line: 178, baseType: !684, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !796, file: !686, line: 179, baseType: !750, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !653, file: !654, line: 130, baseType: !684, size: 64, offset: 832)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !653, file: !654, line: 131, baseType: !684, size: 64, offset: 896)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !653, file: !654, line: 132, baseType: !684, size: 64, offset: 960)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !653, file: !654, line: 135, baseType: !150, size: 64, offset: 1024)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !653, file: !654, line: 137, baseType: !814, size: 64, offset: 1088)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !816, line: 14, size: 1088, elements: !817)
!816 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!817 = !{!818, !819, !828, !829, !830, !831, !832, !833}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !815, file: !816, line: 15, baseType: !160, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !815, file: !816, line: 17, baseType: !820, size: 320, offset: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !821, line: 22, size: 320, elements: !822)
!821 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!822 = !{!823, !824, !825, !826}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !820, file: !821, line: 23, baseType: !315, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !820, file: !821, line: 24, baseType: !233, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !820, file: !821, line: 26, baseType: !222, size: 128, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !820, file: !821, line: 28, baseType: !827, size: 64, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !815, file: !816, line: 19, baseType: !119, size: 64, offset: 384)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !815, file: !816, line: 20, baseType: !556, size: 64, offset: 448)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !815, file: !816, line: 23, baseType: !615, size: 128, offset: 512)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !815, file: !816, line: 24, baseType: !641, size: 32, offset: 640)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !815, file: !816, line: 29, baseType: !556, size: 64, offset: 704)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !815, file: !816, line: 36, baseType: !834, size: 320, offset: 768)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !835, line: 15, size: 320, elements: !836)
!835 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!836 = !{!837, !838, !839, !840, !841, !842, !843}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !834, file: !835, line: 16, baseType: !315, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !834, file: !835, line: 18, baseType: !127, size: 32, offset: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !834, file: !835, line: 19, baseType: !127, size: 32, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !834, file: !835, line: 20, baseType: !127, size: 32, offset: 96)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !834, file: !835, line: 21, baseType: !127, size: 32, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !834, file: !835, line: 22, baseType: !119, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !834, file: !835, line: 23, baseType: !119, size: 64, offset: 256)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !653, file: !654, line: 138, baseType: !845, size: 64, offset: 1152)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !642, line: 18, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !653, file: !654, line: 139, baseType: !848, size: 64, offset: 1216)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !850, line: 16, flags: DIFlagFwdDecl)
!850 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!851 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !653, file: !654, line: 140, baseType: !852, size: 64, offset: 1280)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !654, line: 25, size: 64, elements: !854)
!854 = !{!855, !856, !857}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !853, file: !654, line: 26, baseType: !165, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !853, file: !654, line: 27, baseType: !127, size: 32, offset: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !853, file: !654, line: 28, baseType: !858, offset: 64)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, elements: !637)
!859 = !DIDerivedType(tag: DW_TAG_member, scope: !653, file: !654, line: 142, baseType: !860, size: 128, offset: 1344)
!860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !653, file: !654, line: 142, size: 128, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !860, file: !654, line: 143, baseType: !127, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !860, file: !654, line: 144, baseType: !543, size: 128, align: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !536, file: !56, line: 1013, baseType: !865, size: 256, offset: 960)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !56, line: 970, size: 256, elements: !866)
!866 = !{!867, !868, !869, !870, !871, !872}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !865, file: !56, line: 971, baseType: !119, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !865, file: !56, line: 972, baseType: !23, size: 32, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !865, file: !56, line: 973, baseType: !23, size: 32, offset: 96)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !865, file: !56, line: 974, baseType: !23, size: 32, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !865, file: !56, line: 975, baseType: !23, size: 32, offset: 160)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !865, file: !56, line: 976, baseType: !575, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !536, file: !56, line: 1014, baseType: !874, size: 128, offset: 1216)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !875, line: 8, size: 128, elements: !876)
!875 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!876 = !{!877, !2927}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !874, file: !875, line: 9, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !880, line: 70, size: 256, elements: !881)
!880 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!881 = !{!882, !2924, !2925, !2926}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !879, file: !880, line: 71, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !885, line: 82, size: 1536, elements: !886)
!885 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!886 = !{!887, !888, !893, !901, !902, !917, !2891, !2893, !2906, !2907, !2908, !2909, !2910, !2916, !2917, !2918}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !884, file: !885, line: 84, baseType: !23, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !884, file: !885, line: 85, baseType: !889, size: 32, offset: 32)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !368, line: 275, baseType: !890)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !368, line: 275, size: 32, elements: !891)
!891 = !{!892}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !890, file: !368, line: 275, baseType: !372, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !884, file: !885, line: 86, baseType: !894, size: 128, offset: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !895, line: 38, size: 128, elements: !896)
!895 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!896 = !{!897, !899}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !894, file: !895, line: 39, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !894, file: !895, line: 39, baseType: !900, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !884, file: !885, line: 87, baseType: !883, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !884, file: !885, line: 88, baseType: !903, size: 128, offset: 256)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !885, line: 49, size: 128, elements: !904)
!904 = !{!905, !914}
!905 = !DIDerivedType(tag: DW_TAG_member, scope: !903, file: !885, line: 50, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !903, file: !885, line: 50, size: 64, elements: !907)
!907 = !{!908, !913}
!908 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !885, line: 51, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !885, line: 51, size: 64, elements: !910)
!910 = !{!911, !912}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !909, file: !885, line: 52, baseType: !122, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !909, file: !885, line: 52, baseType: !122, size: 32, offset: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !906, file: !885, line: 54, baseType: !217, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !903, file: !885, line: 56, baseType: !915, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !884, file: !885, line: 89, baseType: !918, size: 64, offset: 384)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !56, line: 641, size: 4800, elements: !920)
!920 = !{!921, !923, !924, !925, !926, !927, !928, !931, !932, !1130, !2705, !2706, !2707, !2708, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2873, !2876, !2877, !2878, !2887, !2888, !2889, !2890}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !919, file: !56, line: 642, baseType: !922, size: 16)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !166, line: 24, baseType: !136)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !919, file: !56, line: 643, baseType: !136, size: 16, offset: 16)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !919, file: !56, line: 644, baseType: !641, size: 32, offset: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !919, file: !56, line: 645, baseType: !222, size: 128, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !919, file: !56, line: 646, baseType: !659, size: 32, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !919, file: !56, line: 647, baseType: !23, size: 32, offset: 224)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !919, file: !56, line: 650, baseType: !929, size: 64, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !56, line: 607, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !919, file: !56, line: 651, baseType: !929, size: 64, offset: 320)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !919, file: !56, line: 654, baseType: !933, size: 64, offset: 384)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !935)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !56, line: 1966, size: 2048, align: 512, elements: !936)
!936 = !{!937, !941, !954, !960, !964, !968, !972, !976, !980, !984, !988, !989, !995, !999, !1037, !1068, !1078, !1084, !1088, !1092, !1096, !1100, !1104, !1110, !1114}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !935, file: !56, line: 1967, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!883, !918, !883, !23}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !935, file: !56, line: 1968, baseType: !942, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!762, !883, !918, !945}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !947, line: 10, size: 128, elements: !948)
!947 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!948 = !{!949, !953}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !946, file: !947, line: 11, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{null, !150}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !946, file: !947, line: 12, baseType: !150, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !935, file: !56, line: 1969, baseType: !955, size: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!127, !958, !918, !127}
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !674, line: 42, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !935, file: !56, line: 1970, baseType: !961, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!929, !918, !127, !759}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !935, file: !56, line: 1972, baseType: !965, size: 64, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!127, !883, !772, !127}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !935, file: !56, line: 1974, baseType: !969, size: 64, offset: 320)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!127, !958, !918, !883, !922, !759}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !935, file: !56, line: 1976, baseType: !973, size: 64, offset: 384)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!127, !883, !918, !883}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !935, file: !56, line: 1977, baseType: !977, size: 64, offset: 448)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!127, !918, !883}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !935, file: !56, line: 1978, baseType: !981, size: 64, offset: 512)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!127, !958, !918, !883, !762}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !935, file: !56, line: 1980, baseType: !985, size: 64, offset: 576)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!127, !958, !918, !883, !922}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !935, file: !56, line: 1982, baseType: !977, size: 64, offset: 640)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !935, file: !56, line: 1983, baseType: !990, size: 64, offset: 704)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!127, !958, !918, !883, !922, !993}
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !166, line: 21, baseType: !994)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !166, line: 18, baseType: !122)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !935, file: !56, line: 1985, baseType: !996, size: 64, offset: 768)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!127, !958, !918, !883, !918, !883, !23}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !935, file: !56, line: 1987, baseType: !1000, size: 64, offset: 832)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!127, !958, !883, !1003}
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !56, line: 226, size: 640, elements: !1005)
!1005 = !{!1006, !1007, !1008, !1018, !1027, !1028, !1034, !1035, !1036}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1004, file: !56, line: 227, baseType: !23, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1004, file: !56, line: 228, baseType: !922, size: 16, offset: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !56, line: 241, baseType: !1009, size: 32, offset: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !56, line: 241, size: 32, elements: !1010)
!1010 = !{!1011, !1012}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1009, file: !56, line: 242, baseType: !641, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1009, file: !56, line: 243, baseType: !1013, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1014, line: 16, baseType: !1015)
!1014 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1014, line: 14, size: 32, elements: !1016)
!1016 = !{!1017}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1015, file: !1014, line: 15, baseType: !646, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !56, line: 245, baseType: !1019, size: 32, offset: 96)
!1019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !56, line: 245, size: 32, elements: !1020)
!1020 = !{!1021, !1022}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1019, file: !56, line: 246, baseType: !659, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1019, file: !56, line: 247, baseType: !1023, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1014, line: 20, baseType: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1014, line: 18, size: 32, elements: !1025)
!1025 = !{!1026}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1024, file: !1014, line: 19, baseType: !663, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1004, file: !56, line: 249, baseType: !575, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1004, file: !56, line: 250, baseType: !1029, size: 128, offset: 192)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !717, line: 13, size: 128, elements: !1030)
!1030 = !{!1031, !1032}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1029, file: !717, line: 14, baseType: !716, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1029, file: !717, line: 15, baseType: !1033, size: 64, offset: 64)
!1033 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1004, file: !56, line: 251, baseType: !1029, size: 128, offset: 320)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1004, file: !56, line: 252, baseType: !1029, size: 128, offset: 448)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1004, file: !56, line: 259, baseType: !535, size: 64, offset: 576)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !935, file: !56, line: 1988, baseType: !1038, size: 64, offset: 896)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!127, !958, !1041, !1043, !122, !23}
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !874)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1045, line: 22, size: 1280, elements: !1046)
!1045 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1046 = !{!1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1044, file: !1045, line: 23, baseType: !122, size: 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1044, file: !1045, line: 24, baseType: !922, size: 16, offset: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1044, file: !1045, line: 25, baseType: !23, size: 32, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1044, file: !1045, line: 26, baseType: !724, size: 32, offset: 96)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1044, file: !1045, line: 27, baseType: !217, size: 64, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1044, file: !1045, line: 28, baseType: !217, size: 64, offset: 192)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1044, file: !1045, line: 41, baseType: !217, size: 64, offset: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1044, file: !1045, line: 42, baseType: !993, size: 32, offset: 320)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1044, file: !1045, line: 43, baseType: !993, size: 32, offset: 352)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1044, file: !1045, line: 44, baseType: !641, size: 32, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1044, file: !1045, line: 45, baseType: !659, size: 32, offset: 416)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1044, file: !1045, line: 46, baseType: !575, size: 64, offset: 448)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1044, file: !1045, line: 47, baseType: !1029, size: 128, offset: 512)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1044, file: !1045, line: 48, baseType: !1029, size: 128, offset: 640)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1044, file: !1045, line: 49, baseType: !1029, size: 128, offset: 768)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1044, file: !1045, line: 50, baseType: !1029, size: 128, offset: 896)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1044, file: !1045, line: 51, baseType: !217, size: 64, offset: 1024)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1044, file: !1045, line: 52, baseType: !217, size: 64, offset: 1088)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1044, file: !1045, line: 53, baseType: !122, size: 32, offset: 1152)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1044, file: !1045, line: 54, baseType: !122, size: 32, offset: 1184)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1044, file: !1045, line: 55, baseType: !217, size: 64, offset: 1216)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !935, file: !56, line: 1990, baseType: !1069, size: 64, offset: 960)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!1072, !883, !772, !1075}
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !166, line: 66, baseType: !1073)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !365, line: 73, baseType: !1074)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !365, line: 15, baseType: !1033)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !166, line: 61, baseType: !1076)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !365, line: 72, baseType: !1077)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !365, line: 16, baseType: !119)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !935, file: !56, line: 1991, baseType: !1079, size: 64, offset: 1024)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!127, !918, !1082, !217, !217}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !56, line: 55, flags: DIFlagFwdDecl)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !935, file: !56, line: 1993, baseType: !1085, size: 64, offset: 1088)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!127, !918, !127}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !935, file: !56, line: 1994, baseType: !1089, size: 64, offset: 1152)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!127, !918, !883, !535, !23, !922}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !935, file: !56, line: 1997, baseType: !1093, size: 64, offset: 1216)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!127, !958, !918, !535, !922}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !935, file: !56, line: 1999, baseType: !1097, size: 64, offset: 1280)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!929, !958, !883, !127}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !935, file: !56, line: 2001, baseType: !1101, size: 64, offset: 1344)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!127, !958, !883, !929, !127}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !935, file: !56, line: 2003, baseType: !1105, size: 64, offset: 1408)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!127, !958, !883, !1108}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !56, line: 76, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !935, file: !56, line: 2005, baseType: !1111, size: 64, offset: 1472)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!127, !883, !1108}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !935, file: !56, line: 2006, baseType: !1115, size: 64, offset: 1536)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!1118, !918}
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !56, line: 3192, size: 192, elements: !1120)
!1120 = !{!1121, !1129}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1119, file: !56, line: 3193, baseType: !1122, size: 128)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1123, line: 296, size: 128, elements: !1124)
!1123 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1124 = !{!1125, !1126, !1128}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1122, file: !1123, line: 297, baseType: !517, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1122, file: !1123, line: 299, baseType: !1127, size: 32, offset: 32)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !166, line: 154, baseType: !23)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1122, file: !1123, line: 300, baseType: !150, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1119, file: !56, line: 3194, baseType: !122, size: 32, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !919, file: !56, line: 655, baseType: !1131, size: 64, offset: 448)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !56, line: 1190, size: 10752, elements: !1133)
!1133 = !{!1134, !1135, !1136, !1137, !1138, !1139, !2218, !2350, !2390, !2473, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2490, !2494, !2495, !2498, !2501, !2504, !2507, !2508, !2509, !2550, !2576, !2577, !2578, !2579, !2580, !2581, !2584, !2588, !2597, !2598, !2599, !2600, !2659, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1132, file: !56, line: 1191, baseType: !222, size: 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1132, file: !56, line: 1192, baseType: !993, size: 32, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1132, file: !56, line: 1193, baseType: !334, size: 8, offset: 160)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1132, file: !56, line: 1194, baseType: !119, size: 64, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1132, file: !56, line: 1195, baseType: !575, size: 64, offset: 256)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1132, file: !56, line: 1196, baseType: !1140, size: 64, offset: 320)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !56, line: 2366, size: 576, elements: !1142)
!1142 = !{!1143, !1144, !1145, !1151, !1155, !1159, !1163, !2206, !2207, !2208, !2210, !2211, !2212, !2214, !2215, !2216, !2217}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1141, file: !56, line: 2367, baseType: !762, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1141, file: !56, line: 2368, baseType: !127, size: 32, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1141, file: !56, line: 2376, baseType: !1146, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!127, !1149}
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !880, line: 21, flags: DIFlagFwdDecl)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1141, file: !56, line: 2377, baseType: !1152, size: 64, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1154)
!1154 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !56, line: 75, flags: DIFlagFwdDecl)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1141, file: !56, line: 2378, baseType: !1156, size: 64, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!883, !1140, !127, !762, !150}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1141, file: !56, line: 2380, baseType: !1160, size: 64, offset: 320)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !1131}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1141, file: !56, line: 2381, baseType: !1164, size: 64, offset: 384)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !36, line: 402, size: 9216, align: 512, elements: !1166)
!1166 = !{!1167, !1168, !1169, !1173, !1845, !1871, !1872, !1873, !1874, !1878, !1881, !1882, !1883, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1951, !1955, !1975, !1995, !1996, !1997, !1998, !2007, !2030, !2031, !2034, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2048, !2049, !2160, !2168, !2169, !2170, !2172, !2176, !2177, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2199, !2200, !2201, !2205}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1165, file: !36, line: 403, baseType: !35, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1165, file: !36, line: 406, baseType: !222, size: 128, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1165, file: !36, line: 409, baseType: !1170, size: 448, offset: 192)
!1170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1171)
!1171 = !{!1172}
!1172 = !DISubrange(count: 56)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1165, file: !36, line: 417, baseType: !1174, size: 768, offset: 640)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !36, line: 45, size: 768, elements: !1175)
!1175 = !{!1176, !1828, !1829, !1830, !1833}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1174, file: !36, line: 46, baseType: !1177, size: 512)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1178, line: 64, size: 512, elements: !1179)
!1178 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1179 = !{!1180, !1181, !1182, !1184, !1228, !1707, !1818, !1823, !1824, !1825, !1826, !1827}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1177, file: !1178, line: 65, baseType: !762, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1177, file: !1178, line: 66, baseType: !222, size: 128, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1177, file: !1178, line: 67, baseType: !1183, size: 64, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1177, file: !1178, line: 68, baseType: !1185, size: 64, offset: 256)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1178, line: 168, size: 768, elements: !1187)
!1187 = !{!1188, !1189, !1190, !1191}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1186, file: !1178, line: 169, baseType: !222, size: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1186, file: !1178, line: 170, baseType: !517, size: 32, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1186, file: !1178, line: 171, baseType: !1177, size: 512, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1186, file: !1178, line: 172, baseType: !1192, size: 64, offset: 704)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1194)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1178, line: 133, size: 192, elements: !1195)
!1195 = !{!1196, !1203, !1208}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1194, file: !1178, line: 134, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1198)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!127, !1201}
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1177)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1194, file: !1178, line: 135, baseType: !1204, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!762, !1201}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1194, file: !1178, line: 136, baseType: !1209, size: 64, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1210)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!127, !1201, !1213}
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1178, line: 125, size: 20736, elements: !1215)
!1215 = !{!1216, !1218, !1222, !1223, !1227}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1214, file: !1178, line: 126, baseType: !1217, size: 192)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !772, size: 192, elements: !147)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1214, file: !1178, line: 127, baseType: !1219, size: 4096, offset: 192)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !772, size: 4096, elements: !1220)
!1220 = !{!1221}
!1221 = !DISubrange(count: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1214, file: !1178, line: 128, baseType: !127, size: 32, offset: 4288)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1214, file: !1178, line: 129, baseType: !1224, size: 16384, offset: 4320)
!1224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1225)
!1225 = !{!1226}
!1226 = !DISubrange(count: 2048)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1214, file: !1178, line: 130, baseType: !127, size: 32, offset: 20704)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1177, file: !1178, line: 69, baseType: !1229, size: 64, offset: 320)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1231)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1178, line: 116, size: 384, elements: !1232)
!1232 = !{!1233, !1237, !1256, !1666, !1697, !1701}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1231, file: !1178, line: 117, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null, !1183}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1231, file: !1178, line: 118, baseType: !1238, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1241, line: 254, size: 128, elements: !1242)
!1241 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1242 = !{!1243, !1252}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1240, file: !1241, line: 255, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!1072, !1183, !1247, !772}
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1241, line: 30, size: 128, elements: !1249)
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1248, file: !1241, line: 31, baseType: !762, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1248, file: !1241, line: 32, baseType: !922, size: 16, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1240, file: !1241, line: 256, baseType: !1253, size: 64, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!1072, !1183, !1247, !762, !1075}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1231, file: !1178, line: 119, baseType: !1257, size: 64, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1260)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1241, line: 84, size: 320, elements: !1261)
!1261 = !{!1262, !1263, !1267, !1662, !1664}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1260, file: !1241, line: 85, baseType: !762, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1260, file: !1241, line: 86, baseType: !1264, size: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!922, !1183, !1247, !127}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1260, file: !1241, line: 88, baseType: !1268, size: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!922, !1183, !1271, !127}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1241, line: 175, size: 512, elements: !1273)
!1273 = !{!1274, !1275, !1276, !1277, !1596, !1600, !1601}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1272, file: !1241, line: 176, baseType: !1248, size: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1272, file: !1241, line: 177, baseType: !1075, size: 64, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1272, file: !1241, line: 178, baseType: !150, size: 64, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1272, file: !1241, line: 179, baseType: !1278, size: 64, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!1281}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !56, line: 472, size: 1536, align: 64, elements: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1588, !1589, !1590, !1593, !1594, !1595}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1282, file: !56, line: 473, baseType: !918, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1282, file: !56, line: 474, baseType: !1122, size: 128, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1282, file: !56, line: 475, baseType: !700, size: 320, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1282, file: !56, line: 476, baseType: !1127, size: 32, offset: 512)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1282, file: !56, line: 477, baseType: !165, size: 32, offset: 544)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1282, file: !56, line: 482, baseType: !381, size: 128, offset: 576)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1282, file: !56, line: 483, baseType: !119, size: 64, offset: 704)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1282, file: !56, line: 484, baseType: !119, size: 64, offset: 768)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1282, file: !56, line: 485, baseType: !1293, size: 64, offset: 832)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1295)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !56, line: 404, size: 1280, elements: !1296)
!1296 = !{!1297, !1363, !1433, !1437, !1441, !1447, !1453, !1457, !1462, !1466, !1470, !1474, !1552, !1556, !1560, !1564, !1569, !1573, !1580, !1584}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1295, file: !56, line: 405, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!127, !1301, !1361}
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !500, line: 74, size: 512, align: 128, elements: !1303)
!1303 = !{!1304, !1305, !1355, !1360}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1302, file: !500, line: 75, baseType: !119, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, scope: !1302, file: !500, line: 83, baseType: !1306, size: 320, offset: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1302, file: !500, line: 83, size: 320, elements: !1307)
!1307 = !{!1308, !1329, !1343, !1347, !1354}
!1308 = !DIDerivedType(tag: DW_TAG_member, scope: !1306, file: !500, line: 84, baseType: !1309, size: 320)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1306, file: !500, line: 84, size: 320, elements: !1310)
!1310 = !{!1311, !1322, !1323, !1328}
!1311 = !DIDerivedType(tag: DW_TAG_member, scope: !1309, file: !500, line: 90, baseType: !1312, size: 128)
!1312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1309, file: !500, line: 90, size: 128, elements: !1313)
!1313 = !{!1314, !1315, !1320, !1321}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1312, file: !500, line: 91, baseType: !222, size: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, scope: !1312, file: !500, line: 94, baseType: !1316, size: 128)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1312, file: !500, line: 94, size: 128, elements: !1317)
!1317 = !{!1318, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1316, file: !500, line: 96, baseType: !150, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1316, file: !500, line: 98, baseType: !23, size: 32, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1312, file: !500, line: 102, baseType: !222, size: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1312, file: !500, line: 103, baseType: !222, size: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1309, file: !500, line: 106, baseType: !1281, size: 64, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, scope: !1309, file: !500, line: 107, baseType: !1324, size: 64, offset: 192)
!1324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1309, file: !500, line: 107, size: 64, elements: !1325)
!1325 = !{!1326, !1327}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1324, file: !500, line: 108, baseType: !119, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1324, file: !500, line: 109, baseType: !119, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1309, file: !500, line: 117, baseType: !119, size: 64, offset: 256)
!1329 = !DIDerivedType(tag: DW_TAG_member, scope: !1306, file: !500, line: 119, baseType: !1330, size: 320)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1306, file: !500, line: 119, size: 320, elements: !1331)
!1331 = !{!1332, !1333, !1336, !1337, !1338}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1330, file: !500, line: 124, baseType: !119, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1330, file: !500, line: 125, baseType: !1334, size: 64, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !500, line: 125, flags: DIFlagFwdDecl)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1330, file: !500, line: 126, baseType: !119, size: 64, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1330, file: !500, line: 127, baseType: !119, size: 64, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, scope: !1330, file: !500, line: 128, baseType: !1339, size: 64, offset: 256)
!1339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1330, file: !500, line: 128, size: 64, elements: !1340)
!1340 = !{!1341, !1342}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1339, file: !500, line: 133, baseType: !119, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1339, file: !500, line: 138, baseType: !556, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, scope: !1306, file: !500, line: 141, baseType: !1344, size: 64)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1306, file: !500, line: 141, size: 64, elements: !1345)
!1345 = !{!1346}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1344, file: !500, line: 142, baseType: !119, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, scope: !1306, file: !500, line: 144, baseType: !1348, size: 128)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1306, file: !500, line: 144, size: 128, elements: !1349)
!1349 = !{!1350, !1353}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1348, file: !500, line: 146, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !500, line: 146, flags: DIFlagFwdDecl)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1348, file: !500, line: 147, baseType: !150, size: 64, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1306, file: !500, line: 161, baseType: !543, size: 128, align: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, scope: !1302, file: !500, line: 164, baseType: !1356, size: 32, offset: 384)
!1356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1302, file: !500, line: 164, size: 32, elements: !1357)
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1356, file: !500, line: 169, baseType: !165, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1356, file: !500, line: 177, baseType: !23, size: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1302, file: !500, line: 181, baseType: !165, size: 32, offset: 416)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !56, line: 309, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1295, file: !56, line: 406, baseType: !1364, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!127, !535, !1367}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !500, line: 293, size: 1536, elements: !1369)
!1369 = !{!1370, !1400, !1414}
!1370 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !500, line: 295, baseType: !1371, size: 512)
!1371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1368, file: !500, line: 295, size: 512, elements: !1372)
!1372 = !{!1373, !1399}
!1373 = !DIDerivedType(tag: DW_TAG_member, scope: !1371, file: !500, line: 296, baseType: !1374, size: 448)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !500, line: 296, size: 448, elements: !1375)
!1375 = !{!1376, !1377, !1386, !1387, !1388, !1397, !1398}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1374, file: !500, line: 298, baseType: !119, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !500, line: 299, baseType: !1378, size: 128, offset: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1374, file: !500, line: 299, size: 128, elements: !1379)
!1379 = !{!1380, !1381}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1378, file: !500, line: 300, baseType: !222, size: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, scope: !1378, file: !500, line: 302, baseType: !1382, size: 128)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1378, file: !500, line: 302, size: 128, elements: !1383)
!1383 = !{!1384, !1385}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1382, file: !500, line: 303, baseType: !150, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1382, file: !500, line: 305, baseType: !23, size: 32, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1374, file: !500, line: 310, baseType: !1281, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1374, file: !500, line: 311, baseType: !119, size: 64, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !500, line: 312, baseType: !1389, size: 64, offset: 320)
!1389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1374, file: !500, line: 312, size: 64, elements: !1390)
!1390 = !{!1391, !1392}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1389, file: !500, line: 313, baseType: !150, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1389, file: !500, line: 314, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !500, line: 257, baseType: !1394)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !500, line: 255, size: 64, elements: !1395)
!1395 = !{!1396}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1394, file: !500, line: 256, baseType: !119, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1374, file: !500, line: 316, baseType: !165, size: 32, offset: 384)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1374, file: !500, line: 317, baseType: !165, size: 32, offset: 416)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1371, file: !500, line: 323, baseType: !1302, size: 512, align: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !500, line: 325, baseType: !1401, size: 512, offset: 512)
!1401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1368, file: !500, line: 325, size: 512, elements: !1402)
!1402 = !{!1403, !1413}
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1401, file: !500, line: 326, baseType: !1404, size: 320)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1401, file: !500, line: 326, size: 320, elements: !1405)
!1405 = !{!1406, !1407, !1408, !1409, !1410, !1411, !1412}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1404, file: !500, line: 327, baseType: !119, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1404, file: !500, line: 328, baseType: !119, size: 64, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1404, file: !500, line: 329, baseType: !119, size: 64, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1404, file: !500, line: 331, baseType: !165, size: 32, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1404, file: !500, line: 332, baseType: !165, size: 32, offset: 224)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1404, file: !500, line: 333, baseType: !165, size: 32, offset: 256)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1404, file: !500, line: 335, baseType: !23, size: 32, offset: 288)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1401, file: !500, line: 339, baseType: !1302, size: 512, align: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !500, line: 341, baseType: !1415, size: 512, offset: 1024)
!1415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1368, file: !500, line: 341, size: 512, elements: !1416)
!1416 = !{!1417, !1426, !1432}
!1417 = !DIDerivedType(tag: DW_TAG_member, scope: !1415, file: !500, line: 342, baseType: !1418, size: 384)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1415, file: !500, line: 342, size: 384, elements: !1419)
!1419 = !{!1420, !1421, !1422, !1423, !1424, !1425}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1418, file: !500, line: 343, baseType: !119, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1418, file: !500, line: 344, baseType: !119, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1418, file: !500, line: 346, baseType: !150, size: 64, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1418, file: !500, line: 347, baseType: !150, size: 64, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1418, file: !500, line: 348, baseType: !150, size: 64, offset: 256)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1418, file: !500, line: 349, baseType: !150, size: 64, offset: 320)
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1415, file: !500, line: 352, baseType: !1427, size: 256)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1415, file: !500, line: 352, size: 256, elements: !1428)
!1428 = !{!1429, !1430, !1431}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1427, file: !500, line: 353, baseType: !119, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1427, file: !500, line: 354, baseType: !119, size: 64, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1427, file: !500, line: 356, baseType: !222, size: 128, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1415, file: !500, line: 359, baseType: !1302, size: 512, align: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1295, file: !56, line: 409, baseType: !1434, size: 64, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!127, !1281, !1361}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1295, file: !56, line: 412, baseType: !1438, size: 64, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!759, !1281, !1367}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1295, file: !56, line: 414, baseType: !1442, size: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{null, !1445}
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !56, line: 310, flags: DIFlagFwdDecl)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1295, file: !56, line: 416, baseType: !1448, size: 64, offset: 320)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!127, !535, !1281, !575, !23, !1451, !1452}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1295, file: !56, line: 419, baseType: !1454, size: 64, offset: 384)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!127, !535, !1281, !575, !23, !23, !1301, !150}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1295, file: !56, line: 424, baseType: !1458, size: 64, offset: 448)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!1461, !1281, !1461}
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !166, line: 131, baseType: !217)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1295, file: !56, line: 425, baseType: !1463, size: 64, offset: 512)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{null, !1367, !1075, !1075}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1295, file: !56, line: 426, baseType: !1467, size: 64, offset: 576)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!759, !1367, !1127}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1295, file: !56, line: 427, baseType: !1471, size: 64, offset: 640)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{null, !1367}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1295, file: !56, line: 428, baseType: !1475, size: 64, offset: 704)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!1072, !1478, !1500}
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !56, line: 373, size: 384, elements: !1480)
!1480 = !{!1481, !1482, !1483, !1487, !1488, !1489, !1490}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1479, file: !56, line: 374, baseType: !535, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1479, file: !56, line: 375, baseType: !575, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1479, file: !56, line: 376, baseType: !1484, size: 64, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{null, !1478, !1033}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1479, file: !56, line: 377, baseType: !150, size: 64, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1479, file: !56, line: 378, baseType: !127, size: 32, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1479, file: !56, line: 379, baseType: !149, size: 16, offset: 288)
!1490 = !DIDerivedType(tag: DW_TAG_member, scope: !1479, file: !56, line: 380, baseType: !1491, size: 64, offset: 320)
!1491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1479, file: !56, line: 380, size: 64, elements: !1492)
!1492 = !{!1493, !1496}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1491, file: !56, line: 386, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !56, line: 386, flags: DIFlagFwdDecl)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1491, file: !56, line: 395, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!1072, !150}
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1502, line: 41, size: 320, elements: !1503)
!1502 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1503 = !{!1504, !1505, !1506, !1507, !1508, !1509, !1514, !1547}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1501, file: !1502, line: 42, baseType: !332, size: 8)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1501, file: !1502, line: 43, baseType: !759, size: 8, offset: 8)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1501, file: !1502, line: 44, baseType: !759, size: 8, offset: 16)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1501, file: !1502, line: 45, baseType: !759, size: 8, offset: 24)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1501, file: !1502, line: 46, baseType: !759, size: 8, offset: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, scope: !1501, file: !1502, line: 47, baseType: !1510, size: 64, offset: 64)
!1510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1501, file: !1502, line: 47, size: 64, elements: !1511)
!1511 = !{!1512, !1513}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1510, file: !1502, line: 48, baseType: !1075, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1510, file: !1502, line: 49, baseType: !127, size: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, scope: !1501, file: !1502, line: 61, baseType: !1515, size: 128, offset: 128)
!1515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1501, file: !1502, line: 61, size: 128, elements: !1516)
!1516 = !{!1517, !1523}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1515, file: !1502, line: 67, baseType: !1518, size: 128)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1519, line: 17, size: 128, elements: !1520)
!1519 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1518, file: !1519, line: 19, baseType: !150, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1518, file: !1519, line: 20, baseType: !1076, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, scope: !1515, file: !1502, line: 68, baseType: !1524, size: 128)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1515, file: !1502, line: 68, size: 128, elements: !1525)
!1525 = !{!1526, !1546}
!1526 = !DIDerivedType(tag: DW_TAG_member, scope: !1524, file: !1502, line: 69, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1524, file: !1502, line: 69, size: 64, elements: !1528)
!1528 = !{!1529, !1532, !1539, !1543, !1545}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1527, file: !1502, line: 71, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1518)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1527, file: !1502, line: 72, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1535)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1502, line: 17, size: 128, elements: !1536)
!1536 = !{!1537, !1538}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1535, file: !1502, line: 18, baseType: !150, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1535, file: !1502, line: 19, baseType: !1075, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1527, file: !1502, line: 73, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1542)
!1542 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1502, line: 73, flags: DIFlagFwdDecl)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1527, file: !1502, line: 74, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1527, file: !1502, line: 75, baseType: !150, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1524, file: !1502, line: 77, baseType: !1075, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, scope: !1501, file: !1502, line: 80, baseType: !1548, size: 64, offset: 256)
!1548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1501, file: !1502, line: 80, size: 64, elements: !1549)
!1549 = !{!1550, !1551}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1548, file: !1502, line: 81, baseType: !119, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1548, file: !1502, line: 82, baseType: !575, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1295, file: !56, line: 433, baseType: !1553, size: 64, offset: 768)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!127, !1281, !1367, !1367, !42}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1295, file: !56, line: 435, baseType: !1557, size: 64, offset: 832)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!127, !1367}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1295, file: !56, line: 436, baseType: !1561, size: 64, offset: 896)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!759, !1367, !1075, !1075}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1295, file: !56, line: 438, baseType: !1565, size: 64, offset: 960)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{null, !1367, !1568, !1568}
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1295, file: !56, line: 439, baseType: !1570, size: 64, offset: 1024)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!127, !1281, !1301}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1295, file: !56, line: 442, baseType: !1574, size: 64, offset: 1088)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!127, !1577, !535, !1579}
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !56, line: 66, flags: DIFlagFwdDecl)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1295, file: !56, line: 444, baseType: !1581, size: 64, offset: 1152)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{null, !535}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1295, file: !56, line: 445, baseType: !1585, size: 64, offset: 1216)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!127, !1478, !1500}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1282, file: !56, line: 486, baseType: !119, size: 64, offset: 896)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1282, file: !56, line: 487, baseType: !700, size: 320, offset: 960)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1282, file: !56, line: 488, baseType: !1591, size: 32, offset: 1280)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1592, line: 8, baseType: !122)
!1592 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1282, file: !56, line: 489, baseType: !517, size: 32, offset: 1312)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1282, file: !56, line: 490, baseType: !222, size: 128, offset: 1344)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1282, file: !56, line: 491, baseType: !150, size: 64, offset: 1472)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1272, file: !1241, line: 180, baseType: !1597, size: 64, offset: 320)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!1072, !535, !1183, !1271, !772, !575, !1075}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1272, file: !1241, line: 182, baseType: !1597, size: 64, offset: 384)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1272, file: !1241, line: 184, baseType: !1602, size: 64, offset: 448)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!127, !535, !1183, !1271, !1605}
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !500, line: 625, size: 1344, elements: !1607)
!1607 = !{!1608, !1617, !1618, !1626, !1633, !1634, !1639, !1640, !1645, !1646, !1649, !1653, !1654, !1655, !1656, !1657, !1660}
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !500, line: 628, baseType: !1609, size: 128)
!1609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1606, file: !500, line: 628, size: 128, elements: !1610)
!1610 = !{!1611, !1616}
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !1609, file: !500, line: 629, baseType: !1612, size: 128)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1609, file: !500, line: 629, size: 128, elements: !1613)
!1613 = !{!1614, !1615}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1612, file: !500, line: 631, baseType: !119, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1612, file: !500, line: 632, baseType: !119, size: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1609, file: !500, line: 635, baseType: !543, size: 128, align: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1606, file: !500, line: 639, baseType: !498, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1606, file: !500, line: 640, baseType: !1619, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1620, line: 297, baseType: !1621)
!1620 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1620, line: 297, size: 64, elements: !1622)
!1622 = !{!1623}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1621, file: !1620, line: 297, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1625, line: 19, baseType: !119)
!1625 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1626 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !500, line: 646, baseType: !1627, size: 64, offset: 256)
!1627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1606, file: !500, line: 646, size: 64, elements: !1628)
!1628 = !{!1629, !1632}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1627, file: !500, line: 647, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1631)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !500, line: 542, baseType: !119)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1627, file: !500, line: 648, baseType: !1631, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1606, file: !500, line: 666, baseType: !127, size: 32, offset: 320)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1606, file: !500, line: 667, baseType: !1635, size: 64, offset: 384)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !500, line: 579, size: 320, elements: !1637)
!1637 = !{!1638}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1636, file: !500, line: 580, baseType: !700, size: 320)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1606, file: !500, line: 670, baseType: !759, size: 8, offset: 448)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1606, file: !500, line: 681, baseType: !1641, size: 256, offset: 512)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1606, file: !500, line: 678, size: 256, elements: !1642)
!1642 = !{!1643, !1644}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1641, file: !500, line: 679, baseType: !209, size: 192, align: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1641, file: !500, line: 680, baseType: !119, size: 64, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1606, file: !500, line: 689, baseType: !222, size: 128, offset: 768)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1606, file: !500, line: 691, baseType: !1647, size: 64, offset: 896)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !500, line: 691, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1606, file: !500, line: 694, baseType: !1650, size: 64, offset: 960)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1652)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !500, line: 694, flags: DIFlagFwdDecl)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1606, file: !500, line: 697, baseType: !119, size: 64, offset: 1024)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1606, file: !500, line: 699, baseType: !535, size: 64, offset: 1088)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1606, file: !500, line: 700, baseType: !150, size: 64, offset: 1152)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1606, file: !500, line: 711, baseType: !556, size: 64, offset: 1216)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1606, file: !500, line: 717, baseType: !1658, size: 64, offset: 1280)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !154, line: 54, flags: DIFlagFwdDecl)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1606, file: !500, line: 722, baseType: !1661, offset: 1344)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !500, line: 570, elements: !528)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1260, file: !1241, line: 90, baseType: !1663, size: 64, offset: 192)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1260, file: !1241, line: 91, baseType: !1665, size: 64, offset: 256)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1231, file: !1178, line: 120, baseType: !1667, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!1670, !1201}
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1672)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !50, line: 39, size: 384, elements: !1673)
!1673 = !{!1674, !1675, !1679, !1683, !1692, !1696}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1672, file: !50, line: 40, baseType: !49, size: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1672, file: !50, line: 41, baseType: !1676, size: 64, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!759}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1672, file: !50, line: 42, baseType: !1680, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!150}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1672, file: !50, line: 43, baseType: !1684, size: 64, offset: 192)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!1687, !1689}
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !1691, line: 17, flags: DIFlagFwdDecl)
!1691 = !DIFile(filename: "./include/linux/socket.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f01d0394047c40639978f4f3c4ad0053")
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1672, file: !50, line: 44, baseType: !1693, size: 64, offset: 256)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!1687}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1672, file: !50, line: 45, baseType: !950, size: 64, offset: 320)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1231, file: !1178, line: 121, baseType: !1698, size: 64, offset: 256)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!1687, !1201}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1231, file: !1178, line: 122, baseType: !1702, size: 64, offset: 320)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{null, !1201, !1705, !1706}
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1177, file: !1178, line: 70, baseType: !1708, size: 64, offset: 384)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1710, line: 190, size: 1152, elements: !1711)
!1710 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1711 = !{!1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1810, !1811, !1812, !1813, !1814, !1817}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1709, file: !1710, line: 191, baseType: !165, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1709, file: !1710, line: 192, baseType: !165, size: 32, offset: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1709, file: !1710, line: 202, baseType: !1708, size: 64, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1709, file: !1710, line: 203, baseType: !762, size: 64, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1709, file: !1710, line: 205, baseType: !209, size: 192, align: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1709, file: !1710, line: 207, baseType: !1687, size: 64, offset: 384)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1709, file: !1710, line: 208, baseType: !23, size: 32, offset: 448)
!1719 = !DIDerivedType(tag: DW_TAG_member, scope: !1709, file: !1710, line: 209, baseType: !1720, size: 256, offset: 512)
!1720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1709, file: !1710, line: 209, size: 256, elements: !1721)
!1721 = !{!1722, !1731, !1735}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1720, file: !1710, line: 210, baseType: !1723, size: 256)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1710, line: 153, size: 256, elements: !1724)
!1724 = !{!1725, !1726, !1727, !1730}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1723, file: !1710, line: 154, baseType: !119, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1723, file: !1710, line: 156, baseType: !384, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1723, file: !1710, line: 162, baseType: !1728, size: 64, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1710, line: 162, flags: DIFlagFwdDecl)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1723, file: !1710, line: 167, baseType: !119, size: 64, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1720, file: !1710, line: 211, baseType: !1732, size: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1710, line: 170, size: 64, elements: !1733)
!1733 = !{!1734}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1732, file: !1710, line: 171, baseType: !1708, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1720, file: !1710, line: 212, baseType: !1736, size: 256)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1710, line: 174, size: 256, elements: !1737)
!1737 = !{!1738, !1805, !1808, !1809}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1736, file: !1710, line: 175, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1741)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1710, line: 271, size: 768, elements: !1742)
!1742 = !{!1743, !1765, !1769, !1773, !1778, !1782, !1786, !1790, !1791, !1792, !1793, !1801}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1741, file: !1710, line: 276, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!127, !1747}
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1710, line: 251, size: 1216, elements: !1749)
!1749 = !{!1750, !1751, !1752, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1748, file: !1710, line: 253, baseType: !1708, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1748, file: !1710, line: 254, baseType: !535, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1748, file: !1710, line: 255, baseType: !1753, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !154, line: 66, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1748, file: !1710, line: 256, baseType: !150, size: 64, offset: 192)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1748, file: !1710, line: 259, baseType: !563, size: 256, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1748, file: !1710, line: 260, baseType: !563, size: 256, offset: 512)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1748, file: !1710, line: 261, baseType: !127, size: 32, offset: 768)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1748, file: !1710, line: 262, baseType: !222, size: 128, offset: 832)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1748, file: !1710, line: 263, baseType: !772, size: 64, offset: 960)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1748, file: !1710, line: 265, baseType: !1075, size: 64, offset: 1024)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1748, file: !1710, line: 266, baseType: !759, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1748, file: !1710, line: 267, baseType: !759, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1748, file: !1710, line: 268, baseType: !1650, size: 64, offset: 1152)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1741, file: !1710, line: 277, baseType: !1766, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{null, !1747}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1741, file: !1710, line: 290, baseType: !1770, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!127, !1753, !150}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1741, file: !1710, line: 292, baseType: !1774, size: 64, offset: 192)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!150, !1753, !1777}
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1741, file: !1710, line: 293, baseType: !1779, size: 64, offset: 256)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!150, !1753, !150, !1777}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1741, file: !1710, line: 294, baseType: !1783, size: 64, offset: 320)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{null, !1753, !150}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1741, file: !1710, line: 296, baseType: !1787, size: 64, offset: 384)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!1072, !1747, !772, !1075, !575}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1741, file: !1710, line: 306, baseType: !1075, size: 64, offset: 448)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1741, file: !1710, line: 313, baseType: !759, size: 8, offset: 512)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1741, file: !1710, line: 314, baseType: !1787, size: 64, offset: 576)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1741, file: !1710, line: 317, baseType: !1794, size: 64, offset: 640)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!1797, !1747, !1799}
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1798, line: 59, baseType: !23)
!1798 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !56, line: 61, flags: DIFlagFwdDecl)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1741, file: !1710, line: 320, baseType: !1802, size: 64, offset: 704)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!127, !1747, !1605}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1736, file: !1710, line: 176, baseType: !1806, size: 64, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1710, line: 35, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1736, file: !1710, line: 177, baseType: !575, size: 64, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1736, file: !1710, line: 178, baseType: !1708, size: 64, offset: 192)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1709, file: !1710, line: 215, baseType: !150, size: 64, offset: 768)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1709, file: !1710, line: 221, baseType: !217, size: 64, offset: 832)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1709, file: !1710, line: 223, baseType: !136, size: 16, offset: 896)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1709, file: !1710, line: 224, baseType: !922, size: 16, offset: 912)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1709, file: !1710, line: 225, baseType: !1815, size: 64, offset: 960)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1710, line: 36, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1709, file: !1710, line: 227, baseType: !543, size: 128, align: 64, offset: 1024)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1177, file: !1178, line: 71, baseType: !1819, size: 32, offset: 448)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1820, line: 19, size: 32, elements: !1821)
!1820 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1821 = !{!1822}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1819, file: !1820, line: 20, baseType: !160, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1177, file: !1178, line: 73, baseType: !23, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1177, file: !1178, line: 74, baseType: !23, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1177, file: !1178, line: 75, baseType: !23, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1177, file: !1178, line: 76, baseType: !23, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1177, file: !1178, line: 77, baseType: !23, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1174, file: !36, line: 47, baseType: !1164, size: 64, offset: 512)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1174, file: !36, line: 48, baseType: !1183, size: 64, offset: 576)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1174, file: !36, line: 49, baseType: !1831, size: 64, offset: 640)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !36, line: 49, flags: DIFlagFwdDecl)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1174, file: !36, line: 50, baseType: !1834, size: 64, offset: 704)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1836, line: 26, size: 256, elements: !1837)
!1836 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1837 = !{!1838, !1839}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1835, file: !1836, line: 27, baseType: !23, size: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1835, file: !1836, line: 28, baseType: !1840, size: 192, offset: 64)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1841, line: 43, size: 192, elements: !1842)
!1841 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1842 = !{!1843, !1844}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1840, file: !1841, line: 44, baseType: !315, size: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1840, file: !1841, line: 45, baseType: !222, size: 128, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1165, file: !36, line: 418, baseType: !1846, size: 64, offset: 1408)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !36, line: 53, size: 448, elements: !1848)
!1848 = !{!1849, !1850, !1855, !1859, !1863, !1867}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1847, file: !36, line: 54, baseType: !1248, size: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1847, file: !36, line: 55, baseType: !1851, size: 64, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!1072, !1846, !1854, !772}
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1847, file: !36, line: 57, baseType: !1856, size: 64, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!1072, !1846, !1854, !762, !1075}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1847, file: !36, line: 59, baseType: !1860, size: 64, offset: 256)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{null, !1164, !762}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1847, file: !36, line: 60, baseType: !1864, size: 64, offset: 320)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!127, !1164}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1847, file: !36, line: 61, baseType: !1868, size: 64, offset: 384)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{null, !1164}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1165, file: !36, line: 419, baseType: !762, size: 64, offset: 1472)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1165, file: !36, line: 420, baseType: !762, size: 64, offset: 1536)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1165, file: !36, line: 421, baseType: !1183, size: 64, offset: 1600)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1165, file: !36, line: 424, baseType: !1875, size: 64, offset: 1664)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1877)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !36, line: 424, flags: DIFlagFwdDecl)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1165, file: !36, line: 425, baseType: !1879, size: 64, offset: 1728)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1165, file: !36, line: 426, baseType: !23, size: 32, offset: 1792)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1165, file: !36, line: 435, baseType: !563, size: 256, offset: 1856)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1165, file: !36, line: 437, baseType: !1884, size: 64, offset: 2112)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1886, line: 69, size: 320, elements: !1887)
!1886 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1887 = !{!1888, !1889, !1890, !1907, !1909, !1913, !1914}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1885, file: !1886, line: 70, baseType: !762, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1885, file: !1886, line: 71, baseType: !1164, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1885, file: !1886, line: 72, baseType: !1891, size: 64, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1893)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1886, line: 47, size: 256, elements: !1894)
!1894 = !{!1895, !1896, !1902, !1906}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1893, file: !1886, line: 49, baseType: !23, size: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1893, file: !1886, line: 51, baseType: !1897, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!127, !762, !1900}
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1885)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1893, file: !1886, line: 53, baseType: !1903, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!127, !772, !1900}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1893, file: !1886, line: 55, baseType: !950, size: 64, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1885, file: !1886, line: 73, baseType: !1908, size: 16, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1885, file: !1886, line: 74, baseType: !1910, size: 8, offset: 208)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !123, line: 16, baseType: !1911)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !125, line: 20, baseType: !1912)
!1912 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1885, file: !1886, line: 75, baseType: !332, size: 8, offset: 216)
!1914 = !DIDerivedType(tag: DW_TAG_member, scope: !1885, file: !1886, line: 76, baseType: !1915, size: 64, offset: 256)
!1915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1885, file: !1886, line: 76, size: 64, elements: !1916)
!1916 = !{!1917, !1918, !1925}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1915, file: !1886, line: 77, baseType: !150, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1915, file: !1886, line: 78, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1921)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1886, line: 86, size: 128, elements: !1922)
!1922 = !{!1923, !1924}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1921, file: !1886, line: 87, baseType: !23, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1921, file: !1886, line: 88, baseType: !772, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1915, file: !1886, line: 79, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1928)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1886, line: 92, size: 256, elements: !1929)
!1929 = !{!1930, !1931, !1932, !1934, !1935}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1928, file: !1886, line: 94, baseType: !23, size: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1928, file: !1886, line: 95, baseType: !23, size: 32, offset: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1928, file: !1886, line: 96, baseType: !1933, size: 64, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1928, file: !1886, line: 97, baseType: !1891, size: 64, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1928, file: !1886, line: 98, baseType: !150, size: 64, offset: 192)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1165, file: !36, line: 438, baseType: !23, size: 32, offset: 2176)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1165, file: !36, line: 441, baseType: !23, size: 32, offset: 2208)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1165, file: !36, line: 442, baseType: !1875, size: 64, offset: 2240)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1165, file: !36, line: 443, baseType: !1879, size: 64, offset: 2304)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1165, file: !36, line: 444, baseType: !759, size: 8, offset: 2368)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1165, file: !36, line: 451, baseType: !759, size: 8, offset: 2376)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1165, file: !36, line: 454, baseType: !23, size: 32, offset: 2400)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1165, file: !36, line: 455, baseType: !1944, size: 64, offset: 2432)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1946, line: 23, size: 96, elements: !1947)
!1946 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1947 = !{!1948, !1949, !1950}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1945, file: !1946, line: 24, baseType: !127, size: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1945, file: !1946, line: 24, baseType: !127, size: 32, offset: 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1945, file: !1946, line: 24, baseType: !127, size: 32, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1165, file: !36, line: 458, baseType: !1952, size: 64, offset: 2496)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!127}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1165, file: !36, line: 460, baseType: !1956, size: 4032, align: 512, offset: 2560)
!1956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1957, size: 4032, elements: !1973)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !36, line: 362, size: 576, elements: !1958)
!1958 = !{!1959, !1960, !1961}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1957, file: !36, line: 363, baseType: !150, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1957, file: !36, line: 364, baseType: !23, size: 32, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1957, file: !36, line: 367, baseType: !1962, size: 448, offset: 128)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !36, line: 319, size: 448, elements: !1963)
!1963 = !{!1964, !1965}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1962, file: !36, line: 320, baseType: !1164, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1962, file: !36, line: 321, baseType: !1966, size: 384, offset: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1967, line: 40, size: 384, elements: !1968)
!1967 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1968 = !{!1969}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1966, file: !1967, line: 41, baseType: !1970, size: 384, align: 64)
!1970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 384, align: 64, elements: !1971)
!1971 = !{!1972}
!1972 = !DISubrange(count: 2)
!1973 = !{!1974}
!1974 = !DISubrange(count: 7)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1165, file: !36, line: 463, baseType: !1976, size: 192, offset: 6592)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1977, line: 8, size: 192, elements: !1978)
!1977 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1978 = !{!1979, !1980, !1982}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1976, file: !1977, line: 10, baseType: !23, size: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1976, file: !1977, line: 11, baseType: !1981, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1976, file: !1977, line: 12, baseType: !1983, size: 64, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1985, line: 59, size: 48, elements: !1986)
!1985 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1986 = !{!1987, !1990, !1991, !1992, !1993, !1994}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1984, file: !1985, line: 60, baseType: !1988, size: 16)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !123, line: 18, baseType: !1989)
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !125, line: 23, baseType: !728)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1984, file: !1985, line: 61, baseType: !1988, size: 16, offset: 16)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1984, file: !1985, line: 63, baseType: !23, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1984, file: !1985, line: 64, baseType: !23, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1984, file: !1985, line: 65, baseType: !23, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1984, file: !1985, line: 66, baseType: !23, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1165, file: !36, line: 465, baseType: !119, size: 64, offset: 6784)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1165, file: !36, line: 469, baseType: !23, size: 32, offset: 6848)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1165, file: !36, line: 470, baseType: !222, size: 128, offset: 6912)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1165, file: !36, line: 471, baseType: !1999, size: 64, offset: 7040)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2001, line: 33, size: 96, elements: !2002)
!2001 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2002 = !{!2003, !2004, !2005, !2006}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2000, file: !2001, line: 37, baseType: !127, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2000, file: !2001, line: 43, baseType: !127, size: 32, offset: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2000, file: !2001, line: 45, baseType: !136, size: 16, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2000, file: !2001, line: 47, baseType: !136, size: 16, offset: 80)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1165, file: !36, line: 476, baseType: !2008, size: 64, offset: 7104)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !36, line: 378, size: 256, elements: !2010)
!2010 = !{!2011, !2027, !2028, !2029}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2009, file: !36, line: 379, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2014, line: 204, baseType: !2015)
!2014 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2014, line: 197, size: 192, elements: !2016)
!2016 = !{!2017, !2019, !2020, !2021, !2023, !2025}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2015, file: !2014, line: 198, baseType: !2018, size: 32)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2014, line: 21, baseType: !124)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2015, file: !2014, line: 199, baseType: !334, size: 8, offset: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2015, file: !2014, line: 200, baseType: !334, size: 8, offset: 40)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2015, file: !2014, line: 201, baseType: !2022, size: 16, offset: 48)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2014, line: 17, baseType: !135)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2015, file: !2014, line: 202, baseType: !2024, size: 64, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2014, line: 16, baseType: !218)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2015, file: !2014, line: 203, baseType: !2026, size: 64, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2014, line: 22, baseType: !218)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2009, file: !36, line: 380, baseType: !23, size: 32, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2009, file: !36, line: 381, baseType: !772, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2009, file: !36, line: 382, baseType: !772, size: 64, offset: 192)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1165, file: !36, line: 477, baseType: !2009, size: 256, offset: 7168)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1165, file: !36, line: 480, baseType: !2032, size: 64, offset: 7424)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !36, line: 480, flags: DIFlagFwdDecl)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1165, file: !36, line: 483, baseType: !2035, size: 64, offset: 7488)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !36, line: 483, flags: DIFlagFwdDecl)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1165, file: !36, line: 488, baseType: !772, size: 64, offset: 7552)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1165, file: !36, line: 492, baseType: !150, size: 64, offset: 7616)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1165, file: !36, line: 493, baseType: !23, size: 32, offset: 7680)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1165, file: !36, line: 495, baseType: !150, size: 64, offset: 7744)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1165, file: !36, line: 496, baseType: !23, size: 32, offset: 7808)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1165, file: !36, line: 499, baseType: !23, size: 32, offset: 7840)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1165, file: !36, line: 500, baseType: !2044, size: 64, offset: 7872)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2046, line: 45, baseType: !2047)
!2046 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1165, file: !36, line: 503, baseType: !23, size: 32, offset: 7936)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1165, file: !36, line: 504, baseType: !2050, size: 64, offset: 8000)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2053, line: 96, size: 192, elements: !2054)
!2053 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2054 = !{!2055, !2056, !2121, !2124}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2052, file: !2053, line: 97, baseType: !23, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2052, file: !2053, line: 98, baseType: !2057, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2053, line: 24, size: 3072, elements: !2059)
!2059 = !{!2060, !2062, !2063, !2064, !2065, !2079, !2080, !2081, !2082, !2094, !2106, !2107, !2118, !2119, !2120}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2058, file: !2053, line: 26, baseType: !2061, size: 128)
!2061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 128, elements: !1971)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2058, file: !2053, line: 27, baseType: !2061, size: 128, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2058, file: !2053, line: 28, baseType: !127, size: 32, offset: 256)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2058, file: !2053, line: 31, baseType: !517, size: 32, align: 512, offset: 512)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2058, file: !2053, line: 32, baseType: !2066, size: 960, offset: 576)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2067, line: 206, size: 960, elements: !2068)
!2067 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2068 = !{!2069, !2070, !2073, !2075, !2076, !2078}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2066, file: !2067, line: 207, baseType: !546, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2066, file: !2067, line: 208, baseType: !2071, size: 256, offset: 64)
!2071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2072, size: 256, elements: !137)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2066, file: !2067, line: 209, baseType: !2074, size: 256, offset: 320)
!2074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 256, elements: !137)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2066, file: !2067, line: 213, baseType: !1033, size: 64, offset: 576)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2066, file: !2067, line: 215, baseType: !2077, size: 256, offset: 640)
!2077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1033, size: 256, elements: !137)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2066, file: !2067, line: 216, baseType: !332, size: 8, offset: 896)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2058, file: !2053, line: 33, baseType: !119, size: 64, offset: 1536)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2058, file: !2053, line: 34, baseType: !119, size: 64, offset: 1600)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2058, file: !2053, line: 35, baseType: !759, size: 8, offset: 1664)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2058, file: !2053, line: 36, baseType: !2083, size: 320, offset: 1728)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2084, line: 11, size: 320, elements: !2085)
!2084 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2085 = !{!2086, !2087, !2088, !2093}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2083, file: !2084, line: 16, baseType: !615, size: 128)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2083, file: !2084, line: 17, baseType: !119, size: 64, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2083, file: !2084, line: 18, baseType: !2089, size: 64, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{null, !2092}
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2083, file: !2084, line: 19, baseType: !122, size: 32, offset: 256)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2058, file: !2053, line: 37, baseType: !2095, size: 256, offset: 2048)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2096, line: 98, size: 256, elements: !2097)
!2096 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2097 = !{!2098, !2099, !2100}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2095, file: !2096, line: 99, baseType: !556, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2095, file: !2096, line: 100, baseType: !222, size: 128, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2095, file: !2096, line: 101, baseType: !2101, size: 64, offset: 192)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2096, line: 21, baseType: !2102)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{null, !2105}
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2058, file: !2053, line: 38, baseType: !543, size: 128, align: 64, offset: 2304)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2058, file: !2053, line: 39, baseType: !2108, size: 64, offset: 2432)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2053, line: 49, size: 768, elements: !2110)
!2110 = !{!2111, !2112, !2113, !2114, !2115, !2116, !2117}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2109, file: !2053, line: 50, baseType: !517, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2109, file: !2053, line: 51, baseType: !2074, size: 256, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2109, file: !2053, line: 53, baseType: !2074, size: 256, offset: 320)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2109, file: !2053, line: 54, baseType: !119, size: 64, offset: 576)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2109, file: !2053, line: 55, baseType: !2108, size: 64, offset: 640)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2109, file: !2053, line: 56, baseType: !127, size: 32, offset: 704)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2109, file: !2053, line: 57, baseType: !127, size: 32, offset: 736)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2058, file: !2053, line: 40, baseType: !119, size: 64, offset: 2496)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2058, file: !2053, line: 42, baseType: !127, size: 32, offset: 2560)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2058, file: !2053, line: 43, baseType: !2051, size: 64, offset: 2624)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2052, file: !2053, line: 99, baseType: !2122, offset: 128)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2123, line: 211, elements: !528)
!2123 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2052, file: !2053, line: 100, baseType: !2125, size: 64, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2053, line: 63, size: 3008, elements: !2127)
!2127 = !{!2128, !2129, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2159}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2126, file: !2053, line: 64, baseType: !2108, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2126, file: !2053, line: 65, baseType: !2130, size: 192, offset: 64)
!2130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2108, size: 192, elements: !147)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2126, file: !2053, line: 67, baseType: !127, size: 32, offset: 256)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2126, file: !2053, line: 68, baseType: !563, size: 256, offset: 320)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2126, file: !2053, line: 69, baseType: !517, size: 32, offset: 576)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2126, file: !2053, line: 70, baseType: !563, size: 256, offset: 640)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2126, file: !2053, line: 71, baseType: !119, size: 64, offset: 896)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2126, file: !2053, line: 72, baseType: !119, size: 64, offset: 960)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2126, file: !2053, line: 73, baseType: !119, size: 64, offset: 1024)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2126, file: !2053, line: 74, baseType: !119, size: 64, offset: 1088)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2126, file: !2053, line: 75, baseType: !119, size: 64, offset: 1152)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2126, file: !2053, line: 76, baseType: !119, size: 64, offset: 1216)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2126, file: !2053, line: 77, baseType: !119, size: 64, offset: 1280)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2126, file: !2053, line: 78, baseType: !119, size: 64, offset: 1344)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2126, file: !2053, line: 79, baseType: !759, size: 8, offset: 1408)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2126, file: !2053, line: 80, baseType: !119, size: 64, offset: 1472)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2126, file: !2053, line: 81, baseType: !563, size: 256, offset: 1536)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2126, file: !2053, line: 82, baseType: !1835, size: 256, offset: 1792)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2126, file: !2053, line: 84, baseType: !165, size: 32, offset: 2048)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2126, file: !2053, line: 87, baseType: !119, size: 64, offset: 2112)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2126, file: !2053, line: 88, baseType: !119, size: 64, offset: 2176)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2126, file: !2053, line: 89, baseType: !2151, size: 704, offset: 2240)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2096, line: 111, size: 704, elements: !2152)
!2152 = !{!2153, !2154, !2155, !2158}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2151, file: !2096, line: 112, baseType: !2095, size: 256)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2151, file: !2096, line: 113, baseType: !2083, size: 320, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2151, file: !2096, line: 116, baseType: !2156, size: 64, offset: 576)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2096, line: 18, flags: DIFlagFwdDecl)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2151, file: !2096, line: 117, baseType: !127, size: 32, offset: 640)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2126, file: !2053, line: 90, baseType: !2051, size: 64, offset: 2944)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1165, file: !36, line: 515, baseType: !2161, size: 64, offset: 8064)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2163, line: 117, size: 128, elements: !2164)
!2163 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2164 = !{!2165, !2166, !2167}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2162, file: !2163, line: 118, baseType: !692, size: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2162, file: !2163, line: 119, baseType: !692, size: 32, offset: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2162, file: !2163, line: 120, baseType: !1033, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1165, file: !36, line: 516, baseType: !23, size: 32, offset: 8128)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1165, file: !36, line: 519, baseType: !23, size: 32, offset: 8160)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1165, file: !36, line: 520, baseType: !2171, size: 64, offset: 8192)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1165, file: !36, line: 523, baseType: !2173, size: 64, offset: 8256)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !36, line: 523, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1165, file: !36, line: 524, baseType: !23, size: 32, offset: 8320)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1165, file: !36, line: 525, baseType: !2178, size: 64, offset: 8384)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !2181, line: 28, size: 192, elements: !2182)
!2181 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!2182 = !{!2183, !2184, !2185}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2180, file: !2181, line: 29, baseType: !762, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !2180, file: !2181, line: 30, baseType: !762, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !2180, file: !2181, line: 31, baseType: !119, size: 64, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1165, file: !36, line: 526, baseType: !23, size: 32, offset: 8448)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1165, file: !36, line: 533, baseType: !150, size: 64, offset: 8512)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1165, file: !36, line: 534, baseType: !23, size: 32, offset: 8576)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1165, file: !36, line: 535, baseType: !128, size: 64, offset: 8640)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1165, file: !36, line: 536, baseType: !23, size: 32, offset: 8704)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1165, file: !36, line: 539, baseType: !127, size: 32, offset: 8736)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1165, file: !36, line: 540, baseType: !2193, size: 64, offset: 8768)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2195, line: 32, size: 64, elements: !2196)
!2195 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2196 = !{!2197, !2198}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2194, file: !2195, line: 33, baseType: !692, size: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2194, file: !2195, line: 34, baseType: !692, size: 32, offset: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1165, file: !36, line: 563, baseType: !222, size: 128, offset: 8832)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1165, file: !36, line: 565, baseType: !222, size: 128, offset: 8960)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1165, file: !36, line: 568, baseType: !2202, size: 64, offset: 9088)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{null}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1165, file: !36, line: 570, baseType: !165, size: 32, offset: 9152)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1141, file: !56, line: 2382, baseType: !1140, size: 64, offset: 448)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1141, file: !56, line: 2383, baseType: !611, size: 64, offset: 512)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1141, file: !56, line: 2385, baseType: !2209, offset: 576)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2123, line: 206, elements: !528)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1141, file: !56, line: 2386, baseType: !2209, offset: 576)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1141, file: !56, line: 2387, baseType: !2209, offset: 576)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1141, file: !56, line: 2388, baseType: !2213, offset: 576)
!2213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2209, elements: !147)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1141, file: !56, line: 2390, baseType: !2209, offset: 576)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1141, file: !56, line: 2391, baseType: !2209, offset: 576)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1141, file: !56, line: 2392, baseType: !2209, offset: 576)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1141, file: !56, line: 2393, baseType: !2209, offset: 576)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1132, file: !56, line: 1197, baseType: !2219, size: 64, offset: 384)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2221)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !56, line: 2057, size: 1664, elements: !2222)
!2222 = !{!2223, !2227, !2231, !2232, !2236, !2240, !2244, !2245, !2246, !2250, !2254, !2258, !2259, !2260, !2266, !2270, !2271, !2275, !2276, !2277, !2278, !2282, !2286, !2333, !2348, !2349}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2221, file: !56, line: 2058, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!918, !1131}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2221, file: !56, line: 2059, baseType: !2228, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{null, !918}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2221, file: !56, line: 2060, baseType: !2228, size: 64, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2221, file: !56, line: 2062, baseType: !2233, size: 64, offset: 192)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{null, !918, !127}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2221, file: !56, line: 2063, baseType: !2237, size: 64, offset: 256)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!127, !918, !1361}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2221, file: !56, line: 2064, baseType: !2241, size: 64, offset: 320)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!127, !918}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2221, file: !56, line: 2065, baseType: !2228, size: 64, offset: 384)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2221, file: !56, line: 2066, baseType: !1160, size: 64, offset: 448)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2221, file: !56, line: 2067, baseType: !2247, size: 64, offset: 512)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!127, !1131, !127}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2221, file: !56, line: 2068, baseType: !2251, size: 64, offset: 576)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!127, !1131, !55}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2221, file: !56, line: 2069, baseType: !2255, size: 64, offset: 640)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!127, !1131}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2221, file: !56, line: 2070, baseType: !2251, size: 64, offset: 704)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2221, file: !56, line: 2071, baseType: !2255, size: 64, offset: 768)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2221, file: !56, line: 2072, baseType: !2261, size: 64, offset: 832)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!127, !883, !2264}
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !56, line: 62, flags: DIFlagFwdDecl)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2221, file: !56, line: 2073, baseType: !2267, size: 64, offset: 896)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!127, !1131, !1981, !772}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2221, file: !56, line: 2074, baseType: !1160, size: 64, offset: 960)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2221, file: !56, line: 2076, baseType: !2272, size: 64, offset: 1024)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!127, !1753, !883}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2221, file: !56, line: 2077, baseType: !2272, size: 64, offset: 1088)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2221, file: !56, line: 2078, baseType: !2272, size: 64, offset: 1152)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2221, file: !56, line: 2079, baseType: !2272, size: 64, offset: 1216)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2221, file: !56, line: 2081, baseType: !2279, size: 64, offset: 1280)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!1072, !1131, !127, !772, !1075, !575}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2221, file: !56, line: 2082, baseType: !2283, size: 64, offset: 1344)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!1072, !1131, !127, !762, !1075, !575}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2221, file: !56, line: 2083, baseType: !2287, size: 64, offset: 1408)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!2290, !918}
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !61, line: 296, size: 1664, elements: !2293)
!2293 = !{!2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2318, !2319, !2320}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2292, file: !61, line: 297, baseType: !615, size: 128)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2292, file: !61, line: 298, baseType: !222, size: 128, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2292, file: !61, line: 299, baseType: !222, size: 128, offset: 256)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2292, file: !61, line: 300, baseType: !222, size: 128, offset: 384)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2292, file: !61, line: 301, baseType: !563, size: 256, offset: 512)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2292, file: !61, line: 302, baseType: !517, size: 32, offset: 768)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2292, file: !61, line: 303, baseType: !165, size: 32, offset: 800)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2292, file: !61, line: 304, baseType: !1131, size: 64, offset: 832)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2292, file: !61, line: 305, baseType: !2303, size: 64, offset: 896)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !61, line: 68, size: 64, elements: !2304)
!2304 = !{!2305, !2317}
!2305 = !DIDerivedType(tag: DW_TAG_member, scope: !2303, file: !61, line: 69, baseType: !2306, size: 32)
!2306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2303, file: !61, line: 69, size: 32, elements: !2307)
!2307 = !{!2308, !2309, !2310}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2306, file: !61, line: 70, baseType: !641, size: 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2306, file: !61, line: 71, baseType: !659, size: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2306, file: !61, line: 72, baseType: !2311, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2312, line: 24, baseType: !2313)
!2312 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2312, line: 22, size: 32, elements: !2314)
!2314 = !{!2315}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2313, file: !2312, line: 23, baseType: !2316, size: 32)
!2316 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2312, line: 20, baseType: !647)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2303, file: !61, line: 74, baseType: !60, size: 32, offset: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2292, file: !61, line: 306, baseType: !575, size: 64, offset: 960)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2292, file: !61, line: 307, baseType: !119, size: 64, offset: 1024)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2292, file: !61, line: 308, baseType: !2321, size: 576, offset: 1088)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !61, line: 205, size: 576, elements: !2322)
!2322 = !{!2323, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2321, file: !61, line: 206, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !61, line: 66, baseType: !235)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2321, file: !61, line: 207, baseType: !2324, size: 64, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2321, file: !61, line: 208, baseType: !2324, size: 64, offset: 128)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2321, file: !61, line: 209, baseType: !2324, size: 64, offset: 192)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2321, file: !61, line: 210, baseType: !2324, size: 64, offset: 256)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2321, file: !61, line: 211, baseType: !2324, size: 64, offset: 320)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2321, file: !61, line: 212, baseType: !2324, size: 64, offset: 384)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2321, file: !61, line: 213, baseType: !716, size: 64, offset: 448)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2321, file: !61, line: 214, baseType: !716, size: 64, offset: 512)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2221, file: !56, line: 2085, baseType: !2334, size: 64, offset: 1472)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!1033, !1131, !2337}
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2339, line: 15, size: 256, elements: !2340)
!2339 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2340 = !{!2341, !2342, !2343, !2344, !2345}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2338, file: !2339, line: 16, baseType: !1127, size: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2338, file: !2339, line: 19, baseType: !127, size: 32, offset: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2338, file: !2339, line: 26, baseType: !119, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2338, file: !2339, line: 33, baseType: !119, size: 64, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2338, file: !2339, line: 36, baseType: !2346, size: 64, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !500, line: 33, flags: DIFlagFwdDecl)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2221, file: !56, line: 2087, baseType: !2334, size: 64, offset: 1536)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2221, file: !56, line: 2089, baseType: !1160, size: 64, offset: 1600)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1132, file: !56, line: 1198, baseType: !2351, size: 64, offset: 448)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2353)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !61, line: 324, size: 704, elements: !2354)
!2354 = !{!2355, !2359, !2363, !2367, !2368, !2369, !2370, !2371, !2376, !2381, !2385}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2353, file: !61, line: 325, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!127, !2291}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2353, file: !61, line: 326, baseType: !2360, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!2291, !1131, !127}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2353, file: !61, line: 327, baseType: !2364, size: 64, offset: 128)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{null, !2291}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2353, file: !61, line: 328, baseType: !2356, size: 64, offset: 192)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2353, file: !61, line: 329, baseType: !2356, size: 64, offset: 256)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2353, file: !61, line: 330, baseType: !2356, size: 64, offset: 320)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2353, file: !61, line: 331, baseType: !2247, size: 64, offset: 384)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2353, file: !61, line: 334, baseType: !2372, size: 64, offset: 448)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!2375, !918}
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2353, file: !61, line: 335, baseType: !2377, size: 64, offset: 512)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!127, !918, !2380}
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2353, file: !61, line: 337, baseType: !2382, size: 64, offset: 576)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!127, !918, !2375}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2353, file: !61, line: 339, baseType: !2386, size: 64, offset: 640)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!127, !1131, !2389}
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1132, file: !56, line: 1199, baseType: !2391, size: 64, offset: 512)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2393)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !61, line: 430, size: 704, elements: !2394)
!2394 = !{!2395, !2399, !2400, !2404, !2405, !2406, !2421, !2444, !2448, !2449, !2472}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2393, file: !61, line: 431, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!127, !1131, !127, !127, !1041}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2393, file: !61, line: 432, baseType: !2247, size: 64, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2393, file: !61, line: 433, baseType: !2401, size: 64, offset: 128)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!127, !1131, !23}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2393, file: !61, line: 434, baseType: !2401, size: 64, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2393, file: !61, line: 435, baseType: !2247, size: 64, offset: 256)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2393, file: !61, line: 436, baseType: !2407, size: 64, offset: 320)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!127, !1131, !127, !2410}
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !61, line: 417, size: 256, elements: !2412)
!2412 = !{!2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2411, file: !61, line: 418, baseType: !127, size: 32)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2411, file: !61, line: 419, baseType: !23, size: 32, offset: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2411, file: !61, line: 420, baseType: !23, size: 32, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2411, file: !61, line: 422, baseType: !23, size: 32, offset: 96)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2411, file: !61, line: 423, baseType: !23, size: 32, offset: 128)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2411, file: !61, line: 424, baseType: !23, size: 32, offset: 160)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2411, file: !61, line: 425, baseType: !23, size: 32, offset: 192)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2411, file: !61, line: 426, baseType: !23, size: 32, offset: 224)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2393, file: !61, line: 437, baseType: !2422, size: 64, offset: 384)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!127, !1131, !2303, !2425}
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !61, line: 345, size: 960, elements: !2427)
!2427 = !{!2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2426, file: !61, line: 346, baseType: !127, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2426, file: !61, line: 347, baseType: !217, size: 64, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2426, file: !61, line: 348, baseType: !217, size: 64, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2426, file: !61, line: 349, baseType: !217, size: 64, offset: 192)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2426, file: !61, line: 350, baseType: !217, size: 64, offset: 256)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2426, file: !61, line: 351, baseType: !217, size: 64, offset: 320)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2426, file: !61, line: 352, baseType: !217, size: 64, offset: 384)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2426, file: !61, line: 353, baseType: !233, size: 64, offset: 448)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2426, file: !61, line: 355, baseType: !233, size: 64, offset: 512)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2426, file: !61, line: 356, baseType: !127, size: 32, offset: 576)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2426, file: !61, line: 357, baseType: !127, size: 32, offset: 608)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2426, file: !61, line: 358, baseType: !217, size: 64, offset: 640)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2426, file: !61, line: 359, baseType: !217, size: 64, offset: 704)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2426, file: !61, line: 360, baseType: !217, size: 64, offset: 768)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2426, file: !61, line: 361, baseType: !233, size: 64, offset: 832)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2426, file: !61, line: 362, baseType: !127, size: 32, offset: 896)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2393, file: !61, line: 438, baseType: !2445, size: 64, offset: 448)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!127, !1131, !2389, !2425}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2393, file: !61, line: 440, baseType: !2422, size: 64, offset: 512)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2393, file: !61, line: 441, baseType: !2450, size: 64, offset: 576)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!127, !1131, !2453}
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !61, line: 411, size: 1408, elements: !2455)
!2455 = !{!2456, !2457}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2454, file: !61, line: 412, baseType: !23, size: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2454, file: !61, line: 413, baseType: !2458, size: 1344, offset: 64)
!2458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2459, size: 1344, elements: !147)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !61, line: 397, size: 448, elements: !2460)
!2460 = !{!2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2471}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2459, file: !61, line: 398, baseType: !23, size: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2459, file: !61, line: 399, baseType: !23, size: 32, offset: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2459, file: !61, line: 401, baseType: !23, size: 32, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2459, file: !61, line: 402, baseType: !23, size: 32, offset: 96)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2459, file: !61, line: 403, baseType: !23, size: 32, offset: 128)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2459, file: !61, line: 404, baseType: !23, size: 32, offset: 160)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2459, file: !61, line: 405, baseType: !23, size: 32, offset: 192)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2459, file: !61, line: 406, baseType: !219, size: 64, offset: 256)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2459, file: !61, line: 407, baseType: !2470, size: 64, offset: 320)
!2470 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !166, line: 132, baseType: !217)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2459, file: !61, line: 408, baseType: !2470, size: 64, offset: 384)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2393, file: !61, line: 442, baseType: !2401, size: 64, offset: 640)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1132, file: !56, line: 1200, baseType: !2474, size: 64, offset: 576)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2476)
!2476 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !56, line: 54, flags: DIFlagFwdDecl)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1132, file: !56, line: 1201, baseType: !119, size: 64, offset: 640)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1132, file: !56, line: 1202, baseType: !119, size: 64, offset: 704)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1132, file: !56, line: 1203, baseType: !119, size: 64, offset: 768)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1132, file: !56, line: 1204, baseType: !883, size: 64, offset: 832)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1132, file: !56, line: 1205, baseType: !700, size: 320, offset: 896)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1132, file: !56, line: 1206, baseType: !127, size: 32, offset: 1216)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1132, file: !56, line: 1207, baseType: !165, size: 32, offset: 1248)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1132, file: !56, line: 1209, baseType: !150, size: 64, offset: 1280)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1132, file: !56, line: 1211, baseType: !2486, size: 64, offset: 1344)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2489)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !56, line: 1211, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1132, file: !56, line: 1223, baseType: !2491, size: 64, offset: 1408)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !895, line: 34, size: 64, elements: !2492)
!2492 = !{!2493}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2491, file: !895, line: 35, baseType: !898, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1132, file: !56, line: 1224, baseType: !222, size: 128, offset: 1472)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1132, file: !56, line: 1225, baseType: !2496, size: 64, offset: 1600)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !56, line: 1225, flags: DIFlagFwdDecl)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1132, file: !56, line: 1226, baseType: !2499, size: 64, offset: 1664)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !56, line: 1226, flags: DIFlagFwdDecl)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1132, file: !56, line: 1227, baseType: !2502, size: 64, offset: 1728)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !56, line: 50, flags: DIFlagFwdDecl)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1132, file: !56, line: 1228, baseType: !2505, size: 64, offset: 1792)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !56, line: 1228, flags: DIFlagFwdDecl)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1132, file: !56, line: 1229, baseType: !615, size: 128, offset: 1856)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1132, file: !56, line: 1230, baseType: !23, size: 32, offset: 1984)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1132, file: !56, line: 1231, baseType: !2510, size: 2496, offset: 2048)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !61, line: 521, size: 2496, elements: !2511)
!2511 = !{!2512, !2513, !2514, !2516, !2548}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2510, file: !61, line: 522, baseType: !23, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2510, file: !61, line: 523, baseType: !700, size: 320, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2510, file: !61, line: 524, baseType: !2515, size: 192, offset: 384)
!2515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 192, elements: !147)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2510, file: !61, line: 525, baseType: !2517, size: 1728, offset: 576)
!2517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2518, size: 1728, elements: !147)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !61, line: 222, size: 576, elements: !2519)
!2519 = !{!2520, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2518, file: !61, line: 223, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !61, line: 445, size: 256, elements: !2523)
!2523 = !{!2524, !2525, !2538, !2539}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2522, file: !61, line: 446, baseType: !127, size: 32)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2522, file: !61, line: 447, baseType: !2526, size: 64, offset: 64)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2528)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !61, line: 312, size: 512, elements: !2529)
!2529 = !{!2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2528, file: !61, line: 313, baseType: !2247, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2528, file: !61, line: 314, baseType: !2247, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2528, file: !61, line: 315, baseType: !2247, size: 64, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2528, file: !61, line: 316, baseType: !2247, size: 64, offset: 192)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2528, file: !61, line: 317, baseType: !2356, size: 64, offset: 256)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2528, file: !61, line: 318, baseType: !2356, size: 64, offset: 320)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2528, file: !61, line: 319, baseType: !2356, size: 64, offset: 384)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2528, file: !61, line: 320, baseType: !2386, size: 64, offset: 448)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2522, file: !61, line: 448, baseType: !1164, size: 64, offset: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2522, file: !61, line: 449, baseType: !2521, size: 64, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2518, file: !61, line: 224, baseType: !127, size: 32, offset: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2518, file: !61, line: 226, baseType: !222, size: 128, offset: 128)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2518, file: !61, line: 227, baseType: !119, size: 64, offset: 256)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2518, file: !61, line: 228, baseType: !23, size: 32, offset: 320)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2518, file: !61, line: 229, baseType: !23, size: 32, offset: 352)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2518, file: !61, line: 230, baseType: !2324, size: 64, offset: 384)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2518, file: !61, line: 231, baseType: !2324, size: 64, offset: 448)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2518, file: !61, line: 232, baseType: !150, size: 64, offset: 512)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2510, file: !61, line: 526, baseType: !2549, size: 192, offset: 2304)
!2549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2526, size: 192, elements: !147)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1132, file: !56, line: 1233, baseType: !2551, size: 2368, offset: 4544)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !56, line: 1184, size: 2368, elements: !2552)
!2552 = !{!2553, !2554, !2555}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2551, file: !56, line: 1185, baseType: !136, size: 16)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2551, file: !56, line: 1186, baseType: !136, size: 16, offset: 16)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2551, file: !56, line: 1187, baseType: !2556, size: 2304, offset: 64)
!2556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2557, size: 2304, elements: !147)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2558, line: 12, size: 768, elements: !2559)
!2558 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2559 = !{!2560, !2568, !2569, !2574, !2575}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2557, file: !2558, line: 13, baseType: !2561, size: 384)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2562, line: 17, size: 384, elements: !2563)
!2562 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2563 = !{!2564, !2565, !2566, !2567}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2561, file: !2562, line: 18, baseType: !127, size: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2561, file: !2562, line: 19, baseType: !127, size: 32, offset: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2561, file: !2562, line: 20, baseType: !622, size: 192, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2561, file: !2562, line: 22, baseType: !543, size: 128, align: 64, offset: 256)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2557, file: !2558, line: 14, baseType: !1933, size: 64, offset: 384)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2557, file: !2558, line: 15, baseType: !2570, size: 64, offset: 448)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2571, line: 16, size: 64, elements: !2572)
!2571 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2572 = !{!2573}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2570, file: !2571, line: 17, baseType: !152, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2557, file: !2558, line: 16, baseType: !622, size: 192, offset: 512)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2557, file: !2558, line: 17, baseType: !165, size: 32, offset: 704)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1132, file: !56, line: 1240, baseType: !150, size: 64, offset: 6912)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1132, file: !56, line: 1243, baseType: !122, size: 32, offset: 6976)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1132, file: !56, line: 1245, baseType: !716, size: 64, offset: 7040)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1132, file: !56, line: 1246, baseType: !716, size: 64, offset: 7104)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1132, file: !56, line: 1248, baseType: !124, size: 32, offset: 7168)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1132, file: !56, line: 1249, baseType: !2582, size: 64, offset: 7232)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !56, line: 634, flags: DIFlagFwdDecl)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1132, file: !56, line: 1252, baseType: !2585, size: 256, offset: 7296)
!2585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !2586)
!2586 = !{!2587}
!2587 = !DISubrange(count: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1132, file: !56, line: 1253, baseType: !2589, size: 128, offset: 7552)
!2589 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2590, line: 21, baseType: !2591)
!2590 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2590, line: 19, size: 128, elements: !2592)
!2592 = !{!2593}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2591, file: !2590, line: 20, baseType: !2594, size: 128)
!2594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 128, elements: !2595)
!2595 = !{!2596}
!2596 = !DISubrange(count: 16)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1132, file: !56, line: 1255, baseType: !23, size: 32, offset: 7680)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1132, file: !56, line: 1261, baseType: !563, size: 256, offset: 7744)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1132, file: !56, line: 1267, baseType: !762, size: 64, offset: 8000)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1132, file: !56, line: 1269, baseType: !2601, size: 64, offset: 8064)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2603)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !885, line: 128, size: 1024, align: 512, elements: !2604)
!2604 = !{!2605, !2609, !2610, !2617, !2623, !2627, !2631, !2635, !2636, !2640, !2644, !2649, !2653}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2603, file: !885, line: 129, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!127, !883, !23}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2603, file: !885, line: 130, baseType: !2606, size: 64, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2603, file: !885, line: 131, baseType: !2611, size: 64, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!127, !2614, !2616}
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !884)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2603, file: !885, line: 132, baseType: !2618, size: 64, offset: 192)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!127, !2614, !23, !762, !2621}
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !903)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2603, file: !885, line: 134, baseType: !2624, size: 64, offset: 256)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!127, !2614}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2603, file: !885, line: 135, baseType: !2628, size: 64, offset: 320)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!127, !883}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2603, file: !885, line: 136, baseType: !2632, size: 64, offset: 384)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{null, !883}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2603, file: !885, line: 137, baseType: !2632, size: 64, offset: 448)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2603, file: !885, line: 138, baseType: !2637, size: 64, offset: 512)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{null, !883, !918}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2603, file: !885, line: 139, baseType: !2641, size: 64, offset: 576)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!772, !883, !772, !127}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2603, file: !885, line: 140, baseType: !2645, size: 64, offset: 640)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!878, !2648}
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2603, file: !885, line: 141, baseType: !2650, size: 64, offset: 704)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!127, !1041, !759}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2603, file: !885, line: 142, baseType: !2654, size: 64, offset: 768)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!883, !883, !2657}
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !919)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1132, file: !56, line: 1271, baseType: !2660, size: 448, offset: 8128)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2339, line: 63, size: 448, elements: !2661)
!2661 = !{!2662, !2667, !2668, !2669, !2670, !2671, !2672}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2660, file: !2339, line: 64, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!119, !2666, !2337}
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2660, file: !2339, line: 66, baseType: !2663, size: 64, offset: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2660, file: !2339, line: 69, baseType: !1033, size: 64, offset: 128)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2660, file: !2339, line: 70, baseType: !127, size: 32, offset: 192)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2660, file: !2339, line: 71, baseType: !23, size: 32, offset: 224)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2660, file: !2339, line: 74, baseType: !222, size: 128, offset: 256)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2660, file: !2339, line: 85, baseType: !2673, size: 64, offset: 384)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1132, file: !56, line: 1274, baseType: !556, size: 64, offset: 8576)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1132, file: !56, line: 1280, baseType: !556, size: 64, offset: 8640)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1132, file: !56, line: 1283, baseType: !127, size: 32, offset: 8704)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1132, file: !56, line: 1286, baseType: !1591, size: 32, offset: 8736)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1132, file: !56, line: 1289, baseType: !2156, size: 64, offset: 8768)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1132, file: !56, line: 1290, baseType: !611, size: 64, offset: 8832)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1132, file: !56, line: 1297, baseType: !845, size: 64, offset: 8896)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1132, file: !56, line: 1304, baseType: !2682, size: 64, offset: 8960)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2683, line: 49, size: 64, elements: !2684)
!2683 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2684 = !{!2685}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2682, file: !2683, line: 50, baseType: !2686, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2683, line: 41, size: 512, align: 512, elements: !2688)
!2688 = !{!2689, !2690, !2695}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2687, file: !2683, line: 43, baseType: !517, size: 32)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2687, file: !2683, line: 45, baseType: !2691, size: 192, offset: 64)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2683, line: 29, size: 192, elements: !2692)
!2692 = !{!2693, !2694}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2691, file: !2683, line: 30, baseType: !222, size: 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2691, file: !2683, line: 32, baseType: !1033, size: 64, offset: 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2687, file: !2683, line: 46, baseType: !1033, size: 64, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1132, file: !56, line: 1305, baseType: !2682, size: 64, offset: 9024)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1132, file: !56, line: 1306, baseType: !543, size: 128, align: 64, offset: 9088)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1132, file: !56, line: 1307, baseType: !2095, size: 256, offset: 9216)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1132, file: !56, line: 1309, baseType: !563, size: 256, offset: 9472)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1132, file: !56, line: 1314, baseType: !127, size: 32, offset: 9728)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1132, file: !56, line: 1317, baseType: !517, size: 32, align: 512, offset: 10240)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1132, file: !56, line: 1318, baseType: !222, size: 128, offset: 10304)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1132, file: !56, line: 1320, baseType: !517, size: 32, offset: 10432)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1132, file: !56, line: 1321, baseType: !222, size: 128, offset: 10496)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !919, file: !56, line: 656, baseType: !1281, size: 64, offset: 512)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !919, file: !56, line: 659, baseType: !150, size: 64, offset: 576)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !919, file: !56, line: 663, baseType: !119, size: 64, offset: 640)
!2708 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !56, line: 671, baseType: !2709, size: 32, offset: 704)
!2709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !919, file: !56, line: 671, size: 32, elements: !2710)
!2710 = !{!2711, !2713}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2709, file: !56, line: 672, baseType: !2712, size: 32)
!2712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2709, file: !56, line: 673, baseType: !23, size: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !919, file: !56, line: 675, baseType: !993, size: 32, offset: 736)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !919, file: !56, line: 676, baseType: !575, size: 64, offset: 768)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !919, file: !56, line: 677, baseType: !1029, size: 128, offset: 832)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !919, file: !56, line: 678, baseType: !1029, size: 128, offset: 960)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !919, file: !56, line: 679, baseType: !1029, size: 128, offset: 1088)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !919, file: !56, line: 680, baseType: !517, size: 32, offset: 1216)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !919, file: !56, line: 681, baseType: !136, size: 16, offset: 1248)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !919, file: !56, line: 682, baseType: !332, size: 8, offset: 1264)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !919, file: !56, line: 683, baseType: !332, size: 8, offset: 1272)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !919, file: !56, line: 684, baseType: !2470, size: 64, offset: 1280)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !919, file: !56, line: 691, baseType: !119, size: 64, offset: 1344)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !919, file: !56, line: 692, baseType: !700, size: 320, offset: 1408)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !919, file: !56, line: 694, baseType: !119, size: 64, offset: 1728)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !919, file: !56, line: 695, baseType: !119, size: 64, offset: 1792)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !919, file: !56, line: 697, baseType: !615, size: 128, offset: 1856)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !919, file: !56, line: 698, baseType: !222, size: 128, offset: 1984)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !919, file: !56, line: 707, baseType: !222, size: 128, offset: 2112)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !919, file: !56, line: 708, baseType: !222, size: 128, offset: 2240)
!2732 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !56, line: 709, baseType: !2733, size: 128, offset: 2368)
!2733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !919, file: !56, line: 709, size: 128, elements: !2734)
!2734 = !{!2735, !2736}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2733, file: !56, line: 710, baseType: !611, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2733, file: !56, line: 711, baseType: !543, size: 128, align: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !919, file: !56, line: 713, baseType: !558, size: 64, offset: 2496)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !919, file: !56, line: 714, baseType: !558, size: 64, offset: 2560)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !919, file: !56, line: 715, baseType: !165, size: 32, offset: 2624)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !919, file: !56, line: 716, baseType: !165, size: 32, offset: 2656)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !919, file: !56, line: 717, baseType: !165, size: 32, offset: 2688)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !919, file: !56, line: 719, baseType: !165, size: 32, offset: 2720)
!2743 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !56, line: 721, baseType: !2744, size: 64, offset: 2752)
!2744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !919, file: !56, line: 721, size: 64, elements: !2745)
!2745 = !{!2746, !2872}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2744, file: !56, line: 722, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2749)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !56, line: 1914, size: 2112, elements: !2750)
!2750 = !{!2751, !2752, !2756, !2760, !2764, !2765, !2766, !2772, !2785, !2789, !2793, !2794, !2798, !2799, !2803, !2808, !2809, !2813, !2817, !2823, !2824, !2828, !2829, !2835, !2839, !2840, !2845, !2849, !2853, !2857, !2861, !2862, !2868}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2749, file: !56, line: 1915, baseType: !1164, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2749, file: !56, line: 1916, baseType: !2753, size: 64, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!575, !535, !575, !127}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2749, file: !56, line: 1917, baseType: !2757, size: 64, offset: 128)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!1072, !535, !772, !1075, !1777}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2749, file: !56, line: 1918, baseType: !2761, size: 64, offset: 192)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!1072, !535, !762, !1075, !1777}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2749, file: !56, line: 1919, baseType: !1475, size: 64, offset: 256)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2749, file: !56, line: 1920, baseType: !1475, size: 64, offset: 320)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2749, file: !56, line: 1921, baseType: !2767, size: 64, offset: 384)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!127, !1478, !2770, !23}
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !56, line: 53, flags: DIFlagFwdDecl)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2749, file: !56, line: 1923, baseType: !2773, size: 64, offset: 448)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!127, !535, !2776}
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !56, line: 1858, size: 128, elements: !2778)
!2778 = !{!2779, !2784}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2777, file: !56, line: 1859, baseType: !2780, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !56, line: 1855, baseType: !2781)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!759, !2776, !762, !127, !575, !217, !23}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2777, file: !56, line: 1860, baseType: !575, size: 64, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2749, file: !56, line: 1924, baseType: !2786, size: 64, offset: 512)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!1797, !535, !1799}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2749, file: !56, line: 1925, baseType: !2790, size: 64, offset: 576)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!1033, !535, !23, !119}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2749, file: !56, line: 1926, baseType: !2790, size: 64, offset: 640)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2749, file: !56, line: 1927, baseType: !2795, size: 64, offset: 704)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!127, !535, !1605}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2749, file: !56, line: 1928, baseType: !119, size: 64, offset: 768)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2749, file: !56, line: 1929, baseType: !2800, size: 64, offset: 832)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!127, !918, !535}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2749, file: !56, line: 1930, baseType: !2804, size: 64, offset: 896)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!127, !535, !2807}
!2807 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !56, line: 1061, baseType: !150)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2749, file: !56, line: 1931, baseType: !2800, size: 64, offset: 960)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2749, file: !56, line: 1932, baseType: !2810, size: 64, offset: 1024)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!127, !535, !575, !575, !127}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2749, file: !56, line: 1933, baseType: !2814, size: 64, offset: 1088)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!127, !127, !535, !127}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2749, file: !56, line: 1934, baseType: !2818, size: 64, offset: 1152)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!127, !535, !127, !2821}
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !56, line: 1063, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2749, file: !56, line: 1935, baseType: !532, size: 64, offset: 1216)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2749, file: !56, line: 1936, baseType: !2825, size: 64, offset: 1280)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!127, !127}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2749, file: !56, line: 1937, baseType: !2818, size: 64, offset: 1344)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2749, file: !56, line: 1938, baseType: !2830, size: 64, offset: 1408)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!1072, !2833, !535, !1777, !1075, !23}
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !154, line: 59, flags: DIFlagFwdDecl)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2749, file: !56, line: 1939, baseType: !2836, size: 64, offset: 1472)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!1072, !535, !1777, !2833, !1075, !23}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2749, file: !56, line: 1940, baseType: !1581, size: 64, offset: 1536)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2749, file: !56, line: 1941, baseType: !2841, size: 64, offset: 1600)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!127, !535, !127, !2844, !1452}
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2749, file: !56, line: 1942, baseType: !2846, size: 64, offset: 1664)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!1033, !535, !127, !575, !575}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2749, file: !56, line: 1944, baseType: !2850, size: 64, offset: 1728)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{null, !1753, !535}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2749, file: !56, line: 1948, baseType: !2854, size: 64, offset: 1792)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!1072, !535, !575, !535, !575, !1075, !23}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2749, file: !56, line: 1950, baseType: !2858, size: 64, offset: 1856)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!575, !535, !575, !535, !575, !575, !23}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2749, file: !56, line: 1953, baseType: !2810, size: 64, offset: 1920)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2749, file: !56, line: 1954, baseType: !2863, size: 64, offset: 1984)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!127, !2866, !23}
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !56, line: 1911, flags: DIFlagFwdDecl)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2749, file: !56, line: 1955, baseType: !2869, size: 64, offset: 2048)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!127, !2866, !2770, !23}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2744, file: !56, line: 723, baseType: !2228, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !919, file: !56, line: 725, baseType: !2874, size: 64, offset: 2816)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !56, line: 725, flags: DIFlagFwdDecl)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !919, file: !56, line: 726, baseType: !1282, size: 1536, align: 64, offset: 2880)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !919, file: !56, line: 727, baseType: !222, size: 128, offset: 4416)
!2878 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !56, line: 728, baseType: !2879, size: 64, offset: 4544)
!2879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !919, file: !56, line: 728, size: 64, elements: !2880)
!2880 = !{!2881, !2882, !2885, !2886}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2879, file: !56, line: 729, baseType: !2833, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2879, file: !56, line: 730, baseType: !2883, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !56, line: 730, flags: DIFlagFwdDecl)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2879, file: !56, line: 731, baseType: !772, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2879, file: !56, line: 732, baseType: !23, size: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !919, file: !56, line: 735, baseType: !124, size: 32, offset: 4608)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !919, file: !56, line: 738, baseType: !124, size: 32, offset: 4640)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !919, file: !56, line: 739, baseType: !2582, size: 64, offset: 4672)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !919, file: !56, line: 750, baseType: !150, size: 64, offset: 4736)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !884, file: !885, line: 91, baseType: !2892, size: 256, offset: 448)
!2892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 256, elements: !2586)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !884, file: !885, line: 94, baseType: !2894, size: 64, offset: 704)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2895, line: 25, size: 64, elements: !2896)
!2895 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2896 = !{!2897}
!2897 = !DIDerivedType(tag: DW_TAG_member, scope: !2894, file: !2895, line: 26, baseType: !2898, size: 64)
!2898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2894, file: !2895, line: 26, size: 64, elements: !2899)
!2899 = !{!2900, !2901}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2898, file: !2895, line: 28, baseType: !218, size: 64, align: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, scope: !2898, file: !2895, line: 30, baseType: !2902, size: 64)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2898, file: !2895, line: 30, size: 64, elements: !2903)
!2903 = !{!2904, !2905}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2902, file: !2895, line: 31, baseType: !517, size: 32)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2902, file: !2895, line: 32, baseType: !127, size: 32, offset: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !884, file: !885, line: 95, baseType: !2601, size: 64, offset: 768)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !884, file: !885, line: 96, baseType: !1131, size: 64, offset: 832)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !884, file: !885, line: 97, baseType: !119, size: 64, offset: 896)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !884, file: !885, line: 98, baseType: !150, size: 64, offset: 960)
!2910 = !DIDerivedType(tag: DW_TAG_member, scope: !884, file: !885, line: 100, baseType: !2911, size: 128, offset: 1024)
!2911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !884, file: !885, line: 100, size: 128, elements: !2912)
!2912 = !{!2913, !2914}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2911, file: !885, line: 101, baseType: !222, size: 128)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2911, file: !885, line: 102, baseType: !2915, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !884, file: !885, line: 104, baseType: !222, size: 128, offset: 1152)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !884, file: !885, line: 105, baseType: !222, size: 128, offset: 1280)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !884, file: !885, line: 113, baseType: !2919, size: 128, offset: 1408)
!2919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !884, file: !885, line: 109, size: 128, elements: !2920)
!2920 = !{!2921, !2922, !2923}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2919, file: !885, line: 110, baseType: !615, size: 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2919, file: !885, line: 111, baseType: !894, size: 128)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2919, file: !885, line: 112, baseType: !543, size: 128, align: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !879, file: !880, line: 72, baseType: !1131, size: 64, offset: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !879, file: !880, line: 73, baseType: !127, size: 32, offset: 128)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !879, file: !880, line: 74, baseType: !958, size: 64, offset: 192)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !874, file: !875, line: 10, baseType: !883, size: 64, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !536, file: !56, line: 1015, baseType: !918, size: 64, offset: 1344)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !536, file: !56, line: 1016, baseType: !2747, size: 64, offset: 1408)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !536, file: !56, line: 1018, baseType: !217, size: 64, offset: 1472)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !536, file: !56, line: 1020, baseType: !150, size: 64, offset: 1536)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !536, file: !56, line: 1023, baseType: !150, size: 64, offset: 1600)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !536, file: !56, line: 1027, baseType: !2934, size: 64, offset: 1664)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !536, file: !56, line: 1029, baseType: !1281, size: 64, offset: 1728)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !536, file: !56, line: 1030, baseType: !1591, size: 32, offset: 1792)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !536, file: !56, line: 1031, baseType: !1591, size: 32, offset: 1824)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !503, file: !500, line: 756, baseType: !119, size: 64, offset: 704)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !503, file: !500, line: 757, baseType: !119, size: 64, offset: 768)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !503, file: !500, line: 760, baseType: !119, size: 64, offset: 832)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !503, file: !500, line: 761, baseType: !119, size: 64, offset: 896)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !503, file: !500, line: 763, baseType: !119, size: 64, offset: 960)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !503, file: !500, line: 764, baseType: !2944, size: 64, offset: 1024)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1620, line: 299, baseType: !2946)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1620, line: 299, size: 64, elements: !2947)
!2947 = !{!2948}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2946, file: !1620, line: 299, baseType: !2949, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1625, line: 18, baseType: !119)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !503, file: !500, line: 773, baseType: !165, size: 32, offset: 1088)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !503, file: !500, line: 785, baseType: !165, size: 32, offset: 1120)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !503, file: !500, line: 795, baseType: !2953, size: 64, offset: 1152)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !500, line: 726, size: 128, elements: !2955)
!2955 = !{!2956, !2957}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2954, file: !500, line: 727, baseType: !217, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2954, file: !500, line: 728, baseType: !127, size: 32, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !503, file: !500, line: 801, baseType: !119, size: 64, offset: 1216)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !503, file: !500, line: 804, baseType: !556, size: 64, offset: 1280)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !503, file: !500, line: 806, baseType: !127, size: 32, offset: 1344)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !503, file: !500, line: 808, baseType: !517, size: 32, offset: 1376)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !503, file: !500, line: 823, baseType: !700, size: 320, offset: 1408)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !503, file: !500, line: 825, baseType: !222, size: 128, offset: 1728)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !503, file: !500, line: 845, baseType: !127, size: 32, offset: 1856)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !503, file: !500, line: 849, baseType: !119, size: 64, offset: 1920)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !503, file: !500, line: 850, baseType: !119, size: 64, offset: 1984)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !503, file: !500, line: 852, baseType: !119, size: 64, offset: 2048)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !503, file: !500, line: 853, baseType: !119, size: 64, offset: 2112)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !503, file: !500, line: 854, baseType: !558, size: 64, offset: 2176)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !503, file: !500, line: 855, baseType: !119, size: 64, offset: 2240)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !503, file: !500, line: 856, baseType: !119, size: 64, offset: 2304)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !503, file: !500, line: 857, baseType: !119, size: 64, offset: 2368)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !503, file: !500, line: 858, baseType: !119, size: 64, offset: 2432)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !503, file: !500, line: 865, baseType: !372, size: 32, offset: 2496)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !503, file: !500, line: 867, baseType: !517, size: 32, offset: 2528)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !503, file: !500, line: 869, baseType: !119, size: 64, offset: 2560)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !503, file: !500, line: 869, baseType: !119, size: 64, offset: 2624)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !503, file: !500, line: 869, baseType: !119, size: 64, offset: 2688)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !503, file: !500, line: 869, baseType: !119, size: 64, offset: 2752)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !503, file: !500, line: 870, baseType: !119, size: 64, offset: 2816)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !503, file: !500, line: 870, baseType: !119, size: 64, offset: 2880)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !503, file: !500, line: 870, baseType: !119, size: 64, offset: 2944)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !503, file: !500, line: 871, baseType: !119, size: 64, offset: 3008)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !503, file: !500, line: 871, baseType: !119, size: 64, offset: 3072)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !503, file: !500, line: 871, baseType: !119, size: 64, offset: 3136)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !503, file: !500, line: 871, baseType: !119, size: 64, offset: 3200)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !503, file: !500, line: 873, baseType: !2988, size: 3328, offset: 3264)
!2988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 3328, elements: !2989)
!2989 = !{!2990}
!2990 = !DISubrange(count: 52)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !503, file: !500, line: 875, baseType: !2992, size: 1280, offset: 6592)
!2992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !820, size: 1280, elements: !137)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !503, file: !500, line: 877, baseType: !2994, size: 64, offset: 7872)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !500, line: 877, flags: DIFlagFwdDecl)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !503, file: !500, line: 880, baseType: !2997, size: 1088, offset: 7936)
!2997 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2998, line: 72, baseType: !2999)
!2998 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2998, line: 23, size: 1088, elements: !3000)
!3000 = !{!3001, !3002, !3003, !3004, !3005, !3008, !3009, !3010, !3011, !3036, !3037, !3038}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2999, file: !2998, line: 28, baseType: !217, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2999, file: !2998, line: 38, baseType: !558, size: 64, offset: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2999, file: !2998, line: 40, baseType: !119, size: 64, offset: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2999, file: !2998, line: 43, baseType: !700, size: 320, offset: 192)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2999, file: !2998, line: 44, baseType: !3006, size: 64, offset: 512)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2998, line: 44, flags: DIFlagFwdDecl)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2999, file: !2998, line: 48, baseType: !119, size: 64, offset: 576)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2999, file: !2998, line: 59, baseType: !563, size: 256, offset: 640)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2999, file: !2998, line: 60, baseType: !150, size: 64, offset: 896)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2999, file: !2998, line: 61, baseType: !3012, size: 64, offset: 960)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3014)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3015, line: 13, size: 1216, elements: !3016)
!3015 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3016 = !{!3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3014, file: !3015, line: 14, baseType: !150, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3014, file: !3015, line: 15, baseType: !119, size: 64, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3014, file: !3015, line: 17, baseType: !119, size: 64, offset: 128)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3014, file: !3015, line: 17, baseType: !119, size: 64, offset: 192)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3014, file: !3015, line: 18, baseType: !119, size: 64, offset: 256)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3014, file: !3015, line: 18, baseType: !119, size: 64, offset: 320)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3014, file: !3015, line: 19, baseType: !1687, size: 64, offset: 384)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3014, file: !3015, line: 21, baseType: !1033, size: 64, offset: 448)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3014, file: !3015, line: 23, baseType: !1033, size: 64, offset: 512)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3014, file: !3015, line: 24, baseType: !1033, size: 64, offset: 576)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3014, file: !3015, line: 25, baseType: !1033, size: 64, offset: 640)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3014, file: !3015, line: 26, baseType: !1033, size: 64, offset: 704)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3014, file: !3015, line: 27, baseType: !1033, size: 64, offset: 768)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3014, file: !3015, line: 28, baseType: !1033, size: 64, offset: 832)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3014, file: !3015, line: 29, baseType: !1033, size: 64, offset: 896)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3014, file: !3015, line: 30, baseType: !1033, size: 64, offset: 960)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3014, file: !3015, line: 31, baseType: !1033, size: 64, offset: 1024)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3014, file: !3015, line: 32, baseType: !1033, size: 64, offset: 1088)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3014, file: !3015, line: 33, baseType: !1033, size: 64, offset: 1152)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2999, file: !2998, line: 63, baseType: !165, size: 32, offset: 1024)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2999, file: !2998, line: 69, baseType: !149, size: 16, offset: 1056)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2999, file: !2998, line: 70, baseType: !1988, size: 16, offset: 1072)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !503, file: !500, line: 882, baseType: !119, size: 64, offset: 9024)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !503, file: !500, line: 885, baseType: !517, size: 32, offset: 9088)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !503, file: !500, line: 886, baseType: !3042, size: 64, offset: 9152)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !500, line: 732, flags: DIFlagFwdDecl)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !503, file: !500, line: 901, baseType: !845, size: 64, offset: 9216)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !503, file: !500, line: 904, baseType: !535, size: 64, offset: 9280)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !503, file: !500, line: 906, baseType: !3047, size: 64, offset: 9344)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !500, line: 906, flags: DIFlagFwdDecl)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !503, file: !500, line: 930, baseType: !165, size: 32, offset: 9408)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !503, file: !500, line: 933, baseType: !165, size: 32, offset: 9440)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !503, file: !500, line: 935, baseType: !3052, size: 64, offset: 9472)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !73, line: 103, size: 64, elements: !3053)
!3053 = !{!3054}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3052, file: !73, line: 104, baseType: !3055, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !73, line: 101, flags: DIFlagFwdDecl)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !503, file: !500, line: 940, baseType: !556, size: 64, offset: 9536)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !503, file: !500, line: 942, baseType: !2095, size: 256, offset: 9600)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !499, file: !500, line: 986, baseType: !3060, offset: 10240)
!3060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, elements: !637)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !153, file: !154, line: 882, baseType: !498, size: 64, offset: 9792)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !153, file: !154, line: 884, baseType: !127, size: 32, offset: 9856)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !153, file: !154, line: 885, baseType: !127, size: 32, offset: 9888)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !153, file: !154, line: 886, baseType: !127, size: 32, offset: 9920)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !153, file: !154, line: 888, baseType: !127, size: 32, offset: 9952)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !153, file: !154, line: 890, baseType: !119, size: 64, offset: 9984)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !153, file: !154, line: 893, baseType: !23, size: 32, offset: 10048)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !153, file: !154, line: 896, baseType: !23, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !153, file: !154, line: 897, baseType: !23, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !153, file: !154, line: 898, baseType: !23, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !153, file: !154, line: 899, baseType: !23, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !153, file: !154, line: 919, baseType: !23, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !153, file: !154, line: 922, baseType: !23, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !153, file: !154, line: 923, baseType: !23, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !153, file: !154, line: 925, baseType: !23, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !153, file: !154, line: 939, baseType: !23, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !153, file: !154, line: 941, baseType: !23, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !153, file: !154, line: 944, baseType: !23, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !153, file: !154, line: 956, baseType: !23, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !153, file: !154, line: 962, baseType: !23, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !153, file: !154, line: 966, baseType: !23, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !153, file: !154, line: 969, baseType: !119, size: 64, offset: 10176)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !153, file: !154, line: 971, baseType: !3084, size: 448, offset: 10240)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !67, line: 25, size: 448, elements: !3085)
!3085 = !{!3086, !3087, !3092}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3084, file: !67, line: 26, baseType: !119, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3084, file: !67, line: 27, baseType: !3088, size: 64, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!1033, !3091}
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, scope: !3084, file: !67, line: 28, baseType: !3093, size: 320, offset: 128)
!3093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3084, file: !67, line: 28, size: 320, elements: !3094)
!3094 = !{!3095, !3105, !3130}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3093, file: !67, line: 37, baseType: !3096, size: 320)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3093, file: !67, line: 30, size: 320, elements: !3097)
!3097 = !{!3098, !3100, !3101, !3102, !3103, !3104}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3096, file: !67, line: 31, baseType: !3099, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3096, file: !67, line: 32, baseType: !122, size: 32, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3096, file: !67, line: 33, baseType: !122, size: 32, offset: 96)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3096, file: !67, line: 34, baseType: !122, size: 32, offset: 128)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3096, file: !67, line: 35, baseType: !217, size: 64, offset: 192)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3096, file: !67, line: 36, baseType: !3099, size: 64, offset: 256)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3093, file: !67, line: 47, baseType: !3106, size: 192)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3093, file: !67, line: 39, size: 192, elements: !3107)
!3107 = !{!3108, !3109, !3110, !3129}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3106, file: !67, line: 40, baseType: !363, size: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3106, file: !67, line: 41, baseType: !66, size: 32, offset: 32)
!3110 = !DIDerivedType(tag: DW_TAG_member, scope: !3106, file: !67, line: 42, baseType: !3111, size: 64, offset: 64)
!3111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3106, file: !67, line: 42, size: 64, elements: !3112)
!3112 = !{!3113, !3121}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3111, file: !67, line: 43, baseType: !3114, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3116, line: 7, size: 128, elements: !3117)
!3116 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3117 = !{!3118, !3120}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3115, file: !3116, line: 8, baseType: !3119, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !365, line: 93, baseType: !235)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3115, file: !3116, line: 9, baseType: !235, size: 64, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3111, file: !67, line: 44, baseType: !3122, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3124, line: 7, size: 64, elements: !3125)
!3124 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3125 = !{!3126, !3128}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3123, file: !3124, line: 8, baseType: !3127, size: 32)
!3127 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3124, line: 5, baseType: !692)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3123, file: !3124, line: 9, baseType: !692, size: 32, offset: 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3106, file: !67, line: 46, baseType: !217, size: 64, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3093, file: !67, line: 55, baseType: !3131, size: 256)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3093, file: !67, line: 49, size: 256, elements: !3132)
!3132 = !{!3133, !3136, !3137, !3138, !3139}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3131, file: !67, line: 50, baseType: !3134, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !67, line: 14, flags: DIFlagFwdDecl)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3131, file: !67, line: 51, baseType: !127, size: 32, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3131, file: !67, line: 52, baseType: !127, size: 32, offset: 96)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3131, file: !67, line: 53, baseType: !119, size: 64, offset: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3131, file: !67, line: 54, baseType: !119, size: 64, offset: 192)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !153, file: !154, line: 973, baseType: !3141, size: 32, offset: 10688)
!3141 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !166, line: 27, baseType: !3142)
!3142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !365, line: 28, baseType: !127)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !153, file: !154, line: 974, baseType: !3141, size: 32, offset: 10720)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !153, file: !154, line: 978, baseType: !119, size: 64, offset: 10752)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !153, file: !154, line: 987, baseType: !152, size: 64, offset: 10816)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !153, file: !154, line: 990, baseType: !152, size: 64, offset: 10880)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !153, file: !154, line: 995, baseType: !222, size: 128, offset: 10944)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !153, file: !154, line: 996, baseType: !222, size: 128, offset: 11072)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !153, file: !154, line: 997, baseType: !152, size: 64, offset: 11200)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !153, file: !154, line: 1005, baseType: !222, size: 128, offset: 11264)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !153, file: !154, line: 1006, baseType: !222, size: 128, offset: 11392)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !153, file: !154, line: 1009, baseType: !603, size: 64, offset: 11520)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !153, file: !154, line: 1010, baseType: !3154, size: 512, offset: 11584)
!3154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !615, size: 512, elements: !137)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !153, file: !154, line: 1011, baseType: !222, size: 128, offset: 12096)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !153, file: !154, line: 1012, baseType: !222, size: 128, offset: 12224)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !153, file: !154, line: 1014, baseType: !1834, size: 64, offset: 12352)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !153, file: !154, line: 1017, baseType: !1981, size: 64, offset: 12416)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !153, file: !154, line: 1020, baseType: !1981, size: 64, offset: 12480)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !153, file: !154, line: 1023, baseType: !150, size: 64, offset: 12544)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !153, file: !154, line: 1025, baseType: !217, size: 64, offset: 12608)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !153, file: !154, line: 1026, baseType: !217, size: 64, offset: 12672)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !153, file: !154, line: 1031, baseType: !217, size: 64, offset: 12736)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !153, file: !154, line: 1032, baseType: !3165, size: 192, offset: 12800)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !154, line: 324, size: 192, elements: !3166)
!3166 = !{!3167, !3168, !3169}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3165, file: !154, line: 326, baseType: !217, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3165, file: !154, line: 327, baseType: !217, size: 64, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3165, file: !154, line: 328, baseType: !315, size: 32, offset: 128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !153, file: !154, line: 1041, baseType: !119, size: 64, offset: 12992)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !153, file: !154, line: 1042, baseType: !119, size: 64, offset: 13056)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !153, file: !154, line: 1045, baseType: !217, size: 64, offset: 13120)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !153, file: !154, line: 1048, baseType: !217, size: 64, offset: 13184)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !153, file: !154, line: 1051, baseType: !119, size: 64, offset: 13248)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !153, file: !154, line: 1052, baseType: !119, size: 64, offset: 13312)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !153, file: !154, line: 1055, baseType: !3177, size: 640, offset: 13376)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3178, line: 132, size: 640, elements: !3179)
!3178 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3179 = !{!3180, !3186, !3187}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3177, file: !3178, line: 133, baseType: !3181, size: 576)
!3181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3182, size: 576, elements: !147)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3178, line: 117, size: 192, elements: !3183)
!3183 = !{!3184, !3185}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3182, file: !3178, line: 118, baseType: !217, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3182, file: !3178, line: 119, baseType: !378, size: 128, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3177, file: !3178, line: 134, baseType: !23, size: 32, offset: 576)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3177, file: !3178, line: 135, baseType: !23, size: 32, offset: 608)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !153, file: !154, line: 1058, baseType: !3189, size: 448, offset: 14016)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3178, line: 144, size: 448, elements: !3190)
!3190 = !{!3191, !3192, !3193}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3189, file: !3178, line: 145, baseType: !543, size: 128, align: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3189, file: !3178, line: 146, baseType: !563, size: 256, offset: 128)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3189, file: !3178, line: 147, baseType: !23, size: 32, offset: 384)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !153, file: !154, line: 1064, baseType: !651, size: 64, offset: 14464)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !153, file: !154, line: 1067, baseType: !651, size: 64, offset: 14528)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !153, file: !154, line: 1070, baseType: !651, size: 64, offset: 14592)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !153, file: !154, line: 1074, baseType: !684, size: 64, offset: 14656)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !153, file: !154, line: 1084, baseType: !3199, size: 128, offset: 14720)
!3199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2595)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !153, file: !154, line: 1086, baseType: !3201, size: 64, offset: 14848)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !154, line: 55, flags: DIFlagFwdDecl)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !153, file: !154, line: 1089, baseType: !3204, size: 64, offset: 14912)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3205, line: 12, size: 64, elements: !3206)
!3205 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3206 = !{!3207}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3204, file: !3205, line: 13, baseType: !3208, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3205, line: 8, flags: DIFlagFwdDecl)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !153, file: !154, line: 1090, baseType: !3211, size: 128, offset: 14976)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3212, line: 13, size: 128, elements: !3213)
!3212 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3213 = !{!3214}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3211, file: !3212, line: 14, baseType: !222, size: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !153, file: !154, line: 1097, baseType: !3216, size: 64, offset: 15104)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !154, line: 50, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !153, file: !154, line: 1100, baseType: !3219, size: 64, offset: 15168)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !154, line: 1100, flags: DIFlagFwdDecl)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !153, file: !154, line: 1103, baseType: !3222, size: 64, offset: 15232)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !154, line: 53, flags: DIFlagFwdDecl)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !153, file: !154, line: 1107, baseType: !3225, size: 64, offset: 15296)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !154, line: 56, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !153, file: !154, line: 1110, baseType: !3228, size: 64, offset: 15360)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3230, line: 93, size: 8768, elements: !3231)
!3230 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3231 = !{!3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3279, !3288, !3289, !3291, !3292, !3293, !3296, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3334, !3335, !3342, !3352, !3355, !3356, !3359, !3360, !3361, !3362, !3363, !3364}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3229, file: !3230, line: 94, baseType: !160, size: 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3229, file: !3230, line: 95, baseType: !165, size: 32, offset: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3229, file: !3230, line: 96, baseType: !127, size: 32, offset: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3229, file: !3230, line: 97, baseType: !127, size: 32, offset: 96)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3229, file: !3230, line: 98, baseType: !222, size: 128, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3229, file: !3230, line: 100, baseType: !622, size: 192, offset: 256)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3229, file: !3230, line: 103, baseType: !152, size: 64, offset: 448)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3229, file: !3230, line: 106, baseType: !3240, size: 192, offset: 512)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !850, line: 32, size: 192, elements: !3241)
!3241 = !{!3242, !3243}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3240, file: !850, line: 33, baseType: !222, size: 128)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3240, file: !850, line: 34, baseType: !3244, size: 64, offset: 128)
!3244 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3245, line: 25, baseType: !3246)
!3245 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3245, line: 23, size: 64, elements: !3247)
!3247 = !{!3248}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3246, file: !3245, line: 24, baseType: !449, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3229, file: !3230, line: 109, baseType: !611, size: 64, offset: 704)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3229, file: !3230, line: 112, baseType: !127, size: 32, offset: 768)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3229, file: !3230, line: 114, baseType: !127, size: 32, offset: 800)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3229, file: !3230, line: 115, baseType: !152, size: 64, offset: 832)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3229, file: !3230, line: 118, baseType: !127, size: 32, offset: 896)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3229, file: !3230, line: 119, baseType: !23, size: 32, offset: 928)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3229, file: !3230, line: 121, baseType: !3256, size: 64, offset: 960)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3230, line: 80, size: 448, elements: !3258)
!3258 = !{!3259, !3260, !3266}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3257, file: !3230, line: 81, baseType: !165, size: 32)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3257, file: !3230, line: 82, baseType: !3261, size: 128, offset: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3230, line: 75, size: 128, elements: !3262)
!3262 = !{!3263, !3264}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3261, file: !3230, line: 76, baseType: !152, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3261, file: !3230, line: 77, baseType: !3265, size: 64, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3257, file: !3230, line: 83, baseType: !1835, size: 256, offset: 192)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3229, file: !3230, line: 132, baseType: !23, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3229, file: !3230, line: 133, baseType: !23, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3229, file: !3230, line: 138, baseType: !23, size: 32, offset: 1056)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3229, file: !3230, line: 139, baseType: !222, size: 128, offset: 1088)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3229, file: !3230, line: 142, baseType: !290, size: 512, offset: 1216)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3229, file: !3230, line: 143, baseType: !298, size: 64, offset: 1728)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3229, file: !3230, line: 150, baseType: !3274, size: 256, offset: 1792)
!3274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3275, size: 256, elements: !1971)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3230, line: 38, size: 128, elements: !3276)
!3276 = !{!3277, !3278}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3275, file: !3230, line: 39, baseType: !217, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3275, file: !3230, line: 40, baseType: !217, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3229, file: !3230, line: 156, baseType: !3280, size: 192, offset: 2048)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3230, line: 66, size: 192, elements: !3281)
!3281 = !{!3282}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3280, file: !3230, line: 67, baseType: !3283, size: 192)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3230, line: 47, size: 192, elements: !3284)
!3284 = !{!3285, !3286, !3287}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3283, file: !3230, line: 48, baseType: !558, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3283, file: !3230, line: 49, baseType: !558, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3283, file: !3230, line: 50, baseType: !558, size: 64, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3229, file: !3230, line: 160, baseType: !3177, size: 640, offset: 2240)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3229, file: !3230, line: 163, baseType: !3290, size: 256, offset: 2880)
!3290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 256, elements: !137)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3229, file: !3230, line: 169, baseType: !603, size: 64, offset: 3136)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3229, file: !3230, line: 172, baseType: !127, size: 32, offset: 3200)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3229, file: !3230, line: 174, baseType: !3294, size: 64, offset: 3264)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3230, line: 174, flags: DIFlagFwdDecl)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3229, file: !3230, line: 185, baseType: !3297, size: 64, offset: 3328)
!3297 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !368, line: 860, baseType: !3298)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 853, size: 64, elements: !3299)
!3299 = !{!3300, !3301}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3298, file: !368, line: 858, baseType: !889, size: 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3298, file: !368, line: 859, baseType: !517, size: 32, offset: 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3229, file: !3230, line: 186, baseType: !217, size: 64, offset: 3392)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3229, file: !3230, line: 186, baseType: !217, size: 64, offset: 3456)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3229, file: !3230, line: 186, baseType: !217, size: 64, offset: 3520)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3229, file: !3230, line: 186, baseType: !217, size: 64, offset: 3584)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3229, file: !3230, line: 187, baseType: !217, size: 64, offset: 3648)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3229, file: !3230, line: 188, baseType: !217, size: 64, offset: 3712)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3229, file: !3230, line: 189, baseType: !3165, size: 192, offset: 3776)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3229, file: !3230, line: 190, baseType: !119, size: 64, offset: 3968)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3229, file: !3230, line: 190, baseType: !119, size: 64, offset: 4032)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3229, file: !3230, line: 190, baseType: !119, size: 64, offset: 4096)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3229, file: !3230, line: 190, baseType: !119, size: 64, offset: 4160)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3229, file: !3230, line: 191, baseType: !119, size: 64, offset: 4224)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3229, file: !3230, line: 191, baseType: !119, size: 64, offset: 4288)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3229, file: !3230, line: 191, baseType: !119, size: 64, offset: 4352)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3229, file: !3230, line: 191, baseType: !119, size: 64, offset: 4416)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3229, file: !3230, line: 192, baseType: !119, size: 64, offset: 4480)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3229, file: !3230, line: 192, baseType: !119, size: 64, offset: 4544)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3229, file: !3230, line: 192, baseType: !119, size: 64, offset: 4608)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3229, file: !3230, line: 192, baseType: !119, size: 64, offset: 4672)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3229, file: !3230, line: 193, baseType: !119, size: 64, offset: 4736)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3229, file: !3230, line: 193, baseType: !119, size: 64, offset: 4800)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3229, file: !3230, line: 194, baseType: !3324, size: 448, offset: 4864)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3325, line: 12, size: 448, elements: !3326)
!3325 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3326 = !{!3327, !3328, !3329, !3330, !3331, !3332, !3333}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3324, file: !3325, line: 15, baseType: !217, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3324, file: !3325, line: 17, baseType: !217, size: 64, offset: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3324, file: !3325, line: 19, baseType: !217, size: 64, offset: 128)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3324, file: !3325, line: 21, baseType: !217, size: 64, offset: 192)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3324, file: !3325, line: 29, baseType: !217, size: 64, offset: 256)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3324, file: !3325, line: 35, baseType: !217, size: 64, offset: 320)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3324, file: !3325, line: 44, baseType: !217, size: 64, offset: 384)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3229, file: !3230, line: 202, baseType: !219, size: 64, offset: 5312)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3229, file: !3230, line: 213, baseType: !3336, size: 2048, offset: 5376)
!3336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3337, size: 2048, elements: !2595)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3338, line: 43, size: 128, elements: !3339)
!3338 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3339 = !{!3340, !3341}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3337, file: !3338, line: 44, baseType: !1077, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3337, file: !3338, line: 45, baseType: !1077, size: 64, offset: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3229, file: !3230, line: 216, baseType: !3343, size: 448, offset: 7424)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3230, line: 30, size: 448, elements: !3344)
!3344 = !{!3345, !3346, !3347, !3348, !3349, !3350, !3351}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3343, file: !3230, line: 31, baseType: !127, size: 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3343, file: !3230, line: 32, baseType: !1033, size: 64, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3343, file: !3230, line: 33, baseType: !119, size: 64, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3343, file: !3230, line: 34, baseType: !217, size: 64, offset: 192)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3343, file: !3230, line: 34, baseType: !217, size: 64, offset: 256)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3343, file: !3230, line: 35, baseType: !119, size: 64, offset: 320)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3343, file: !3230, line: 35, baseType: !119, size: 64, offset: 384)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3229, file: !3230, line: 219, baseType: !3353, size: 64, offset: 7872)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3230, line: 219, flags: DIFlagFwdDecl)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3229, file: !3230, line: 222, baseType: !23, size: 32, offset: 7936)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3229, file: !3230, line: 223, baseType: !3357, size: 64, offset: 8000)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3230, line: 223, flags: DIFlagFwdDecl)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3229, file: !3230, line: 230, baseType: !759, size: 8, offset: 8064)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3229, file: !3230, line: 231, baseType: !728, size: 16, offset: 8080)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3229, file: !3230, line: 232, baseType: !728, size: 16, offset: 8096)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3229, file: !3230, line: 234, baseType: !498, size: 64, offset: 8128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3229, file: !3230, line: 237, baseType: !563, size: 256, offset: 8192)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3229, file: !3230, line: 243, baseType: !700, size: 320, offset: 8448)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !153, file: !154, line: 1111, baseType: !3366, size: 64, offset: 15424)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3230, line: 20, size: 16640, elements: !3368)
!3368 = !{!3369, !3370, !3371, !3372}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3367, file: !3230, line: 21, baseType: !517, size: 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3367, file: !3230, line: 22, baseType: !160, size: 32, offset: 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3367, file: !3230, line: 23, baseType: !622, size: 192, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3367, file: !3230, line: 24, baseType: !3373, size: 16384, offset: 256)
!3373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3374, size: 16384, elements: !1220)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !850, line: 51, size: 256, elements: !3375)
!3375 = !{!3376}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3374, file: !850, line: 52, baseType: !3377, size: 256)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !850, line: 37, size: 256, elements: !3378)
!3378 = !{!3379, !3386, !3387, !3391}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3377, file: !850, line: 39, baseType: !3380, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3381, line: 83, baseType: !3382)
!3381 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3381, line: 82, baseType: !3384)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{null, !127}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3377, file: !850, line: 40, baseType: !119, size: 64, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3377, file: !850, line: 46, baseType: !3388, size: 64, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3381, line: 86, baseType: !3389)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3381, line: 85, baseType: !2203)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3377, file: !850, line: 48, baseType: !3244, size: 64, offset: 192)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !153, file: !154, line: 1112, baseType: !3244, size: 64, offset: 15488)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !153, file: !154, line: 1113, baseType: !3244, size: 64, offset: 15552)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !153, file: !154, line: 1115, baseType: !3244, size: 64, offset: 15616)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !153, file: !154, line: 1116, baseType: !3240, size: 192, offset: 15680)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !153, file: !154, line: 1117, baseType: !119, size: 64, offset: 15872)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !153, file: !154, line: 1118, baseType: !1075, size: 64, offset: 15936)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !153, file: !154, line: 1119, baseType: !23, size: 32, offset: 16000)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !153, file: !154, line: 1121, baseType: !546, size: 64, offset: 16064)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !153, file: !154, line: 1125, baseType: !3401, size: 64, offset: 16128)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !154, line: 43, flags: DIFlagFwdDecl)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !153, file: !154, line: 1127, baseType: !641, size: 32, offset: 16192)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !153, file: !154, line: 1128, baseType: !23, size: 32, offset: 16224)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !153, file: !154, line: 1130, baseType: !3406, size: 128, offset: 16256)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3407, line: 37, size: 128, elements: !3408)
!3407 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3408 = !{!3409, !3410, !3411}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3406, file: !3407, line: 38, baseType: !127, size: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3406, file: !3407, line: 39, baseType: !165, size: 32, offset: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3406, file: !3407, line: 40, baseType: !3412, size: 64, offset: 64)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3407, line: 24, flags: DIFlagFwdDecl)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !153, file: !154, line: 1131, baseType: !3415, size: 256, offset: 16384)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3416, line: 12, size: 256, elements: !3417)
!3416 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3417 = !{!3418, !3419, !3420, !3421}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3415, file: !3416, line: 13, baseType: !772, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3415, file: !3416, line: 14, baseType: !119, size: 64, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3415, file: !3416, line: 15, baseType: !119, size: 64, offset: 128)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3415, file: !3416, line: 16, baseType: !759, size: 8, offset: 192)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !153, file: !154, line: 1134, baseType: !217, size: 64, offset: 16640)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !153, file: !154, line: 1135, baseType: !217, size: 64, offset: 16704)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !153, file: !154, line: 1138, baseType: !517, size: 32, offset: 16768)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !153, file: !154, line: 1141, baseType: !315, size: 32, offset: 16800)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !153, file: !154, line: 1143, baseType: !3427, size: 64, offset: 16832)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !154, line: 735, size: 64, elements: !3428)
!3428 = !{!3429}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3427, file: !154, line: 736, baseType: !3430, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !153, file: !154, line: 1147, baseType: !381, size: 128, offset: 16896)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !153, file: !154, line: 1149, baseType: !152, size: 64, offset: 17024)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !153, file: !154, line: 1151, baseType: !3434, size: 64, offset: 17088)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !154, line: 1151, flags: DIFlagFwdDecl)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !153, file: !154, line: 1188, baseType: !150, size: 64, offset: 17152)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !153, file: !154, line: 1191, baseType: !3438, size: 64, offset: 17216)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !154, line: 44, flags: DIFlagFwdDecl)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !153, file: !154, line: 1194, baseType: !3441, size: 64, offset: 17280)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !154, line: 45, flags: DIFlagFwdDecl)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !153, file: !154, line: 1197, baseType: !3444, size: 64, offset: 17344)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !154, line: 61, flags: DIFlagFwdDecl)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !153, file: !154, line: 1199, baseType: !3447, size: 64, offset: 17408)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3449, line: 99, size: 128, elements: !3450)
!3449 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3450 = !{!3451, !3452, !3453}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3448, file: !3449, line: 100, baseType: !556, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3448, file: !3449, line: 101, baseType: !165, size: 32, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3448, file: !3449, line: 103, baseType: !136, size: 16, offset: 96)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !153, file: !154, line: 1202, baseType: !3455, size: 64, offset: 17472)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !154, line: 48, flags: DIFlagFwdDecl)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !153, file: !154, line: 1205, baseType: !119, size: 64, offset: 17536)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !153, file: !154, line: 1206, baseType: !3459, size: 64, offset: 17600)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !850, line: 14, baseType: !3461)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !850, line: 12, size: 384, elements: !3462)
!3462 = !{!3463}
!3463 = !DIDerivedType(tag: DW_TAG_member, scope: !3461, file: !850, line: 13, baseType: !3464, size: 384)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3461, file: !850, line: 13, size: 384, elements: !3465)
!3465 = !{!3466, !3467, !3468, !3469}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3464, file: !850, line: 13, baseType: !127, size: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3464, file: !850, line: 13, baseType: !127, size: 32, offset: 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3464, file: !850, line: 13, baseType: !127, size: 32, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3464, file: !850, line: 13, baseType: !3470, size: 256, offset: 128)
!3470 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3471, line: 37, size: 256, elements: !3472)
!3471 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3472 = !{!3473, !3478, !3491, !3497, !3506, !3533, !3538}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3470, file: !3471, line: 42, baseType: !3474, size: 64)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3470, file: !3471, line: 39, size: 64, elements: !3475)
!3475 = !{!3476, !3477}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3474, file: !3471, line: 40, baseType: !3142, size: 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3474, file: !3471, line: 41, baseType: !647, size: 32, offset: 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3470, file: !3471, line: 50, baseType: !3479, size: 192)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3470, file: !3471, line: 45, size: 192, elements: !3480)
!3480 = !{!3481, !3483, !3484, !3490}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3479, file: !3471, line: 46, baseType: !3482, size: 32)
!3482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !365, line: 95, baseType: !127)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3479, file: !3471, line: 47, baseType: !127, size: 32, offset: 32)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3479, file: !3471, line: 48, baseType: !3485, size: 64, offset: 64)
!3485 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3471, line: 11, baseType: !3486)
!3486 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3471, line: 8, size: 64, elements: !3487)
!3487 = !{!3488, !3489}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3486, file: !3471, line: 9, baseType: !127, size: 32)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3486, file: !3471, line: 10, baseType: !150, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3479, file: !3471, line: 49, baseType: !127, size: 32, offset: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3470, file: !3471, line: 57, baseType: !3492, size: 128)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3470, file: !3471, line: 53, size: 128, elements: !3493)
!3493 = !{!3494, !3495, !3496}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3492, file: !3471, line: 54, baseType: !3142, size: 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3492, file: !3471, line: 55, baseType: !647, size: 32, offset: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3492, file: !3471, line: 56, baseType: !3485, size: 64, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3470, file: !3471, line: 66, baseType: !3498, size: 256)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3470, file: !3471, line: 60, size: 256, elements: !3499)
!3499 = !{!3500, !3501, !3502, !3503, !3505}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3498, file: !3471, line: 61, baseType: !3142, size: 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3498, file: !3471, line: 62, baseType: !647, size: 32, offset: 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3498, file: !3471, line: 63, baseType: !127, size: 32, offset: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3498, file: !3471, line: 64, baseType: !3504, size: 64, offset: 128)
!3504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !365, line: 94, baseType: !1074)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3498, file: !3471, line: 65, baseType: !3504, size: 64, offset: 192)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3470, file: !3471, line: 105, baseType: !3507, size: 256)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3470, file: !3471, line: 69, size: 256, elements: !3508)
!3508 = !{!3509, !3510}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3507, file: !3471, line: 70, baseType: !150, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, scope: !3507, file: !3471, line: 79, baseType: !3511, size: 192, offset: 64)
!3511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3507, file: !3471, line: 79, size: 192, elements: !3512)
!3512 = !{!3513, !3514, !3515, !3522, !3527}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3511, file: !3471, line: 81, baseType: !127, size: 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3511, file: !3471, line: 86, baseType: !728, size: 16)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3511, file: !3471, line: 92, baseType: !3516, size: 192)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3511, file: !3471, line: 88, size: 192, elements: !3517)
!3517 = !{!3518, !3520, !3521}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3516, file: !3471, line: 89, baseType: !3519, size: 64)
!3519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !359)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3516, file: !3471, line: 90, baseType: !150, size: 64, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3516, file: !3471, line: 91, baseType: !150, size: 64, offset: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3511, file: !3471, line: 97, baseType: !3523, size: 96)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3511, file: !3471, line: 94, size: 96, elements: !3524)
!3524 = !{!3525, !3526}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3523, file: !3471, line: 95, baseType: !3519, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3523, file: !3471, line: 96, baseType: !124, size: 32, offset: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3511, file: !3471, line: 103, baseType: !3528, size: 128)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3511, file: !3471, line: 99, size: 128, elements: !3529)
!3529 = !{!3530, !3531, !3532}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3528, file: !3471, line: 100, baseType: !119, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3528, file: !3471, line: 101, baseType: !124, size: 32, offset: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3528, file: !3471, line: 102, baseType: !124, size: 32, offset: 96)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3470, file: !3471, line: 111, baseType: !3534, size: 128)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3470, file: !3471, line: 108, size: 128, elements: !3535)
!3535 = !{!3536, !3537}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3534, file: !3471, line: 109, baseType: !1033, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3534, file: !3471, line: 110, baseType: !127, size: 32, offset: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3470, file: !3471, line: 118, baseType: !3539, size: 128)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3470, file: !3471, line: 114, size: 128, elements: !3540)
!3540 = !{!3541, !3542, !3543}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3539, file: !3471, line: 115, baseType: !150, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3539, file: !3471, line: 116, baseType: !127, size: 32, offset: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3539, file: !3471, line: 117, baseType: !23, size: 32, offset: 96)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !153, file: !154, line: 1208, baseType: !3324, size: 448, offset: 17664)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !153, file: !154, line: 1215, baseType: !217, size: 64, offset: 18112)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !153, file: !154, line: 1217, baseType: !217, size: 64, offset: 18176)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !153, file: !154, line: 1219, baseType: !217, size: 64, offset: 18240)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !153, file: !154, line: 1223, baseType: !3549, size: 64, offset: 18304)
!3549 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3550, line: 99, baseType: !3551)
!3550 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3550, line: 99, size: 64, elements: !3552)
!3552 = !{!3553}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3551, file: !3550, line: 99, baseType: !449, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !153, file: !154, line: 1225, baseType: !889, size: 32, offset: 18368)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !153, file: !154, line: 1226, baseType: !127, size: 32, offset: 18400)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !153, file: !154, line: 1227, baseType: !127, size: 32, offset: 18432)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !153, file: !154, line: 1231, baseType: !3558, size: 64, offset: 18496)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !154, line: 1231, flags: DIFlagFwdDecl)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !153, file: !154, line: 1233, baseType: !222, size: 128, offset: 18560)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !153, file: !154, line: 1240, baseType: !3562, size: 64, offset: 18688)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !154, line: 62, flags: DIFlagFwdDecl)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !153, file: !154, line: 1242, baseType: !3565, size: 64, offset: 18752)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3567, line: 392, size: 96, elements: !3568)
!3567 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!3568 = !{!3569, !3575, !3577}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3566, file: !3567, line: 393, baseType: !3570, size: 32)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !3567, line: 388, size: 32, elements: !3571)
!3571 = !{!3572}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3570, file: !3567, line: 389, baseType: !3573, size: 32)
!3573 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !3574, line: 46, baseType: !122)
!3574 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !3566, file: !3567, line: 394, baseType: !3576, size: 32, offset: 32)
!3576 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !3574, line: 42, baseType: !692)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !3566, file: !3567, line: 395, baseType: !3573, size: 32, offset: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !153, file: !154, line: 1244, baseType: !222, size: 128, offset: 18816)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !153, file: !154, line: 1245, baseType: !3580, size: 64, offset: 18944)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !154, line: 51, flags: DIFlagFwdDecl)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !153, file: !154, line: 1246, baseType: !563, size: 256, offset: 19008)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !153, file: !154, line: 1247, baseType: !23, size: 32, offset: 19264)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !153, file: !154, line: 1250, baseType: !3585, size: 64, offset: 19328)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !154, line: 57, flags: DIFlagFwdDecl)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !153, file: !154, line: 1251, baseType: !563, size: 256, offset: 19392)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !153, file: !154, line: 1252, baseType: !222, size: 128, offset: 19648)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !153, file: !154, line: 1259, baseType: !1658, size: 64, offset: 19776)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !153, file: !154, line: 1260, baseType: !728, size: 16, offset: 19840)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !153, file: !154, line: 1261, baseType: !728, size: 16, offset: 19856)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !153, file: !154, line: 1314, baseType: !3593, size: 64, offset: 19904)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3595, line: 62, size: 256, align: 256, elements: !3596)
!3595 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3596 = !{!3597, !3598, !3599, !3600, !3601, !3602, !3603}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3594, file: !3595, line: 75, baseType: !124, size: 32)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3594, file: !3595, line: 90, baseType: !124, size: 32, offset: 32)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3594, file: !3595, line: 112, baseType: !218, size: 64, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3594, file: !3595, line: 132, baseType: !124, size: 32, offset: 128)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3594, file: !3595, line: 140, baseType: !124, size: 32, offset: 160)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3594, file: !3595, line: 149, baseType: !124, size: 32, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3594, file: !3595, line: 154, baseType: !3604, offset: 224)
!3604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !637)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !153, file: !154, line: 1315, baseType: !122, size: 32, offset: 19968)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !153, file: !154, line: 1316, baseType: !122, size: 32, offset: 20000)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !153, file: !154, line: 1321, baseType: !119, size: 64, offset: 20032)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !153, file: !154, line: 1325, baseType: !127, size: 32, offset: 20096)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !153, file: !154, line: 1326, baseType: !127, size: 32, offset: 20128)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !153, file: !154, line: 1327, baseType: !127, size: 32, offset: 20160)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !153, file: !154, line: 1328, baseType: !127, size: 32, offset: 20192)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !153, file: !154, line: 1329, baseType: !543, size: 128, align: 64, offset: 20224)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !153, file: !154, line: 1332, baseType: !3614, size: 128, offset: 20352)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3615, line: 51, size: 128, elements: !3616)
!3615 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3616 = !{!3617, !3622, !3623}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3614, file: !3615, line: 60, baseType: !3618, size: 64)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3619, line: 7, size: 64, elements: !3620)
!3619 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3620 = !{!3621}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3618, file: !3619, line: 12, baseType: !446, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3614, file: !3615, line: 63, baseType: !759, size: 8, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3614, file: !3615, line: 70, baseType: !759, size: 8, offset: 72)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !153, file: !154, line: 1335, baseType: !2833, size: 64, offset: 20480)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !153, file: !154, line: 1337, baseType: !3626, size: 128, offset: 20544)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3615, line: 39, size: 128, elements: !3627)
!3627 = !{!3628, !3629, !3630}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3626, file: !3615, line: 40, baseType: !1301, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3626, file: !3615, line: 42, baseType: !124, size: 32, offset: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3626, file: !3615, line: 43, baseType: !124, size: 32, offset: 96)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !153, file: !154, line: 1340, baseType: !3632, size: 64, offset: 20672)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !154, line: 69, flags: DIFlagFwdDecl)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !153, file: !154, line: 1351, baseType: !127, size: 32, offset: 20736)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !153, file: !154, line: 1352, baseType: !127, size: 32, offset: 20768)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !153, file: !154, line: 1354, baseType: !119, size: 64, offset: 20800)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !153, file: !154, line: 1364, baseType: !217, size: 64, offset: 20864)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !153, file: !154, line: 1365, baseType: !217, size: 64, offset: 20928)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !153, file: !154, line: 1412, baseType: !119, size: 64, offset: 20992)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !153, file: !154, line: 1453, baseType: !3641, size: 64, offset: 21056)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !154, line: 1453, flags: DIFlagFwdDecl)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !153, file: !154, line: 1457, baseType: !3644, size: 64, offset: 21120)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !73, line: 61, size: 576, elements: !3646)
!3646 = !{!3647, !3648, !3667, !3670, !3671, !3704, !3714}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3645, file: !73, line: 62, baseType: !72, size: 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, scope: !3645, file: !73, line: 64, baseType: !3649, size: 192, offset: 64)
!3649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3645, file: !73, line: 64, size: 192, elements: !3650)
!3650 = !{!3651, !3662}
!3651 = !DIDerivedType(tag: DW_TAG_member, scope: !3649, file: !73, line: 65, baseType: !3652, size: 192)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3649, file: !73, line: 65, size: 192, elements: !3653)
!3653 = !{!3654, !3661}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3652, file: !73, line: 66, baseType: !3655, size: 128)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3656, line: 50, size: 128, elements: !3657)
!3656 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3657 = !{!3658, !3659, !3660}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3655, file: !3656, line: 52, baseType: !119, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3655, file: !3656, line: 54, baseType: !23, size: 32, offset: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3655, file: !3656, line: 55, baseType: !23, size: 32, offset: 96)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3652, file: !73, line: 67, baseType: !119, size: 64, offset: 128)
!3662 = !DIDerivedType(tag: DW_TAG_member, scope: !3649, file: !73, line: 70, baseType: !3663, size: 192)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3649, file: !73, line: 70, size: 192, elements: !3664)
!3664 = !{!3665, !3666}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3663, file: !73, line: 71, baseType: !543, size: 128, align: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3663, file: !73, line: 72, baseType: !119, size: 64, offset: 128)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3645, file: !73, line: 76, baseType: !3668, size: 64, offset: 256)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !73, line: 76, flags: DIFlagFwdDecl)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3645, file: !73, line: 77, baseType: !119, size: 64, offset: 320)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3645, file: !73, line: 79, baseType: !3672, size: 64, offset: 384)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3656, line: 25, size: 256, elements: !3674)
!3674 = !{!3675, !3681, !3685}
!3675 = !DIDerivedType(tag: DW_TAG_member, scope: !3673, file: !3656, line: 26, baseType: !3676, size: 128)
!3676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3673, file: !3656, line: 26, size: 128, elements: !3677)
!3677 = !{!3678, !3680}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3676, file: !3656, line: 27, baseType: !3679, size: 128)
!3679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 128, elements: !2595)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3676, file: !3656, line: 28, baseType: !3679, size: 128)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3673, file: !3656, line: 31, baseType: !3682, size: 64, offset: 128)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3684)
!3684 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3656, line: 23, flags: DIFlagFwdDecl)
!3685 = !DIDerivedType(tag: DW_TAG_member, scope: !3673, file: !3656, line: 33, baseType: !3686, size: 64, offset: 192)
!3686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3673, file: !3656, line: 33, size: 64, elements: !3687)
!3687 = !{!3688, !3694, !3699}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3686, file: !3656, line: 38, baseType: !3689, size: 64)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3686, file: !3656, line: 34, size: 64, elements: !3690)
!3690 = !{!3691, !3692, !3693}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3689, file: !3656, line: 35, baseType: !692, size: 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3689, file: !3656, line: 36, baseType: !332, size: 8, offset: 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3689, file: !3656, line: 37, baseType: !332, size: 8, offset: 40)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3686, file: !3656, line: 42, baseType: !3695, size: 16)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3686, file: !3656, line: 39, size: 16, elements: !3696)
!3696 = !{!3697, !3698}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3695, file: !3656, line: 40, baseType: !332, size: 8)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3695, file: !3656, line: 41, baseType: !332, size: 8, offset: 8)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3686, file: !3656, line: 46, baseType: !3700, size: 16)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3686, file: !3656, line: 43, size: 16, elements: !3701)
!3701 = !{!3702, !3703}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3700, file: !3656, line: 44, baseType: !332, size: 8)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3700, file: !3656, line: 45, baseType: !332, size: 8, offset: 8)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3645, file: !73, line: 81, baseType: !3705, size: 64, offset: 448)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !73, line: 85, size: 384, elements: !3707)
!3707 = !{!3708, !3709, !3710, !3711, !3712, !3713}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3706, file: !73, line: 86, baseType: !3668, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3706, file: !73, line: 87, baseType: !119, size: 64, offset: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3706, file: !73, line: 88, baseType: !119, size: 64, offset: 128)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3706, file: !73, line: 89, baseType: !119, size: 64, offset: 192)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3706, file: !73, line: 90, baseType: !759, size: 8, offset: 256)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3706, file: !73, line: 92, baseType: !3705, size: 64, offset: 320)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3645, file: !73, line: 82, baseType: !23, size: 32, offset: 512)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !153, file: !154, line: 1463, baseType: !3716, offset: 21184)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !154, line: 739, elements: !528)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !153, file: !154, line: 1470, baseType: !543, size: 128, align: 64, offset: 21184)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !153, file: !154, line: 1471, baseType: !160, size: 32, offset: 21312)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !153, file: !154, line: 1472, baseType: !127, size: 32, offset: 21344)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !153, file: !154, line: 1474, baseType: !152, size: 64, offset: 21376)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !153, file: !154, line: 1475, baseType: !2083, size: 320, offset: 21440)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !153, file: !154, line: 1478, baseType: !3723, size: 64, offset: 21760)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3725, line: 49, size: 512, elements: !3726)
!3725 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3726 = !{!3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3736}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3724, file: !3725, line: 50, baseType: !3723, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3724, file: !3725, line: 51, baseType: !150, size: 64, offset: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3724, file: !3725, line: 52, baseType: !119, size: 64, offset: 128)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3724, file: !3725, line: 53, baseType: !119, size: 64, offset: 192)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3724, file: !3725, line: 54, baseType: !1451, size: 64, offset: 256)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3724, file: !3725, line: 56, baseType: !23, size: 32, offset: 320)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3724, file: !3725, line: 58, baseType: !23, size: 32, offset: 352)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3724, file: !3725, line: 59, baseType: !3735, size: 64, offset: 384)
!3735 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !166, line: 159, baseType: !217)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3724, file: !3725, line: 60, baseType: !1687, size: 64, offset: 448)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !153, file: !154, line: 1482, baseType: !160, size: 32, offset: 21824)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !153, file: !154, line: 1489, baseType: !150, size: 64, offset: 21888)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !153, file: !154, line: 1504, baseType: !150, size: 64, offset: 21952)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !153, file: !154, line: 1505, baseType: !218, size: 64, offset: 22016)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !153, file: !154, line: 1506, baseType: !217, size: 64, offset: 22080)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !153, file: !154, line: 1507, baseType: !218, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !153, file: !154, line: 1508, baseType: !218, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !153, file: !154, line: 1509, baseType: !218, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !153, file: !154, line: 1510, baseType: !543, size: 128, align: 64, offset: 22208)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !153, file: !154, line: 1511, baseType: !127, size: 32, offset: 22336)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !153, file: !154, line: 1515, baseType: !3748, size: 64, offset: 22400)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !179, line: 56, size: 64, elements: !3749)
!3749 = !{!3750}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3748, file: !179, line: 57, baseType: !182, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !153, file: !154, line: 1518, baseType: !3748, size: 64, offset: 22464)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !153, file: !154, line: 1528, baseType: !543, size: 128, align: 64, offset: 22528)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !153, file: !154, line: 1552, baseType: !3754, size: 35328, offset: 23040)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3755, line: 430, size: 35328, elements: !3756)
!3755 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3756 = !{!3757, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3786, !3787, !3788, !3789, !3790, !3791, !3794, !3795, !3796, !3797}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3754, file: !3755, line: 432, baseType: !3758, size: 192)
!3758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3759, size: 192, elements: !147)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3760, line: 16, size: 64, elements: !3761)
!3760 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3761 = !{!3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3759, file: !3760, line: 17, baseType: !149, size: 16)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3759, file: !3760, line: 18, baseType: !149, size: 16, offset: 16)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3759, file: !3760, line: 19, baseType: !149, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3759, file: !3760, line: 19, baseType: !149, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3759, file: !3760, line: 19, baseType: !149, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3759, file: !3760, line: 19, baseType: !149, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3759, file: !3760, line: 19, baseType: !149, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3759, file: !3760, line: 20, baseType: !149, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3759, file: !3760, line: 20, baseType: !149, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3759, file: !3760, line: 20, baseType: !149, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3759, file: !3760, line: 20, baseType: !149, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3759, file: !3760, line: 20, baseType: !149, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3759, file: !3760, line: 20, baseType: !149, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3754, file: !3755, line: 436, baseType: !119, size: 64, offset: 192)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3754, file: !3755, line: 440, baseType: !136, size: 16, offset: 256)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3754, file: !3755, line: 441, baseType: !136, size: 16, offset: 272)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3754, file: !3755, line: 442, baseType: !136, size: 16, offset: 288)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3754, file: !3755, line: 443, baseType: !136, size: 16, offset: 304)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3754, file: !3755, line: 447, baseType: !119, size: 64, offset: 320)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3754, file: !3755, line: 448, baseType: !119, size: 64, offset: 384)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3754, file: !3755, line: 459, baseType: !3783, size: 256, offset: 448)
!3783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3784, size: 256, elements: !137)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3755, line: 428, flags: DIFlagFwdDecl)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3754, file: !3755, line: 461, baseType: !119, size: 64, offset: 704)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3754, file: !3755, line: 463, baseType: !119, size: 64, offset: 768)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3754, file: !3755, line: 465, baseType: !119, size: 64, offset: 832)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3754, file: !3755, line: 466, baseType: !119, size: 64, offset: 896)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3754, file: !3755, line: 467, baseType: !119, size: 64, offset: 960)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3754, file: !3755, line: 473, baseType: !3792, size: 64, offset: 1024)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3755, line: 10, flags: DIFlagFwdDecl)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3754, file: !3755, line: 480, baseType: !119, size: 64, offset: 1088)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3754, file: !3755, line: 482, baseType: !23, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3754, file: !3755, line: 491, baseType: !122, size: 32, offset: 1184)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3754, file: !3755, line: 501, baseType: !3798, size: 33792, offset: 1536)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !86, line: 448, size: 33792, elements: !3799)
!3799 = !{!3800, !3801, !3802, !3964, !3965, !3971, !3972}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3798, file: !86, line: 461, baseType: !23, size: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3798, file: !86, line: 468, baseType: !119, size: 64, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3798, file: !86, line: 476, baseType: !3803, size: 64, offset: 128)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !86, line: 356, size: 33280, align: 512, elements: !3805)
!3805 = !{!3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3804, file: !86, line: 358, baseType: !23, size: 32)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3804, file: !86, line: 361, baseType: !23, size: 32, offset: 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3804, file: !86, line: 364, baseType: !217, size: 64, offset: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3804, file: !86, line: 367, baseType: !217, size: 64, offset: 128)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3804, file: !86, line: 370, baseType: !217, size: 64, offset: 192)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3804, file: !86, line: 373, baseType: !23, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3804, file: !86, line: 376, baseType: !23, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3804, file: !86, line: 391, baseType: !23, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3804, file: !86, line: 394, baseType: !23, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3804, file: !86, line: 397, baseType: !3816, size: 32768, offset: 512)
!3816 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !86, line: 348, size: 32768, elements: !3817)
!3817 = !{!3818, !3833, !3870, !3947, !3960}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3816, file: !86, line: 349, baseType: !3819, size: 896)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !86, line: 12, size: 896, elements: !3820)
!3820 = !{!3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3832}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3819, file: !86, line: 13, baseType: !122, size: 32)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3819, file: !86, line: 14, baseType: !122, size: 32, offset: 32)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3819, file: !86, line: 15, baseType: !122, size: 32, offset: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3819, file: !86, line: 16, baseType: !122, size: 32, offset: 96)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3819, file: !86, line: 17, baseType: !122, size: 32, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3819, file: !86, line: 18, baseType: !122, size: 32, offset: 160)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3819, file: !86, line: 19, baseType: !122, size: 32, offset: 192)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3819, file: !86, line: 22, baseType: !3829, size: 640, offset: 224)
!3829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 640, elements: !3830)
!3830 = !{!3831}
!3831 = !DISubrange(count: 20)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3819, file: !86, line: 25, baseType: !122, size: 32, offset: 864)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3816, file: !86, line: 350, baseType: !3834, size: 4096, align: 128)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !86, line: 34, size: 4096, align: 128, elements: !3835)
!3835 = !{!3836, !3837, !3838, !3839, !3840, !3855, !3856, !3857, !3859, !3861, !3865}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3834, file: !86, line: 35, baseType: !149, size: 16)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3834, file: !86, line: 36, baseType: !149, size: 16, offset: 16)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3834, file: !86, line: 37, baseType: !149, size: 16, offset: 32)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3834, file: !86, line: 38, baseType: !149, size: 16, offset: 48)
!3840 = !DIDerivedType(tag: DW_TAG_member, scope: !3834, file: !86, line: 39, baseType: !3841, size: 128, offset: 64)
!3841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3834, file: !86, line: 39, size: 128, elements: !3842)
!3842 = !{!3843, !3848}
!3843 = !DIDerivedType(tag: DW_TAG_member, scope: !3841, file: !86, line: 40, baseType: !3844, size: 128)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3841, file: !86, line: 40, size: 128, elements: !3845)
!3845 = !{!3846, !3847}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3844, file: !86, line: 41, baseType: !217, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3844, file: !86, line: 42, baseType: !217, size: 64, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, scope: !3841, file: !86, line: 44, baseType: !3849, size: 128)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3841, file: !86, line: 44, size: 128, elements: !3850)
!3850 = !{!3851, !3852, !3853, !3854}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3849, file: !86, line: 45, baseType: !122, size: 32)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3849, file: !86, line: 46, baseType: !122, size: 32, offset: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3849, file: !86, line: 47, baseType: !122, size: 32, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3849, file: !86, line: 48, baseType: !122, size: 32, offset: 96)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3834, file: !86, line: 51, baseType: !122, size: 32, offset: 192)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3834, file: !86, line: 52, baseType: !122, size: 32, offset: 224)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3834, file: !86, line: 55, baseType: !3858, size: 1024, offset: 256)
!3858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 1024, elements: !2586)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3834, file: !86, line: 58, baseType: !3860, size: 2048, offset: 1280)
!3860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 2048, elements: !1220)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3834, file: !86, line: 60, baseType: !3862, size: 384, offset: 3328)
!3862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 384, elements: !3863)
!3863 = !{!3864}
!3864 = !DISubrange(count: 12)
!3865 = !DIDerivedType(tag: DW_TAG_member, scope: !3834, file: !86, line: 62, baseType: !3866, size: 384, offset: 3712)
!3866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3834, file: !86, line: 62, size: 384, elements: !3867)
!3867 = !{!3868, !3869}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3866, file: !86, line: 63, baseType: !3862, size: 384)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3866, file: !86, line: 64, baseType: !3862, size: 384)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3816, file: !86, line: 351, baseType: !3871, size: 1088)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !86, line: 79, size: 1088, elements: !3872)
!3872 = !{!3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3946}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3871, file: !86, line: 80, baseType: !122, size: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3871, file: !86, line: 81, baseType: !122, size: 32, offset: 32)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3871, file: !86, line: 82, baseType: !122, size: 32, offset: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3871, file: !86, line: 83, baseType: !122, size: 32, offset: 96)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3871, file: !86, line: 84, baseType: !122, size: 32, offset: 128)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3871, file: !86, line: 85, baseType: !122, size: 32, offset: 160)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3871, file: !86, line: 86, baseType: !122, size: 32, offset: 192)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3871, file: !86, line: 88, baseType: !3829, size: 640, offset: 224)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3871, file: !86, line: 89, baseType: !332, size: 8, offset: 864)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3871, file: !86, line: 90, baseType: !332, size: 8, offset: 872)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3871, file: !86, line: 91, baseType: !332, size: 8, offset: 880)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3871, file: !86, line: 92, baseType: !332, size: 8, offset: 888)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3871, file: !86, line: 93, baseType: !332, size: 8, offset: 896)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3871, file: !86, line: 94, baseType: !332, size: 8, offset: 904)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3871, file: !86, line: 95, baseType: !3888, size: 64, offset: 960)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3890, line: 11, size: 128, elements: !3891)
!3890 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3891 = !{!3892, !3893}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3889, file: !3890, line: 12, baseType: !1033, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3889, file: !3890, line: 13, baseType: !3894, size: 64, offset: 64)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3896, line: 103, size: 1344, elements: !3897)
!3896 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3897 = !{!3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3926, !3927, !3928}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3895, file: !3896, line: 109, baseType: !119, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3895, file: !3896, line: 110, baseType: !119, size: 64, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3895, file: !3896, line: 111, baseType: !119, size: 64, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3895, file: !3896, line: 112, baseType: !119, size: 64, offset: 192)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3895, file: !3896, line: 113, baseType: !119, size: 64, offset: 256)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3895, file: !3896, line: 114, baseType: !119, size: 64, offset: 320)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3895, file: !3896, line: 117, baseType: !119, size: 64, offset: 384)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3895, file: !3896, line: 118, baseType: !119, size: 64, offset: 448)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3895, file: !3896, line: 119, baseType: !119, size: 64, offset: 512)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3895, file: !3896, line: 120, baseType: !119, size: 64, offset: 576)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3895, file: !3896, line: 121, baseType: !119, size: 64, offset: 640)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3895, file: !3896, line: 122, baseType: !119, size: 64, offset: 704)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3895, file: !3896, line: 123, baseType: !119, size: 64, offset: 768)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3895, file: !3896, line: 124, baseType: !119, size: 64, offset: 832)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3895, file: !3896, line: 125, baseType: !119, size: 64, offset: 896)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3895, file: !3896, line: 139, baseType: !119, size: 64, offset: 960)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3895, file: !3896, line: 142, baseType: !119, size: 64, offset: 1024)
!3915 = !DIDerivedType(tag: DW_TAG_member, scope: !3895, file: !3896, line: 144, baseType: !3916, size: 64, offset: 1088)
!3916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3895, file: !3896, line: 144, size: 64, elements: !3917)
!3917 = !{!3918, !3919, !3920}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3916, file: !3896, line: 146, baseType: !149, size: 16)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3916, file: !3896, line: 148, baseType: !217, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3916, file: !3896, line: 150, baseType: !3921, size: 64)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3896, line: 59, size: 64, elements: !3922)
!3922 = !{!3923, !3924, !3925}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3921, file: !3896, line: 61, baseType: !217, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3921, file: !3896, line: 63, baseType: !217, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3921, file: !3896, line: 65, baseType: !217, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3895, file: !3896, line: 153, baseType: !119, size: 64, offset: 1152)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3895, file: !3896, line: 154, baseType: !119, size: 64, offset: 1216)
!3928 = !DIDerivedType(tag: DW_TAG_member, scope: !3895, file: !3896, line: 156, baseType: !3929, size: 64, offset: 1280)
!3929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3895, file: !3896, line: 156, size: 64, elements: !3930)
!3930 = !{!3931, !3932, !3933}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3929, file: !3896, line: 158, baseType: !149, size: 16)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3929, file: !3896, line: 160, baseType: !217, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3929, file: !3896, line: 162, baseType: !3934, size: 64)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3896, line: 69, size: 64, elements: !3935)
!3935 = !{!3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3934, file: !3896, line: 71, baseType: !217, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3934, file: !3896, line: 73, baseType: !217, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3934, file: !3896, line: 75, baseType: !217, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3934, file: !3896, line: 77, baseType: !217, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3934, file: !3896, line: 80, baseType: !217, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3934, file: !3896, line: 83, baseType: !217, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3934, file: !3896, line: 86, baseType: !217, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3934, file: !3896, line: 88, baseType: !217, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3934, file: !3896, line: 93, baseType: !217, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3934, file: !3896, line: 100, baseType: !217, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3871, file: !86, line: 96, baseType: !122, size: 32, offset: 1024)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3816, file: !86, line: 352, baseType: !3948, size: 4608, align: 512)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !86, line: 333, size: 4608, align: 512, elements: !3949)
!3949 = !{!3950, !3951, !3958}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3948, file: !86, line: 334, baseType: !3834, size: 4096, align: 128)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3948, file: !86, line: 335, baseType: !3952, size: 512, offset: 4096)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !86, line: 312, size: 512, elements: !3953)
!3953 = !{!3954, !3955, !3956}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3952, file: !86, line: 313, baseType: !217, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3952, file: !86, line: 314, baseType: !217, size: 64, offset: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3952, file: !86, line: 315, baseType: !3957, size: 384, offset: 128)
!3957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 384, elements: !746)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3948, file: !86, line: 336, baseType: !3959, offset: 4608)
!3959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, elements: !637)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3816, file: !86, line: 353, baseType: !3961, size: 32768)
!3961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 32768, elements: !3962)
!3962 = !{!3963}
!3963 = !DISubrange(count: 4096)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3798, file: !86, line: 484, baseType: !3803, size: 64, offset: 192)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3798, file: !86, line: 491, baseType: !3966, size: 128, offset: 256)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !86, line: 404, size: 128, elements: !3967)
!3967 = !{!3968, !3969, !3970}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3966, file: !86, line: 424, baseType: !217, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3966, file: !86, line: 432, baseType: !23, size: 32, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3966, file: !86, line: 440, baseType: !23, size: 32, offset: 96)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3798, file: !86, line: 498, baseType: !3966, size: 128, offset: 384)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3798, file: !86, line: 508, baseType: !3804, size: 33280, align: 512, offset: 512)
!3973 = !{!0, !7, !13}
!3974 = !{!"rsp"}
!3975 = !{i32 7, !"Dwarf Version", i32 5}
!3976 = !{i32 2, !"Debug Info Version", i32 3}
!3977 = !{i32 1, !"wchar_size", i32 2}
!3978 = !{i32 8, !"cf-protection-branch", i32 1}
!3979 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3980 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3981 = !{i32 1, !"Code Model", i32 2}
!3982 = !{i32 1, !"override-stack-alignment", i32 8}
!3983 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3984 = distinct !DISubprogram(name: "regset_fpregs_active", scope: !9, file: !9, line: 23, type: !3985, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4018)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!127, !152, !3987}
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3989)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_regset", file: !2, line: 200, size: 448, elements: !3990)
!3990 = !{!3991, !4000, !4005, !4008, !4013, !4014, !4015, !4016, !4017}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "regset_get", scope: !3989, file: !2, line: 201, baseType: !3992, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_typedef, name: "user_regset_get2_fn", file: !2, line: 97, baseType: !3994)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!127, !152, !3987, !3996}
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "membuf", file: !2, line: 20, size: 128, elements: !3997)
!3997 = !{!3998, !3999}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3996, file: !2, line: 21, baseType: !150, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !3996, file: !2, line: 22, baseType: !1075, size: 64, offset: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3989, file: !2, line: 202, baseType: !4001, size: 64, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_typedef, name: "user_regset_set_fn", file: !2, line: 117, baseType: !4003)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!127, !152, !3987, !23, !23, !1687, !1687}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3989, file: !2, line: 203, baseType: !4006, size: 64, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_typedef, name: "user_regset_active_fn", file: !2, line: 94, baseType: !3985)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "writeback", scope: !3989, file: !2, line: 204, baseType: !4009, size: 64, offset: 192)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_typedef, name: "user_regset_writeback_fn", file: !2, line: 143, baseType: !4011)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!127, !152, !3987, !127}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3989, file: !2, line: 205, baseType: !23, size: 32, offset: 256)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3989, file: !2, line: 206, baseType: !23, size: 32, offset: 288)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3989, file: !2, line: 207, baseType: !23, size: 32, offset: 320)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !3989, file: !2, line: 208, baseType: !23, size: 32, offset: 352)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "core_note_type", scope: !3989, file: !2, line: 209, baseType: !23, size: 32, offset: 384)
!4018 = !{!4019, !4020}
!4019 = !DILocalVariable(name: "target", arg: 1, scope: !3984, file: !9, line: 23, type: !152)
!4020 = !DILocalVariable(name: "regset", arg: 2, scope: !3984, file: !9, line: 23, type: !3987)
!4021 = !DILocation(line: 23, column: 46, scope: !3984)
!4022 = !DILocation(line: 23, column: 80, scope: !3984)
!4023 = !DILocation(line: 25, column: 9, scope: !3984)
!4024 = !DILocation(line: 25, column: 17, scope: !3984)
!4025 = !DILocation(line: 25, column: 2, scope: !3984)
!4026 = distinct !DISubprogram(name: "regset_xregset_fpregs_active", scope: !9, file: !9, line: 28, type: !3985, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4027)
!4027 = !{!4028, !4029}
!4028 = !DILocalVariable(name: "target", arg: 1, scope: !4026, file: !9, line: 28, type: !152)
!4029 = !DILocalVariable(name: "regset", arg: 2, scope: !4026, file: !9, line: 28, type: !3987)
!4030 = !DILocation(line: 28, column: 54, scope: !4026)
!4031 = !DILocation(line: 28, column: 88, scope: !4026)
!4032 = !DILocation(line: 31, column: 10, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4026, file: !9, line: 30, column: 6)
!4034 = !DILocation(line: 31, column: 18, scope: !4033)
!4035 = !DILocation(line: 31, column: 3, scope: !4033)
!4036 = distinct !DISubprogram(name: "xfpregs_get", scope: !9, file: !9, line: 71, type: !3994, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4037)
!4037 = !{!4038, !4039, !4040, !4041}
!4038 = !DILocalVariable(name: "target", arg: 1, scope: !4036, file: !9, line: 71, type: !152)
!4039 = !DILocalVariable(name: "regset", arg: 2, scope: !4036, file: !9, line: 71, type: !3987)
!4040 = !DILocalVariable(name: "to", arg: 3, scope: !4036, file: !9, line: 72, type: !3996)
!4041 = !DILocalVariable(name: "fpu", scope: !4036, file: !9, line: 74, type: !4042)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!4043 = !DILocation(line: 71, column: 37, scope: !4036)
!4044 = !DILocation(line: 71, column: 71, scope: !4036)
!4045 = !DILocation(line: 72, column: 17, scope: !4036)
!4046 = !DILocation(line: 74, column: 2, scope: !4036)
!4047 = !DILocation(line: 74, column: 14, scope: !4036)
!4048 = !DILocation(line: 74, column: 21, scope: !4036)
!4049 = !DILocation(line: 74, column: 29, scope: !4036)
!4050 = !DILocation(line: 74, column: 36, scope: !4036)
!4051 = !DILocation(line: 79, column: 15, scope: !4036)
!4052 = !DILocation(line: 79, column: 2, scope: !4036)
!4053 = !DILocation(line: 81, column: 7, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4036, file: !9, line: 81, column: 6)
!4055 = !DILocation(line: 81, column: 6, scope: !4036)
!4056 = !DILocation(line: 82, column: 29, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4054, file: !9, line: 81, column: 20)
!4058 = !DILocation(line: 82, column: 34, scope: !4057)
!4059 = !DILocation(line: 82, column: 43, scope: !4057)
!4060 = !DILocation(line: 82, column: 10, scope: !4057)
!4061 = !DILocation(line: 82, column: 3, scope: !4057)
!4062 = !DILocation(line: 86, column: 30, scope: !4036)
!4063 = !DILocation(line: 86, column: 2, scope: !4036)
!4064 = !DILocation(line: 87, column: 2, scope: !4036)
!4065 = !DILocation(line: 88, column: 1, scope: !4036)
!4066 = distinct !DISubprogram(name: "sync_fpstate", scope: !9, file: !9, line: 46, type: !4067, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4069)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{null, !4042}
!4069 = !{!4070}
!4070 = !DILocalVariable(name: "fpu", arg: 1, scope: !4066, file: !9, line: 46, type: !4042)
!4071 = !DILocation(line: 46, column: 38, scope: !4066)
!4072 = !DILocation(line: 48, column: 6, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4066, file: !9, line: 48, column: 6)
!4074 = !DILocation(line: 48, column: 14, scope: !4073)
!4075 = !DILocation(line: 48, column: 23, scope: !4073)
!4076 = !DILocation(line: 48, column: 30, scope: !4073)
!4077 = !DILocation(line: 48, column: 10, scope: !4073)
!4078 = !DILocation(line: 48, column: 6, scope: !4066)
!4079 = !DILocation(line: 49, column: 20, scope: !4073)
!4080 = !DILocation(line: 49, column: 3, scope: !4073)
!4081 = !DILocation(line: 50, column: 1, scope: !4066)
!4082 = distinct !DISubprogram(name: "use_xsave", scope: !4083, file: !4083, line: 8, type: !1677, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19)
!4083 = !DIFile(filename: "arch/x86/kernel/fpu/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64a68e595d8dee7f95a00f7be469efe1")
!4084 = !DILocation(line: 10, column: 9, scope: !4082)
!4085 = !DILocation(line: 10, column: 2, scope: !4082)
!4086 = distinct !DISubprogram(name: "membuf_write", scope: !2, file: !2, line: 37, type: !4087, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4090)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!127, !4089, !1687, !1075}
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!4090 = !{!4091, !4092, !4093}
!4091 = !DILocalVariable(name: "s", arg: 1, scope: !4086, file: !2, line: 37, type: !4089)
!4092 = !DILocalVariable(name: "v", arg: 2, scope: !4086, file: !2, line: 37, type: !1687)
!4093 = !DILocalVariable(name: "size", arg: 3, scope: !4086, file: !2, line: 37, type: !1075)
!4094 = !DILocation(line: 37, column: 47, scope: !4086)
!4095 = !DILocation(line: 37, column: 62, scope: !4086)
!4096 = !DILocation(line: 37, column: 72, scope: !4086)
!4097 = !DILocation(line: 39, column: 6, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4086, file: !2, line: 39, column: 6)
!4099 = !DILocation(line: 39, column: 9, scope: !4098)
!4100 = !DILocation(line: 39, column: 6, scope: !4086)
!4101 = !DILocation(line: 40, column: 7, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4103, file: !2, line: 40, column: 7)
!4103 = distinct !DILexicalBlock(scope: !4098, file: !2, line: 39, column: 15)
!4104 = !DILocation(line: 40, column: 14, scope: !4102)
!4105 = !DILocation(line: 40, column: 17, scope: !4102)
!4106 = !DILocation(line: 40, column: 12, scope: !4102)
!4107 = !DILocation(line: 40, column: 7, scope: !4103)
!4108 = !DILocation(line: 41, column: 11, scope: !4102)
!4109 = !DILocation(line: 41, column: 14, scope: !4102)
!4110 = !DILocation(line: 41, column: 9, scope: !4102)
!4111 = !DILocation(line: 41, column: 4, scope: !4102)
!4112 = !DILocation(line: 42, column: 10, scope: !4103)
!4113 = !DILocation(line: 42, column: 13, scope: !4103)
!4114 = !DILocation(line: 42, column: 16, scope: !4103)
!4115 = !DILocation(line: 42, column: 19, scope: !4103)
!4116 = !DILocation(line: 42, column: 3, scope: !4103)
!4117 = !DILocation(line: 43, column: 11, scope: !4103)
!4118 = !DILocation(line: 43, column: 3, scope: !4103)
!4119 = !DILocation(line: 43, column: 6, scope: !4103)
!4120 = !DILocation(line: 43, column: 8, scope: !4103)
!4121 = !DILocation(line: 44, column: 14, scope: !4103)
!4122 = !DILocation(line: 44, column: 3, scope: !4103)
!4123 = !DILocation(line: 44, column: 6, scope: !4103)
!4124 = !DILocation(line: 44, column: 11, scope: !4103)
!4125 = !DILocation(line: 45, column: 2, scope: !4103)
!4126 = !DILocation(line: 46, column: 9, scope: !4086)
!4127 = !DILocation(line: 46, column: 12, scope: !4086)
!4128 = !DILocation(line: 46, column: 2, scope: !4086)
!4129 = !DISubprogram(name: "copy_xstate_to_uabi_buf", scope: !80, file: !80, line: 48, type: !4130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{null, !3996, !152, !79}
!4132 = distinct !DISubprogram(name: "xfpregs_set", scope: !9, file: !9, line: 90, type: !4003, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4133)
!4133 = !{!4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142}
!4134 = !DILocalVariable(name: "target", arg: 1, scope: !4132, file: !9, line: 90, type: !152)
!4135 = !DILocalVariable(name: "regset", arg: 2, scope: !4132, file: !9, line: 90, type: !3987)
!4136 = !DILocalVariable(name: "pos", arg: 3, scope: !4132, file: !9, line: 91, type: !23)
!4137 = !DILocalVariable(name: "count", arg: 4, scope: !4132, file: !9, line: 91, type: !23)
!4138 = !DILocalVariable(name: "kbuf", arg: 5, scope: !4132, file: !9, line: 92, type: !1687)
!4139 = !DILocalVariable(name: "ubuf", arg: 6, scope: !4132, file: !9, line: 92, type: !1687)
!4140 = !DILocalVariable(name: "fpu", scope: !4132, file: !9, line: 94, type: !4042)
!4141 = !DILocalVariable(name: "newstate", scope: !4132, file: !9, line: 95, type: !3834)
!4142 = !DILocalVariable(name: "ret", scope: !4132, file: !9, line: 96, type: !127)
!4143 = !DILocation(line: 90, column: 37, scope: !4132)
!4144 = !DILocation(line: 90, column: 71, scope: !4132)
!4145 = !DILocation(line: 91, column: 16, scope: !4132)
!4146 = !DILocation(line: 91, column: 34, scope: !4132)
!4147 = !DILocation(line: 92, column: 15, scope: !4132)
!4148 = !DILocation(line: 92, column: 40, scope: !4132)
!4149 = !DILocation(line: 94, column: 2, scope: !4132)
!4150 = !DILocation(line: 94, column: 14, scope: !4132)
!4151 = !DILocation(line: 94, column: 21, scope: !4132)
!4152 = !DILocation(line: 94, column: 29, scope: !4132)
!4153 = !DILocation(line: 94, column: 36, scope: !4132)
!4154 = !DILocation(line: 95, column: 2, scope: !4132)
!4155 = !DILocation(line: 95, column: 22, scope: !4132)
!4156 = !DILocation(line: 96, column: 2, scope: !4132)
!4157 = !DILocation(line: 96, column: 6, scope: !4132)
!4158 = !DILocation(line: 102, column: 6, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4132, file: !9, line: 102, column: 6)
!4160 = !DILocation(line: 102, column: 10, scope: !4159)
!4161 = !DILocation(line: 102, column: 15, scope: !4159)
!4162 = !DILocation(line: 102, column: 18, scope: !4159)
!4163 = !DILocation(line: 102, column: 24, scope: !4159)
!4164 = !DILocation(line: 102, column: 6, scope: !4132)
!4165 = !DILocation(line: 103, column: 3, scope: !4159)
!4166 = !DILocation(line: 105, column: 8, scope: !4132)
!4167 = !DILocation(line: 105, column: 6, scope: !4132)
!4168 = !DILocation(line: 106, column: 6, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4132, file: !9, line: 106, column: 6)
!4170 = !DILocation(line: 106, column: 6, scope: !4132)
!4171 = !DILocation(line: 107, column: 10, scope: !4169)
!4172 = !DILocation(line: 107, column: 3, scope: !4169)
!4173 = !DILocation(line: 110, column: 15, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4132, file: !9, line: 110, column: 6)
!4175 = !DILocation(line: 110, column: 24, scope: !4174)
!4176 = !DILocation(line: 110, column: 23, scope: !4174)
!4177 = !DILocation(line: 110, column: 21, scope: !4174)
!4178 = !DILocation(line: 110, column: 6, scope: !4132)
!4179 = !DILocation(line: 111, column: 3, scope: !4174)
!4180 = !DILocation(line: 113, column: 20, scope: !4132)
!4181 = !DILocation(line: 113, column: 2, scope: !4132)
!4182 = !DILocation(line: 116, column: 10, scope: !4132)
!4183 = !DILocation(line: 116, column: 15, scope: !4132)
!4184 = !DILocation(line: 116, column: 24, scope: !4132)
!4185 = !DILocation(line: 116, column: 2, scope: !4132)
!4186 = !DILocation(line: 119, column: 2, scope: !4132)
!4187 = !DILocation(line: 119, column: 2, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4132, file: !9, line: 119, column: 2)
!4189 = !DILocation(line: 120, column: 6, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4132, file: !9, line: 120, column: 6)
!4191 = !DILocation(line: 120, column: 6, scope: !4132)
!4192 = !DILocation(line: 121, column: 11, scope: !4190)
!4193 = !DILocation(line: 121, column: 16, scope: !4190)
!4194 = !DILocation(line: 121, column: 25, scope: !4190)
!4195 = !DILocation(line: 121, column: 37, scope: !4190)
!4196 = !DILocation(line: 121, column: 3, scope: !4190)
!4197 = !DILocation(line: 124, column: 6, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4132, file: !9, line: 124, column: 6)
!4199 = !DILocation(line: 124, column: 6, scope: !4132)
!4200 = !DILocation(line: 125, column: 3, scope: !4198)
!4201 = !DILocation(line: 125, column: 8, scope: !4198)
!4202 = !DILocation(line: 125, column: 17, scope: !4198)
!4203 = !DILocation(line: 125, column: 28, scope: !4198)
!4204 = !DILocation(line: 125, column: 35, scope: !4198)
!4205 = !DILocation(line: 125, column: 45, scope: !4198)
!4206 = !DILocation(line: 127, column: 2, scope: !4132)
!4207 = !DILocation(line: 128, column: 1, scope: !4132)
!4208 = distinct !DISubprogram(name: "user_regset_copyin", scope: !2, file: !2, line: 253, type: !4209, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4212)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!127, !1933, !1933, !4211, !4211, !150, !2047, !2047}
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!4212 = !{!4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4223, !4225}
!4213 = !DILocalVariable(name: "pos", arg: 1, scope: !4208, file: !2, line: 253, type: !1933)
!4214 = !DILocalVariable(name: "count", arg: 2, scope: !4208, file: !2, line: 253, type: !1933)
!4215 = !DILocalVariable(name: "kbuf", arg: 3, scope: !4208, file: !2, line: 254, type: !4211)
!4216 = !DILocalVariable(name: "ubuf", arg: 4, scope: !4208, file: !2, line: 255, type: !4211)
!4217 = !DILocalVariable(name: "data", arg: 5, scope: !4208, file: !2, line: 255, type: !150)
!4218 = !DILocalVariable(name: "start_pos", arg: 6, scope: !4208, file: !2, line: 256, type: !2047)
!4219 = !DILocalVariable(name: "end_pos", arg: 7, scope: !4208, file: !2, line: 256, type: !2047)
!4220 = !DILocalVariable(name: "copy", scope: !4221, file: !2, line: 262, type: !23)
!4221 = distinct !DILexicalBlock(scope: !4222, file: !2, line: 261, column: 37)
!4222 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 261, column: 6)
!4223 = !DILocalVariable(name: "__UNIQUE_ID___x249", scope: !4224, file: !2, line: 263, type: !23)
!4224 = distinct !DILexicalBlock(scope: !4221, file: !2, line: 263, column: 12)
!4225 = !DILocalVariable(name: "__UNIQUE_ID___y250", scope: !4224, file: !2, line: 263, type: !23)
!4226 = !DILocation(line: 253, column: 52, scope: !4208)
!4227 = !DILocation(line: 253, column: 71, scope: !4208)
!4228 = !DILocation(line: 254, column: 23, scope: !4208)
!4229 = !DILocation(line: 255, column: 30, scope: !4208)
!4230 = !DILocation(line: 255, column: 42, scope: !4208)
!4231 = !DILocation(line: 256, column: 20, scope: !4208)
!4232 = !DILocation(line: 256, column: 41, scope: !4208)
!4233 = !DILocation(line: 258, column: 7, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 258, column: 6)
!4235 = !DILocation(line: 258, column: 6, scope: !4234)
!4236 = !DILocation(line: 258, column: 13, scope: !4234)
!4237 = !DILocation(line: 258, column: 6, scope: !4208)
!4238 = !DILocation(line: 259, column: 3, scope: !4234)
!4239 = !DILocation(line: 260, column: 2, scope: !4208)
!4240 = !DILocation(line: 260, column: 2, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4242, file: !2, line: 260, column: 2)
!4242 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 260, column: 2)
!4243 = !DILocation(line: 260, column: 2, scope: !4242)
!4244 = !DILocation(line: 260, column: 2, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4241, file: !2, line: 260, column: 2)
!4246 = !DILocation(line: 260, column: 2, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4245, file: !2, line: 260, column: 2)
!4248 = !DILocation(line: 260, column: 2, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4245, file: !2, line: 260, column: 2)
!4250 = !{i64 2153554483, i64 2153554512, i64 2153554558, i64 2153554616, i64 2153554670, i64 2153554724, i64 2153554779, i64 2153554810}
!4251 = !DILocation(line: 261, column: 6, scope: !4222)
!4252 = !DILocation(line: 261, column: 14, scope: !4222)
!4253 = !DILocation(line: 261, column: 18, scope: !4222)
!4254 = !DILocation(line: 261, column: 22, scope: !4222)
!4255 = !DILocation(line: 261, column: 21, scope: !4222)
!4256 = !DILocation(line: 261, column: 28, scope: !4222)
!4257 = !DILocation(line: 261, column: 26, scope: !4222)
!4258 = !DILocation(line: 261, column: 6, scope: !4208)
!4259 = !DILocation(line: 262, column: 3, scope: !4221)
!4260 = !DILocation(line: 262, column: 16, scope: !4221)
!4261 = !DILocation(line: 262, column: 24, scope: !4221)
!4262 = !DILocation(line: 262, column: 32, scope: !4221)
!4263 = !DILocation(line: 262, column: 39, scope: !4221)
!4264 = !DILocation(line: 262, column: 38, scope: !4221)
!4265 = !DILocation(line: 263, column: 12, scope: !4224)
!4266 = !DILocation(line: 263, column: 12, scope: !4221)
!4267 = !DILocation(line: 264, column: 12, scope: !4221)
!4268 = !DILocation(line: 264, column: 11, scope: !4221)
!4269 = !DILocation(line: 264, column: 18, scope: !4221)
!4270 = !DILocation(line: 264, column: 16, scope: !4221)
!4271 = !DILocation(line: 264, column: 8, scope: !4221)
!4272 = !DILocation(line: 265, column: 8, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4221, file: !2, line: 265, column: 7)
!4274 = !DILocation(line: 265, column: 7, scope: !4273)
!4275 = !DILocation(line: 265, column: 7, scope: !4221)
!4276 = !DILocation(line: 266, column: 11, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4273, file: !2, line: 265, column: 14)
!4278 = !DILocation(line: 266, column: 18, scope: !4277)
!4279 = !DILocation(line: 266, column: 17, scope: !4277)
!4280 = !DILocation(line: 266, column: 24, scope: !4277)
!4281 = !DILocation(line: 266, column: 4, scope: !4277)
!4282 = !DILocation(line: 267, column: 13, scope: !4277)
!4283 = !DILocation(line: 267, column: 5, scope: !4277)
!4284 = !DILocation(line: 267, column: 10, scope: !4277)
!4285 = !DILocation(line: 268, column: 3, scope: !4277)
!4286 = !DILocation(line: 268, column: 31, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4273, file: !2, line: 268, column: 14)
!4288 = !DILocation(line: 268, column: 38, scope: !4287)
!4289 = !DILocation(line: 268, column: 37, scope: !4287)
!4290 = !DILocation(line: 268, column: 44, scope: !4287)
!4291 = !DILocation(line: 268, column: 14, scope: !4287)
!4292 = !DILocation(line: 268, column: 14, scope: !4273)
!4293 = !DILocation(line: 269, column: 4, scope: !4287)
!4294 = !DILocation(line: 271, column: 13, scope: !4287)
!4295 = !DILocation(line: 271, column: 5, scope: !4287)
!4296 = !DILocation(line: 271, column: 10, scope: !4287)
!4297 = !DILocation(line: 272, column: 11, scope: !4221)
!4298 = !DILocation(line: 272, column: 4, scope: !4221)
!4299 = !DILocation(line: 272, column: 8, scope: !4221)
!4300 = !DILocation(line: 273, column: 13, scope: !4221)
!4301 = !DILocation(line: 273, column: 4, scope: !4221)
!4302 = !DILocation(line: 273, column: 10, scope: !4221)
!4303 = !DILocation(line: 274, column: 2, scope: !4222)
!4304 = !DILocation(line: 274, column: 2, scope: !4221)
!4305 = !DILocation(line: 275, column: 2, scope: !4208)
!4306 = !DILocation(line: 276, column: 1, scope: !4208)
!4307 = distinct !DISubprogram(name: "fpu_force_restore", scope: !9, file: !9, line: 60, type: !4067, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4308)
!4308 = !{!4309, !4310, !4312}
!4309 = !DILocalVariable(name: "fpu", arg: 1, scope: !4307, file: !9, line: 60, type: !4042)
!4310 = !DILocalVariable(name: "__ret_warn_on", scope: !4311, file: !9, line: 66, type: !127)
!4311 = distinct !DILexicalBlock(scope: !4307, file: !9, line: 66, column: 2)
!4312 = !DILocalVariable(name: "__flags", scope: !4313, file: !9, line: 66, type: !127)
!4313 = distinct !DILexicalBlock(scope: !4314, file: !9, line: 66, column: 2)
!4314 = distinct !DILexicalBlock(scope: !4311, file: !9, line: 66, column: 2)
!4315 = !DILocation(line: 60, column: 43, scope: !4307)
!4316 = !DILocation(line: 66, column: 2, scope: !4311)
!4317 = !DILocation(line: 66, column: 2, scope: !4314)
!4318 = !DILocation(line: 66, column: 2, scope: !4313)
!4319 = !DILocation(line: 66, column: 2, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4313, file: !9, line: 66, column: 2)
!4321 = !DILocation(line: 66, column: 2, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4313, file: !9, line: 66, column: 2)
!4323 = !{i64 2154913595, i64 2154913624, i64 2154913670, i64 2154913728, i64 2154913782, i64 2154913836, i64 2154913891, i64 2154913922, i64 2154914230, i64 2154914236, i64 2154914283, i64 2154914306, i64 2154914332}
!4324 = !DILocation(line: 66, column: 2, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4313, file: !9, line: 66, column: 2)
!4326 = !DILocation(line: 66, column: 2, scope: !4307)
!4327 = !DILocation(line: 68, column: 32, scope: !4307)
!4328 = !DILocation(line: 68, column: 2, scope: !4307)
!4329 = !DILocation(line: 69, column: 1, scope: !4307)
!4330 = distinct !DISubprogram(name: "get_current", scope: !4331, file: !4331, line: 39, type: !4332, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4334)
!4331 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!152}
!4334 = !{!4335, !4337, !4339}
!4335 = !DILocalVariable(name: "pscr_ret__", scope: !4336, file: !4331, line: 41, type: !152)
!4336 = distinct !DILexicalBlock(scope: !4330, file: !4331, line: 41, column: 9)
!4337 = !DILocalVariable(name: "__vpp_verify", scope: !4338, file: !4331, line: 41, type: !1687)
!4338 = distinct !DILexicalBlock(scope: !4336, file: !4331, line: 41, column: 9)
!4339 = !DILocalVariable(name: "pfo_val__", scope: !4340, file: !4331, line: 41, type: !217)
!4340 = distinct !DILexicalBlock(scope: !4336, file: !4331, line: 41, column: 9)
!4341 = !DILocation(line: 41, column: 9, scope: !4336)
!4342 = !DILocation(line: 41, column: 9, scope: !4338)
!4343 = !DILocation(line: 41, column: 9, scope: !4340)
!4344 = !{i64 2148204460}
!4345 = !DILocation(line: 41, column: 9, scope: !4330)
!4346 = !DILocation(line: 41, column: 2, scope: !4330)
!4347 = distinct !DISubprogram(name: "xstateregs_get", scope: !9, file: !9, line: 130, type: !3994, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4348)
!4348 = !{!4349, !4350, !4351}
!4349 = !DILocalVariable(name: "target", arg: 1, scope: !4347, file: !9, line: 130, type: !152)
!4350 = !DILocalVariable(name: "regset", arg: 2, scope: !4347, file: !9, line: 130, type: !3987)
!4351 = !DILocalVariable(name: "to", arg: 3, scope: !4347, file: !9, line: 131, type: !3996)
!4352 = !DILocation(line: 130, column: 40, scope: !4347)
!4353 = !DILocation(line: 130, column: 74, scope: !4347)
!4354 = !DILocation(line: 131, column: 17, scope: !4347)
!4355 = !DILocation(line: 133, column: 6, scope: !4347)
!4356 = !DILocation(line: 133, column: 7, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4347, file: !9, line: 133, column: 6)
!4358 = !DILocation(line: 134, column: 3, scope: !4357)
!4359 = !DILocation(line: 136, column: 16, scope: !4347)
!4360 = !DILocation(line: 136, column: 24, scope: !4347)
!4361 = !DILocation(line: 136, column: 31, scope: !4347)
!4362 = !DILocation(line: 136, column: 2, scope: !4347)
!4363 = !DILocation(line: 138, column: 30, scope: !4347)
!4364 = !DILocation(line: 138, column: 2, scope: !4347)
!4365 = !DILocation(line: 139, column: 2, scope: !4347)
!4366 = !DILocation(line: 140, column: 1, scope: !4347)
!4367 = distinct !DISubprogram(name: "arch_test_bit", scope: !4368, file: !4368, line: 237, type: !4369, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4374)
!4368 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!759, !119, !4371}
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4373)
!4373 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !119)
!4374 = !{!4375, !4376}
!4375 = !DILocalVariable(name: "nr", arg: 1, scope: !4367, file: !4368, line: 237, type: !119)
!4376 = !DILocalVariable(name: "addr", arg: 2, scope: !4367, file: !4368, line: 237, type: !4371)
!4377 = !DILocation(line: 237, column: 29, scope: !4367)
!4378 = !DILocation(line: 237, column: 63, scope: !4367)
!4379 = !DILocation(line: 239, column: 30, scope: !4367)
!4380 = !DILocation(line: 239, column: 9, scope: !4367)
!4381 = !DILocation(line: 239, column: 54, scope: !4367)
!4382 = !DILocation(line: 239, column: 58, scope: !4367)
!4383 = !DILocation(line: 239, column: 36, scope: !4367)
!4384 = !DILocation(line: 240, column: 26, scope: !4367)
!4385 = !DILocation(line: 240, column: 30, scope: !4367)
!4386 = !DILocation(line: 240, column: 8, scope: !4367)
!4387 = !DILocation(line: 239, column: 2, scope: !4367)
!4388 = distinct !DISubprogram(name: "_static_cpu_has", scope: !4389, file: !4389, line: 173, type: !4390, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4392)
!4389 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!759, !149}
!4392 = !{!4393, !4394, !4395}
!4393 = !DILocalVariable(name: "bit", arg: 1, scope: !4388, file: !4389, line: 173, type: !149)
!4394 = !DILabel(scope: !4388, name: "t_yes", file: !4389, line: 187)
!4395 = !DILabel(scope: !4388, name: "t_no", file: !4389, line: 189)
!4396 = !DILocation(line: 173, column: 49, scope: !4388)
!4397 = !DILocation(line: 183, column: 24, scope: !4388)
!4398 = !DILocation(line: 184, column: 30, scope: !4388)
!4399 = !DILocation(line: 184, column: 34, scope: !4388)
!4400 = !DILocation(line: 184, column: 26, scope: !4388)
!4401 = !DILocation(line: 185, column: 70, scope: !4388)
!4402 = !DILocation(line: 185, column: 74, scope: !4388)
!4403 = !DILocation(line: 185, column: 25, scope: !4388)
!4404 = !DILocation(line: 175, column: 2, scope: !4388)
!4405 = !{i64 2149580276, i64 2149580309, i64 2149580315, i64 2149580331, i64 2149580350, i64 2149580381, i64 2149581334, i64 2149579923, i64 2149581340, i64 2149581388, i64 2149581452, i64 2149581516, i64 2149581573, i64 2149581780, i64 2149581828, i64 2149581892, i64 2149581956, i64 2149582013, i64 2149580041, i64 2149580066, i64 2149582223, i64 2149582351, i64 2149582284, i64 2149582365, i64 2149582379, i64 2149582495, i64 2149582440, i64 2149582509, i64 2149580200, i64 1707021, i64 1707061, i64 1707070, i64 1707120, i64 1707141, i64 1707161}
!4406 = !DILocation(line: 187, column: 1, scope: !4388)
!4407 = !DILocation(line: 188, column: 2, scope: !4388)
!4408 = !DILocation(line: 189, column: 1, scope: !4388)
!4409 = !DILocation(line: 190, column: 2, scope: !4388)
!4410 = !DILocation(line: 191, column: 1, scope: !4388)
!4411 = distinct !DISubprogram(name: "xstateregs_set", scope: !9, file: !9, line: 142, type: !4003, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4412)
!4412 = !{!4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4422, !4423}
!4413 = !DILocalVariable(name: "target", arg: 1, scope: !4411, file: !9, line: 142, type: !152)
!4414 = !DILocalVariable(name: "regset", arg: 2, scope: !4411, file: !9, line: 142, type: !3987)
!4415 = !DILocalVariable(name: "pos", arg: 3, scope: !4411, file: !9, line: 143, type: !23)
!4416 = !DILocalVariable(name: "count", arg: 4, scope: !4411, file: !9, line: 143, type: !23)
!4417 = !DILocalVariable(name: "kbuf", arg: 5, scope: !4411, file: !9, line: 144, type: !1687)
!4418 = !DILocalVariable(name: "ubuf", arg: 6, scope: !4411, file: !9, line: 144, type: !1687)
!4419 = !DILocalVariable(name: "fpu", scope: !4411, file: !9, line: 146, type: !4042)
!4420 = !DILocalVariable(name: "tmpbuf", scope: !4411, file: !9, line: 147, type: !4421)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!4422 = !DILocalVariable(name: "ret", scope: !4411, file: !9, line: 148, type: !127)
!4423 = !DILabel(scope: !4411, name: "out", file: !9, line: 173)
!4424 = !DILocation(line: 142, column: 40, scope: !4411)
!4425 = !DILocation(line: 142, column: 74, scope: !4411)
!4426 = !DILocation(line: 143, column: 18, scope: !4411)
!4427 = !DILocation(line: 143, column: 36, scope: !4411)
!4428 = !DILocation(line: 144, column: 17, scope: !4411)
!4429 = !DILocation(line: 144, column: 42, scope: !4411)
!4430 = !DILocation(line: 146, column: 2, scope: !4411)
!4431 = !DILocation(line: 146, column: 14, scope: !4411)
!4432 = !DILocation(line: 146, column: 21, scope: !4411)
!4433 = !DILocation(line: 146, column: 29, scope: !4411)
!4434 = !DILocation(line: 146, column: 36, scope: !4411)
!4435 = !DILocation(line: 147, column: 2, scope: !4411)
!4436 = !DILocation(line: 147, column: 22, scope: !4411)
!4437 = !DILocation(line: 148, column: 2, scope: !4411)
!4438 = !DILocation(line: 148, column: 6, scope: !4411)
!4439 = !DILocation(line: 150, column: 6, scope: !4411)
!4440 = !DILocation(line: 150, column: 7, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4411, file: !9, line: 150, column: 6)
!4442 = !DILocation(line: 151, column: 3, scope: !4441)
!4443 = !DILocation(line: 156, column: 6, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4411, file: !9, line: 156, column: 6)
!4445 = !DILocation(line: 156, column: 10, scope: !4444)
!4446 = !DILocation(line: 156, column: 15, scope: !4444)
!4447 = !DILocation(line: 156, column: 18, scope: !4444)
!4448 = !DILocation(line: 156, column: 40, scope: !4444)
!4449 = !DILocation(line: 156, column: 24, scope: !4444)
!4450 = !DILocation(line: 156, column: 6, scope: !4411)
!4451 = !DILocation(line: 157, column: 3, scope: !4444)
!4452 = !DILocation(line: 159, column: 7, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4411, file: !9, line: 159, column: 6)
!4454 = !DILocation(line: 159, column: 6, scope: !4411)
!4455 = !DILocation(line: 160, column: 20, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4453, file: !9, line: 159, column: 13)
!4457 = !DILocation(line: 160, column: 12, scope: !4456)
!4458 = !DILocation(line: 160, column: 10, scope: !4456)
!4459 = !DILocation(line: 161, column: 8, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4456, file: !9, line: 161, column: 7)
!4461 = !DILocation(line: 161, column: 7, scope: !4456)
!4462 = !DILocation(line: 162, column: 4, scope: !4460)
!4463 = !DILocation(line: 164, column: 22, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4456, file: !9, line: 164, column: 7)
!4465 = !DILocation(line: 164, column: 30, scope: !4464)
!4466 = !DILocation(line: 164, column: 36, scope: !4464)
!4467 = !DILocation(line: 164, column: 7, scope: !4464)
!4468 = !DILocation(line: 164, column: 7, scope: !4456)
!4469 = !DILocation(line: 165, column: 8, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4464, file: !9, line: 164, column: 44)
!4471 = !DILocation(line: 166, column: 4, scope: !4470)
!4472 = !DILocation(line: 168, column: 2, scope: !4456)
!4473 = !DILocation(line: 170, column: 20, scope: !4411)
!4474 = !DILocation(line: 170, column: 2, scope: !4411)
!4475 = !DILocation(line: 171, column: 40, scope: !4411)
!4476 = !DILocation(line: 171, column: 45, scope: !4411)
!4477 = !DILocation(line: 171, column: 54, scope: !4411)
!4478 = !DILocation(line: 171, column: 62, scope: !4411)
!4479 = !DILocation(line: 171, column: 71, scope: !4411)
!4480 = !DILocation(line: 171, column: 79, scope: !4411)
!4481 = !DILocation(line: 171, column: 86, scope: !4411)
!4482 = !DILocation(line: 171, column: 8, scope: !4411)
!4483 = !DILocation(line: 171, column: 6, scope: !4411)
!4484 = !DILocation(line: 171, column: 2, scope: !4411)
!4485 = !DILocation(line: 173, column: 1, scope: !4411)
!4486 = !DILocation(line: 174, column: 8, scope: !4411)
!4487 = !DILocation(line: 174, column: 2, scope: !4411)
!4488 = !DILocation(line: 175, column: 9, scope: !4411)
!4489 = !DILocation(line: 175, column: 2, scope: !4411)
!4490 = !DILocation(line: 176, column: 1, scope: !4411)
!4491 = !DISubprogram(name: "vmalloc", scope: !3725, file: !3725, line: 140, type: !4492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!150, !119}
!4494 = distinct !DISubprogram(name: "copy_from_user", scope: !4495, file: !4495, line: 180, type: !4496, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4498)
!4495 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!119, !150, !1687, !119}
!4498 = !{!4499, !4500, !4501}
!4499 = !DILocalVariable(name: "to", arg: 1, scope: !4494, file: !4495, line: 180, type: !150)
!4500 = !DILocalVariable(name: "from", arg: 2, scope: !4494, file: !4495, line: 180, type: !1687)
!4501 = !DILocalVariable(name: "n", arg: 3, scope: !4494, file: !4495, line: 180, type: !119)
!4502 = !DILocation(line: 180, column: 22, scope: !4494)
!4503 = !DILocation(line: 180, column: 45, scope: !4494)
!4504 = !DILocation(line: 180, column: 65, scope: !4494)
!4505 = !DILocation(line: 182, column: 22, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4494, file: !4495, line: 182, column: 6)
!4507 = !DILocation(line: 182, column: 26, scope: !4506)
!4508 = !DILocation(line: 182, column: 6, scope: !4506)
!4509 = !DILocation(line: 182, column: 6, scope: !4494)
!4510 = !DILocation(line: 183, column: 23, scope: !4506)
!4511 = !DILocation(line: 183, column: 27, scope: !4506)
!4512 = !DILocation(line: 183, column: 33, scope: !4506)
!4513 = !DILocation(line: 183, column: 7, scope: !4506)
!4514 = !DILocation(line: 183, column: 5, scope: !4506)
!4515 = !DILocation(line: 183, column: 3, scope: !4506)
!4516 = !DILocation(line: 184, column: 9, scope: !4494)
!4517 = !DILocation(line: 184, column: 2, scope: !4494)
!4518 = !DISubprogram(name: "copy_uabi_from_kernel_to_xstate", scope: !80, file: !80, line: 50, type: !4519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!127, !3803, !1687, !3099}
!4521 = !DISubprogram(name: "vfree", scope: !3725, file: !3725, line: 161, type: !4522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{null, !1687}
!4524 = distinct !DISubprogram(name: "convert_from_fxsr", scope: !9, file: !9, line: 369, type: !4525, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4539)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{null, !4527, !152}
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_i387_ia32_struct", file: !4529, line: 8, size: 864, elements: !4530)
!4529 = !DIFile(filename: "./arch/x86/include/asm/user32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d24615e6a7dd7f30d3c67f7cc47fb8bf")
!4530 = !{!4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4528, file: !4529, line: 9, baseType: !122, size: 32)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4528, file: !4529, line: 10, baseType: !122, size: 32, offset: 32)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4528, file: !4529, line: 11, baseType: !122, size: 32, offset: 64)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4528, file: !4529, line: 12, baseType: !122, size: 32, offset: 96)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4528, file: !4529, line: 13, baseType: !122, size: 32, offset: 128)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4528, file: !4529, line: 14, baseType: !122, size: 32, offset: 160)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4528, file: !4529, line: 15, baseType: !122, size: 32, offset: 192)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4528, file: !4529, line: 16, baseType: !3829, size: 640, offset: 224)
!4539 = !{!4540, !4541}
!4540 = !DILocalVariable(name: "env", arg: 1, scope: !4524, file: !9, line: 369, type: !4527)
!4541 = !DILocalVariable(name: "tsk", arg: 2, scope: !4524, file: !9, line: 369, type: !152)
!4542 = !DILocation(line: 369, column: 49, scope: !4524)
!4543 = !DILocation(line: 369, column: 74, scope: !4524)
!4544 = !DILocation(line: 371, column: 22, scope: !4524)
!4545 = !DILocation(line: 371, column: 27, scope: !4524)
!4546 = !DILocation(line: 371, column: 33, scope: !4524)
!4547 = !DILocation(line: 371, column: 38, scope: !4524)
!4548 = !DILocation(line: 371, column: 45, scope: !4524)
!4549 = !DILocation(line: 371, column: 49, scope: !4524)
!4550 = !DILocation(line: 371, column: 58, scope: !4524)
!4551 = !DILocation(line: 371, column: 2, scope: !4524)
!4552 = !DILocation(line: 372, column: 1, scope: !4524)
!4553 = distinct !DISubprogram(name: "__convert_from_fxsr", scope: !9, file: !9, line: 331, type: !4554, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4557)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{null, !4527, !152, !4556}
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!4557 = !{!4558, !4559, !4560, !4561, !4562, !4563, !4564}
!4558 = !DILocalVariable(name: "env", arg: 1, scope: !4553, file: !9, line: 331, type: !4527)
!4559 = !DILocalVariable(name: "tsk", arg: 2, scope: !4553, file: !9, line: 332, type: !152)
!4560 = !DILocalVariable(name: "fxsave", arg: 3, scope: !4553, file: !9, line: 333, type: !4556)
!4561 = !DILocalVariable(name: "to", scope: !4553, file: !9, line: 335, type: !129)
!4562 = !DILocalVariable(name: "from", scope: !4553, file: !9, line: 336, type: !140)
!4563 = !DILocalVariable(name: "i", scope: !4553, file: !9, line: 337, type: !127)
!4564 = !DILocalVariable(name: "__ptr", scope: !4565, file: !9, line: 350, type: !119)
!4565 = distinct !DILexicalBlock(scope: !4553, file: !9, line: 350, column: 13)
!4566 = !DILocation(line: 331, column: 63, scope: !4553)
!4567 = !DILocation(line: 332, column: 25, scope: !4553)
!4568 = !DILocation(line: 333, column: 26, scope: !4553)
!4569 = !DILocation(line: 335, column: 2, scope: !4553)
!4570 = !DILocation(line: 335, column: 17, scope: !4553)
!4571 = !DILocation(line: 335, column: 41, scope: !4553)
!4572 = !DILocation(line: 335, column: 46, scope: !4553)
!4573 = !DILocation(line: 336, column: 2, scope: !4553)
!4574 = !DILocation(line: 336, column: 18, scope: !4553)
!4575 = !DILocation(line: 336, column: 45, scope: !4553)
!4576 = !DILocation(line: 336, column: 53, scope: !4553)
!4577 = !DILocation(line: 337, column: 2, scope: !4553)
!4578 = !DILocation(line: 337, column: 6, scope: !4553)
!4579 = !DILocation(line: 339, column: 13, scope: !4553)
!4580 = !DILocation(line: 339, column: 21, scope: !4553)
!4581 = !DILocation(line: 339, column: 25, scope: !4553)
!4582 = !DILocation(line: 339, column: 2, scope: !4553)
!4583 = !DILocation(line: 339, column: 7, scope: !4553)
!4584 = !DILocation(line: 339, column: 11, scope: !4553)
!4585 = !DILocation(line: 340, column: 13, scope: !4553)
!4586 = !DILocation(line: 340, column: 21, scope: !4553)
!4587 = !DILocation(line: 340, column: 25, scope: !4553)
!4588 = !DILocation(line: 340, column: 2, scope: !4553)
!4589 = !DILocation(line: 340, column: 7, scope: !4553)
!4590 = !DILocation(line: 340, column: 11, scope: !4553)
!4591 = !DILocation(line: 341, column: 30, scope: !4553)
!4592 = !DILocation(line: 341, column: 13, scope: !4553)
!4593 = !DILocation(line: 341, column: 2, scope: !4553)
!4594 = !DILocation(line: 341, column: 7, scope: !4553)
!4595 = !DILocation(line: 341, column: 11, scope: !4553)
!4596 = !DILocation(line: 344, column: 13, scope: !4553)
!4597 = !DILocation(line: 344, column: 21, scope: !4553)
!4598 = !DILocation(line: 344, column: 2, scope: !4553)
!4599 = !DILocation(line: 344, column: 7, scope: !4553)
!4600 = !DILocation(line: 344, column: 11, scope: !4553)
!4601 = !DILocation(line: 345, column: 13, scope: !4553)
!4602 = !DILocation(line: 345, column: 21, scope: !4553)
!4603 = !DILocation(line: 345, column: 2, scope: !4553)
!4604 = !DILocation(line: 345, column: 7, scope: !4553)
!4605 = !DILocation(line: 345, column: 11, scope: !4553)
!4606 = !DILocation(line: 350, column: 13, scope: !4565)
!4607 = !DILocation(line: 350, column: 13, scope: !4553)
!4608 = !DILocation(line: 350, column: 32, scope: !4553)
!4609 = !DILocation(line: 350, column: 2, scope: !4553)
!4610 = !DILocation(line: 350, column: 7, scope: !4553)
!4611 = !DILocation(line: 350, column: 11, scope: !4553)
!4612 = !DILocation(line: 351, column: 6, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4553, file: !9, line: 351, column: 6)
!4614 = !DILocation(line: 351, column: 13, scope: !4613)
!4615 = !DILocation(line: 351, column: 10, scope: !4613)
!4616 = !DILocation(line: 351, column: 6, scope: !4553)
!4617 = !DILocation(line: 352, column: 3, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4613, file: !9, line: 351, column: 22)
!4619 = !{i64 2154990825}
!4620 = !DILocation(line: 353, column: 2, scope: !4618)
!4621 = !DILocation(line: 354, column: 14, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4613, file: !9, line: 353, column: 9)
!4623 = !DILocation(line: 354, column: 19, scope: !4622)
!4624 = !DILocation(line: 354, column: 26, scope: !4622)
!4625 = !DILocation(line: 354, column: 3, scope: !4622)
!4626 = !DILocation(line: 354, column: 8, scope: !4622)
!4627 = !DILocation(line: 354, column: 12, scope: !4622)
!4628 = !DILocation(line: 356, column: 2, scope: !4553)
!4629 = !DILocation(line: 356, column: 7, scope: !4553)
!4630 = !DILocation(line: 356, column: 11, scope: !4553)
!4631 = !DILocation(line: 364, column: 9, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4553, file: !9, line: 364, column: 2)
!4633 = !DILocation(line: 364, column: 7, scope: !4632)
!4634 = !DILocation(line: 364, column: 14, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4632, file: !9, line: 364, column: 2)
!4636 = !DILocation(line: 364, column: 16, scope: !4635)
!4637 = !DILocation(line: 364, column: 2, scope: !4632)
!4638 = !DILocation(line: 365, column: 11, scope: !4635)
!4639 = !DILocation(line: 365, column: 14, scope: !4635)
!4640 = !DILocation(line: 365, column: 19, scope: !4635)
!4641 = !DILocation(line: 365, column: 24, scope: !4635)
!4642 = !DILocation(line: 365, column: 3, scope: !4635)
!4643 = !DILocation(line: 364, column: 21, scope: !4635)
!4644 = !DILocation(line: 364, column: 2, scope: !4635)
!4645 = distinct !{!4645, !4637, !4646, !4647, !4648}
!4646 = !DILocation(line: 365, column: 41, scope: !4632)
!4647 = !{!"llvm.loop.mustprogress"}
!4648 = !{!"llvm.loop.unroll.disable"}
!4649 = !DILocation(line: 366, column: 1, scope: !4553)
!4650 = distinct !DISubprogram(name: "convert_to_fxsr", scope: !9, file: !9, line: 374, type: !4651, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4655)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{null, !4556, !4653}
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4528)
!4655 = !{!4656, !4657, !4658, !4659, !4660}
!4656 = !DILocalVariable(name: "fxsave", arg: 1, scope: !4650, file: !9, line: 374, type: !4556)
!4657 = !DILocalVariable(name: "env", arg: 2, scope: !4650, file: !9, line: 375, type: !4653)
!4658 = !DILocalVariable(name: "from", scope: !4650, file: !9, line: 378, type: !129)
!4659 = !DILocalVariable(name: "to", scope: !4650, file: !9, line: 379, type: !140)
!4660 = !DILocalVariable(name: "i", scope: !4650, file: !9, line: 380, type: !127)
!4661 = !DILocation(line: 374, column: 43, scope: !4650)
!4662 = !DILocation(line: 375, column: 44, scope: !4650)
!4663 = !DILocation(line: 378, column: 2, scope: !4650)
!4664 = !DILocation(line: 378, column: 17, scope: !4650)
!4665 = !DILocation(line: 378, column: 43, scope: !4650)
!4666 = !DILocation(line: 378, column: 48, scope: !4650)
!4667 = !DILocation(line: 379, column: 2, scope: !4650)
!4668 = !DILocation(line: 379, column: 18, scope: !4650)
!4669 = !DILocation(line: 379, column: 43, scope: !4650)
!4670 = !DILocation(line: 379, column: 51, scope: !4650)
!4671 = !DILocation(line: 380, column: 2, scope: !4650)
!4672 = !DILocation(line: 380, column: 6, scope: !4650)
!4673 = !DILocation(line: 382, column: 16, scope: !4650)
!4674 = !DILocation(line: 382, column: 21, scope: !4650)
!4675 = !DILocation(line: 382, column: 2, scope: !4650)
!4676 = !DILocation(line: 382, column: 10, scope: !4650)
!4677 = !DILocation(line: 382, column: 14, scope: !4650)
!4678 = !DILocation(line: 383, column: 16, scope: !4650)
!4679 = !DILocation(line: 383, column: 21, scope: !4650)
!4680 = !DILocation(line: 383, column: 2, scope: !4650)
!4681 = !DILocation(line: 383, column: 10, scope: !4650)
!4682 = !DILocation(line: 383, column: 14, scope: !4650)
!4683 = !DILocation(line: 384, column: 33, scope: !4650)
!4684 = !DILocation(line: 384, column: 38, scope: !4650)
!4685 = !DILocation(line: 384, column: 16, scope: !4650)
!4686 = !DILocation(line: 384, column: 2, scope: !4650)
!4687 = !DILocation(line: 384, column: 10, scope: !4650)
!4688 = !DILocation(line: 384, column: 14, scope: !4650)
!4689 = !DILocation(line: 385, column: 29, scope: !4650)
!4690 = !DILocation(line: 385, column: 34, scope: !4650)
!4691 = !DILocation(line: 385, column: 38, scope: !4650)
!4692 = !DILocation(line: 385, column: 16, scope: !4650)
!4693 = !DILocation(line: 385, column: 2, scope: !4650)
!4694 = !DILocation(line: 385, column: 10, scope: !4650)
!4695 = !DILocation(line: 385, column: 14, scope: !4650)
!4696 = !DILocation(line: 387, column: 16, scope: !4650)
!4697 = !DILocation(line: 387, column: 21, scope: !4650)
!4698 = !DILocation(line: 387, column: 2, scope: !4650)
!4699 = !DILocation(line: 387, column: 10, scope: !4650)
!4700 = !DILocation(line: 387, column: 14, scope: !4650)
!4701 = !DILocation(line: 388, column: 16, scope: !4650)
!4702 = !DILocation(line: 388, column: 21, scope: !4650)
!4703 = !DILocation(line: 388, column: 2, scope: !4650)
!4704 = !DILocation(line: 388, column: 10, scope: !4650)
!4705 = !DILocation(line: 388, column: 14, scope: !4650)
!4706 = !DILocation(line: 397, column: 9, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4650, file: !9, line: 397, column: 2)
!4708 = !DILocation(line: 397, column: 7, scope: !4707)
!4709 = !DILocation(line: 397, column: 14, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4707, file: !9, line: 397, column: 2)
!4711 = !DILocation(line: 397, column: 16, scope: !4710)
!4712 = !DILocation(line: 397, column: 2, scope: !4707)
!4713 = !DILocation(line: 398, column: 11, scope: !4710)
!4714 = !DILocation(line: 398, column: 14, scope: !4710)
!4715 = !DILocation(line: 398, column: 19, scope: !4710)
!4716 = !DILocation(line: 398, column: 24, scope: !4710)
!4717 = !DILocation(line: 398, column: 3, scope: !4710)
!4718 = !DILocation(line: 397, column: 21, scope: !4710)
!4719 = !DILocation(line: 397, column: 2, scope: !4710)
!4720 = distinct !{!4720, !4712, !4721, !4647, !4648}
!4721 = !DILocation(line: 398, column: 43, scope: !4707)
!4722 = !DILocation(line: 399, column: 1, scope: !4650)
!4723 = distinct !DISubprogram(name: "twd_i387_to_fxsr", scope: !9, file: !9, line: 265, type: !4724, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4726)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{!136, !136}
!4726 = !{!4727, !4728}
!4727 = !DILocalVariable(name: "twd", arg: 1, scope: !4723, file: !9, line: 265, type: !136)
!4728 = !DILocalVariable(name: "tmp", scope: !4723, file: !9, line: 267, type: !23)
!4729 = !DILocation(line: 265, column: 62, scope: !4723)
!4730 = !DILocation(line: 267, column: 2, scope: !4723)
!4731 = !DILocation(line: 267, column: 15, scope: !4723)
!4732 = !DILocation(line: 270, column: 9, scope: !4723)
!4733 = !DILocation(line: 270, column: 8, scope: !4723)
!4734 = !DILocation(line: 270, column: 6, scope: !4723)
!4735 = !DILocation(line: 271, column: 9, scope: !4723)
!4736 = !DILocation(line: 271, column: 16, scope: !4723)
!4737 = !DILocation(line: 271, column: 19, scope: !4723)
!4738 = !DILocation(line: 271, column: 13, scope: !4723)
!4739 = !DILocation(line: 271, column: 25, scope: !4723)
!4740 = !DILocation(line: 271, column: 6, scope: !4723)
!4741 = !DILocation(line: 273, column: 9, scope: !4723)
!4742 = !DILocation(line: 273, column: 16, scope: !4723)
!4743 = !DILocation(line: 273, column: 20, scope: !4723)
!4744 = !DILocation(line: 273, column: 13, scope: !4723)
!4745 = !DILocation(line: 273, column: 27, scope: !4723)
!4746 = !DILocation(line: 273, column: 6, scope: !4723)
!4747 = !DILocation(line: 274, column: 9, scope: !4723)
!4748 = !DILocation(line: 274, column: 16, scope: !4723)
!4749 = !DILocation(line: 274, column: 20, scope: !4723)
!4750 = !DILocation(line: 274, column: 13, scope: !4723)
!4751 = !DILocation(line: 274, column: 27, scope: !4723)
!4752 = !DILocation(line: 274, column: 6, scope: !4723)
!4753 = !DILocation(line: 275, column: 9, scope: !4723)
!4754 = !DILocation(line: 275, column: 16, scope: !4723)
!4755 = !DILocation(line: 275, column: 20, scope: !4723)
!4756 = !DILocation(line: 275, column: 13, scope: !4723)
!4757 = !DILocation(line: 275, column: 27, scope: !4723)
!4758 = !DILocation(line: 275, column: 6, scope: !4723)
!4759 = !DILocation(line: 277, column: 9, scope: !4723)
!4760 = !DILocation(line: 278, column: 1, scope: !4723)
!4761 = !DILocation(line: 277, column: 2, scope: !4723)
!4762 = distinct !DISubprogram(name: "fpregs_get", scope: !9, file: !9, line: 401, type: !3994, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4763)
!4763 = !{!4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771}
!4764 = !DILocalVariable(name: "target", arg: 1, scope: !4762, file: !9, line: 401, type: !152)
!4765 = !DILocalVariable(name: "regset", arg: 2, scope: !4762, file: !9, line: 401, type: !3987)
!4766 = !DILocalVariable(name: "to", arg: 3, scope: !4762, file: !9, line: 402, type: !3996)
!4767 = !DILocalVariable(name: "fpu", scope: !4762, file: !9, line: 404, type: !4042)
!4768 = !DILocalVariable(name: "env", scope: !4762, file: !9, line: 405, type: !4528)
!4769 = !DILocalVariable(name: "fxsave", scope: !4762, file: !9, line: 406, type: !3834)
!4770 = !DILocalVariable(name: "fx", scope: !4762, file: !9, line: 406, type: !4556)
!4771 = !DILocalVariable(name: "mb", scope: !4772, file: !9, line: 419, type: !3996)
!4772 = distinct !DILexicalBlock(scope: !4773, file: !9, line: 418, column: 19)
!4773 = distinct !DILexicalBlock(scope: !4762, file: !9, line: 418, column: 6)
!4774 = !DILocation(line: 401, column: 36, scope: !4762)
!4775 = !DILocation(line: 401, column: 70, scope: !4762)
!4776 = !DILocation(line: 402, column: 23, scope: !4762)
!4777 = !DILocation(line: 404, column: 2, scope: !4762)
!4778 = !DILocation(line: 404, column: 14, scope: !4762)
!4779 = !DILocation(line: 404, column: 21, scope: !4762)
!4780 = !DILocation(line: 404, column: 29, scope: !4762)
!4781 = !DILocation(line: 404, column: 36, scope: !4762)
!4782 = !DILocation(line: 405, column: 2, scope: !4762)
!4783 = !DILocation(line: 405, column: 31, scope: !4762)
!4784 = !DILocation(line: 406, column: 2, scope: !4762)
!4785 = !DILocation(line: 406, column: 22, scope: !4762)
!4786 = !DILocation(line: 406, column: 31, scope: !4762)
!4787 = !DILocation(line: 408, column: 15, scope: !4762)
!4788 = !DILocation(line: 408, column: 2, scope: !4762)
!4789 = !DILocation(line: 418, column: 6, scope: !4773)
!4790 = !DILocation(line: 418, column: 6, scope: !4762)
!4791 = !DILocation(line: 419, column: 3, scope: !4772)
!4792 = !DILocation(line: 419, column: 17, scope: !4772)
!4793 = !DILocation(line: 419, column: 22, scope: !4772)
!4794 = !DILocation(line: 422, column: 31, scope: !4772)
!4795 = !DILocation(line: 422, column: 3, scope: !4772)
!4796 = !DILocation(line: 423, column: 6, scope: !4772)
!4797 = !DILocation(line: 424, column: 2, scope: !4773)
!4798 = !DILocation(line: 424, column: 2, scope: !4772)
!4799 = !DILocation(line: 425, column: 9, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4773, file: !9, line: 424, column: 9)
!4801 = !DILocation(line: 425, column: 14, scope: !4800)
!4802 = !DILocation(line: 425, column: 23, scope: !4800)
!4803 = !DILocation(line: 425, column: 6, scope: !4800)
!4804 = !DILocation(line: 428, column: 28, scope: !4762)
!4805 = !DILocation(line: 428, column: 36, scope: !4762)
!4806 = !DILocation(line: 428, column: 2, scope: !4762)
!4807 = !DILocation(line: 429, column: 9, scope: !4762)
!4808 = !DILocation(line: 430, column: 1, scope: !4762)
!4809 = !DILocation(line: 429, column: 2, scope: !4762)
!4810 = distinct !DISubprogram(name: "fpregs_set", scope: !9, file: !9, line: 432, type: !4003, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4811)
!4811 = !{!4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820}
!4812 = !DILocalVariable(name: "target", arg: 1, scope: !4810, file: !9, line: 432, type: !152)
!4813 = !DILocalVariable(name: "regset", arg: 2, scope: !4810, file: !9, line: 432, type: !3987)
!4814 = !DILocalVariable(name: "pos", arg: 3, scope: !4810, file: !9, line: 433, type: !23)
!4815 = !DILocalVariable(name: "count", arg: 4, scope: !4810, file: !9, line: 433, type: !23)
!4816 = !DILocalVariable(name: "kbuf", arg: 5, scope: !4810, file: !9, line: 434, type: !1687)
!4817 = !DILocalVariable(name: "ubuf", arg: 6, scope: !4810, file: !9, line: 434, type: !1687)
!4818 = !DILocalVariable(name: "fpu", scope: !4810, file: !9, line: 436, type: !4042)
!4819 = !DILocalVariable(name: "env", scope: !4810, file: !9, line: 437, type: !4528)
!4820 = !DILocalVariable(name: "ret", scope: !4810, file: !9, line: 438, type: !127)
!4821 = !DILocation(line: 432, column: 36, scope: !4810)
!4822 = !DILocation(line: 432, column: 70, scope: !4810)
!4823 = !DILocation(line: 433, column: 22, scope: !4810)
!4824 = !DILocation(line: 433, column: 40, scope: !4810)
!4825 = !DILocation(line: 434, column: 21, scope: !4810)
!4826 = !DILocation(line: 434, column: 46, scope: !4810)
!4827 = !DILocation(line: 436, column: 2, scope: !4810)
!4828 = !DILocation(line: 436, column: 14, scope: !4810)
!4829 = !DILocation(line: 436, column: 21, scope: !4810)
!4830 = !DILocation(line: 436, column: 29, scope: !4810)
!4831 = !DILocation(line: 436, column: 36, scope: !4810)
!4832 = !DILocation(line: 437, column: 2, scope: !4810)
!4833 = !DILocation(line: 437, column: 31, scope: !4810)
!4834 = !DILocation(line: 438, column: 2, scope: !4810)
!4835 = !DILocation(line: 438, column: 6, scope: !4810)
!4836 = !DILocation(line: 441, column: 6, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4810, file: !9, line: 441, column: 6)
!4838 = !DILocation(line: 441, column: 10, scope: !4837)
!4839 = !DILocation(line: 441, column: 15, scope: !4837)
!4840 = !DILocation(line: 441, column: 18, scope: !4837)
!4841 = !DILocation(line: 441, column: 24, scope: !4837)
!4842 = !DILocation(line: 441, column: 6, scope: !4810)
!4843 = !DILocation(line: 442, column: 3, scope: !4837)
!4844 = !DILocation(line: 447, column: 8, scope: !4810)
!4845 = !DILocation(line: 447, column: 6, scope: !4810)
!4846 = !DILocation(line: 448, column: 6, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4810, file: !9, line: 448, column: 6)
!4848 = !DILocation(line: 448, column: 6, scope: !4810)
!4849 = !DILocation(line: 449, column: 10, scope: !4847)
!4850 = !DILocation(line: 449, column: 3, scope: !4847)
!4851 = !DILocation(line: 451, column: 20, scope: !4810)
!4852 = !DILocation(line: 451, column: 2, scope: !4810)
!4853 = !DILocation(line: 454, column: 20, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4810, file: !9, line: 453, column: 6)
!4855 = !DILocation(line: 454, column: 25, scope: !4854)
!4856 = !DILocation(line: 454, column: 34, scope: !4854)
!4857 = !DILocation(line: 454, column: 3, scope: !4854)
!4858 = !DILocation(line: 462, column: 6, scope: !4810)
!4859 = !DILocation(line: 462, column: 6, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4810, file: !9, line: 462, column: 6)
!4861 = !DILocation(line: 463, column: 3, scope: !4860)
!4862 = !DILocation(line: 463, column: 8, scope: !4860)
!4863 = !DILocation(line: 463, column: 17, scope: !4860)
!4864 = !DILocation(line: 463, column: 28, scope: !4860)
!4865 = !DILocation(line: 463, column: 35, scope: !4860)
!4866 = !DILocation(line: 463, column: 45, scope: !4860)
!4867 = !DILocation(line: 465, column: 2, scope: !4810)
!4868 = !DILocation(line: 466, column: 1, scope: !4810)
!4869 = !DISubprogram(name: "fpu_sync_fpstate", scope: !4870, file: !4870, line: 116, type: !4067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4870 = !DIFile(filename: "./arch/x86/include/asm/fpu/api.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "69298eced5ce9b488888ff68abf966e3")
!4871 = distinct !DISubprogram(name: "__copy_from_user", scope: !4495, file: !4495, line: 93, type: !4496, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4872)
!4872 = !{!4873, !4874, !4875, !4876}
!4873 = !DILocalVariable(name: "to", arg: 1, scope: !4871, file: !4495, line: 93, type: !150)
!4874 = !DILocalVariable(name: "from", arg: 2, scope: !4871, file: !4495, line: 93, type: !1687)
!4875 = !DILocalVariable(name: "n", arg: 3, scope: !4871, file: !4495, line: 93, type: !119)
!4876 = !DILocalVariable(name: "res", scope: !4871, file: !4495, line: 95, type: !119)
!4877 = !DILocation(line: 93, column: 24, scope: !4871)
!4878 = !DILocation(line: 93, column: 47, scope: !4871)
!4879 = !DILocation(line: 93, column: 67, scope: !4871)
!4880 = !DILocation(line: 95, column: 2, scope: !4871)
!4881 = !DILocation(line: 95, column: 16, scope: !4871)
!4882 = !DILocation(line: 97, column: 2, scope: !4871)
!4883 = !DILocation(line: 98, column: 35, scope: !4871)
!4884 = !DILocation(line: 98, column: 39, scope: !4871)
!4885 = !DILocation(line: 98, column: 45, scope: !4871)
!4886 = !DILocation(line: 98, column: 2, scope: !4871)
!4887 = !DILocation(line: 99, column: 6, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4871, file: !4495, line: 99, column: 6)
!4889 = !DILocation(line: 99, column: 6, scope: !4871)
!4890 = !DILocation(line: 100, column: 10, scope: !4888)
!4891 = !DILocation(line: 100, column: 3, scope: !4888)
!4892 = !DILocation(line: 101, column: 20, scope: !4871)
!4893 = !DILocation(line: 101, column: 24, scope: !4871)
!4894 = !DILocation(line: 101, column: 2, scope: !4871)
!4895 = !DILocation(line: 102, column: 27, scope: !4871)
!4896 = !DILocation(line: 102, column: 31, scope: !4871)
!4897 = !DILocation(line: 102, column: 37, scope: !4871)
!4898 = !DILocation(line: 102, column: 8, scope: !4871)
!4899 = !DILocation(line: 102, column: 6, scope: !4871)
!4900 = !DILocation(line: 103, column: 34, scope: !4871)
!4901 = !DILocation(line: 103, column: 38, scope: !4871)
!4902 = !DILocation(line: 103, column: 44, scope: !4871)
!4903 = !DILocation(line: 103, column: 47, scope: !4871)
!4904 = !DILocation(line: 103, column: 2, scope: !4871)
!4905 = !DILocation(line: 104, column: 9, scope: !4871)
!4906 = !DILocation(line: 104, column: 2, scope: !4871)
!4907 = !DILocation(line: 105, column: 1, scope: !4871)
!4908 = distinct !DISubprogram(name: "might_fault", scope: !4909, file: !4909, line: 202, type: !2203, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19)
!4909 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!4910 = !DILocation(line: 202, column: 40, scope: !4908)
!4911 = distinct !DISubprogram(name: "instrument_copy_from_user_before", scope: !4912, file: !4912, line: 127, type: !4913, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4915)
!4912 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4913 = !DISubroutineType(types: !4914)
!4914 = !{null, !1687, !1687, !119}
!4915 = !{!4916, !4917, !4918}
!4916 = !DILocalVariable(name: "to", arg: 1, scope: !4911, file: !4912, line: 127, type: !1687)
!4917 = !DILocalVariable(name: "from", arg: 2, scope: !4911, file: !4912, line: 127, type: !1687)
!4918 = !DILocalVariable(name: "n", arg: 3, scope: !4911, file: !4912, line: 127, type: !119)
!4919 = !DILocation(line: 127, column: 46, scope: !4911)
!4920 = !DILocation(line: 127, column: 69, scope: !4911)
!4921 = !DILocation(line: 127, column: 89, scope: !4911)
!4922 = !DILocation(line: 129, column: 20, scope: !4911)
!4923 = !DILocation(line: 129, column: 24, scope: !4911)
!4924 = !DILocation(line: 129, column: 2, scope: !4911)
!4925 = !DILocation(line: 130, column: 2, scope: !4911)
!4926 = !DILocation(line: 131, column: 1, scope: !4911)
!4927 = distinct !DISubprogram(name: "should_fail_usercopy", scope: !4928, file: !4928, line: 18, type: !1677, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19)
!4928 = !DIFile(filename: "./include/linux/fault-inject-usercopy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3c50bc45f7dd45d85340e9f2bf0c47d5")
!4929 = !DILocation(line: 18, column: 49, scope: !4927)
!4930 = distinct !DISubprogram(name: "check_object_size", scope: !15, file: !15, line: 218, type: !4931, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4933)
!4931 = !DISubroutineType(types: !4932)
!4932 = !{null, !1687, !119, !759}
!4933 = !{!4934, !4935, !4936}
!4934 = !DILocalVariable(name: "ptr", arg: 1, scope: !4930, file: !15, line: 218, type: !1687)
!4935 = !DILocalVariable(name: "n", arg: 2, scope: !4930, file: !15, line: 218, type: !119)
!4936 = !DILocalVariable(name: "to_user", arg: 3, scope: !4930, file: !15, line: 219, type: !759)
!4937 = !DILocation(line: 218, column: 50, scope: !4930)
!4938 = !DILocation(line: 218, column: 69, scope: !4930)
!4939 = !DILocation(line: 219, column: 15, scope: !4930)
!4940 = !DILocation(line: 220, column: 3, scope: !4930)
!4941 = distinct !DISubprogram(name: "raw_copy_from_user", scope: !4942, file: !4942, line: 125, type: !4496, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4943)
!4942 = !DIFile(filename: "./arch/x86/include/asm/uaccess_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c63bf78a3e0eae48ab190f2bbecab5d")
!4943 = !{!4944, !4945, !4946}
!4944 = !DILocalVariable(name: "dst", arg: 1, scope: !4941, file: !4942, line: 125, type: !150)
!4945 = !DILocalVariable(name: "src", arg: 2, scope: !4941, file: !4942, line: 125, type: !1687)
!4946 = !DILocalVariable(name: "size", arg: 3, scope: !4941, file: !4942, line: 125, type: !119)
!4947 = !DILocation(line: 125, column: 26, scope: !4941)
!4948 = !DILocation(line: 125, column: 50, scope: !4941)
!4949 = !DILocation(line: 125, column: 69, scope: !4941)
!4950 = !DILocation(line: 127, column: 27, scope: !4941)
!4951 = !DILocation(line: 127, column: 48, scope: !4941)
!4952 = !DILocation(line: 127, column: 53, scope: !4941)
!4953 = !DILocation(line: 127, column: 9, scope: !4941)
!4954 = !DILocation(line: 127, column: 2, scope: !4941)
!4955 = distinct !DISubprogram(name: "instrument_copy_from_user_after", scope: !4912, file: !4912, line: 144, type: !4956, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4958)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{null, !1687, !1687, !119, !119}
!4958 = !{!4959, !4960, !4961, !4962}
!4959 = !DILocalVariable(name: "to", arg: 1, scope: !4955, file: !4912, line: 144, type: !1687)
!4960 = !DILocalVariable(name: "from", arg: 2, scope: !4955, file: !4912, line: 144, type: !1687)
!4961 = !DILocalVariable(name: "n", arg: 3, scope: !4955, file: !4912, line: 145, type: !119)
!4962 = !DILocalVariable(name: "left", arg: 4, scope: !4955, file: !4912, line: 145, type: !119)
!4963 = !DILocation(line: 144, column: 45, scope: !4955)
!4964 = !DILocation(line: 144, column: 68, scope: !4955)
!4965 = !DILocation(line: 145, column: 19, scope: !4955)
!4966 = !DILocation(line: 145, column: 36, scope: !4955)
!4967 = !DILocation(line: 147, column: 24, scope: !4955)
!4968 = !DILocation(line: 147, column: 28, scope: !4955)
!4969 = !DILocation(line: 147, column: 32, scope: !4955)
!4970 = !DILocation(line: 147, column: 30, scope: !4955)
!4971 = !DILocation(line: 147, column: 2, scope: !4955)
!4972 = !DILocation(line: 148, column: 1, scope: !4955)
!4973 = distinct !DISubprogram(name: "kasan_check_write", scope: !4974, file: !4974, line: 44, type: !4975, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4980)
!4974 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4975 = !DISubroutineType(types: !4976)
!4976 = !{!759, !4977, !23}
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4978, size: 64)
!4978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4979)
!4979 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4980 = !{!4981, !4982}
!4981 = !DILocalVariable(name: "p", arg: 1, scope: !4973, file: !4974, line: 44, type: !4977)
!4982 = !DILocalVariable(name: "size", arg: 2, scope: !4973, file: !4974, line: 44, type: !23)
!4983 = !DILocation(line: 44, column: 59, scope: !4973)
!4984 = !DILocation(line: 44, column: 75, scope: !4973)
!4985 = !DILocation(line: 46, column: 2, scope: !4973)
!4986 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4987, file: !4987, line: 229, type: !4988, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4990)
!4987 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4988 = !DISubroutineType(types: !4989)
!4989 = !{null, !4977, !1075, !127}
!4990 = !{!4991, !4992, !4993}
!4991 = !DILocalVariable(name: "ptr", arg: 1, scope: !4986, file: !4987, line: 229, type: !4977)
!4992 = !DILocalVariable(name: "size", arg: 2, scope: !4986, file: !4987, line: 229, type: !1075)
!4993 = !DILocalVariable(name: "type", arg: 3, scope: !4986, file: !4987, line: 230, type: !127)
!4994 = !DILocation(line: 229, column: 60, scope: !4986)
!4995 = !DILocation(line: 229, column: 72, scope: !4986)
!4996 = !DILocation(line: 230, column: 15, scope: !4986)
!4997 = !DILocation(line: 230, column: 23, scope: !4986)
!4998 = distinct !DISubprogram(name: "copy_user_generic", scope: !4942, file: !4942, line: 105, type: !4496, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4999)
!4999 = !{!5000, !5001, !5002}
!5000 = !DILocalVariable(name: "to", arg: 1, scope: !4998, file: !4942, line: 105, type: !150)
!5001 = !DILocalVariable(name: "from", arg: 2, scope: !4998, file: !4942, line: 105, type: !1687)
!5002 = !DILocalVariable(name: "len", arg: 3, scope: !4998, file: !4942, line: 105, type: !119)
!5003 = !DILocation(line: 105, column: 25, scope: !4998)
!5004 = !DILocation(line: 105, column: 41, scope: !4998)
!5005 = !DILocation(line: 105, column: 61, scope: !4998)
!5006 = !DILocation(line: 107, column: 2, scope: !4998)
!5007 = !DILocation(line: 112, column: 2, scope: !4998)
!5008 = !{i64 5555726, i64 5555731, i64 2153042421, i64 2153042427, i64 2153042443, i64 2153042459, i64 2153042486, i64 2153042809, i64 2153042020, i64 2153042815, i64 2153042863, i64 2153042927, i64 2153042991, i64 2153043048, i64 2153042101, i64 2153042126, i64 2153043332, i64 2153043473, i64 2153043393, i64 2153043487, i64 2153042218, i64 5555828, i64 2153043552, i64 2153043596, i64 2153043619, i64 2153043652, i64 2153043683, i64 2153043722}
!5009 = !DILocation(line: 120, column: 2, scope: !4998)
!5010 = !DILocation(line: 121, column: 9, scope: !4998)
!5011 = !DILocation(line: 121, column: 2, scope: !4998)
!5012 = distinct !DISubprogram(name: "stac", scope: !5013, file: !5013, line: 36, type: !2203, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19)
!5013 = !DIFile(filename: "./arch/x86/include/asm/smap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f3f8be6e1b47df7f19894949839b589")
!5014 = !DILocation(line: 39, column: 2, scope: !5012)
!5015 = !{i64 2152548646, i64 2152548674, i64 2152548680, i64 2152548696, i64 2152548712, i64 2152548739, i64 2152549053, i64 2152548396, i64 2152549059, i64 2152549107, i64 2152549171, i64 2152549235, i64 2152549292, i64 2152548477, i64 2152548502, i64 2152549499, i64 2152549635, i64 2152549560, i64 2152549649, i64 2152548594}
!5016 = !DILocation(line: 40, column: 1, scope: !5012)
!5017 = distinct !DISubprogram(name: "clac", scope: !5013, file: !5013, line: 30, type: !2203, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19)
!5018 = !DILocation(line: 33, column: 2, scope: !5017)
!5019 = !{i64 2152546979, i64 2152547007, i64 2152547013, i64 2152547029, i64 2152547045, i64 2152547072, i64 2152547386, i64 2152546729, i64 2152547392, i64 2152547440, i64 2152547504, i64 2152547568, i64 2152547625, i64 2152546810, i64 2152546835, i64 2152547832, i64 2152547968, i64 2152547893, i64 2152547982, i64 2152546927}
!5020 = !DILocation(line: 34, column: 1, scope: !5017)
!5021 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !5022, file: !5022, line: 70, type: !5023, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5025)
!5022 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!5023 = !DISubroutineType(types: !5024)
!5024 = !{null, !1687, !1075}
!5025 = !{!5026, !5027}
!5026 = !DILocalVariable(name: "address", arg: 1, scope: !5021, file: !5022, line: 70, type: !1687)
!5027 = !DILocalVariable(name: "size", arg: 2, scope: !5021, file: !5022, line: 70, type: !1075)
!5028 = !DILocation(line: 70, column: 54, scope: !5021)
!5029 = !DILocation(line: 70, column: 70, scope: !5021)
!5030 = !DILocation(line: 72, column: 1, scope: !5021)
!5031 = distinct !DISubprogram(name: "__fpu_invalidate_fpregs_state", scope: !5032, file: !5032, line: 31, type: !4067, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5033)
!5032 = !DIFile(filename: "arch/x86/kernel/fpu/context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4535ce2ee3afda4d25c914778a562b8")
!5033 = !{!5034}
!5034 = !DILocalVariable(name: "fpu", arg: 1, scope: !5031, file: !5032, line: 31, type: !4042)
!5035 = !DILocation(line: 31, column: 62, scope: !5031)
!5036 = !DILocation(line: 33, column: 2, scope: !5031)
!5037 = !DILocation(line: 33, column: 7, scope: !5031)
!5038 = !DILocation(line: 33, column: 16, scope: !5031)
!5039 = !DILocation(line: 34, column: 1, scope: !5031)
!5040 = distinct !DISubprogram(name: "constant_test_bit", scope: !4368, file: !4368, line: 204, type: !5041, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5043)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{!759, !1033, !4371}
!5043 = !{!5044, !5045}
!5044 = !DILocalVariable(name: "nr", arg: 1, scope: !5040, file: !4368, line: 204, type: !1033)
!5045 = !DILocalVariable(name: "addr", arg: 2, scope: !5040, file: !4368, line: 204, type: !4371)
!5046 = !DILocation(line: 204, column: 52, scope: !5040)
!5047 = !DILocation(line: 204, column: 86, scope: !5040)
!5048 = !DILocation(line: 206, column: 19, scope: !5040)
!5049 = !DILocation(line: 206, column: 22, scope: !5040)
!5050 = !DILocation(line: 206, column: 15, scope: !5040)
!5051 = !DILocation(line: 207, column: 4, scope: !5040)
!5052 = !DILocation(line: 207, column: 9, scope: !5040)
!5053 = !DILocation(line: 207, column: 12, scope: !5040)
!5054 = !DILocation(line: 206, column: 44, scope: !5040)
!5055 = !DILocation(line: 207, column: 37, scope: !5040)
!5056 = !DILocation(line: 206, column: 2, scope: !5040)
!5057 = distinct !DISubprogram(name: "variable_test_bit", scope: !4368, file: !4368, line: 224, type: !5041, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5058)
!5058 = !{!5059, !5060, !5061}
!5059 = !DILocalVariable(name: "nr", arg: 1, scope: !5057, file: !4368, line: 224, type: !1033)
!5060 = !DILocalVariable(name: "addr", arg: 2, scope: !5057, file: !4368, line: 224, type: !4371)
!5061 = !DILocalVariable(name: "oldbit", scope: !5057, file: !4368, line: 226, type: !759)
!5062 = !DILocation(line: 224, column: 52, scope: !5057)
!5063 = !DILocation(line: 224, column: 86, scope: !5057)
!5064 = !DILocation(line: 226, column: 2, scope: !5057)
!5065 = !DILocation(line: 226, column: 7, scope: !5057)
!5066 = !DILocation(line: 231, column: 33, scope: !5057)
!5067 = !DILocation(line: 231, column: 46, scope: !5057)
!5068 = !DILocation(line: 228, column: 2, scope: !5057)
!5069 = !{i64 2147912268, i64 2147912342}
!5070 = !DILocation(line: 233, column: 9, scope: !5057)
!5071 = !{i8 0, i8 2}
!5072 = !DILocation(line: 234, column: 1, scope: !5057)
!5073 = !DILocation(line: 233, column: 2, scope: !5057)
!5074 = distinct !DISubprogram(name: "check_copy_size", scope: !15, file: !15, line: 237, type: !5075, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5077)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{!759, !1687, !1075, !759}
!5077 = !{!5078, !5079, !5080, !5081, !5082, !5085}
!5078 = !DILocalVariable(name: "addr", arg: 1, scope: !5074, file: !15, line: 237, type: !1687)
!5079 = !DILocalVariable(name: "bytes", arg: 2, scope: !5074, file: !15, line: 237, type: !1075)
!5080 = !DILocalVariable(name: "is_source", arg: 3, scope: !5074, file: !15, line: 237, type: !759)
!5081 = !DILocalVariable(name: "sz", scope: !5074, file: !15, line: 239, type: !127)
!5082 = !DILocalVariable(name: "__ret_warn_on", scope: !5083, file: !15, line: 249, type: !127)
!5083 = distinct !DILexicalBlock(scope: !5084, file: !15, line: 249, column: 6)
!5084 = distinct !DILexicalBlock(scope: !5074, file: !15, line: 249, column: 6)
!5085 = !DILocalVariable(name: "__flags", scope: !5086, file: !15, line: 249, type: !127)
!5086 = distinct !DILexicalBlock(scope: !5087, file: !15, line: 249, column: 6)
!5087 = distinct !DILexicalBlock(scope: !5083, file: !15, line: 249, column: 6)
!5088 = !DILocation(line: 237, column: 29, scope: !5074)
!5089 = !DILocation(line: 237, column: 42, scope: !5074)
!5090 = !DILocation(line: 237, column: 54, scope: !5074)
!5091 = !DILocation(line: 239, column: 2, scope: !5074)
!5092 = !DILocation(line: 239, column: 6, scope: !5074)
!5093 = !DILocation(line: 239, column: 33, scope: !5074)
!5094 = !DILocation(line: 239, column: 11, scope: !5074)
!5095 = !DILocation(line: 240, column: 6, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5074, file: !15, line: 240, column: 6)
!5097 = !DILocation(line: 0, scope: !5096)
!5098 = !DILocation(line: 240, column: 6, scope: !5074)
!5099 = !DILocation(line: 241, column: 29, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5101, file: !15, line: 241, column: 7)
!5101 = distinct !DILexicalBlock(scope: !5096, file: !15, line: 240, column: 39)
!5102 = !DILocation(line: 241, column: 8, scope: !5100)
!5103 = !DILocation(line: 241, column: 7, scope: !5101)
!5104 = !DILocation(line: 242, column: 18, scope: !5100)
!5105 = !DILocation(line: 242, column: 22, scope: !5100)
!5106 = !DILocation(line: 242, column: 4, scope: !5100)
!5107 = !DILocation(line: 243, column: 12, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5100, file: !15, line: 243, column: 12)
!5109 = !DILocation(line: 243, column: 12, scope: !5100)
!5110 = !DILocation(line: 244, column: 4, scope: !5108)
!5111 = !{i32 1618871}
!5112 = !DILocation(line: 246, column: 4, scope: !5108)
!5113 = !{i32 1618900}
!5114 = !DILocation(line: 247, column: 3, scope: !5101)
!5115 = !DILocation(line: 249, column: 6, scope: !5083)
!5116 = !DILocation(line: 249, column: 6, scope: !5087)
!5117 = !DILocation(line: 249, column: 6, scope: !5086)
!5118 = !DILocation(line: 249, column: 6, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5086, file: !15, line: 249, column: 6)
!5120 = !DILocation(line: 249, column: 6, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5086, file: !15, line: 249, column: 6)
!5122 = !{i64 2149589794, i64 2149589823, i64 2149589869, i64 2149589927, i64 2149589981, i64 2149590035, i64 2149590090, i64 2149590121, i64 2149590429, i64 2149590435, i64 2149590482, i64 2149590505, i64 2149590531}
!5123 = !DILocation(line: 249, column: 6, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5086, file: !15, line: 249, column: 6)
!5125 = !DILocation(line: 249, column: 6, scope: !5084)
!5126 = !DILocation(line: 249, column: 6, scope: !5074)
!5127 = !DILocation(line: 250, column: 3, scope: !5084)
!5128 = !DILocation(line: 251, column: 20, scope: !5074)
!5129 = !DILocation(line: 251, column: 26, scope: !5074)
!5130 = !DILocation(line: 251, column: 33, scope: !5074)
!5131 = !DILocation(line: 251, column: 2, scope: !5074)
!5132 = !DILocation(line: 252, column: 2, scope: !5074)
!5133 = !DILocation(line: 253, column: 1, scope: !5074)
!5134 = !DISubprogram(name: "_copy_from_user", scope: !4495, file: !4495, line: 158, type: !4496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5135 = distinct !DISubprogram(name: "copy_overflow", scope: !15, file: !15, line: 230, type: !5136, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5138)
!5136 = !DISubroutineType(types: !5137)
!5137 = !{null, !127, !119}
!5138 = !{!5139, !5140}
!5139 = !DILocalVariable(name: "size", arg: 1, scope: !5135, file: !15, line: 230, type: !127)
!5140 = !DILocalVariable(name: "count", arg: 2, scope: !5135, file: !15, line: 230, type: !119)
!5141 = !DILocation(line: 230, column: 38, scope: !5135)
!5142 = !DILocation(line: 230, column: 58, scope: !5135)
!5143 = !DILocation(line: 233, column: 19, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5135, file: !15, line: 232, column: 6)
!5145 = !DILocation(line: 233, column: 25, scope: !5144)
!5146 = !DILocation(line: 233, column: 3, scope: !5144)
!5147 = !DILocation(line: 234, column: 1, scope: !5135)
!5148 = !DISubprogram(name: "__bad_copy_from", scope: !15, file: !15, line: 224, type: !2203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5149 = !DISubprogram(name: "__bad_copy_to", scope: !15, file: !15, line: 226, type: !2203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5150 = !DISubprogram(name: "__copy_overflow", scope: !15, file: !15, line: 228, type: !5136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5151 = distinct !DISubprogram(name: "twd_fxsr_to_i387", scope: !9, file: !9, line: 286, type: !5152, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5154)
!5152 = !DISubroutineType(types: !5153)
!5153 = !{!122, !4556}
!5154 = !{!5155, !5156, !5157, !5158, !5159, !5160, !5161}
!5155 = !DILocalVariable(name: "fxsave", arg: 1, scope: !5151, file: !9, line: 286, type: !4556)
!5156 = !DILocalVariable(name: "st", scope: !5151, file: !9, line: 288, type: !140)
!5157 = !DILocalVariable(name: "tos", scope: !5151, file: !9, line: 289, type: !122)
!5158 = !DILocalVariable(name: "twd", scope: !5151, file: !9, line: 290, type: !122)
!5159 = !DILocalVariable(name: "tag", scope: !5151, file: !9, line: 291, type: !122)
!5160 = !DILocalVariable(name: "ret", scope: !5151, file: !9, line: 292, type: !122)
!5161 = !DILocalVariable(name: "i", scope: !5151, file: !9, line: 293, type: !127)
!5162 = !DILocation(line: 286, column: 57, scope: !5151)
!5163 = !DILocation(line: 288, column: 2, scope: !5151)
!5164 = !DILocation(line: 288, column: 18, scope: !5151)
!5165 = !DILocation(line: 289, column: 2, scope: !5151)
!5166 = !DILocation(line: 289, column: 6, scope: !5151)
!5167 = !DILocation(line: 289, column: 13, scope: !5151)
!5168 = !DILocation(line: 289, column: 21, scope: !5151)
!5169 = !DILocation(line: 289, column: 25, scope: !5151)
!5170 = !DILocation(line: 289, column: 32, scope: !5151)
!5171 = !DILocation(line: 290, column: 2, scope: !5151)
!5172 = !DILocation(line: 290, column: 6, scope: !5151)
!5173 = !DILocation(line: 290, column: 28, scope: !5151)
!5174 = !DILocation(line: 290, column: 36, scope: !5151)
!5175 = !DILocation(line: 290, column: 12, scope: !5151)
!5176 = !DILocation(line: 291, column: 2, scope: !5151)
!5177 = !DILocation(line: 291, column: 6, scope: !5151)
!5178 = !DILocation(line: 292, column: 2, scope: !5151)
!5179 = !DILocation(line: 292, column: 6, scope: !5151)
!5180 = !DILocation(line: 293, column: 2, scope: !5151)
!5181 = !DILocation(line: 293, column: 6, scope: !5151)
!5182 = !DILocation(line: 295, column: 9, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5151, file: !9, line: 295, column: 2)
!5184 = !DILocation(line: 295, column: 7, scope: !5183)
!5185 = !DILocation(line: 295, column: 14, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5183, file: !9, line: 295, column: 2)
!5187 = !DILocation(line: 295, column: 16, scope: !5186)
!5188 = !DILocation(line: 295, column: 2, scope: !5183)
!5189 = !DILocation(line: 296, column: 7, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5191, file: !9, line: 296, column: 7)
!5191 = distinct !DILexicalBlock(scope: !5186, file: !9, line: 295, column: 37)
!5192 = !DILocation(line: 296, column: 11, scope: !5190)
!5193 = !DILocation(line: 296, column: 7, scope: !5191)
!5194 = !DILocation(line: 297, column: 9, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5190, file: !9, line: 296, column: 18)
!5196 = !DILocation(line: 297, column: 7, scope: !5195)
!5197 = !DILocation(line: 299, column: 12, scope: !5195)
!5198 = !DILocation(line: 299, column: 16, scope: !5195)
!5199 = !DILocation(line: 299, column: 25, scope: !5195)
!5200 = !DILocation(line: 299, column: 4, scope: !5195)
!5201 = !DILocation(line: 301, column: 9, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5195, file: !9, line: 299, column: 35)
!5203 = !DILocation(line: 302, column: 5, scope: !5202)
!5204 = !DILocation(line: 304, column: 10, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5202, file: !9, line: 304, column: 9)
!5206 = !DILocation(line: 304, column: 14, scope: !5205)
!5207 = !DILocation(line: 304, column: 29, scope: !5205)
!5208 = !DILocation(line: 305, column: 10, scope: !5205)
!5209 = !DILocation(line: 305, column: 14, scope: !5205)
!5210 = !DILocation(line: 305, column: 29, scope: !5205)
!5211 = !DILocation(line: 306, column: 10, scope: !5205)
!5212 = !DILocation(line: 306, column: 14, scope: !5205)
!5213 = !DILocation(line: 306, column: 29, scope: !5205)
!5214 = !DILocation(line: 307, column: 10, scope: !5205)
!5215 = !DILocation(line: 307, column: 14, scope: !5205)
!5216 = !DILocation(line: 304, column: 9, scope: !5202)
!5217 = !DILocation(line: 308, column: 10, scope: !5205)
!5218 = !DILocation(line: 308, column: 6, scope: !5205)
!5219 = !DILocation(line: 310, column: 10, scope: !5205)
!5220 = !DILocation(line: 311, column: 5, scope: !5202)
!5221 = !DILocation(line: 313, column: 9, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5202, file: !9, line: 313, column: 9)
!5223 = !DILocation(line: 313, column: 13, scope: !5222)
!5224 = !DILocation(line: 313, column: 28, scope: !5222)
!5225 = !DILocation(line: 313, column: 9, scope: !5202)
!5226 = !DILocation(line: 314, column: 10, scope: !5222)
!5227 = !DILocation(line: 314, column: 6, scope: !5222)
!5228 = !DILocation(line: 316, column: 10, scope: !5222)
!5229 = !DILocation(line: 317, column: 5, scope: !5202)
!5230 = !DILocation(line: 319, column: 3, scope: !5195)
!5231 = !DILocation(line: 320, column: 8, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5190, file: !9, line: 319, column: 10)
!5233 = !DILocation(line: 322, column: 10, scope: !5191)
!5234 = !DILocation(line: 322, column: 22, scope: !5191)
!5235 = !DILocation(line: 322, column: 20, scope: !5191)
!5236 = !DILocation(line: 322, column: 14, scope: !5191)
!5237 = !DILocation(line: 322, column: 7, scope: !5191)
!5238 = !DILocation(line: 323, column: 2, scope: !5191)
!5239 = !DILocation(line: 295, column: 22, scope: !5186)
!5240 = !DILocation(line: 295, column: 30, scope: !5186)
!5241 = !DILocation(line: 295, column: 2, scope: !5186)
!5242 = distinct !{!5242, !5188, !5243, !4647, !4648}
!5243 = !DILocation(line: 323, column: 2, scope: !5183)
!5244 = !DILocation(line: 324, column: 9, scope: !5151)
!5245 = !DILocation(line: 325, column: 1, scope: !5151)
!5246 = !DILocation(line: 324, column: 2, scope: !5151)
!5247 = distinct !DISubprogram(name: "task_stack_page", scope: !5248, file: !5248, line: 20, type: !5249, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5253)
!5248 = !DIFile(filename: "./include/linux/sched/task_stack.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b484ea324048fb6eae31602d0afab7d")
!5249 = !DISubroutineType(types: !5250)
!5250 = !{!150, !5251}
!5251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5252, size: 64)
!5252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!5253 = !{!5254}
!5254 = !DILocalVariable(name: "task", arg: 1, scope: !5247, file: !5248, line: 20, type: !5251)
!5255 = !DILocation(line: 20, column: 72, scope: !5247)
!5256 = !DILocation(line: 22, column: 9, scope: !5247)
!5257 = !DILocation(line: 22, column: 15, scope: !5247)
!5258 = !DILocation(line: 22, column: 2, scope: !5247)
